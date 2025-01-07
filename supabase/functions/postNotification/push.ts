import { OneSignalNotification } from "./types.ts";

interface PushNotificationPayload {
  externalIds: string[];
  title: string;
  content: string;
  imageUrl?: string;
}

export async function sendPushNotification({
  externalIds,
  title,
  content,
  imageUrl,
}: PushNotificationPayload) {
  const notification: OneSignalNotification = {
    app_id: Deno.env.get("ONE_SIGNAL_APP_ID")!,
    include_aliases: {
      external_id: externalIds,
    },
    contents: { en: content },
    headings: { en: title },
    target_channel: "push",
    include_unsubscribed: false,
  };

  if (imageUrl) {
    notification.big_picture = imageUrl;
    notification.ios_attachments = { id1: imageUrl };
  }

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
    throw new Error(`OneSignal Push API error: ${response.statusText}`);
  }

  return response.json();
}
