import { OneSignalNotification } from "./types.ts";

interface EmailNotificationPayload {
  externalIds: string[];
  title: string;
  content: string;
  imageUrl?: string;
}

export async function sendEmailNotification({
  externalIds,
  title,
  content,
  imageUrl,
}: EmailNotificationPayload) {
  const formattedContent = content
    .split("\n")
    .map((line) => line.trim() ? `<p>${line}</p>` : "</br>")
    .join("");

  const notification: OneSignalNotification = {
    app_id: Deno.env.get("ONE_SIGNAL_APP_ID")!,
    include_aliases: {
      external_id: externalIds,
    },
    target_channel: "email",
    include_unsubscribed: true,
    template_id: imageUrl
      ? "774e037b-4928-4987-b3d9-2284507a3081"
      : "c9fe9e44-c213-4a50-9dd9-bc8455f74cce",
    custom_data: {
      "title": title,
      "content": formattedContent,
      "image_url": imageUrl || "",
    },
  };

  console.log("Notification payload:", JSON.stringify(notification));

  const response = await fetch("https://api.onesignal.com/notifications", {
    method: "POST",
    headers: {
      accept: "application/json",
      Authorization: `Basic ${Deno.env.get("ONE_SIGNAL_REST_API_KEY")}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify(notification),
  });

  if (!response.ok) {
    throw new Error(`OneSignal Email API error: ${response.statusText}`);
  }

  console.log("Email notification response:", response);

  return response.json();
}
