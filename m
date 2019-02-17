From: Urja Rannikko <urjaman@gmail.com>
Subject: [PATCH] drm/rockchip: vop: Dither down to RGB666 if output bpc is 6
Date: Sun, 17 Feb 2019 13:42:27 +0000
Message-ID: <20190217134255.6287-1-urjaman@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: Urja Rannikko <urjaman@gmail.com>, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, hjc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Tested to fix banding on the 6-bit panel of the ASUS C201.

Signed-off-by: Urja Rannikko <urjaman@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 0c35a88e33dd..96ba1b4cd07b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -896,6 +896,7 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	u16 vsync_len = adjusted_mode->vsync_end - adjusted_mode->vsync_start;
 	u16 vact_st = adjusted_mode->vtotal - adjusted_mode->vsync_start;
 	u16 vact_end = vact_st + vdisplay;
+	uint32_t dither_bits = 0;
 	uint32_t pin_pol, val;
 	int ret;
 
@@ -951,10 +952,15 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	    !(vop_data->feature & VOP_FEATURE_OUTPUT_RGB10))
 		s->output_mode = ROCKCHIP_OUT_MODE_P888;
 
-	if (s->output_mode == ROCKCHIP_OUT_MODE_AAAA && s->output_bpc == 8)
-		VOP_REG_SET(vop, common, pre_dither_down, 1);
-	else
-		VOP_REG_SET(vop, common, pre_dither_down, 0);
+	/* dither_down includes the bit for pre_dither_down */
+	if (s->output_bpc) { /* Only dither if bpc known. */
+		if (s->output_mode == ROCKCHIP_OUT_MODE_AAAA && s->output_bpc <= 8)
+			dither_bits = 0x1;
+		/* Enable allegro dither to RGB666 */
+		if (s->output_bpc == 6)
+			dither_bits |= 0x6;
+	}
+	VOP_REG_SET(vop, common, dither_down, dither_bits);
 
 	VOP_REG_SET(vop, common, out_mode, s->output_mode);
 
-- 
2.20.1
