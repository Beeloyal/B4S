import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";
import Stripe from "https://esm.sh/stripe@14.5.0";

type SubscriptionStatus =
    | "active"
    | "inactive"
    | "past_due"
    | "canceled"
    | "trialing";

const stripe = new Stripe(Deno.env.get("STRIPE_SECRET_KEY")!, {
    apiVersion: "2024-06-20",
});

const supabase = createClient(
    Deno.env.get("SUPABASE_URL")!,
    Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!,
);

const mapStripeStatusToSubscriptionStatus = (
    stripeStatus: string,
): SubscriptionStatus => {
    switch (stripeStatus) {
        case "trialing":
            return "trialing";
        case "active":
            return "active";
        case "past_due":
            return "past_due";
        case "canceled":
            return "canceled";
        default:
            return "inactive";
    }
};

const extractFirstName = (name: string | null | undefined): string | null => {
    if (!name) return null;
    return name.split(' ')[0].trim();
};

const getDisplayName = (session: Stripe.Checkout.Session): string | null => {
    // Try to get name from shipping address first
    const shippingName = session.shipping_details?.name;
    if (shippingName) {
        return extractFirstName(shippingName);
    }

    // Fall back to customer details name
    const customerName = session.customer_details?.name;
    if (customerName) {
        return extractFirstName(customerName);
    }

    return null;
};

serve(async (req) => {
    try {
        const signature = req.headers.get("stripe-signature")!;
        const body = await req.text();

        const event = await stripe.webhooks.constructEventAsync(
            body,
            signature,
            Deno.env.get("STRIPE_WEBHOOK_SIGNING_SECRET")!,
        );

        if (event.type === "checkout.session.completed") {
            const session = event.data.object as Stripe.Checkout.Session;
            const customerId = session.customer as string;

            let customerEmail = session.customer_email;
            let customerFullName = session.customer_details?.name || null;
            let displayName = getDisplayName(session);

            if (!customerEmail && session.customer_details) {
                customerEmail = session.customer_details.email;
            }

            if (!customerEmail) {
                throw new Error("Missing customer email");
            }

            // Check if user exists using admin API
            const { data: users, error: searchError } = await supabase
                .from('users')
                .select('id')
                .eq('email', customerEmail)
                .maybeSingle();

            if (searchError) throw searchError;

            let userId: string;

            if (!users) {
                // Create new user only if they don't exist
                const { data: newUser, error: createUserError } = await supabase
                    .auth.admin.createUser({
                        email: customerEmail,
                        email_confirm: true,
                        user_metadata: {
                            app_id: "app.beeloyal.employer",
                            display_name: displayName,
                        },
                    });

                if (createUserError) throw createUserError;
                userId = newUser.user.id;
            } else {
                userId = users.id;

                // Update existing user's metadata if needed
                if (displayName) {
                    const { error: updateUserError } = await supabase
                        .auth.admin.updateUserById(userId, {
                            user_metadata: {
                                display_name: displayName,
                                app_id: "app.beeloyal.employer",
                            },
                        });

                    if (updateUserError) throw updateUserError;
                }
            }

            // Get subscription status from Stripe
            const subscription = await stripe.subscriptions.retrieve(
                session.subscription as string,
            );
            const subscriptionStatus = mapStripeStatusToSubscriptionStatus(
                subscription.status,
            );

            // Check if business exists
            const { data: existingBusiness } = await supabase
                .from("businesses")
                .select("id, subscription_status, subscription_id")
                .eq("owner", userId)
                .single();

            if (!existingBusiness) {
                // Create new business
                const { error: createBusinessError } = await supabase
                    .from("businesses")
                    .insert({
                        owner: userId,
                        name: customerFullName || "Nowa firma",
                        stripe_customer: customerId,
                        subscription_status: subscriptionStatus,
                        subscription_id: session.subscription,
                        subscription_period_end: new Date(
                            subscription.current_period_end * 1000,
                        ),
                    });

                if (createBusinessError) throw createBusinessError;
            } else {
                // Update subscription data
                const { error: updateBusinessError } = await supabase
                    .from("businesses")
                    .update({
                        subscription_status: subscriptionStatus,
                        subscription_id: session.subscription,
                        subscription_period_end: new Date(
                            subscription.current_period_end * 1000,
                        ),
                    })
                    .eq("id", existingBusiness.id);

                if (updateBusinessError) throw updateBusinessError;
            }

            return new Response(JSON.stringify({ success: true }), {
                headers: { "Content-Type": "application/json" },
                status: 200,
            });
        }

        // Handle subscription status changes
        if (
            event.type === "customer.subscription.created" ||
            event.type === "customer.subscription.updated" ||
            event.type === "customer.subscription.deleted"
        ) {
            const subscription = event.data.object as Stripe.Subscription;
            const customerId = subscription.customer as string;
            const subscriptionStatus = mapStripeStatusToSubscriptionStatus(
                subscription.status,
            );

            const { error: updateError } = await supabase
                .from("businesses")
                .update({
                    subscription_status: subscriptionStatus,
                    subscription_period_end: new Date(
                        subscription.current_period_end * 1000,
                    ),
                })
                .eq("stripe_customer", customerId);

            if (updateError) throw updateError;
        }

        return new Response(JSON.stringify({ received: true }), {
            headers: { "Content-Type": "application/json" },
            status: 200,
        });
    } catch (error) {
        return new Response(JSON.stringify({ error: error.message }), {
            headers: { "Content-Type": "application/json" },
            status: 400,
        });
    }
});