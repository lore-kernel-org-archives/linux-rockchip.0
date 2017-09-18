From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH 2/7] drm/rockchip/dsi: add dual mipi channel support
Date: Mon, 18 Sep 2017 17:05:34 +0800
Message-ID: <1505725539-6309-2-git-send-email-nickey.yang@rock-chips.com>
References: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi.c      | 353 ++++++++++++++++++++--------
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h |   1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   3 +
 4 files changed, 257 insertions(+), 102 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
index 52698b7..9265b7f 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
@@ -42,6 +42,17 @@
 #define RK3399_GRF_SOC_CON22		0x6258
 #define RK3399_GRF_DSI_MODE		0xffff0000
 
+/* disable turndisable, forcetxstopmode, forcerxmode, enable */
+#define RK3399_GRF_SOC_CON23		0x625c
+#define RK3399_GRF_DSI1_MODE1		0xffff0000
+#define RK3399_GRF_DSI1_ENABLE		0x000f000f
+/* disable basedir and enable clk*/
+#define RK3399_GRF_SOC_CON24		0x6260
+#define RK3399_TXRX_MASTERSLAVEZ	BIT(7)
+#define RK3399_TXRX_ENABLECLK		BIT(6)
+#define RK3399_TXRX_BASEDIR		BIT(5)
+#define RK3399_GRF_DSI1_MODE2		0x00e00080
+
 #define DSI_VERSION			0x00
 #define DSI_PWR_UP			0x04
 #define RESET				0
@@ -282,6 +293,12 @@ struct dw_mipi_dsi_plat_data {
 	u32 grf_switch_reg;
 	u32 grf_dsi0_mode;
 	u32 grf_dsi0_mode_reg;
+	u32 grf_dsi1_mode;
+	u32 grf_dsi1_mode_reg1;
+	u32 dsi1_basedir;
+	u32 dsi1_masterslavez;
+	u32 dsi1_enableclk;
+	u32 grf_dsi1_mode_reg2;
 	unsigned int flags;
 	unsigned int max_data_lanes;
 };
@@ -300,6 +317,12 @@ struct dw_mipi_dsi {
 	struct clk *pclk;
 	struct clk *phy_cfg_clk;
 
+	/* dual-channel */
+	struct dw_mipi_dsi *master;
+	struct dw_mipi_dsi *slave;
+	struct device_node *panel_node;
+	int id;
+
 	int dpms_mode;
 	unsigned int lane_mbps; /* per lane */
 	u32 channel;
@@ -526,6 +549,7 @@ static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
 	unsigned int target_mbps = 1000;
 	unsigned int max_mbps = dptdin_map[ARRAY_SIZE(dptdin_map) - 1].max_mbps;
 	int bpp;
+	int lanes = dsi->lanes;
 	unsigned long best_freq = 0;
 	unsigned long fvco_min, fvco_max, fin ,fout;
 	unsigned int min_prediv, max_prediv;
@@ -540,10 +564,13 @@ static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
 		return bpp;
 	}
 
