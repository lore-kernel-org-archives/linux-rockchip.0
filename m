From: Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2 6/7] drm/rockchip: dw_hdmi: update dw-hdmi encoder enable
Date: Sat, 30 Sep 2017 09:45:51 +0800
Message-ID: <1506735951-153728-1-git-send-email-algea.cao@rock-chips.com>
References: <1506735713-147081-0>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506735713-147081-0>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.vetter@intel.com, jani.nikula@linux.intel.com, seanpaul@chromium.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, mark.yao@rock-chips.com, yang.zheng@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Writing grf register according to device type.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index e1a9941..b9087af 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -349,9 +349,26 @@ static void dw_hdmi_rockchip_encoder_mode_set(struct drm_encoder *encoder,
 static void dw_hdmi_rockchip_encoder_enable(struct drm_encoder *encoder)
 {
 	struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
-	u32 val;
+	struct drm_crtc *crtc = encoder->crtc;
+	u32 val, lcdsel_grf_reg, lcdsel_mask;
 	int ret;
 
+	if (WARN_ON(!crtc || !crtc->state))
+		return;
+
+	switch (hdmi->dev_type) {
+	case RK3288_HDMI:
+		lcdsel_grf_reg = RK3288_GRF_SOC_CON6;
+		lcdsel_mask = RK3288_HDMI_LCDC_SEL;
+		break;
+	case RK3399_HDMI:
+		lcdsel_grf_reg = RK3399_GRF_SOC_CON20;
+		lcdsel_mask = RK3399_HDMI_LCDC_SEL;
+		break;
+	default:
+		return;
+	}
+
 	ret = drm_of_encoder_active_endpoint_id(hdmi->dev->of_node, encoder);
 	if (ret)
 		val = hdmi->chip_data->lcdsel_lit;
-- 
2.7.4
