From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH 1/1] drm/rockchip: vop: add the definition of dclk_pol
Date: Thu, 10 Oct 2019 11:44:52 +0800
Message-ID: <20191010034452.20260-2-nickey.yang@rock-chips.com>
References: <20191010034452.20260-1-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191010034452.20260-1-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, hjc@rock-chips.com
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com, seanpaul@chromium.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Some VOP's (such as px30) dclk_pol bit is at the last.
So it is necessary to distinguish dclk_pol and pin_pol.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 12 +++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  8 +++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 45 ++++++++++++++-------
 3 files changed, 43 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 613404f86668..0d6682ed9e15 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1085,9 +1085,7 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 		DRM_DEV_ERROR(vop->dev, "Failed to enable vop (%d)\n", ret);
 		return;
 	}
-
-	pin_pol = BIT(DCLK_INVERT);
-	pin_pol |= (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC) ?
+	pin_pol = (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC) ?
 		   BIT(HSYNC_POSITIVE) : 0;
 	pin_pol |= (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC) ?
 		   BIT(VSYNC_POSITIVE) : 0;
@@ -1096,25 +1094,29 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	switch (s->output_type) {
 	case DRM_MODE_CONNECTOR_LVDS:
-		VOP_REG_SET(vop, output, rgb_en, 1);
+		VOP_REG_SET(vop, output, rgb_dclk_pol, 1);
 		VOP_REG_SET(vop, output, rgb_pin_pol, pin_pol);
+		VOP_REG_SET(vop, output, rgb_en, 1);
 		break;
 	case DRM_MODE_CONNECTOR_eDP:
+		VOP_REG_SET(vop, output, edp_dclk_pol, 1);
 		VOP_REG_SET(vop, output, edp_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, edp_en, 1);
 		break;
 	case DRM_MODE_CONNECTOR_HDMIA:
+		VOP_REG_SET(vop, output, hdmi_dclk_pol, 1);
 		VOP_REG_SET(vop, output, hdmi_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, hdmi_en, 1);
 		break;
 	case DRM_MODE_CONNECTOR_DSI:
+		VOP_REG_SET(vop, output, mipi_dclk_pol, 1);
 		VOP_REG_SET(vop, output, mipi_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, mipi_en, 1);
 		VOP_REG_SET(vop, output, mipi_dual_channel_en,
 			    !!(s->output_flags & ROCKCHIP_OUTPUT_DSI_DUAL));
 		break;
 	case DRM_MODE_CONNECTOR_DisplayPort:
-		pin_pol &= ~BIT(DCLK_INVERT);
+		VOP_REG_SET(vop, output, dp_dclk_pol, 0);
 		VOP_REG_SET(vop, output, dp_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, dp_en, 1);
 		break;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 2149a889c29d..ea1f97a5aa5d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -46,10 +46,15 @@ struct vop_modeset {
 struct vop_output {
 	struct vop_reg pin_pol;
 	struct vop_reg dp_pin_pol;
+	struct vop_reg dp_dclk_pol;
 	struct vop_reg edp_pin_pol;
+	struct vop_reg edp_dclk_pol;
 	struct vop_reg hdmi_pin_pol;
+	struct vop_reg hdmi_dclk_pol;
 	struct vop_reg mipi_pin_pol;
+	struct vop_reg mipi_dclk_pol;
 	struct vop_reg rgb_pin_pol;
+	struct vop_reg rgb_dclk_pol;
 	struct vop_reg dp_en;
 	struct vop_reg edp_en;
 	struct vop_reg hdmi_en;
@@ -294,8 +299,7 @@ enum dither_down_mode_sel {
 enum vop_pol {
 	HSYNC_POSITIVE = 0,
 	VSYNC_POSITIVE = 1,
-	DEN_NEGATIVE   = 2,
-	DCLK_INVERT    = 3
+	DEN_NEGATIVE   = 2
 };
 
 #define FRAC_16_16(mult, div)    (((mult) << 16) / (div))
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index d1494be14471..f92c899d656c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -214,9 +214,11 @@ static const struct vop_modeset px30_modeset = {
 };
 
 static const struct vop_output px30_output = {
-	.rgb_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0xf, 1),
-	.mipi_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0xf, 25),
+	.rgb_dclk_pol = VOP_REG(PX30_DSP_CTRL0, 0x1, 1),
+	.rgb_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0x7, 2),
 	.rgb_en = VOP_REG(PX30_DSP_CTRL0, 0x1, 0),
+	.mipi_dclk_pol = VOP_REG(PX30_DSP_CTRL0, 0x1, 25),
+	.mipi_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0x7, 26),
 	.mipi_en = VOP_REG(PX30_DSP_CTRL0, 0x1, 24),
 };
 
