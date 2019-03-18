From: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v4] drm/rockchip: vop: Support dithering to RGB666
Date: Mon, 18 Mar 2019 15:44:12 +0000
Message-ID: <20190318154412.26994-1-urjaman@gmail.com>
References: <20190318135701.7098-1-urjaman@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190318135701.7098-1-urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Splits out the dither register bits and introduces
the same config enumerations as in the rockchip kernel tree.
Tested to fix the banding on my ASUS C201.

Signed-off-by: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
v4: Simplified the code flow and allow vop_write_reg to deal
with unsupported bits - maybe clean up the debug output later..
-
v3: Support RK3066
- 
This is a version of the patch that is quite inspired by the rockchip
kernel tree (that i hadn't looked at enough), but still keeps
to just implementing RGB666 dithering because more changes
are needed to get the information in place for detecting RGB565,
but adding that should be easier afterwards.
-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 11 ++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 14 +++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 20 ++++++++++++++++++--
 3 files changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index c7d4c6073ea5..a7cbf6c9a153 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1029,6 +1029,7 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	u16 vact_st = adjusted_mode->vtotal - adjusted_mode->vsync_start;
 	u16 vact_end = vact_st + vdisplay;
 	uint32_t pin_pol, val;
+	int dither_bpc = s->output_bpc ? s->output_bpc : 10;
 	int ret;
 
 	mutex_lock(&vop->vop_lock);
@@ -1086,11 +1087,19 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	    !(vop_data->feature & VOP_FEATURE_OUTPUT_RGB10))
 		s->output_mode = ROCKCHIP_OUT_MODE_P888;
 
-	if (s->output_mode == ROCKCHIP_OUT_MODE_AAAA && s->output_bpc == 8)
+	if (s->output_mode == ROCKCHIP_OUT_MODE_AAAA && dither_bpc <= 8)
 		VOP_REG_SET(vop, common, pre_dither_down, 1);
 	else
 		VOP_REG_SET(vop, common, pre_dither_down, 0);
 
+	if (dither_bpc == 6) {
+		VOP_REG_SET(vop, common, dither_down_sel, DITHER_DOWN_ALLEGRO);
+		VOP_REG_SET(vop, common, dither_down_mode, RGB888_TO_RGB666);
+		VOP_REG_SET(vop, common, dither_down_en, 1);
+	} else {
+		VOP_REG_SET(vop, common, dither_down_en, 0);
+	}
+
 	VOP_REG_SET(vop, common, out_mode, s->output_mode);
 
 	VOP_REG_SET(vop, modeset, htotal_pw, (htotal << 16) | hsync_len);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 04ed401d2325..e64351dab610 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -71,7 +71,9 @@ struct vop_common {
 	struct vop_reg dsp_blank;
 	struct vop_reg data_blank;
 	struct vop_reg pre_dither_down;
-	struct vop_reg dither_down;
+	struct vop_reg dither_down_sel;
+	struct vop_reg dither_down_mode;
+	struct vop_reg dither_down_en;
 	struct vop_reg dither_up;
 	struct vop_reg gate_en;
 	struct vop_reg mmu_en;
@@ -287,6 +289,16 @@ enum scale_down_mode {
 	SCALE_DOWN_AVG = 0x1
 };
 
+enum dither_down_mode {
+	RGB888_TO_RGB565 = 0x0,
+	RGB888_TO_RGB666 = 0x1
+};
+
+enum dither_down_mode_sel {
+	DITHER_DOWN_ALLEGRO = 0x0,
+	DITHER_DOWN_FRC = 0x1
+};
+
 enum vop_pol {
 	HSYNC_POSITIVE = 0,
 	VSYNC_POSITIVE = 1,
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index bd76328c0fdb..e732b73033c8 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -137,6 +137,9 @@ static const struct vop_common rk3036_common = {
 	.standby = VOP_REG_SYNC(RK3036_SYS_CTRL, 0x1, 30),
 	.out_mode = VOP_REG(RK3036_DSP_CTRL0, 0xf, 0),
 	.dsp_blank = VOP_REG(RK3036_DSP_CTRL1, 0x1, 24),
+	.dither_down_sel = VOP_REG(RK3036_DSP_CTRL0, 0x1, 27),
+	.dither_down_en = VOP_REG(RK3036_DSP_CTRL0, 0x1, 11),
+	.dither_down_mode = VOP_REG(RK3036_DSP_CTRL0, 0x1, 10),
 	.cfg_done = VOP_REG_SYNC(RK3036_REG_CFG_DONE, 0x1, 0),
 };
 
@@ -200,6 +203,9 @@ static const struct vop_common px30_common = {
 	.standby = VOP_REG_SYNC(PX30_SYS_CTRL2, 0x1, 1),
 	.out_mode = VOP_REG(PX30_DSP_CTRL2, 0xf, 16),
 	.dsp_blank = VOP_REG(PX30_DSP_CTRL2, 0x1, 14),
+	.dither_down_en = VOP_REG(PX30_DSP_CTRL2, 0x1, 8),
+	.dither_down_sel = VOP_REG(PX30_DSP_CTRL2, 0x1, 7),
+	.dither_down_mode = VOP_REG(PX30_DSP_CTRL2, 0x1, 6),
 	.cfg_done = VOP_REG_SYNC(PX30_REG_CFG_DONE, 0x1, 0),
 };
 
@@ -365,6 +371,8 @@ static const struct vop_common rk3066_common = {
 	.standby = VOP_REG(RK3066_SYS_CTRL0, 0x1, 1),
 	.out_mode = VOP_REG(RK3066_DSP_CTRL0, 0xf, 0),
 	.cfg_done = VOP_REG(RK3066_REG_CFG_DONE, 0x1, 0),
+	.dither_down_en = VOP_REG(RK3066_DSP_CTRL0, 0x1, 11),
+	.dither_down_mode = VOP_REG(RK3066_DSP_CTRL0, 0x1, 10),
 	.dsp_blank = VOP_REG(RK3066_DSP_CTRL1, 0x1, 24),
 };
 
@@ -458,6 +466,9 @@ static const struct vop_common rk3188_common = {
 	.standby = VOP_REG(RK3188_SYS_CTRL, 0x1, 30),
 	.out_mode = VOP_REG(RK3188_DSP_CTRL0, 0xf, 0),
 	.cfg_done = VOP_REG(RK3188_REG_CFG_DONE, 0x1, 0),
+	.dither_down_sel = VOP_REG(RK3188_DSP_CTRL0, 0x1, 27),
+	.dither_down_en = VOP_REG(RK3188_DSP_CTRL0, 0x1, 11),
+	.dither_down_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 10),
 	.dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x3, 24),
 };
 
