From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v2 2/3] drm/rockchip: Add rockchip_vop_get_offset to get offset
Date: Thu, 26 Sep 2019 16:24:48 +0800
Message-ID: <1569486289-152061-3-git-send-email-hjc@rock-chips.com>
References: <1569486289-152061-1-git-send-email-hjc@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1569486289-152061-1-git-send-email-hjc@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: maarten.lankhorst@linux.intel.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add rockchip_vop_get_offset to get offset, this can compatible legacy
and block_h/w format describe.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 61 ++++++++++++++++++++++++-----
 1 file changed, 52 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 2f821c5..ce74218 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -249,6 +249,56 @@ static bool has_rb_swapped(uint32_t format)
 	}
 }
 
+static u32 rockchip_vop_get_offset(struct drm_plane_state *state, u8 plane)
+{
+	const struct drm_format_info *info;
+	struct drm_rect *src = &state->src;
+	struct drm_framebuffer *fb = state->fb;
+	u32 format = fb->format->format;
+	u8 h_div = 1, v_div = 1;
+	u32 block_w, block_h, block_size, block_start_y, num_hblocks;
+	u32 sample_x, sample_y;
+	u32 offset;
+
+	info = drm_format_info(format);
+	if (!info || plane >= info->num_planes)
+		return 0;
+
+	if (plane > 0) {
+		h_div = fb->format->hsub;
+		v_div = fb->format->vsub;
+	}
+
+	switch (format) {
+	case DRM_FORMAT_NV12_10:
+	case DRM_FORMAT_NV21_10:
+	case DRM_FORMAT_NV16_10:
+	case DRM_FORMAT_NV61_10:
+	case DRM_FORMAT_NV24_10:
+	case DRM_FORMAT_NV42_10:
+		block_w = drm_format_info_block_width(fb->format, plane);
+		block_h = drm_format_info_block_height(fb->format, plane);
+		block_size = fb->format->char_per_block[plane];
+
+		sample_x = (src->x1 >> 16) / h_div;
+		sample_y = (src->y1 >> 16) / v_div;
+		block_start_y = (sample_y / block_h) * block_h;
+		num_hblocks = sample_x / block_w;
+
+		offset = fb->pitches[plane] * block_start_y;
+		offset += block_size * num_hblocks;
+
+		break;
+	default:
+		offset = (src->x1 >> 16) * fb->format->cpp[plane] / h_div;
+		offset += (src->y1 >> 16) * fb->pitches[plane] / v_div;
+
+		break;
+	}
+
+	return offset;
+}
+
 static enum vop_data_format vop_convert_format(uint32_t format)
 {
 	switch (format) {
@@ -832,8 +882,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	dsp_sty = dest->y1 + crtc->mode.vtotal - crtc->mode.vsync_start;
 	dsp_st = dsp_sty << 16 | (dsp_stx & 0xffff);
 
-	offset = (src->x1 >> 16) * fb->format->cpp[0];
-	offset += (src->y1 >> 16) * fb->pitches[0];
+	offset = rockchip_vop_get_offset(state, 0);
 	dma_addr = rk_obj->dma_addr + offset + fb->offsets[0];
 
 	/*
@@ -857,16 +906,10 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 		    (state->rotation & DRM_MODE_REFLECT_X) ? 1 : 0);
 
 	if (is_yuv) {
-		int hsub = fb->format->hsub;
-		int vsub = fb->format->vsub;
-		int bpp = fb->format->cpp[1];
-
 		uv_obj = fb->obj[1];
 		rk_uv_obj = to_rockchip_obj(uv_obj);
 
-		offset = (src->x1 >> 16) * bpp / hsub;
-		offset += (src->y1 >> 16) * fb->pitches[1] / vsub;
-
+		offset = rockchip_vop_get_offset(state, 1);
 		dma_addr = rk_uv_obj->dma_addr + offset + fb->offsets[1];
 		VOP_WIN_SET(vop, win, uv_vir, DIV_ROUND_UP(fb->pitches[1], 4));
 		VOP_WIN_SET(vop, win, uv_mst, dma_addr);
-- 
2.7.4
