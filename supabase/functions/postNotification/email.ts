import { SupabaseClient } from "https://esm.sh/@supabase/supabase-js@2.46.1";

interface EmailData {
    to: string;
    subject: string;
    html: string;
}

export async function sendEmailNotification(
    supabase: SupabaseClient,
    customerIds: string[],
    title: string,
    content: string,
    imageUrl?: string,
) {
    // Get customer emails
    const { data: users } = await supabase
        .from("users")
        .select("email")
        .in("id", customerIds);

    if (!users?.length) {
        return;
    }

    const emails = users.map((u) => u.email).filter(Boolean);

    // Create HTML content
    const htmlContent = `
    <h1>${title}</h1>
    ${
        imageUrl
            ? `<img src="${imageUrl}" style="max-width: 100%; height: auto;" />`
            : ""
    }
    <p>${content}</p>
  `;

    // Send email using Supabase Edge Function
    const emailData: EmailData = {
        to: emails.join(","),
        subject: title,
        html: htmlContent,
    };

    await fetch(`${Deno.env.get("SUPABASE_URL")}/functions/v1/sendEmail`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Authorization": `Bearer ${
                Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")
            }`,
        },
        body: JSON.stringify(emailData),
    });
}
