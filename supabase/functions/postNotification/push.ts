interface PushNotification {
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
}: PushNotification) {
    const response = await fetch("https://onesignal.com/api/v1/notifications", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Authorization": `Basic ${Deno.env.get("ONESIGNAL_REST_API_KEY")}`,
        },
        body: JSON.stringify({
            app_id: Deno.env.get("ONESIGNAL_APP_ID"),
            include_external_user_ids: externalIds,
            contents: { en: content },
            headings: { en: title },
            big_picture: imageUrl,
            ios_attachments: imageUrl ? { id1: imageUrl } : undefined,
            channel_for_external_user_ids: "push",
        }),
    });

    if (!response.ok) {
        throw new Error(`OneSignal API error: ${response.statusText}`);
    }

    return response.json();
}
