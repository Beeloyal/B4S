import { serve } from "https://deno.land/std@0.177.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.46.1";
import { createMarkerCanvas, drawMarkerBackground } from "./canvas.ts";
import { drawLogoWithClipping, loadImageFromUrl } from "./image.ts";

const _SupabaseHost_ = Deno.env.get("SUPABASE_URL")!;
const _SupabaseKey_ = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;

const supabaseClient = createClient(_SupabaseHost_, _SupabaseKey_);

async function generateMarkerPNG(logoUrl?: string): Promise<Uint8Array> {
    const { c, ctx } = await createMarkerCanvas(512, 512);

    const scale = 8; // Scale factor from 64 to 512

    // Draw marker background
    drawMarkerBackground(ctx);

    // Draw logo if provided
    if (logoUrl) {
        try {
            const image = await loadImageFromUrl(logoUrl);
            drawLogoWithClipping(
                ctx,
                image,
                8 * scale, // x
                3 * scale, // y
                48 * scale, // width
                48 * scale, // height
                24 * scale, // radius
                32 * scale, // centerX
                27 * scale, // centerY
            );
        } catch (e) {
            console.error("Error drawing logo:", e);
        }
    }

    return c.toBuffer();
}

serve(async (req) => {
    try {
        const body = await req.json();
        console.log("Request body:", body);

        const { id, logo_url } = body;
        console.log("Parsed values:", { id, logo_url });

        if (!id) {
            return new Response(
                JSON.stringify({ error: "Local ID is required" }),
                { status: 400 },
            );
        }

        // Generate PNG marker
        const markerBuffer = await generateMarkerPNG(logo_url);

        // Save to storage
        const { error: uploadError } = await supabaseClient
            .storage
            .from("markers")
            .upload(`${id}.png`, markerBuffer, {
                contentType: "image/png",
                upsert: true,
                cacheControl: "3600",
            });

        if (uploadError) {
            throw uploadError;
        }

        return new Response(
            JSON.stringify({
                success: true,
            }),
            {
                status: 200,
                headers: {
                    "Content-Type": "application/json",
                    "Cache-Control": "public, max-age=3600",
                },
            },
        );
    } catch (e) {
        console.error("Error generating marker:", e);
        if (e instanceof Error) {
            return new Response(
                JSON.stringify({
                    error: e.message,
                    stack: e.stack,
                }),
                { status: 500 },
            );
        } else {
            return new Response(
                JSON.stringify({
                    error: "Unknown error occurred",
                }),
                { status: 500 },
            );
        }
    }
});
