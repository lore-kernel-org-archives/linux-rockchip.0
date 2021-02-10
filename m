Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB88C433E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 11:11:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 073E364E2F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 11:11:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 073E364E2F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=peMzUUf9uN+a+cUEBDde5/jNh5vaV0am4nPxE9b8eEQ=; b=uQN6M3z2D4cSRjJZvfM629HFN
	8M+qxD8teL8G8L5lG6vKJDWzPSUA9ecJ21xU2krc9EZrO4ZUBHZ0fdEVZs6XC2QkVVNQUaZ5rDlUB
	mM4raxObkXc0jjrYDH6MQetW/d8fK0O64AVQfidMO2rpKGu3YtSz7tY81dscyXVGABoPRJCdM2fxJ
	Y0zW3+/xIzbzN7EEaOp7wdhCYnSfujmgUA0PWvH8G7SkwMwQLlpiVrlTQ1C3AP5E3KroowDO4nloi
	YtvCwUl5gpEPhrbpPI4xVrfTplxRWB6tRFq7riGn9Y4s0jSTv4oDsT9hCzBtOzzCG28TuHWdj5CwY
	Ja5FytySQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9nPO-00020F-OX; Wed, 10 Feb 2021 11:11:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9nO7-0001PQ-6U; Wed, 10 Feb 2021 11:10:34 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l9nO3-0003eN-Tv; Wed, 10 Feb 2021 12:10:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 3/6] drm/rockchip: dsi: add ability to work as a phy instead
 of full dsi
