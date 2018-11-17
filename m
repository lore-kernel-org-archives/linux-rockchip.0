From: Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
Subject: [PATCH] drm/rockchip: support hwc layer
Date: Sun, 18 Nov 2018 00:58:16 +0800
Message-ID: <20181117165816.26152-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>

The Windows 2/3 or a RGB UI layer is a high performance flexibly
plane. It is too waste to use it as a cursor plane.

I have verified this patch with weston git version, I am not
sure whether X would meet with this patch. As the previous
author is gone, I can't confirm this problem with him.

Signed-off-by: Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 30 +++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 42 ++++++++++++++++++++++++++---
 2 files changed, 68 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 9301006329e8..1103049da91f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -223,6 +223,16 @@ static bool has_rb_swapped(uint32_t format)
 	}
 }
 
+static bool is_yuv_10bit (uint32_t format)
+{
+	switch (format) {
+	case DRM_FORMAT_NV12_10LE40:
+		return true;
+	default:
+		return false;
+	};
+}
+
 static enum vop_data_format vop_convert_format(uint32_t format)
 {
 	switch (format) {
@@ -755,6 +765,26 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 
 	dsp_info = (drm_rect_height(dest) - 1) << 16;
 	dsp_info |= (drm_rect_width(dest) - 1) & 0xffff;
+	/* HWC layer only supports various of square icon */
+	if (plane->type == DRM_PLANE_TYPE_CURSOR) {
+		switch (actual_w) {
+		case 32:
+			dsp_info = 0;
+			break;
+		case 64:
+			dsp_info = 0x1;
+			break;
+		case 94:
+			dsp_info = 0x10;
+			break;
+		case 128:
+			dsp_info = 0x11;
+			break;
+		/* Unsupported pixel resolution */
+		default:
+			return;
+		}
+	}
 
 	dsp_stx = dest->x1 + crtc->mode.htotal - crtc->mode.hsync_start;
 	dsp_sty = dest->y1 + crtc->mode.vtotal - crtc->mode.vsync_start;
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 6370f7d33273..0f7809511388 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -64,6 +64,15 @@ static const uint32_t formats_win_lite[] = {
 	DRM_FORMAT_BGR565,
 };
 
+static const uint32_t formats_win_hwc[] = {
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_RGB888,
+	DRM_FORMAT_BGR888,
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_BGR565,
+};
+
 static const struct vop_scl_regs rk3036_win_scl = {
 	.scale_yrgb_x = VOP_REG(RK3036_WIN0_SCL_FACTOR_YRGB, 0xffff, 0x0),
 	.scale_yrgb_y = VOP_REG(RK3036_WIN0_SCL_FACTOR_YRGB, 0xffff, 16),
@@ -458,6 +467,19 @@ static const struct vop_win_phy rk3288_win23_data = {
 	.dst_alpha_ctl = VOP_REG(RK3288_WIN2_DST_ALPHA_CTRL, 0xff, 0),
 };
 
+static const struct vop_win_phy rk3288_winhwc_data = {
+	.data_formats = formats_win_hwc,
+	.nformats = ARRAY_SIZE(formats_win_hwc),
+	.enable = VOP_REG(RK3288_HWC_CTRL0, 0x1, 0),
+	.format = VOP_REG(RK3288_HWC_CTRL0, 0x7, 1),
+	.rb_swap = VOP_REG(RK3288_HWC_CTRL0, 0x1, 12),
+	.dsp_info = VOP_REG(RK3288_HWC_CTRL0, 0x3, 5),
+	.dsp_st = VOP_REG(RK3288_HWC_DSP_ST, 0x1fff1fff, 0),
+	.yrgb_mst = VOP_REG(RK3288_HWC_MST, 0xffffffff, 0),
+	.src_alpha_ctl = VOP_REG(RK3288_HWC_SRC_ALPHA_CTRL, 0xffff, 0),
+	.dst_alpha_ctl = VOP_REG(RK3288_HWC_DST_ALPHA_CTRL, 0xffffffff, 0),
+};
+
 static const struct vop_modeset rk3288_modeset = {
 	.htotal_pw = VOP_REG(RK3288_DSP_HTOTAL_HS_END, 0x1fff1fff, 0),
 	.hact_st_end = VOP_REG(RK3288_DSP_HACT_ST_END, 0x1fff1fff, 0),
@@ -502,7 +524,10 @@ static const struct vop_win_data rk3288_vop_win_data[] = {
 	{ .base = 0x00, .phy = &rk3288_win23_data,
 	  .type = DRM_PLANE_TYPE_OVERLAY },
 	{ .base = 0x50, .phy = &rk3288_win23_data,
-	  .type = DRM_PLANE_TYPE_CURSOR },
+	  .type = DRM_PLANE_TYPE_OVERLAY },
+	{ .base = 0x00, .phy = &rk3288_winhwc_data,
+	  .type = DRM_PLANE_TYPE_CURSOR,
+	},
 };
 
 static const int rk3288_vop_intrs[] = {
@@ -575,7 +600,10 @@ static const struct vop_win_data rk3368_vop_win_data[] = {
 	{ .base = 0x00, .phy = &rk3368_win23_data,
 	  .type = DRM_PLANE_TYPE_OVERLAY },
 	{ .base = 0x50, .phy = &rk3368_win23_data,
-	  .type = DRM_PLANE_TYPE_CURSOR },
+	  .type = DRM_PLANE_TYPE_OVERLAY },
+	{ .base = 0x00, .phy = &rk3288_winhwc_data,
+	  .type = DRM_PLANE_TYPE_CURSOR,
+	},
 };
 
 static const struct vop_output rk3368_output = {
@@ -655,7 +683,10 @@ static const struct vop_win_data rk3399_vop_lit_win_data[] = {
 	{ .base = 0x00, .phy = &rk3288_win01_data,
 	  .type = DRM_PLANE_TYPE_PRIMARY },
 	{ .base = 0x00, .phy = &rk3368_win23_data,
-	  .type = DRM_PLANE_TYPE_CURSOR},
+	  .type = DRM_PLANE_TYPE_OVERLAY},
+	{ .base = 0x00, .phy = &rk3288_winhwc_data,
+	  .type = DRM_PLANE_TYPE_CURSOR,
+	},
 };
 
 static const struct vop_data rk3399_vop_lit = {
@@ -737,7 +768,10 @@ static const struct vop_win_data rk3328_vop_win_data[] = {
 	{ .base = 0x1d0, .phy = &rk3288_win01_data,
 	  .type = DRM_PLANE_TYPE_OVERLAY },
 	{ .base = 0x2d0, .phy = &rk3288_win01_data,
-	  .type = DRM_PLANE_TYPE_CURSOR },
+	  .type = DRM_PLANE_TYPE_OVERLAY },
+	{ .base = 0x00, .phy = &rk3288_winhwc_data,
+	  .type = DRM_PLANE_TYPE_CURSOR,
+	},
 };
 
 static const struct vop_data rk3328_vop = {
-- 
2.14.5
