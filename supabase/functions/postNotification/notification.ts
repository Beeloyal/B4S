import { NotificationPayload } from "./types.ts";
import { sendPushNotification } from "./push.ts";
import { sendEmailNotification } from "./email.ts";

export async function sendNotification(payload: NotificationPayload) {
  const notifications = [];

  // Send push notification if channel is included
  if (payload.channels.includes("push")) {
    notifications.push(
      sendPushNotification({
        externalIds: payload.externalIds,
        title: payload.title,
        content: payload.content,
        imageUrl: payload.imageUrl
      })
    );
  }

  // Send email notification if channel is included
  if (payload.channels.includes("email")) {
    notifications.push(
      sendEmailNotification({
        externalIds: payload.externalIds,
        title: payload.title,
        content: payload.content,
        imageUrl: payload.imageUrl
      })
    );
  }

  // Wait for all notifications to complete
  await Promise.all(notifications);
}