Date: Wed, 10 Feb 2021 12:10:17 +0100
Message-Id: <20210210111020.2476369-4-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210111020.2476369-1-heiko@sntech.de>
References: <20210210111020.2476369-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_061027_540143_B6D31C3A 
X-CRM114-Status: GOOD (  28.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 cmuellner@linux.com, hjc@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 robh+dt@kernel.org, sebastian.fricke@posteo.net,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

SoCs like the rk3288 and rk3399 have 3 mipi dphys on them. One is TX-
only, one is RX-only and one can be configured to do either TX or RX.

The RX phy is statically connected to the first Image Signal Processor,
the TX phy is statically connected to the first DSI controller and
the TXRX phy is connected to both the second DSI controller as well
as the second ISP.

The RX dphy is controlled externally through registers in the "General
Register Files", while the other two are controlled through the
"Configuration and Test Interface" inside their DSI controller's
io-memory area.

The Rockchip dw-dsi controller already controls these dphys for the
TX case in the driver, but when we want to also allow configuration
for RX to the ISP from the media subsystem we need to expose phy-
functionality instead.

So add a bit of infrastructure to allow the dsi driver to work as a
phy and make sure it can be only one or the other at a time.

Similarly as the dsi-controller will be part of the drm-graph when
active, add an empty component to the drm-graph when in phy-mode
to make the rest of the drm-graph not wait for it.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Tested-by: Sebastian Fricke <sebastian.fricke@posteo.net>
---
 drivers/gpu/drm/rockchip/Kconfig              |   2 +
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 341 ++++++++++++++++++
 2 files changed, 343 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index cb25c0e8fc9b..3094d4533ad6 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -9,6 +9,8 @@ config DRM_ROCKCHIP
 	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
 	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
 	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
+	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
+	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
 	select DRM_RGB if ROCKCHIP_RGB
 	select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
 	help
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 18e112e30f6e..e322749a5279 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -14,6 +14,7 @@
 #include <linux/of_device.h>
 #include <linux/phy/phy.h>
 #include <linux/pm_runtime.h>
+#include <linux/phy/phy.h>
 #include <linux/regmap.h>
 
 #include <video/mipi_display.h>
@@ -125,7 +126,9 @@
 #define BANDGAP_AND_BIAS_CONTROL			0x20
 #define TERMINATION_RESISTER_CONTROL			0x21
 #define AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY		0x22
+#define HS_RX_CONTROL_OF_LANE_CLK			0x34
 #define HS_RX_CONTROL_OF_LANE_0				0x44
+#define HS_RX_CONTROL_OF_LANE_1				0x54
 #define HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL	0x60
 #define HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL	0x61
 #define HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL	0x62
@@ -137,6 +140,9 @@
 #define HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL	0x72
 #define HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL	0x73
 #define HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL		0x74
+#define HS_RX_DATA_LANE_THS_SETTLE_CONTROL		0x75
+#define HS_RX_CONTROL_OF_LANE_2				0x84
+#define HS_RX_CONTROL_OF_LANE_3				0x94
 
 #define DW_MIPI_NEEDS_PHY_CFG_CLK	BIT(0)
 #define DW_MIPI_NEEDS_GRF_CLK		BIT(1)
@@ -171,11 +177,19 @@
 #define RK3399_TXRX_MASTERSLAVEZ	BIT(7)
 #define RK3399_TXRX_ENABLECLK		BIT(6)
 #define RK3399_TXRX_BASEDIR		BIT(5)
+#define RK3399_TXRX_SRC_SEL_ISP0	BIT(4)
+#define RK3399_TXRX_TURNREQUEST		GENMASK(3, 0)
 
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
 #define to_dsi(nm)	container_of(nm, struct dw_mipi_dsi_rockchip, nm)
 
+enum {
+	DW_DSI_USAGE_IDLE,
+	DW_DSI_USAGE_DSI,
+	DW_DSI_USAGE_PHY,
+};
+
 enum {
 	BANDGAP_97_07,
 	BANDGAP_98_05,
@@ -213,6 +227,10 @@ struct rockchip_dw_dsi_chip_data {
 	u32 lanecfg2_grf_reg;
 	u32 lanecfg2;
 
+	int (*dphy_rx_init)(struct phy *phy);
+	int (*dphy_rx_power_on)(struct phy *phy);
+	int (*dphy_rx_power_off)(struct phy *phy);
+
 	unsigned int flags;
 	unsigned int max_data_lanes;
 };
@@ -236,6 +254,12 @@ struct dw_mipi_dsi_rockchip {
 	struct phy *phy;
 	union phy_configure_opts phy_opts;
 
+	/* being a phy for other mipi hosts */
+	unsigned int usage_mode;
+	struct mutex usage_mutex;
+	struct phy *dphy;
+	struct phy_configure_opts_mipi_dphy dphy_config;
+
 	unsigned int lane_mbps; /* per lane */
 	u16 input_div;
 	u16 feedback_div;
@@ -965,6 +989,17 @@ static int dw_mipi_dsi_rockchip_host_attach(void *priv_data,
 	struct device *second;
 	int ret;
 
+	mutex_lock(&dsi->usage_mutex);
+
+	if (dsi->usage_mode != DW_DSI_USAGE_IDLE) {
+		DRM_DEV_ERROR(dsi->dev, "dsi controller already in use\n");
+		mutex_unlock(&dsi->usage_mutex);
+		return -EBUSY;
+	}
+
+	dsi->usage_mode = DW_DSI_USAGE_DSI;
+	mutex_unlock(&dsi->usage_mutex);
+
 	ret = component_add(dsi->dev, &dw_mipi_dsi_rockchip_ops);
 	if (ret) {
 		DRM_DEV_ERROR(dsi->dev, "Failed to register component: %d\n",
@@ -1000,6 +1035,10 @@ static int dw_mipi_dsi_rockchip_host_detach(void *priv_data,
 
 	component_del(dsi->dev, &dw_mipi_dsi_rockchip_ops);
 
+	mutex_lock(&dsi->usage_mutex);
+	dsi->usage_mode = DW_DSI_USAGE_IDLE;
+	mutex_unlock(&dsi->usage_mutex);
+
 	return 0;
 }
 
@@ -1008,11 +1047,227 @@ static const struct dw_mipi_dsi_host_ops dw_mipi_dsi_rockchip_host_ops = {
 	.detach = dw_mipi_dsi_rockchip_host_detach,
 };
 
+static int dw_mipi_dsi_rockchip_dphy_bind(struct device *dev,
+					  struct device *master,
+					  void *data)
+{
+	/*
+	 * Nothing to do when used as a dphy.
+	 * Just make the rest of Rockchip-DRM happy
+	 * by being here.
+	 */
+
+	return 0;
+}
+
+static void dw_mipi_dsi_rockchip_dphy_unbind(struct device *dev,
+					     struct device *master,
+					     void *data)
+{
+	/* Nothing to do when used as a dphy. */
+}
+
+static const struct component_ops dw_mipi_dsi_rockchip_dphy_ops = {
+	.bind	= dw_mipi_dsi_rockchip_dphy_bind,
+	.unbind	= dw_mipi_dsi_rockchip_dphy_unbind,
+};
+
+static int dw_mipi_dsi_dphy_init(struct phy *phy)
+{
+	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
+	int ret;
+
+	mutex_lock(&dsi->usage_mutex);
+
+	if (dsi->usage_mode != DW_DSI_USAGE_IDLE) {
+		DRM_DEV_ERROR(dsi->dev, "dsi controller already in use\n");
+		mutex_unlock(&dsi->usage_mutex);
+		return -EBUSY;
+	}
+
+	dsi->usage_mode = DW_DSI_USAGE_PHY;
+	mutex_unlock(&dsi->usage_mutex);
+
+	ret = component_add(dsi->dev, &dw_mipi_dsi_rockchip_dphy_ops);
+	if (ret < 0)
+		goto err_graph;
+
+	if (dsi->cdata->dphy_rx_init) {
+		ret = clk_prepare_enable(dsi->pclk);
+		if (ret < 0)
+			goto err_init;
+
+		ret = clk_prepare_enable(dsi->grf_clk);
+		if (ret) {
+			clk_disable_unprepare(dsi->pclk);
+			goto err_init;
+		}
+
+		ret = dsi->cdata->dphy_rx_init(phy);
+		clk_disable_unprepare(dsi->grf_clk);
+		clk_disable_unprepare(dsi->pclk);
+		if (ret < 0)
+			goto err_init;
+	}
+
+	return 0;
+
+err_init:
+	component_del(dsi->dev, &dw_mipi_dsi_rockchip_dphy_ops);
+err_graph:
+	mutex_lock(&dsi->usage_mutex);
+	dsi->usage_mode = DW_DSI_USAGE_IDLE;
+	mutex_unlock(&dsi->usage_mutex);
+
+	return ret;
+}
+
+static int dw_mipi_dsi_dphy_exit(struct phy *phy)
+{
+	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
+
+	component_del(dsi->dev, &dw_mipi_dsi_rockchip_dphy_ops);
+
+	mutex_lock(&dsi->usage_mutex);
+	dsi->usage_mode = DW_DSI_USAGE_IDLE;
+	mutex_unlock(&dsi->usage_mutex);
+
+	return 0;
+}
+
+static int dw_mipi_dsi_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	struct phy_configure_opts_mipi_dphy *config = &opts->mipi_dphy;
+	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
+	int ret;
+
+	ret = phy_mipi_dphy_config_validate(&opts->mipi_dphy);
+	if (ret)
+		return ret;
+
+	dsi->dphy_config = *config;
+	dsi->lane_mbps = div_u64(config->hs_clk_rate, 1000 * 1000 * 1);
+
+	return 0;
+}
+
+static int dw_mipi_dsi_dphy_power_on(struct phy *phy)
+{
+	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
+	int i, ret;
+
+	DRM_DEV_DEBUG(dsi->dev, "lanes %d - data_rate_mbps %u\n",
+		      dsi->dphy_config.lanes, dsi->lane_mbps);
+
+	i = max_mbps_to_parameter(dsi->lane_mbps);
+	if (i < 0) {
+		DRM_DEV_ERROR(dsi->dev, "failed to get parameter for %dmbps clock\n",
+			      dsi->lane_mbps);
+		return i;
+	}
+
+	ret = pm_runtime_get_sync(dsi->dev);
+	if (ret < 0) {
+		DRM_DEV_ERROR(dsi->dev, "failed to enable device: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(dsi->pclk);
+	if (ret) {
+		DRM_DEV_ERROR(dsi->dev, "Failed to enable pclk: %d\n", ret);
+		goto err_pclk;
+	}
+
+	ret = clk_prepare_enable(dsi->grf_clk);
+	if (ret) {
+		DRM_DEV_ERROR(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
+		goto err_grf_clk;
+	}
+
+	ret = clk_prepare_enable(dsi->phy_cfg_clk);
+	if (ret) {
+		DRM_DEV_ERROR(dsi->dev, "Failed to enable phy_cfg_clk: %d\n", ret);
+		goto err_phy_cfg_clk;
+	}
+
+	/* do soc-variant specific init */
+	if (dsi->cdata->dphy_rx_power_on) {
+		ret = dsi->cdata->dphy_rx_power_on(phy);
+		if (ret < 0) {
+			DRM_DEV_ERROR(dsi->dev, "hardware-specific phy bringup failed: %d\n", ret);
+			goto err_pwr_on;
+		}
+	}
+
+	/*
+	 * Configure hsfreqrange according to frequency values
+	 * Set clock lane and hsfreqrange by lane0(test code 0x44)
+	 */
+	dw_mipi_dsi_phy_write(dsi, HS_RX_CONTROL_OF_LANE_CLK, 0);
+	dw_mipi_dsi_phy_write(dsi, HS_RX_CONTROL_OF_LANE_0,
+			      HSFREQRANGE_SEL(dppa_map[i].hsfreqrange));
+	dw_mipi_dsi_phy_write(dsi, HS_RX_CONTROL_OF_LANE_1, 0);
+	dw_mipi_dsi_phy_write(dsi, HS_RX_CONTROL_OF_LANE_2, 0);
+	dw_mipi_dsi_phy_write(dsi, HS_RX_CONTROL_OF_LANE_3, 0);
+
+	/* Normal operation */
+	dw_mipi_dsi_phy_write(dsi, 0x0, 0);
+
+	clk_disable_unprepare(dsi->phy_cfg_clk);
+	clk_disable_unprepare(dsi->grf_clk);
+
+	return ret;
+
+err_pwr_on:
+	clk_disable_unprepare(dsi->phy_cfg_clk);
+err_phy_cfg_clk:
+	clk_disable_unprepare(dsi->grf_clk);
+err_grf_clk:
+	clk_disable_unprepare(dsi->pclk);
+err_pclk:
+	pm_runtime_put(dsi->dev);
+	return ret;
+}
+
+static int dw_mipi_dsi_dphy_power_off(struct phy *phy)
+{
+	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
+	int ret;
+
+	ret = clk_prepare_enable(dsi->grf_clk);
+	if (ret) {
+		DRM_DEV_ERROR(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
+		return ret;
+	}
+
+	if (dsi->cdata->dphy_rx_power_off) {
+		ret = dsi->cdata->dphy_rx_power_off(phy);
+		if (ret < 0)
+			DRM_DEV_ERROR(dsi->dev, "hardware-specific phy shutdown failed: %d\n", ret);
+	}
+
+	clk_disable_unprepare(dsi->grf_clk);
+	clk_disable_unprepare(dsi->pclk);
+
+	pm_runtime_put(dsi->dev);
+
+	return ret;
+}
+
+static const struct phy_ops dw_mipi_dsi_dphy_ops = {
+	.configure	= dw_mipi_dsi_dphy_configure,
+	.power_on	= dw_mipi_dsi_dphy_power_on,
+	.power_off	= dw_mipi_dsi_dphy_power_off,
+	.init		= dw_mipi_dsi_dphy_init,
+	.exit		= dw_mipi_dsi_dphy_exit,
+};
+
 static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct dw_mipi_dsi_rockchip *dsi;
+	struct phy_provider *phy_provider;
 	struct resource *res;
 	const struct rockchip_dw_dsi_chip_data *cdata =
 				of_device_get_match_data(dev);
@@ -1109,6 +1364,19 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 	dsi->pdata.priv_data = dsi;
 	platform_set_drvdata(pdev, dsi);
 
+	mutex_init(&dsi->usage_mutex);
+
+	dsi->dphy = devm_phy_create(dev, NULL, &dw_mipi_dsi_dphy_ops);
+	if (IS_ERR(dsi->dphy)) {
+		DRM_DEV_ERROR(&pdev->dev, "failed to create PHY\n");
+		return PTR_ERR(dsi->dphy);
+	}
+
+	phy_set_drvdata(dsi->dphy, dsi);
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider))
+		return PTR_ERR(phy_provider);
+
 	dsi->dmd = dw_mipi_dsi_probe(pdev, &dsi->pdata);
 	if (IS_ERR(dsi->dmd)) {
 		ret = PTR_ERR(dsi->dmd);
@@ -1175,6 +1443,75 @@ static const struct rockchip_dw_dsi_chip_data rk3288_chip_data[] = {
 	{ /* sentinel */ }
 };
 
+static int rk3399_dphy_tx1rx1_init(struct phy *phy)
+{
+	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
+
+	/*
+	 * Set TX1RX1 source to isp1.
+	 * Assume ISP0 is supplied by the RX0 dphy.
+	 */
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON24,
+		     HIWORD_UPDATE(0, RK3399_TXRX_SRC_SEL_ISP0));
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON24,
+		     HIWORD_UPDATE(0, RK3399_TXRX_MASTERSLAVEZ));
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON24,
+		     HIWORD_UPDATE(0, RK3399_TXRX_BASEDIR));
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON23,
+		     HIWORD_UPDATE(0, RK3399_DSI1_ENABLE));
+
+	return 0;
+}
+
+static int rk3399_dphy_tx1rx1_power_on(struct phy *phy)
+{
+	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
+
+	/* tester reset pulse */
+	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_TESTCLR);
+	usleep_range(100, 150);
+
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON24,
+		     HIWORD_UPDATE(0, RK3399_TXRX_MASTERSLAVEZ));
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON24,
+		     HIWORD_UPDATE(RK3399_TXRX_BASEDIR, RK3399_TXRX_BASEDIR));
+
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON23,
+		     HIWORD_UPDATE(0, RK3399_DSI1_FORCERXMODE));
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON23,
+		     HIWORD_UPDATE(0, RK3399_DSI1_FORCETXSTOPMODE));
+
+	/* Disable lane turn around, which is ignored in receive mode */
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON24,
+		     HIWORD_UPDATE(0, RK3399_TXRX_TURNREQUEST));
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON23,
+		     HIWORD_UPDATE(RK3399_DSI1_TURNDISABLE,
+				   RK3399_DSI1_TURNDISABLE));
+	usleep_range(100, 150);
+
+	dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLK | PHY_UNTESTCLR);
+	usleep_range(100, 150);
+
+	/* Enable dphy lanes */
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON23,
+		     HIWORD_UPDATE(GENMASK(dsi->dphy_config.lanes - 1, 0),
+				   RK3399_DSI1_ENABLE));
+
+	usleep_range(100, 150);
+
+	return 0;
+}
+
+static int rk3399_dphy_tx1rx1_power_off(struct phy *phy)
+{
+	struct dw_mipi_dsi_rockchip *dsi = phy_get_drvdata(phy);
+
+	regmap_write(dsi->grf_regmap, RK3399_GRF_SOC_CON23,
+		     HIWORD_UPDATE(0, RK3399_DSI1_ENABLE));
+
+	return 0;
+}
+
 static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
 	{
 		.reg = 0xff960000,
@@ -1217,6 +1554,10 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
 
 		.flags = DW_MIPI_NEEDS_PHY_CFG_CLK | DW_MIPI_NEEDS_GRF_CLK,
 		.max_data_lanes = 4,
+
+		.dphy_rx_init = rk3399_dphy_tx1rx1_init,
+		.dphy_rx_power_on = rk3399_dphy_tx1rx1_power_on,
+		.dphy_rx_power_off = rk3399_dphy_tx1rx1_power_off,
 	},
 	{ /* sentinel */ }
 };
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
