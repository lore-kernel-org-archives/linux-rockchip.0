From: Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2 7/7] drm: bridge: dw-hdmi: get phy ops by device type
Date: Sat, 30 Sep 2017 09:46:16 +0800
Message-ID: <1506735976-153815-1-git-send-email-algea.cao@rock-chips.com>
References: <1506735713-147081-0>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506735713-147081-0>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.vetter@intel.com, jani.nikula@linux.intel.com, seanpaul@chromium.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, mark.yao@rock-chips.com, yang.zheng@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add device type to distinguish different chips.Different chips
use different phy ops, get them by device type.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 34eeaf6..b414aef 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -144,6 +144,7 @@ struct dw_hdmi {
 	const struct dw_hdmi_plat_data *plat_data;
 
 	int vic;
+	enum dw_hdmi_devtype dev_type;
 
 	u8 edid[HDMI_EDID_LEN];
 	bool cable_plugin;
@@ -2202,7 +2203,9 @@ static int dw_hdmi_detect_phy(struct dw_hdmi *hdmi)
 
 	phy_type = hdmi_readb(hdmi, HDMI_CONFIG2_ID);
 
-	if (phy_type == DW_HDMI_PHY_VENDOR_PHY) {
+	if (phy_type == DW_HDMI_PHY_VENDOR_PHY ||
+	    hdmi->dev_type == RK3328_HDMI ||
+	    hdmi->dev_type == RK3228_HDMI) {
 		/* Vendor PHYs require support from the glue layer. */
 		if (!hdmi->plat_data->phy_ops || !hdmi->plat_data->phy_name) {
 			dev_err(hdmi->dev,
@@ -2298,6 +2301,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
 	if (!hdmi)
 		return ERR_PTR(-ENOMEM);
 
+	hdmi->dev_type = plat_data->dev_type;
 	hdmi->plat_data = plat_data;
 	hdmi->dev = dev;
 	hdmi->sample_rate = 48000;
-- 
2.7.4
