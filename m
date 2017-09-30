From: Algea Cao <algea.cao@rock-chips.com>
Subject: [PATCH v2 4/7] drm/rockchip: dw_hdmi: add inno hdmi phy ops
Date: Sat, 30 Sep 2017 09:44:46 +0800
Message-ID: <1506735886-151761-1-git-send-email-algea.cao@rock-chips.com>
References: <1506735713-147081-0>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506735713-147081-0>
Sender: linux-kernel-owner@vger.kernel.org
To: daniel.vetter@intel.com, jani.nikula@linux.intel.com, seanpaul@chromium.org, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: kever.yang@rock-chips.com, mark.yao@rock-chips.com, yang.zheng@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Because some RK chips use inno hdmi phy, such as RK3328, we add
inno hdmi phy ops.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 110 +++++++++++++++++++++++++++-
 1 file changed, 107 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 09c77f9..7658b2f 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -12,7 +12,7 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
-
+#include <linux/phy/phy.h>
 #include <drm/drm_of.h>
 #include <drm/drmP.h>
 #include <drm/drm_crtc_helper.h>
@@ -26,6 +26,18 @@
 #define RK3288_HDMI_LCDC_SEL		BIT(4)
 #define RK3399_GRF_SOC_CON20		0x6250
 #define RK3399_HDMI_LCDC_SEL		BIT(6)
+#define RK3328_GRF_SOC_CON2		0x0408
+#define RK3328_DDC_MASK_EN		((3 << 10) | (3 << (10 + 16)))
+#define RK3328_GRF_SOC_CON3		0x040c
+#define RK3328_IO_CTRL_BY_HDMI		(0xf0000000 | BIT(13) | BIT(12))
+#define RK3328_GRF_SOC_CON4		0x0410
+#define RK3328_IO_3V_DOMAIN		(7 << (9 + 16))
+#define RK3328_IO_5V_DOMAIN		((7 << 9) | (3 << (9 + 16)))
+#define RK3328_HPD_3V			(BIT(8 + 16) | BIT(13 + 16))
+#define RK3228_GRF_SOC_CON2		0x0408
+#define RK3228_DDC_MASK_EN		((3 << 13) | (3 << (13 + 16)))
+#define RK3228_GRF_SOC_CON6		0x0418
+#define RK3228_IO_3V_DOMAIN		((7 << 4) | (7 << (4 + 16)))
 
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
@@ -49,10 +61,82 @@ struct rockchip_hdmi {
 	enum dw_hdmi_devtype dev_type;
 	struct clk *vpll_clk;
 	struct clk *grf_clk;
+	struct phy *phy;
 };
 
 #define to_rockchip_hdmi(x)	container_of(x, struct rockchip_hdmi, x)
 
