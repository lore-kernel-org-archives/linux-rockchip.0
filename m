From: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2] drm/rockchip: vop: Support dithering to RGB666
Date: Tue, 19 Feb 2019 10:08:48 +0000
Message-ID: <20190219100848.2222-1-urjaman@gmail.com>
References: <20190217134255.6287-1-urjaman@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190217134255.6287-1-urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
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
This is a version of the patch that is quite inspired by the rockchip
kernel tree (that i hadn't looked at enough), but still keeps
to just implementing RGB666 dithering because more changes
are needed to get the information in place for detecting RGB565,
but adding that should be easier afterwards.

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 25 +++++++++++++++++----
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 14 +++++++++++-
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 18 +++++++++++++--
 3 files changed, 50 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 0c35a88e33dd..98c8b5b7627b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -951,10 +951,27 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	    !(vop_data->feature & VOP_FEATURE_OUTPUT_RGB10))
 		s->output_mode = ROCKCHIP_OUT_MODE_P888;
 
-	if (s->output_mode == ROCKCHIP_OUT_MODE_AAAA && s->output_bpc == 8)
-		VOP_REG_SET(vop, common, pre_dither_down, 1);
-	else
-		VOP_REG_SET(vop, common, pre_dither_down, 0);
+	if (s->output_bpc) { /* Only dither if bpc known. */
+		if (vop_data->feature & VOP_FEATURE_OUTPUT_RGB10) {
+			if (s->output_mode == ROCKCHIP_OUT_MODE_AAAA && s->output_bpc <= 8)
+				VOP_REG_SET(vop, common, pre_dither_down, 1);
+			else
+				VOP_REG_SET(vop, common, pre_dither_down, 0);
+		}
+		if (s->output_bpc == 6) {
+			/* Enable allegro dither to RGB666 */
+			VOP_REG_SET(vop, common, dither_down_sel, DITHER_DOWN_ALLEGRO);
+			VOP_REG_SET(vop, common, dither_down_mode, RGB888_TO_RGB666);
+			VOP_REG_SET(vop, common, dither_down_en, 1);
+		} else {
+			VOP_REG_SET(vop, common, dither_down_en, 0);
+		}
+	} else {
+		if (vop_data->feature & VOP_FEATURE_OUTPUT_RGB10)
+			VOP_REG_SET(vop, common, pre_dither_down, 0);
+
+		VOP_REG_SET(vop, common, dither_down_en, 0);
+	}
 
 	VOP_REG_SET(vop, common, out_mode, s->output_mode);
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index fd5765dfd637..92050de140b6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -68,7 +68,9 @@ struct vop_common {
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
@@ -268,6 +270,16 @@ enum scale_down_mode {
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
index a6db3cd5544b..59266c473795 100644
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
 
@@ -350,6 +356,9 @@ static const struct vop_common rk3188_common = {
 	.standby = VOP_REG(RK3188_SYS_CTRL, 0x1, 30),
 	.out_mode = VOP_REG(RK3188_DSP_CTRL0, 0xf, 0),
 	.cfg_done = VOP_REG(RK3188_REG_CFG_DONE, 0x1, 0),
+	.dither_down_sel = VOP_REG(RK3188_DSP_CTRL0, 0x1, 27),
+	.dither_down_en = VOP_REG(RK3188_DSP_CTRL0, 0x1, 11),
+	.dither_down_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 10),
 	.dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x3, 24),
 };
 
@@ -473,8 +482,10 @@ static const struct vop_common rk3288_common = {
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
@@ -707,7 +718,10 @@ static const struct vop_misc rk3328_misc = {
 
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
2.20.1
