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
    apiVersion: "2023-10-16",
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

serve(async (req) => {
    try {
        const signature = req.headers.get("stripe-signature")!;
        const body = await req.text();

        const event = stripe.webhooks.constructEvent(
            body,
            signature,
            Deno.env.get("STRIPE_WEBHOOK_SIGNING_SECRET")!,
        );

        if (event.type === "checkout.session.completed") {
            const session = event.data.object as Stripe.Checkout.Session;
            const customerId = session.customer as string;
            const customerEmail = session.customer_email;

            if (!customerEmail) {
                throw new Error("Missing customer email");
            }

            // Sprawdź czy użytkownik już istnieje
            const { data: existingUser } = await supabase
                .from("auth.users")
                .select("id")
                .eq("email", customerEmail)
                .single();

            let userId: string;

            if (!existingUser) {
                // Utwórz nowego użytkownika
                const { data: newUser, error: createUserError } = await supabase
                    .auth.admin.createUser({
                        email: customerEmail,
                        email_confirm: true,
                        user_metadata: {
                            app_id: "app.beeloyal.employer",
                        },
                    });

                if (createUserError) throw createUserError;
                userId = newUser.user.id;
            } else {
                userId = existingUser.id;
            }

            // Pobierz status subskrypcji ze Stripe
            const subscription = await stripe.subscriptions.retrieve(
                session.subscription as string,
            );
            const subscriptionStatus = mapStripeStatusToSubscriptionStatus(
                subscription.status,
            );

            // Sprawdź czy firma już istnieje
            const { data: existingBusiness } = await supabase
                .from("businesses")
                .select("id, subscription_status, subscription_id")
                .eq("owner", userId)
                .single();

            if (!existingBusiness) {
                // Utwórz nową firmę
                const { error: createBusinessError } = await supabase
                    .from("businesses")
                    .insert({
                        owner: userId,
                        name: session.customer_details?.name || "Nowa firma",
                        stripe_customer: customerId,
                        subscription_status: subscriptionStatus,
                        subscription_id: session.subscription,
                        subscription_period_end: new Date(
                            subscription.current_period_end * 1000,
                        ),
                    });

                if (createBusinessError) throw createBusinessError;
            } else {
                // Aktualizuj dane subskrypcji
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

        // Obsługa zmian statusu subskrypcji
        if (
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
