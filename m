From: Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2 2/7] drm/rockchip: dw_hdmi: add device type
Date: Sat, 30 Sep 2017 09:43:56 +0800
Message-ID: <1506735836-151661-1-git-send-email-algea.cao@rock-chips.com>
References: <1506735713-147081-0>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506735713-147081-0>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.vetter@intel.com, jani.nikula@linux.intel.com, seanpaul@chromium.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, mark.yao@rock-chips.com, yang.zheng@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

To determine type of SOC, we add a parameter dev_type.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c |  5 +++++
 include/drm/bridge/dw_hdmi.h                | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 719452d..09c77f9 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -46,6 +46,7 @@ struct rockchip_hdmi {
 	struct regmap *regmap;
 	struct drm_encoder encoder;
 	const struct rockchip_hdmi_chip_data *chip_data;
+	enum dw_hdmi_devtype dev_type;
 	struct clk *vpll_clk;
 	struct clk *grf_clk;
 };
@@ -305,6 +306,7 @@ static const struct dw_hdmi_plat_data rk3288_hdmi_drv_data = {
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3288_chip_data,
+	.dev_type   = RK3288_HDMI,
 };
 
 static struct rockchip_hdmi_chip_data rk3399_chip_data = {
@@ -315,6 +317,7 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rockchip_mode_valid,
+	.dev_type   = RK3328_HDMI,
 };
 static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rockchip_mode_valid,
@@ -322,6 +325,7 @@ static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
 	.cur_ctr    = rockchip_cur_ctr,
 	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3399_chip_data,
+	.dev_type   = RK3399_HDMI,
 };
 
 static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
@@ -360,6 +364,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	plat_data = match->data;
 	hdmi->dev = &pdev->dev;
 	hdmi->chip_data = plat_data->phy_data;
+	hdmi->dev_type = plat_data->dev_type;
 	encoder = &hdmi->encoder;
 
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
index 182f832..fdb1f0a 100644
--- a/include/drm/bridge/dw_hdmi.h
+++ b/include/drm/bridge/dw_hdmi.h
@@ -92,6 +92,15 @@ enum dw_hdmi_phy_type {
 	DW_HDMI_PHY_VENDOR_PHY = 0xfe,
 };
 
+enum dw_hdmi_devtype {
+	RK3228_HDMI,
+	RK3288_HDMI,
+	RK3328_HDMI,
+	RK3366_HDMI,
+	RK3368_HDMI,
+	RK3399_HDMI,
+};
+
 struct dw_hdmi_mpll_config {
 	unsigned long mpixelclock;
 	struct {
@@ -124,6 +133,7 @@ struct dw_hdmi_phy_ops {
 
 struct dw_hdmi_plat_data {
 	struct regmap *regm;
+	enum dw_hdmi_devtype dev_type;
 	enum drm_mode_status (*mode_valid)(struct drm_connector *connector,
 					   const struct drm_display_mode *mode);
 	unsigned long input_bus_format;
-- 
2.7.4