+	if (dsi->slave || dsi->master)
+		lanes = dsi->lanes * 2;
+
 	mpclk = DIV_ROUND_UP(mode->clock, MSEC_PER_SEC);
 	if (mpclk) {
 		/* take 1 / 0.8, since mbps must big than bandwidth of RGB */
-		tmp = mpclk * (bpp / dsi->lanes) * 10 / 8;
+		tmp = mpclk * (bpp / lanes) * 10 / 8;
 		if (tmp < max_mbps)
 			target_mbps = tmp;
 		else
@@ -605,17 +632,26 @@ static int dw_mipi_dsi_host_attach(struct mipi_dsi_host *host,
 				   struct mipi_dsi_device *device)
 {
 	struct dw_mipi_dsi *dsi = host_to_dsi(host);
+	int lanes = dsi->slave ? device->lanes / 2 : device->lanes;
 
-	if (device->lanes > dsi->pdata->max_data_lanes) {
+	if (lanes > dsi->pdata->max_data_lanes) {
 		dev_err(dsi->dev, "the number of data lanes(%u) is too many\n",
-			device->lanes);
+			lanes);
 		return -EINVAL;
 	}
 
-	dsi->lanes = device->lanes;
+	dsi->lanes = lanes;
 	dsi->channel = device->channel;
 	dsi->format = device->format;
 	dsi->mode_flags = device->mode_flags;
+
+	if (dsi->slave) {
+		dsi->slave->lanes = lanes;
+		dsi->slave->channel = device->channel;
+		dsi->slave->format = device->format;
+		dsi->slave->mode_flags = device->mode_flags;
+	}
+
 	dsi->panel = of_drm_find_panel(device->dev.of_node);
 	if (dsi->panel)
 		return drm_panel_attach(dsi->panel, &dsi->connector);
@@ -745,15 +781,22 @@ static ssize_t dw_mipi_dsi_host_transfer(struct mipi_dsi_host *host,
 	int ret;
 
 	dw_mipi_message_config(dsi, msg);
+	if (dsi->slave)
+		dw_mipi_message_config(dsi->slave, msg);
 
 	switch (msg->type) {
 	case MIPI_DSI_DCS_SHORT_WRITE:
 	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
 	case MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE:
+	case MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM:
 		ret = dw_mipi_dsi_dcs_short_write(dsi, msg);
+		if (dsi->slave)
+			ret = dw_mipi_dsi_dcs_short_write(dsi->slave, msg);
 		break;
 	case MIPI_DSI_DCS_LONG_WRITE:
 		ret = dw_mipi_dsi_dcs_long_write(dsi, msg);
+		if (dsi->slave)
+			ret = dw_mipi_dsi_dcs_long_write(dsi->slave, msg);
 		break;
 	default:
 		dev_err(dsi->dev, "unsupported message type 0x%02x\n",
@@ -827,6 +870,64 @@ static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
 		  TX_ESC_CLK_DIVIDSION(esc_clk_division));
 }
 
+static void rockchip_dsi_grf_config(struct dw_mipi_dsi *dsi, int vop_id)
+{
+	const struct dw_mipi_dsi_plat_data *pdata = dsi->pdata;
+	int val = 0;
+	int ret;
+
+	/*
+	 * For the RK3399, the clk of grf must be enabled before writing grf
+	 * register. And for RK3288 or other soc, this grf_clk must be NULL,
+	 * the clk_prepare_enable return true directly.
+	 */
+	ret = clk_prepare_enable(dsi->grf_clk);
+	if (ret) {
+		dev_err(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
+		return;
+	}
+
+	if (dsi->slave) {
+		if (vop_id)
+			val = pdata->dsi0_en_bit |
+			      (pdata->dsi0_en_bit << 16) |
+			      pdata->dsi1_en_bit |
+			      (pdata->dsi1_en_bit << 16);
+		else
+			val = (pdata->dsi0_en_bit << 16) |
+			      (pdata->dsi1_en_bit << 16);
+
+		regmap_write(dsi->grf_regmap, pdata->grf_switch_reg, val);
+
+		if (pdata->grf_dsi0_mode_reg)
+			regmap_write(dsi->grf_regmap, pdata->grf_dsi0_mode_reg,
+				     pdata->grf_dsi0_mode);
+		if (pdata->grf_dsi1_mode_reg1)
+			regmap_write(dsi->grf_regmap, pdata->grf_dsi1_mode_reg1,
+				     pdata->grf_dsi1_mode);
+		if (pdata->grf_dsi1_mode_reg2)
+			regmap_write(dsi->grf_regmap, pdata->grf_dsi1_mode_reg2,
+				     RK3399_GRF_DSI1_MODE2);
+		if (pdata->grf_dsi1_mode_reg1)
+			regmap_write(dsi->grf_regmap, pdata->grf_dsi1_mode_reg1,
+				     RK3399_GRF_DSI1_ENABLE);
+	} else {
+		if (vop_id)
+			val = pdata->dsi0_en_bit |
+			      (pdata->dsi0_en_bit << 16);
+		else
+			val = pdata->dsi0_en_bit << 16;
+
+		regmap_write(dsi->grf_regmap, pdata->grf_switch_reg, val);
+
+		if (pdata->grf_dsi0_mode_reg)
+			regmap_write(dsi->grf_regmap, pdata->grf_dsi0_mode_reg,
+				     pdata->grf_dsi0_mode);
+	}
+
+	clk_disable_unprepare(dsi->grf_clk);
+}
+
 static void dw_mipi_dsi_dpi_config(struct dw_mipi_dsi *dsi,
 				   struct drm_display_mode *mode)
 {
@@ -867,7 +968,14 @@ static void dw_mipi_dsi_packet_handler_config(struct dw_mipi_dsi *dsi)
 static void dw_mipi_dsi_video_packet_config(struct dw_mipi_dsi *dsi,
 					    struct drm_display_mode *mode)
 {
-	dsi_write(dsi, DSI_VID_PKT_SIZE, VID_PKT_SIZE(mode->hdisplay));
+	int pkt_size;
+
+	if (dsi->slave || dsi->master)
+		pkt_size = VID_PKT_SIZE(mode->hdisplay / 2 + 4);
+	else
+		pkt_size = VID_PKT_SIZE(mode->hdisplay);
+
+	dsi_write(dsi, DSI_VID_PKT_SIZE, pkt_size);
 }
 
 static void dw_mipi_dsi_command_mode_config(struct dw_mipi_dsi *dsi)
@@ -971,24 +1079,24 @@ static void dw_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
 
 	dw_mipi_dsi_disable(dsi);
 	pm_runtime_put(dsi->dev);
+
+	if (dsi->slave) {
+		if (clk_prepare_enable(dsi->slave->pclk)) {
+			dev_err(dsi->slave->dev, "%s: Failed to enable pclk\n", __func__);
+			return;
+		}
+		dw_mipi_dsi_disable(dsi->slave);
+		pm_runtime_put(dsi->slave->dev);
+		clk_disable_unprepare(dsi->slave->pclk);
+	}
+
 	clk_disable_unprepare(dsi->pclk);
 	dsi->dpms_mode = DRM_MODE_DPMS_OFF;
 }
 
-static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
+static void dw_mipi_dsi_enable(struct dw_mipi_dsi *dsi, struct drm_display_mode *mode)
 {
-	struct dw_mipi_dsi *dsi = encoder_to_dsi(encoder);
-	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
-	const struct dw_mipi_dsi_plat_data *pdata = dsi->pdata;
-	int mux = drm_of_encoder_active_endpoint_id(dsi->dev->of_node, encoder);
-	u32 val;
-	int ret;
-
-	ret = dw_mipi_dsi_get_lane_bps(dsi, mode);
-	if (ret < 0)
-		return;
-
-	if (dsi->dpms_mode == DRM_MODE_DPMS_ON)
+	if (dw_mipi_dsi_get_lane_bps(dsi, mode) < 0)
 		return;
 
 	if (clk_prepare_enable(dsi->pclk)) {
@@ -1009,43 +1117,42 @@ static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
 	dw_mipi_dsi_dphy_interface_config(dsi);
 	dw_mipi_dsi_clear_err(dsi);
 
-	/*
-	 * For the RK3399, the clk of grf must be enabled before writing grf
-	 * register. And for RK3288 or other soc, this grf_clk must be NULL,
-	 * the clk_prepare_enable return true directly.
-	 */
-	ret = clk_prepare_enable(dsi->grf_clk);
-	if (ret) {
-		dev_err(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
-		return;
-	}
-
-	if (pdata->grf_dsi0_mode_reg)
-		regmap_write(dsi->grf_regmap, pdata->grf_dsi0_mode_reg,
-			     pdata->grf_dsi0_mode);
-
 	dw_mipi_dsi_phy_init(dsi);
 	dw_mipi_dsi_wait_for_two_frames(mode);
 
 	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_CMD_MODE);
+}
+
+static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
+{
+	struct dw_mipi_dsi *dsi = encoder_to_dsi(encoder);
+	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
+	int mux = drm_of_encoder_active_endpoint_id(dsi->dev->of_node, encoder);
+
+	if (dsi->dpms_mode == DRM_MODE_DPMS_ON)
+		return;
+
+	rockchip_dsi_grf_config(dsi, mux);
+	dev_dbg(dsi->dev, "vop %s output to dsi0\n", (mux) ? "LIT" : "BIG");
+
+	dw_mipi_dsi_enable(dsi, mode);
+	if (dsi->slave)
+		dw_mipi_dsi_enable(dsi->slave, mode);
+
 	if (drm_panel_prepare(dsi->panel))
 		dev_err(dsi->dev, "failed to prepare panel\n");
 
 	dw_mipi_dsi_set_mode(dsi, DW_MIPI_DSI_VID_MODE);
+	if (dsi->slave)
+		dw_mipi_dsi_set_mode(dsi->slave, DW_MIPI_DSI_VID_MODE);
+
 	drm_panel_enable(dsi->panel);
 
 	clk_disable_unprepare(dsi->pclk);
+	if (dsi->slave)
+		clk_disable_unprepare(dsi->slave->pclk);
 
-	if (mux)
-		val = pdata->dsi0_en_bit | (pdata->dsi0_en_bit << 16);
-	else
-		val = pdata->dsi0_en_bit << 16;
-
-	regmap_write(dsi->grf_regmap, pdata->grf_switch_reg, val);
-	dev_dbg(dsi->dev, "vop %s output to dsi0\n", (mux) ? "LIT" : "BIG");
 	dsi->dpms_mode = DRM_MODE_DPMS_ON;
-
-	clk_disable_unprepare(dsi->grf_clk);
 }
 
 static int
@@ -1073,6 +1180,9 @@ static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
 
 	s->output_type = DRM_MODE_CONNECTOR_DSI;
 
+	if (dsi->slave)
+		s->output_flags = ROCKCHIP_OUTPUT_DSI_DUAL_CHANNEL;
+
 	return 0;
 }
 
@@ -1178,6 +1288,12 @@ static int rockchip_mipi_parse_dt(struct dw_mipi_dsi *dsi)
 	.grf_switch_reg = RK3399_GRF_SOC_CON20,
 	.grf_dsi0_mode = RK3399_GRF_DSI_MODE,
 	.grf_dsi0_mode_reg = RK3399_GRF_SOC_CON22,
+	.grf_dsi1_mode = RK3399_GRF_DSI1_MODE1,
+	.grf_dsi1_mode_reg1 = RK3399_GRF_SOC_CON23,
+	.dsi1_basedir = RK3399_TXRX_BASEDIR,
+	.dsi1_masterslavez = RK3399_TXRX_MASTERSLAVEZ,
+	.dsi1_enableclk = RK3399_TXRX_ENABLECLK,
+	.grf_dsi1_mode_reg2 = RK3399_GRF_SOC_CON24,
 	.flags = DW_MIPI_NEEDS_PHY_CFG_CLK | DW_MIPI_NEEDS_GRF_CLK,
 	.max_data_lanes = 4,
 };
@@ -1194,17 +1310,106 @@ static int rockchip_mipi_parse_dt(struct dw_mipi_dsi *dsi)
 };
 MODULE_DEVICE_TABLE(of, dw_mipi_dsi_dt_ids);
 
+
+static int rockchip_dsi_dual_channel_probe(struct dw_mipi_dsi *dsi)
+{
+	struct device_node *np;
+	struct platform_device *secondary;
+
+	np = of_parse_phandle(dsi->dev->of_node, "rockchip,dual-channel", 0);
+	if (np) {
+		secondary = of_find_device_by_node(np);
+		dsi->slave = platform_get_drvdata(secondary);
+		of_node_put(np);
+
+		if (!dsi->slave)
+			return -EPROBE_DEFER;
+
+		dsi->slave->master = dsi;
+	}
+
+	return 0;
+}
+
 static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 			    void *data)
 {
+	struct drm_device *drm = data;
+	struct dw_mipi_dsi *dsi = dev_get_drvdata(dev);
+	int ret;
+
+	ret = rockchip_dsi_dual_channel_probe(dsi);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(dsi->pllref_clk);
+	if (ret) {
+		dev_err(dev, "%s: Failed to enable pllref_clk\n", __func__);
+		return ret;
+	}
+
+	pm_runtime_enable(dev);
+
+	if (dsi->master)
+		return 0;
+
+	ret = dw_mipi_dsi_register(drm, dsi);
+	if (ret) {
+		dev_err(dev, "Failed to register mipi_dsi: %d\n", ret);
+		goto err_pllref;
+	}
+
+	dsi->dsi_host.ops = &dw_mipi_dsi_host_ops;
+	dsi->dsi_host.dev = dev;
+	ret = mipi_dsi_host_register(&dsi->dsi_host);
+	if (ret) {
+		dev_err(dev, "Failed to register MIPI host: %d\n", ret);
+		goto err_cleanup;
+	}
+
+	if (!dsi->panel) {
+		ret = -EPROBE_DEFER;
+		goto err_mipi_dsi_host;
+	}
+
+	return 0;
+
+err_mipi_dsi_host:
+	mipi_dsi_host_unregister(&dsi->dsi_host);
+err_cleanup:
+	drm_encoder_cleanup(&dsi->encoder);
+	drm_connector_cleanup(&dsi->connector);
+err_pllref:
+	clk_disable_unprepare(dsi->pllref_clk);
+	return ret;
+}
+
+static void dw_mipi_dsi_unbind(struct device *dev, struct device *master,
+			       void *data)
+{
+	struct dw_mipi_dsi *dsi = dev_get_drvdata(dev);
+
+	mipi_dsi_host_unregister(&dsi->dsi_host);
+	pm_runtime_disable(dev);
+	if (dsi->slave)
+		pm_runtime_disable(dsi->slave->dev);
+	clk_disable_unprepare(dsi->pllref_clk);
+}
+
+static const struct component_ops dw_mipi_dsi_ops = {
+	.bind	= dw_mipi_dsi_bind,
+	.unbind	= dw_mipi_dsi_unbind,
+};
+
+static int dw_mipi_dsi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
 	const struct of_device_id *of_id =
 			of_match_device(dw_mipi_dsi_dt_ids, dev);
 	const struct dw_mipi_dsi_plat_data *pdata = of_id->data;
-	struct platform_device *pdev = to_platform_device(dev);
-	struct reset_control *apb_rst;
-	struct drm_device *drm = data;
 	struct dw_mipi_dsi *dsi;
 	struct resource *res;
+	struct reset_control *apb_rst;
 	int ret;
 
 	dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
@@ -1214,6 +1419,7 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 	dsi->dev = dev;
 	dsi->pdata = pdata;
 	dsi->dpms_mode = DRM_MODE_DPMS_OFF;
+	dev_set_drvdata(dev, dsi);
 
 	ret = rockchip_mipi_parse_dt(dsi);
 	if (ret)
@@ -1288,63 +1494,6 @@ static int dw_mipi_dsi_bind(struct device *dev, struct device *master,
 		}
 	}
 
