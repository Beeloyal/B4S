import { serve } from "https://deno.land/std@0.177.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.46.1";
import { sendPushNotification } from "./push.ts";
import { sendEmailNotification } from "./email.ts";

const supabase = createClient(
    Deno.env.get("SUPABASE_URL")!,
    Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!,
);

interface PostRecord {
    id: number;
    local: number;
    title: string;
    content: string;
    image_url?: string;
    channels: string[];
}

async function getLocalCustomers(localId: number) {
    const { data: customers } = await supabase
        .from("customers")
        .select("account")
        .eq("local", localId);

    return customers?.map((c) => c.account) || [];
}

serve(async (req) => {
    try {
        const record: PostRecord = await req.json();
        const customerIds = await getLocalCustomers(record.local);

        if (customerIds.length === 0) {
            return new Response(
                JSON.stringify({ message: "No customers found" }),
                {
                    status: 200,
                    headers: { "Content-Type": "application/json" },
                },
            );
        }

        const notifications = [];

        // Handle push notifications
        if (record.channels.includes("push")) {
            notifications.push(
                sendPushNotification({
                    externalIds: customerIds,
                    title: record.title,
                    content: record.content,
                    imageUrl: record.image_url,
                }),
            );
        }

        // Handle email notifications
        if (record.channels.includes("email")) {
            notifications.push(
                sendEmailNotification(
                    supabase,
                    customerIds,
                    record.title,
                    record.content,
                    record.image_url,
                ),
            );
        }

        // Wait for all notifications to complete
        await Promise.all(notifications);

        return new Response(
            JSON.stringify({ success: true }),
            { status: 200, headers: { "Content-Type": "application/json" } },
        );
    } catch (e) {
        console.error("Error processing notification:", e);

        if (e instanceof Error) {
            return new Response(
                JSON.stringify({ error: e.message }),
                {
                    status: 500,
                    headers: { "Content-Type": "application/json" },
                },
            );
        }

        return new Response(
            JSON.stringify({ error: "An error occurred" }),
            { status: 500, headers: { "Content-Type": "application/json" } },
        );
    }
});