@@ -585,8 +596,10 @@ static const struct vop_common rk3288_common = {
 	.standby = VOP_REG_SYNC(RK3288_SYS_CTRL, 0x1, 22),
 	.gate_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 23),
 	.mmu_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 20),
+	.dither_down_sel = VOP_REG(RK3288_DSP_CTRL1, 0x1, 4),
+	.dither_down_mode = VOP_REG(RK3288_DSP_CTRL1, 0x1, 3),
+	.dither_down_en = VOP_REG(RK3288_DSP_CTRL1, 0x1, 2),
 	.pre_dither_down = VOP_REG(RK3288_DSP_CTRL1, 0x1, 1),
-	.dither_down = VOP_REG(RK3288_DSP_CTRL1, 0xf, 1),
 	.dither_up = VOP_REG(RK3288_DSP_CTRL1, 0x1, 6),
 	.data_blank = VOP_REG(RK3288_DSP_CTRL0, 0x1, 19),
 	.dsp_blank = VOP_REG(RK3288_DSP_CTRL0, 0x3, 18),
@@ -878,7 +891,10 @@ static const struct vop_misc rk3328_misc = {
 
 static const struct vop_common rk3328_common = {
 	.standby = VOP_REG_SYNC(RK3328_SYS_CTRL, 0x1, 22),
-	.dither_down = VOP_REG(RK3328_DSP_CTRL1, 0xf, 1),
+	.dither_down_sel = VOP_REG(RK3328_DSP_CTRL1, 0x1, 4),
+	.dither_down_mode = VOP_REG(RK3328_DSP_CTRL1, 0x1, 3),
+	.dither_down_en = VOP_REG(RK3328_DSP_CTRL1, 0x1, 2),
+	.pre_dither_down = VOP_REG(RK3328_DSP_CTRL1, 0x1, 1),
 	.dither_up = VOP_REG(RK3328_DSP_CTRL1, 0x1, 6),
 	.dsp_blank = VOP_REG(RK3328_DSP_CTRL0, 0x3, 18),
 	.out_mode = VOP_REG(RK3328_DSP_CTRL0, 0xf, 0),
-- 
2.21.0
