import {
    CanvasRenderingContext2D,
    Image,
    loadImage,
} from "https://deno.land/x/canvas@v1.4.1/mod.ts";
import { Buffer } from "https://deno.land/std@0.168.0/node/buffer.ts";

export async function loadImageFromUrl(url: string): Promise<Image> {
    const response = await fetch(url);
    const arrayBuffer = await response.arrayBuffer();
    const buffer = Buffer.from(arrayBuffer);
    return await loadImage(new Uint8Array(buffer));
}

export function drawLogoWithClipping(
    ctx: CanvasRenderingContext2D,
    image: Image,
    x: number,
    y: number,
    width: number,
    height: number,
    radius: number,
    centerX: number,
    centerY: number,
) {
    ctx.save();
    ctx.beginPath();
    ctx.arc(centerX, centerY, radius, 0, Math.PI * 2);
    ctx.clip();
    ctx.drawImage(image, x, y, width, height);
    ctx.restore();
}
