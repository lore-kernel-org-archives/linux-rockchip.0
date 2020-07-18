From: Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 3/5] drm: rockchip: add alpha support for RK3036, RK3066, RK3126 and RK3188
Date: Sat, 18 Jul 2020 22:03:21 +0200
Message-ID: <20200718200323.3559-4-knaerzche@gmail.com>
References: <20200718200323.3559-1-knaerzche@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200718200323.3559-1-knaerzche@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner=20?= <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

With commit 2aae8ed1f390
("drm/rockchip: Add per-pixel alpha support for the PX30 VOP") alpha
support was introduced for PX30's VOP.
RK3036, RK3066, RK3126 and RK3188 VOPs support alpha blending in the
same manner.
With the exception of RK3066 all of them support pre-multiplied alpha.

This patch adds the respective registers to make this work for those VOPs
as well.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 971a6bda7458..f2f9a9af39e3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -104,6 +104,9 @@ static const struct vop_win_phy rk3036_win0_data = {
 	.uv_mst = VOP_REG(RK3036_WIN0_CBR_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3036_WIN0_VIR, 0xffff, 0),
 	.uv_vir = VOP_REG(RK3036_WIN0_VIR, 0x1fff, 16),
+	.alpha_mode = VOP_REG(RK3036_DSP_CTRL0, 0x1, 18),
+	.alpha_en = VOP_REG(RK3036_ALPHA_CTRL, 0x1, 0),
+	.alpha_pre_mul = VOP_REG(RK3036_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_win_phy rk3036_win1_data = {
@@ -119,6 +122,9 @@ static const struct vop_win_phy rk3036_win1_data = {
 	.dsp_st = VOP_REG(RK3036_WIN1_DSP_ST, 0x1fff1fff, 0),
 	.yrgb_mst = VOP_REG(RK3036_WIN1_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3036_WIN1_VIR, 0xffff, 0),
+	.alpha_mode = VOP_REG(RK3036_DSP_CTRL0, 0x1, 19),
+	.alpha_en = VOP_REG(RK3036_ALPHA_CTRL, 0x1, 1),
+	.alpha_pre_mul = VOP_REG(RK3036_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_win_data rk3036_vop_win_data[] = {
@@ -185,6 +191,9 @@ static const struct vop_win_phy rk3126_win1_data = {
 	.dsp_st = VOP_REG(RK3126_WIN1_DSP_ST, 0x1fff1fff, 0),
 	.yrgb_mst = VOP_REG(RK3126_WIN1_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3036_WIN1_VIR, 0xffff, 0),
+	.alpha_mode = VOP_REG(RK3036_DSP_CTRL0, 0x1, 19),
+	.alpha_en = VOP_REG(RK3036_ALPHA_CTRL, 0x1, 1),
+	.alpha_pre_mul = VOP_REG(RK3036_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_win_data rk3126_vop_win_data[] = {
@@ -364,6 +373,8 @@ static const struct vop_win_phy rk3066_win0_data = {
 	.uv_mst = VOP_REG(RK3066_WIN0_CBR_MST0, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3066_WIN0_VIR, 0xffff, 0),
 	.uv_vir = VOP_REG(RK3066_WIN0_VIR, 0x1fff, 16),
+	.alpha_mode = VOP_REG(RK3066_DSP_CTRL0, 0x1, 21),
+	.alpha_en = VOP_REG(RK3066_BLEND_CTRL, 0x1, 0),
 };
 
 static const struct vop_win_phy rk3066_win1_data = {
@@ -381,6 +392,8 @@ static const struct vop_win_phy rk3066_win1_data = {
 	.uv_mst = VOP_REG(RK3066_WIN1_CBR_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3066_WIN1_VIR, 0xffff, 0),
 	.uv_vir = VOP_REG(RK3066_WIN1_VIR, 0x1fff, 16),
+	.alpha_mode = VOP_REG(RK3066_DSP_CTRL0, 0x1, 22),
+	.alpha_en = VOP_REG(RK3066_BLEND_CTRL, 0x1, 1),
 };
 
 static const struct vop_win_phy rk3066_win2_data = {
@@ -394,6 +407,8 @@ static const struct vop_win_phy rk3066_win2_data = {
 	.dsp_st = VOP_REG(RK3066_WIN2_DSP_ST, 0x1fff1fff, 0),
 	.yrgb_mst = VOP_REG(RK3066_WIN2_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3066_WIN2_VIR, 0xffff, 0),
+	.alpha_mode = VOP_REG(RK3066_DSP_CTRL0, 0x1, 23),
+	.alpha_en = VOP_REG(RK3066_BLEND_CTRL, 0x1, 2),
 };
 
 static const struct vop_modeset rk3066_modeset = {
@@ -476,6 +491,9 @@ static const struct vop_win_phy rk3188_win0_data = {
 	.yrgb_mst = VOP_REG(RK3188_WIN0_YRGB_MST0, 0xffffffff, 0),
 	.uv_mst = VOP_REG(RK3188_WIN0_CBR_MST0, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3188_WIN_VIR, 0x1fff, 0),
+	.alpha_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 18),
+	.alpha_en = VOP_REG(RK3188_ALPHA_CTRL, 0x1, 0),
+	.alpha_pre_mul = VOP_REG(RK3188_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_win_phy rk3188_win1_data = {
@@ -490,6 +508,9 @@ static const struct vop_win_phy rk3188_win1_data = {
 	.dsp_st = VOP_REG(RK3188_WIN1_DSP_ST, 0x0fff0fff, 0),
 	.yrgb_mst = VOP_REG(RK3188_WIN1_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3188_WIN_VIR, 0x1fff, 16),
+	.alpha_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 19),
+	.alpha_en = VOP_REG(RK3188_ALPHA_CTRL, 0x1, 1),
+	.alpha_pre_mul = VOP_REG(RK3188_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_modeset rk3188_modeset = {
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
index 6e9fa5815d4d..0b3cd65ba5c1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
@@ -955,6 +955,7 @@
 #define RK3188_DSP_CTRL0		0x04
 #define RK3188_DSP_CTRL1		0x08
 #define RK3188_INT_STATUS		0x10
+#define RK3188_ALPHA_CTRL		0x14
 #define RK3188_WIN0_YRGB_MST0		0x20
 #define RK3188_WIN0_CBR_MST0		0x24
 #define RK3188_WIN0_YRGB_MST1		0x28
-- 
2.17.1
