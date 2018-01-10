From: Thierry Escande <thierry.escande@collabora.com>
Subject: [PATCH v8 8/8] drm/rockchip: dw_hdmi: Fix error handling path
Date: Wed, 10 Jan 2018 17:23:48 +0100
Message-ID: <20180110162348.22765-9-thierry.escande@collabora.com>
References: <20180110162348.22765-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset = "utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180110162348.22765-1-thierry.escande@collabora.com>
Content-Transfert-Encoding: 8bit
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Archit Taneja <architt@codeaurora.org>, Daniel Vetter <daniel.vetter@intel.com>, Neil Armstrong <narmstrong@baylibre.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sandy Huang <hjc@rock-chips.com>
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

Add missing clk_disable_unprepare() in bind()'s error handling path and
unbind().

Also inline clk_prepare_enable() with bind().

Fixes: 12b9f204e804 ("drm: bridge/dw_hdmi: add rockchip rk3288 support")
Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index d406d7779ed9..0b2c1a5dd1e6 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -166,7 +166,6 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 {
 	struct device_node *np = hdmi->dev->of_node;
-	int ret;
 
 	hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(hdmi->regmap)) {
@@ -194,13 +193,6 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return PTR_ERR(hdmi->grf_clk);
 	}
 
-	ret = clk_prepare_enable(hdmi->vpll_clk);
-	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev,
-			      "Failed to enable HDMI vpll: %d\n", ret);
-		return ret;
-	}
-
 	return 0;
 }
 
@@ -375,6 +367,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	ret = clk_prepare_enable(hdmi->vpll_clk);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
+			      ret);
+		return ret;
+	}
+
 	drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
 	drm_encoder_init(drm, encoder, &dw_hdmi_rockchip_encoder_funcs,
 			 DRM_MODE_ENCODER_TMDS, NULL);
@@ -382,6 +381,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);
 	if (IS_ERR(hdmi->hdmi)) {
 		encoder->funcs->destroy(encoder);
+		clk_disable_unprepare(hdmi->vpll_clk);
 		return PTR_ERR(hdmi->hdmi);
 	}
 
@@ -397,6 +397,7 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 
 	dw_hdmi_unbind(hdmi->hdmi);
 	hdmi->encoder.funcs->destroy(&hdmi->encoder);
+	clk_disable_unprepare(hdmi->vpll_clk);
 }
 
 static const struct component_ops dw_hdmi_rockchip_ops = {
-- 
2.14.1
