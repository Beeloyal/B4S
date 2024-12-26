import {
    CanvasRenderingContext2D,
    createCanvas,
} from "https://deno.land/x/canvas@v1.4.1/mod.ts";

export function createMarkerCanvas(width: number, height: number) {
    const c = createCanvas(width, height);
    const ctx = c.getContext("2d");
    return { c, ctx };
}

export function drawMarkerBackground(ctx: CanvasRenderingContext2D) {
    const scale = 8; // Scale factor from 64 to 512
    ctx.beginPath();
    ctx.fillStyle = "#266A4A";

    // Scale all coordinates by 8
    ctx.moveTo(31.9788 * scale, 0);
    ctx.bezierCurveTo(
        46.8318 * scale,
        0,
        59.0766 * scale,
        11.8434 * scale,
        59.0766 * scale,
        26.4964 * scale,
    );
    ctx.bezierCurveTo(
        59.0766 * scale,
        33.8803 * scale,
        56.3913 * scale,
        40.7352 * scale,
        51.9713 * scale,
        46.5456 * scale,
    );
    ctx.bezierCurveTo(
        47.0953 * scale,
        52.9547 * scale,
        41.0854 * scale,
        58.5387 * scale,
        34.3206 * scale,
        62.9216 * scale,
    );
    ctx.bezierCurveTo(
        32.7724 * scale,
        63.9347 * scale,
        31.375 * scale,
        64.0112 * scale,
        29.6758 * scale,
        62.9216 * scale,
    );
    ctx.bezierCurveTo(
        22.8724 * scale,
        58.5387 * scale,
        16.8624 * scale,
        52.9547 * scale,
        12.0282 * scale,
        46.5456 * scale,
    );
    ctx.bezierCurveTo(
        7.60501 * scale,
        40.7352 * scale,
        4.92285 * scale,
        33.8803 * scale,
        4.92285 * scale,
        26.4964 * scale,
    );
    ctx.bezierCurveTo(
        4.92285 * scale,
        11.8434 * scale,
        17.1676 * scale,
        0,
        31.9788 * scale,
        0,
    );
    ctx.closePath();
    ctx.fill();
}
