From: Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2 5/7] drm/rockchip: dw_hdmi: add hclk_vio
Date: Sat, 30 Sep 2017 09:45:12 +0800
Message-ID: <1506735912-152263-1-git-send-email-algea.cao@rock-chips.com>
References: <1506735713-147081-0>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506735713-147081-0>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.vetter@intel.com, jani.nikula@linux.intel.com, seanpaul@chromium.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, mark.yao@rock-chips.com, yang.zheng@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add clk hclk_vio and enable it when hdmi bind.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 7658b2f..e1a9941 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -61,6 +61,7 @@ struct rockchip_hdmi {
 	enum dw_hdmi_devtype dev_type;
 	struct clk *vpll_clk;
 	struct clk *grf_clk;
+	struct clk *hclk_vio;
 	struct phy *phy;
 };
 
@@ -277,12 +278,27 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return PTR_ERR(hdmi->grf_clk);
 	}
 
+	hdmi->hclk_vio = devm_clk_get(hdmi->dev, "hclk_vio");
+	if (PTR_ERR(hdmi->hclk_vio) == -ENOENT) {
+		hdmi->hclk_vio = NULL;
+	} else if (PTR_ERR(hdmi->hclk_vio) == -EPROBE_DEFER) {
+		return -EPROBE_DEFER;
+	} else if (IS_ERR(hdmi->hclk_vio)) {
+		dev_dbg(hdmi->dev, "failed to get hclk_vio clock\n");
+		return PTR_ERR(hdmi->hclk_vio);
+	}
 	ret = clk_prepare_enable(hdmi->vpll_clk);
 	if (ret) {
 		dev_err(hdmi->dev, "Failed to enable HDMI vpll: %d\n", ret);
 		return ret;
 	}
 
+	ret = clk_prepare_enable(hdmi->hclk_vio);
+	if (ret) {
+		dev_dbg(hdmi->dev, "Failed to eanble HDMI hclk_vio: %d\n",
+			ret);
+		return ret;
+	}
 	return 0;
 }
 
@@ -506,6 +522,11 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 				    void *data)
 {
+	struct rockchip_hdmi *hdmi = container_of(&dev, struct rockchip_hdmi,
+						  dev);
+
+	clk_disable_unprepare(hdmi->hclk_vio);
+
 	return dw_hdmi_unbind(dev);
 }
 
-- 
2.7.4