+static int
+inno_dw_hdmi_phy_init(struct dw_hdmi *dw_hdmi, void *data,
+		      struct drm_display_mode *mode)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+
+	return phy_power_on(hdmi->phy);
+}
+
+static void inno_dw_hdmi_phy_disable(struct dw_hdmi *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+
+	phy_power_off(hdmi->phy);
+}
+
+static enum drm_connector_status
+inno_dw_hdmi_phy_read_hpd(struct dw_hdmi *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+	enum drm_connector_status status;
+
+	status = dw_hdmi_phy_read_hpd(dw_hdmi, data);
+
+	if (hdmi->dev_type == RK3228_HDMI)
+		return status;
+
+	if (status == connector_status_connected)
+		regmap_write(hdmi->regmap,
+			     RK3328_GRF_SOC_CON4,
+			     RK3328_IO_5V_DOMAIN);
+	else
+		regmap_write(hdmi->regmap,
+			     RK3328_GRF_SOC_CON4,
+			     RK3328_IO_3V_DOMAIN);
+	return status;
+}
+
+static int inno_dw_hdmi_init(struct rockchip_hdmi *hdmi)
+{
+	int ret;
+
+	ret = clk_prepare_enable(hdmi->grf_clk);
+	if (ret < 0) {
+		dev_err(hdmi->dev, "failed to enable grfclk %d\n", ret);
+		return -EPROBE_DEFER;
+	}
+	if (hdmi->dev_type == RK3328_HDMI) {
+		/* Map HPD pin to 3V io */
+		regmap_write(hdmi->regmap,
+			     RK3328_GRF_SOC_CON4,
+			     RK3328_IO_3V_DOMAIN |
+			     RK3328_HPD_3V);
+		/* Map ddc pin to 5V io */
+		regmap_write(hdmi->regmap,
+			     RK3328_GRF_SOC_CON3,
+			     RK3328_IO_CTRL_BY_HDMI);
+		regmap_write(hdmi->regmap,
+			     RK3328_GRF_SOC_CON2,
+			     RK3328_DDC_MASK_EN |
+			     BIT(18));
+	} else {
+		regmap_write(hdmi->regmap, RK3228_GRF_SOC_CON2,
+			     RK3228_DDC_MASK_EN);
+		regmap_write(hdmi->regmap, RK3228_GRF_SOC_CON6,
+			     RK3228_IO_3V_DOMAIN);
+	}
+	clk_disable_unprepare(hdmi->grf_clk);
+	return 0;
+}
+
 static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 	{
 		27000000, {
@@ -294,6 +378,12 @@ static const struct drm_encoder_helper_funcs dw_hdmi_rockchip_encoder_helper_fun
 	.atomic_check = dw_hdmi_rockchip_encoder_atomic_check,
 };
 
+static const struct dw_hdmi_phy_ops inno_dw_hdmi_phy_ops = {
+	.init		= inno_dw_hdmi_phy_init,
+	.disable	= inno_dw_hdmi_phy_disable,
+	.read_hpd	= inno_dw_hdmi_phy_read_hpd,
+};
+
 static struct rockchip_hdmi_chip_data rk3288_chip_data = {
 	.lcdsel_grf_reg = RK3288_GRF_SOC_CON6,
 	.lcdsel_big = HIWORD_UPDATE(0, RK3288_HDMI_LCDC_SEL),
@@ -317,6 +407,8 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rockchip_mode_valid,
+	.phy_ops    = &inno_dw_hdmi_phy_ops,
+	.phy_name   = "inno_dw_hdmi_phy2",
 	.dev_type   = RK3328_HDMI,
 };
 static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
@@ -346,7 +438,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 				 void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
-	const struct dw_hdmi_plat_data *plat_data;
+	struct dw_hdmi_plat_data *plat_data;
 	const struct of_device_id *match;
 	struct drm_device *drm = data;
 	struct drm_encoder *encoder;
@@ -361,7 +453,7 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return -ENOMEM;
 
 	match = of_match_node(dw_hdmi_rockchip_dt_ids, pdev->dev.of_node);
-	plat_data = match->data;
+	plat_data = (struct dw_hdmi_plat_data *)match->data;
 	hdmi->dev = &pdev->dev;
 	hdmi->chip_data = plat_data->phy_data;
 	hdmi->dev_type = plat_data->dev_type;
@@ -383,6 +475,18 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	if (hdmi->dev_type == RK3328_HDMI || hdmi->dev_type == RK3228_HDMI) {
+		hdmi->phy = devm_phy_get(dev, "hdmi_phy");
+		if (IS_ERR(hdmi->phy)) {
+			ret = PTR_ERR(hdmi->phy);
+			dev_err(dev, "failed to get phy: %d\n", ret);
+			return ret;
+		}
+		plat_data->phy_data = hdmi;
+		ret = inno_dw_hdmi_init(hdmi);
+		if (ret < 0)
+			return ret;
+	}
 	drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
 	drm_encoder_init(drm, encoder, &dw_hdmi_rockchip_encoder_funcs,
 			 DRM_MODE_ENCODER_TMDS, NULL);
-- 
2.7.4