-	ret = clk_prepare_enable(dsi->pllref_clk);
-	if (ret) {
-		dev_err(dev, "%s: Failed to enable pllref_clk\n", __func__);
-		return ret;
-	}
-
-	ret = dw_mipi_dsi_register(drm, dsi);
-	if (ret) {
-		dev_err(dev, "Failed to register mipi_dsi: %d\n", ret);
-		goto err_pllref;
-	}
-
-	pm_runtime_enable(dev);
-
-	dsi->dsi_host.ops = &dw_mipi_dsi_host_ops;
-	dsi->dsi_host.dev = dev;
-	ret = mipi_dsi_host_register(&dsi->dsi_host);
-	if (ret) {
-		dev_err(dev, "Failed to register MIPI host: %d\n", ret);
-		goto err_cleanup;
-	}
-
-	if (!dsi->panel) {
-		ret = -EPROBE_DEFER;
-		goto err_mipi_dsi_host;
-	}
-
-	dev_set_drvdata(dev, dsi);
-	return 0;
-
-err_mipi_dsi_host:
-	mipi_dsi_host_unregister(&dsi->dsi_host);
-err_cleanup:
-	drm_encoder_cleanup(&dsi->encoder);
-	drm_connector_cleanup(&dsi->connector);
-err_pllref:
-	clk_disable_unprepare(dsi->pllref_clk);
-	return ret;
-}
-
-static void dw_mipi_dsi_unbind(struct device *dev, struct device *master,
-			       void *data)
-{
-	struct dw_mipi_dsi *dsi = dev_get_drvdata(dev);
-
-	mipi_dsi_host_unregister(&dsi->dsi_host);
-	pm_runtime_disable(dev);
-	clk_disable_unprepare(dsi->pllref_clk);
-}
-
-static const struct component_ops dw_mipi_dsi_ops = {
-	.bind	= dw_mipi_dsi_bind,
-	.unbind	= dw_mipi_dsi_unbind,
-};
-
-static int dw_mipi_dsi_probe(struct platform_device *pdev)
-{
 	return component_add(&pdev->dev, &dw_mipi_dsi_ops);
 }
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index c7e96b8..51ad1c2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -36,6 +36,7 @@ struct rockchip_crtc_state {
 	struct drm_crtc_state base;
 	int output_type;
 	int output_mode;
+	int output_flags;
 };
 #define to_rockchip_crtc_state(s) \
 		container_of(s, struct rockchip_crtc_state, base)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index bf9ed0e..cb40cdd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -917,6 +917,8 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	case DRM_MODE_CONNECTOR_DSI:
 		VOP_REG_SET(vop, output, mipi_pin_pol, pin_pol);
 		VOP_REG_SET(vop, output, mipi_en, 1);
+		VOP_REG_SET(vop, output, mipi_dual_channel_en,
+			!!(s->output_flags & ROCKCHIP_OUTPUT_DSI_DUAL_CHANNEL));
 		break;
 	case DRM_MODE_CONNECTOR_DisplayPort:
 		pin_pol &= ~BIT(DCLK_INVERT);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 56bbd2e..d184531 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -60,6 +60,7 @@ struct vop_output {
 	struct vop_reg edp_en;
 	struct vop_reg hdmi_en;
 	struct vop_reg mipi_en;
+	struct vop_reg mipi_dual_channel_en;
 	struct vop_reg rgb_en;
 };
 
@@ -212,6 +213,8 @@ struct vop_data {
 /* for use special outface */
 #define ROCKCHIP_OUT_MODE_AAAA	15
 
+#define ROCKCHIP_OUTPUT_DSI_DUAL_CHANNEL	BIT(0)
+
 enum alpha_mode {
 	ALPHA_STRAIGHT,
 	ALPHA_INVERSE,
-- 
1.9.1
