import { serve } from "https://deno.land/std@0.177.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.46.1";

const supabase = createClient(
    Deno.env.get("SUPABASE_URL")!,
    Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!,
);

const TELEGRAM_BOT_TOKEN = Deno.env.get("TELEGRAM_BOT_TOKEN")!;
const TELEGRAM_CHAT_ID = Deno.env.get("TELEGRAM_CHAT_ID")!;

serve(async (req) => {
    try {
        const { record, table } = await req.json();

        let message;

        if (table === "users") {
            message = `👤 Nowy użytkownik`;
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
                `🎉 Nowy klient w \*${data.name}\*, mają już ich \*${count}\*!`;
        }

        if (table === "transaction_units" && record.status === "completed") {
            const {
                customer_card,
                local_card,
                value,
                type,
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
                    `💸 Nowa transakcja w lokalu \*${localData?.name}\*, dodano do konta klienta +\*${value} pkt.\*!`;
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
                    `🎉 W lokalu \*${localData?.name}\* nabito \*+${value}\* pieczątek na karte lojalnościową \*${cardData?.name}\*, klient posiada już \*${customerCardData?.collected}/${cardData?.cost}\*`;
            } else if (type === "get_reward") {
                const { data: cardData } = await supabase.from("local_cards")
                    .select("local, name, cost").eq("id", local_card).single();

                const { data: localData } = await supabase.from("locals")
                    .select("name").eq("id", cardData?.local).single();

                message =
                    `🎁 Klient odebrał nagrodę w lokalu \*${localData?.name}\* z karty lojalnościowej \*${cardData?.name}\*, z jego konta ściągnięto \*-${value} ${
                        !customer_card ? "pieczątek" : "punktów"
                    }\*`;
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
