import { serve } from "https://deno.land/std@0.177.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.46.1";

const supabase = createClient(
    Deno.env.get("SUPABASE_URL")!,
    Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!,
);

const TELEGRAM_BOT_TOKEN = Deno.env.get("TELEGRAM_BOT_TOKEN")!;
const TELEGRAM_CHAT_ID = Deno.env.get("TELEGRAM_CHAT_ID")!;

function formatDate(createdAt: string | number | Date) {
    const date = new Date(createdAt);
    return date.toLocaleDateString("pl-PL", {
        year: "numeric",
        month: "long",
        day: "numeric",
        hour: "2-digit",
        minute: "2-digit",
    });
}

serve(async (req) => {
    console.log("Request received");

    try {
        const { record, table } = await req.json();
        console.log("Record:", record);
        console.log("Table:", table);

        let message;

        if (table === "users") {
            const { email, phone, created_at } = record;
            message =
                `👤 Nowy użytkownik!\n\n📧 Email: **${email}**\n📞 Telefon: **${phone}**\n📅 Data: ${
                    formatDate(created_at)
                }`;
        }

        if (table === "customers") {
            const { local } = record;
            const { data, error } = await supabase.from("locals").select("name")
                .eq("id", local).single();
            const { count } = await supabase.from("customers").select("id", {
                count: "exact",
                head: true,
            }).eq("local", local);
            if (error) throw error;
            message =
                `🎉 Nowy klient!\n\n🏢 Lokal: **${data.name}**\n👥 Liczba klientów: ${count}\n📅 Data: ${
                    formatDate(record.created_at)
                }`;
        }

        if (table === "transaction_units" && record.status === "completed") {
            const {
                customer_card,
                local_card,
                value,
                type,
                created_at,
                completed_at,
                transaction,
            } = record;

            if (type === "add_points") {
                const { data: transactionData } = await supabase.from(
                    "transactions",
                ).select("local_address").eq("id", transaction).single();

                const { data: localAddressData } = await supabase.from(
                    "local_addresses",
                ).select("local").eq("id", transactionData?.local_address)
                    .single();

                const { data: localData } = await supabase.from("locals")
                    .select("name").eq("id", localAddressData?.local).single();

                message =
                    `💸 Nowa transakcja!\n\n🏢 Lokal: **${localData?.name}**\n💰 Dodano punkty: **${value} pkt.**\n\n📅 Start: ${
                        formatDate(created_at)
                    }\n📅 Koniec: ${
                        formatDate(completed_at)
                    }\n\n🆔 Transakcja: #${transaction}`;
            } else if (type === "add_stamps") {
                const { data: cardData } = await supabase.from("local_cards")
                    .select("local, name, cost").eq("id", local_card).single();

                const { data: customerCardData } = await supabase.from(
                    "customer_cards",
                ).select("collected").eq("card", local_card).eq(
                    "id",
                    customer_card,
                ).single();

                const { data: localData } = await supabase.from("locals")
                    .select("name").eq("id", cardData?.local).single();

                message =
                    `🎉 Dodano pieczątki (+${value})!\n\n🏢 Lokal: **${localData?.name}**\n💳 Karta lojalnościowa: **${cardData?.name}**\n👤 Stan karty klienta: **${customerCardData?.collected}/${cardData?.cost}**\n\n📅 Start: ${
                        formatDate(created_at)
                    }\n📅 Koniec: ${
                        formatDate(completed_at)
                    }\n\n🆔 Transakcja: #${transaction}`;
            } else if (type === "get_reward") {
                const { data: cardData } = await supabase.from("local_cards")
                    .select("local, name, cost").eq("id", local_card).single();

                const { data: localData } = await supabase.from("locals")
                    .select("name").eq("id", cardData?.local).single();

                message =
                    `🎁 Klient odebrał nagrodę!\n\n🏢 Lokal: **${localData?.name}**\n💳 Karta lojalnościowa: **${cardData?.name}**\n👤 Ściągnięto z konta użytkownika: **-${value} ${
                        !customer_card ? "pieczątek" : "punktów"
                    }**\n\n📅 Start: ${formatDate(created_at)}\n📅 Koniec: ${
                        formatDate(completed_at)
                    }\n\n🆔 Transakcja: #${transaction}`;
            }
        }

        if (message) {
            console.log("Sending message:", message);

            const response = await fetch(
                `https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage`,
                {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify({
                        chat_id: TELEGRAM_CHAT_ID,
                        text: message,
                        parse_mode: "Markdown",
                    }),
                },
            );

            console.log("Telegram response:", response);

            return response;
        } else {
            return new Response("Brak wiadomości", { status: 400 });
        }
    } catch (error) {
        console.error("Error processing notification:", error);

        if (error instanceof Error) {
            return new Response(
                JSON.stringify({ error: error.message }),
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