@@ -717,10 +719,14 @@ static const struct vop_win_data rk3368_vop_win_data[] = {
 };
 
 static const struct vop_output rk3368_output = {
-	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 16),
-	.hdmi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 20),
-	.edp_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 24),
-	.mipi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 28),
+	.rgb_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 19),
+	.hdmi_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 23),
+	.edp_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 27),
+	.mipi_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 31),
+	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 16),
+	.hdmi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 20),
+	.edp_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 24),
+	.mipi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 28),
 	.rgb_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 12),
 	.hdmi_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 13),
 	.edp_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 14),
@@ -764,11 +770,16 @@ static const struct vop_data rk3366_vop = {
 };
 
 static const struct vop_output rk3399_output = {
-	.dp_pin_pol = VOP_REG(RK3399_DSP_CTRL1, 0xf, 16),
-	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 16),
-	.hdmi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 20),
-	.edp_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 24),
-	.mipi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0xf, 28),
+	.dp_dclk_pol = VOP_REG(RK3399_DSP_CTRL1, 0x1, 19),
+	.rgb_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 19),
+	.hdmi_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 23),
+	.edp_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 27),
+	.mipi_dclk_pol = VOP_REG(RK3368_DSP_CTRL1, 0x1, 31),
+	.dp_pin_pol = VOP_REG(RK3399_DSP_CTRL1, 0x7, 16),
+	.rgb_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 16),
+	.hdmi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 20),
+	.edp_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 24),
+	.mipi_pin_pol = VOP_REG(RK3368_DSP_CTRL1, 0x7, 28),
 	.dp_en = VOP_REG(RK3399_SYS_CTRL, 0x1, 11),
 	.rgb_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 12),
 	.hdmi_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 13),
@@ -872,14 +883,18 @@ static const struct vop_modeset rk3328_modeset = {
 };
 
 static const struct vop_output rk3328_output = {
+	.rgb_dclk_pol = VOP_REG(RK3328_DSP_CTRL1, 0x1, 19),
+	.hdmi_dclk_pol = VOP_REG(RK3328_DSP_CTRL1, 0x1, 23),
+	.edp_dclk_pol = VOP_REG(RK3328_DSP_CTRL1, 0x1, 27),
+	.mipi_dclk_pol = VOP_REG(RK3328_DSP_CTRL1, 0x1, 31),
 	.rgb_en = VOP_REG(RK3328_SYS_CTRL, 0x1, 12),
 	.hdmi_en = VOP_REG(RK3328_SYS_CTRL, 0x1, 13),
 	.edp_en = VOP_REG(RK3328_SYS_CTRL, 0x1, 14),
 	.mipi_en = VOP_REG(RK3328_SYS_CTRL, 0x1, 15),
-	.rgb_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0xf, 16),
-	.hdmi_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0xf, 20),
-	.edp_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0xf, 24),
-	.mipi_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0xf, 28),
+	.rgb_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0x7, 16),
+	.hdmi_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0x7, 20),
+	.edp_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0x7, 24),
+	.mipi_pin_pol = VOP_REG(RK3328_DSP_CTRL1, 0x7, 28),
 };
 
 static const struct vop_misc rk3328_misc = {
-- 
2.17.1
