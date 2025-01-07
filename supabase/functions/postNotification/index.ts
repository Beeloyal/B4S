import { serve } from "https://deno.land/std@0.177.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.46.1";
import { sendNotification } from "./notification.ts";
import { NotificationPayload } from "./types.ts";

const supabase = createClient(
  Deno.env.get("SUPABASE_URL")!,
  Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!,
);

interface LocalPost {
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
    const { record } = await req.json();

    console.log("Notification record:", record);

    const post: LocalPost = record;

    console.log("Notification post:", post);

    const customerIds = await getLocalCustomers(post.local);

    if (customerIds.length === 0) {
      return new Response(
        JSON.stringify({ message: "No customers found" }),
        { status: 200, headers: { "Content-Type": "application/json" } },
      );
    }

    const notificationPayload: NotificationPayload = {
      externalIds: customerIds,
      title: post.title,
      content: post.content,
      imageUrl: post.image_url,
      channels: post.channels,
    };

    const response = await sendNotification(notificationPayload);

    console.log("Notification response:", response);

    return new Response(
      JSON.stringify({ success: true, messsage: "Post notification sended" }),
      { status: 200, headers: { "Content-Type": "application/json" } },
    );
  } catch (error) {
    console.error("Error processing notification:", error);

    if (error instanceof Error) {
      return new Response(
        JSON.stringify({ error: error.message }),
        { status: 500, headers: { "Content-Type": "application/json" } },
      );
    }

    return new Response(
      JSON.stringify({ error: "An error occurred" }),
      { status: 500, headers: { "Content-Type": "application/json" } },
    );
  }
});
