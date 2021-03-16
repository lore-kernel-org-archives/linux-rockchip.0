Return-Path: <SRS0=XIeQ=IO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EA2C433E9
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 02:06:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 66CE56500C
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 02:06:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 66CE56500C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mmi5fMnj7V70r21ruLzmz2HHOE/6alTVJo9a0S10JjQ=; b=Yq5Th9S0cDuV3w/SpkVwxHVfVV
	+aHoTxxnUkOM0C+jfuakySxLR8THGL3xALmztduXBDO7AQsWwnYYyFXbgOfrdL7TkuoMwl4AgZ2ar
	gfY33CZ9/QfASSO1tMFG77YFevF+6QM8duOg4n2PJA44d28cTZLfp/Z16yjB6vHNfg7d8wXpEvRWb
	0kkt+kKwZH8xPoJiq1LFWDagVf8H1d2CwitcJZZDeLHeE9uOHCUPDZCuLv6gOk7sXZY9F+AB+2+0m
	4Egd/uoJmRAuSCgGGXu5xYAyT9ljew7y3cFA/XpnIMOzfFwbw9EpO50lxkIlNJ3VQdgdEyS5Xr6D1
	ts65srhQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLz6L-00HDaB-Ka; Tue, 16 Mar 2021 02:06:29 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLz6B-00HDVY-5X
 for linux-rockchip@lists.infradead.org; Tue, 16 Mar 2021 02:06:22 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 42DF1D106E;
 Tue, 16 Mar 2021 10:06:10 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13109T139929564739328S1615860366000463_; 
 Tue, 16 Mar 2021 10:06:09 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <08ddbad4d3262cfbd970dbc75e4631bd>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v5 3/3] mmc: sdhci-of-dwcmshc: add rockchip platform support
Date: Tue, 16 Mar 2021 10:06:02 +0800
Message-Id: <1615860362-239208-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1615860362-239208-1-git-send-email-shawn.lin@rock-chips.com>
References: <1615860362-239208-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_020619_696218_B8B2AB5C 
X-CRM114-Status: GOOD (  29.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

sdhci based synopsys MMC IP is also used on some rockchip platforms,
so add a basic support here.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v5:
- read vendor area1 from standard IP reg and move hs400es
  out of rockchip specified, as suggested.
- improve as Johan suggested
- remove Adrian's tag for new review

Changes in v4:
- add comments for disabling rx invert
- add tag from Adrian

 drivers/mmc/host/sdhci-of-dwcmshc.c | 259 ++++++++++++++++++++++++++++++++++--
 1 file changed, 251 insertions(+), 8 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index 59d8d96..7a8bc16 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -9,9 +9,11 @@
 
 #include <linux/clk.h>
 #include <linux/dma-mapping.h>
+#include <linux/iopoll.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/sizes.h>
 
 #include "sdhci-pltfm.h"
@@ -21,11 +23,52 @@
 /* DWCMSHC specific Mode Select value */
 #define DWCMSHC_CTRL_HS400		0x7
 
+/* DWC IP vendor area 1 pointer */
+#define DWCMSHC_P_VENDOR_AREA1		0xe8
+#define DWCMSHC_AREA1_MASK		GENMASK(11, 0)
+/* Offset inside the vendor area 1 */
+#define DWCMSHC_HOST_CTRL3		0x8
+#define DWCMSHC_EMMC_CONTROL		0x2c
+#define DWCMSHC_ENHANCED_STROBE		BIT(8)
+#define DWCMSHC_EMMC_ATCTRL		0x40
+
+/* Rockchip specific Registers */
+#define DWCMSHC_EMMC_DLL_CTRL		0x800
+#define DWCMSHC_EMMC_DLL_RXCLK		0x804
+#define DWCMSHC_EMMC_DLL_TXCLK		0x808
+#define DWCMSHC_EMMC_DLL_STRBIN		0x80c
+#define DLL_STRBIN_TAPNUM_FROM_SW	BIT(24)
+#define DWCMSHC_EMMC_DLL_STATUS0	0x840
+#define DWCMSHC_EMMC_DLL_START		BIT(0)
+#define DWCMSHC_EMMC_DLL_LOCKED		BIT(8)
+#define DWCMSHC_EMMC_DLL_TIMEOUT	BIT(9)
+#define DWCMSHC_EMMC_DLL_RXCLK_SRCSEL	29
+#define DWCMSHC_EMMC_DLL_START_POINT	16
+#define DWCMSHC_EMMC_DLL_INC		8
+#define DWCMSHC_EMMC_DLL_DLYENA		BIT(27)
+#define DLL_TXCLK_TAPNUM_DEFAULT	0x8
+#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
+#define DLL_TXCLK_TAPNUM_FROM_SW	BIT(24)
+#define DLL_RXCLK_NO_INVERTER		1
+#define DLL_RXCLK_INVERTER		0
+#define DLL_LOCK_WO_TMOUT(x) \
+	((((x) & DWCMSHC_EMMC_DLL_LOCKED) == DWCMSHC_EMMC_DLL_LOCKED) && \
+	(((x) & DWCMSHC_EMMC_DLL_TIMEOUT) == 0))
+#define RK3568_MAX_CLKS 3
+
 #define BOUNDARY_OK(addr, len) \
 	((addr | (SZ_128M - 1)) == ((addr + len - 1) | (SZ_128M - 1)))
 
+struct rk3568_priv {
+	/* Rockchip specified optional clocks */
+	struct clk_bulk_data rockchip_clks[RK3568_MAX_CLKS];
+	u8 txclk_tapnum;
+};
+
 struct dwcmshc_priv {
 	struct clk	*bus_clk;
+	int vendor_specific_area1; /* P_VENDOR_SPECIFIC_AREA reg */
+	void *priv; /* pointer to SoC private stuff */
 };
 
 /*
@@ -100,6 +143,106 @@ static void dwcmshc_set_uhs_signaling(struct sdhci_host *host,
 	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
 }
 
+static void dwcmshc_hs400_enhanced_strobe(struct mmc_host *mmc,
+					  struct mmc_ios *ios)
+{
+	u32 vendor;
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	int reg = priv->vendor_specific_area1 + DWCMSHC_EMMC_CONTROL;
+
+	vendor = sdhci_readl(host, reg);
+	if (ios->enhanced_strobe)
+		vendor |= DWCMSHC_ENHANCED_STROBE;
+	else
+		vendor &= ~DWCMSHC_ENHANCED_STROBE;
+
+	sdhci_writel(host, vendor, reg);
+}
+
+static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
+	struct rk3568_priv *priv = dwc_priv->priv;
+	u8 txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT;
+	u32 extra;
+	int err;
+
+	host->mmc->actual_clock = 0;
+
+	/*
+	 * DO NOT TOUCH THIS SETTING. RX clk inverter unit is enabled
+	 * by default, but it shouldn't be enabled. We should anyway
+	 * disable it before issuing any cmds.
+	 */
+	extra = DWCMSHC_EMMC_DLL_DLYENA |
+		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
+	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_RXCLK);
+
+	if (clock == 0)
+		return;
+
+	/* Rockchip platform only support 375KHz for identify mode */
+	if (clock <= 400000)
+		clock = 375000;
+
+	err = clk_set_rate(pltfm_host->clk, clock);
+	if (err)
+		dev_err(mmc_dev(host->mmc), "fail to set clock %d", clock);
+
+	sdhci_set_clock(host, clock);
+
+	/* Disable cmd conflict check */
+	extra = sdhci_readl(host, DWCMSHC_HOST_CTRL3);
+	extra &= ~BIT(0);
+	sdhci_writel(host, extra, DWCMSHC_HOST_CTRL3);
+
+	if (clock <= 400000) {
+		/* Disable DLL to reset sample clock */
+		sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_CTRL);
+		return;
+	}
+
+	/* Reset DLL */
+	sdhci_writel(host, BIT(1), DWCMSHC_EMMC_DLL_CTRL);
+	udelay(1);
+	sdhci_writel(host, 0x0, DWCMSHC_EMMC_DLL_CTRL);
+
+	/* Init DLL settings */
+	extra = 0x5 << DWCMSHC_EMMC_DLL_START_POINT |
+		0x2 << DWCMSHC_EMMC_DLL_INC |
+		DWCMSHC_EMMC_DLL_START;
+	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_CTRL);
+	err = readl_poll_timeout(host->ioaddr + DWCMSHC_EMMC_DLL_STATUS0,
+				 extra, DLL_LOCK_WO_TMOUT(extra), 1,
+				 500 * USEC_PER_MSEC);
+	if (err) {
+		dev_err(mmc_dev(host->mmc), "DLL lock timeout!\n");
+		return;
+	}
+
+	extra = 0x1 << 16 | /* tune clock stop en */
+		0x2 << 17 | /* pre-change delay */
+		0x3 << 19;  /* post-change delay */
+	sdhci_writel(host, extra, DWCMSHC_EMMC_ATCTRL);
+
+	if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
+	    host->mmc->ios.timing == MMC_TIMING_MMC_HS400)
+		txclk_tapnum = priv->txclk_tapnum;
+
+	extra = DWCMSHC_EMMC_DLL_DLYENA |
+		DLL_TXCLK_TAPNUM_FROM_SW |
+		txclk_tapnum;
+	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_TXCLK);
+
+	extra = DWCMSHC_EMMC_DLL_DLYENA |
+		DLL_STRBIN_TAPNUM_DEFAULT |
+		DLL_STRBIN_TAPNUM_FROM_SW;
+	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
+}
+
 static const struct sdhci_ops sdhci_dwcmshc_ops = {
 	.set_clock		= sdhci_set_clock,
 	.set_bus_width		= sdhci_set_bus_width,
@@ -109,21 +252,92 @@ static const struct sdhci_ops sdhci_dwcmshc_ops = {
 	.adma_write_desc	= dwcmshc_adma_write_desc,
 };
 
+static const struct sdhci_ops sdhci_dwcmshc_rk3568_ops = {
+	.set_clock		= dwcmshc_rk3568_set_clock,
+	.set_bus_width		= sdhci_set_bus_width,
+	.set_uhs_signaling	= dwcmshc_set_uhs_signaling,
+	.get_max_clock		= sdhci_pltfm_clk_get_max_clock,
+	.reset			= sdhci_reset,
+	.adma_write_desc	= dwcmshc_adma_write_desc,
+};
+
 static const struct sdhci_pltfm_data sdhci_dwcmshc_pdata = {
 	.ops = &sdhci_dwcmshc_ops,
 	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
 	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
 };
 
+static const struct sdhci_pltfm_data sdhci_dwcmshc_rk3568_pdata = {
+	.ops = &sdhci_dwcmshc_rk3568_ops,
+	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
+		  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+		   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
+};
+
+static int dwcmshc_rk3568_init(struct sdhci_host *host, struct rk3568_priv *priv)
+{
+	int err;
+
+	priv->rockchip_clks[0].id = "axi";
+	priv->rockchip_clks[1].id = "block";
+	priv->rockchip_clks[2].id = "timer";
+	err = devm_clk_bulk_get_optional(mmc_dev(host->mmc), RK3568_MAX_CLKS,
+					 priv->rockchip_clks);
+	if (err) {
+		dev_err(mmc_dev(host->mmc), "failed to get clocks %d\n", err);
+		return err;
+	}
+
+	err = clk_bulk_prepare_enable(RK3568_MAX_CLKS, priv->rockchip_clks);
+	if (err) {
+		dev_err(mmc_dev(host->mmc), "failed to enable clocks %d\n", err);
+		return err;
+	}
+
+	if (of_property_read_u8(mmc_dev(host->mmc)->of_node, "rockchip,txclk-tapnum",
+				&priv->txclk_tapnum))
+		priv->txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT;
+
+	/* Disable cmd conflict check */
+	sdhci_writel(host, 0x0, DWCMSHC_HOST_CTRL3);
+	/* Reset previous settings */
+	sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_TXCLK);
+	sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_STRBIN);
+
+	return 0;
+}
+
+static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
+	{
+		.compatible = "rockchip,rk3568-dwcmshc",
+		.data = &sdhci_dwcmshc_rk3568_pdata,
+	},
+	{
+		.compatible = "snps,dwcmshc-sdhci",
+		.data = &sdhci_dwcmshc_pdata,
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, sdhci_dwcmshc_dt_ids);
+
 static int dwcmshc_probe(struct platform_device *pdev)
 {
 	struct sdhci_pltfm_host *pltfm_host;
 	struct sdhci_host *host;
 	struct dwcmshc_priv *priv;
+	struct rk3568_priv *rk_priv;
+	const struct sdhci_pltfm_data *pltfm_data;
 	int err;
 	u32 extra;
 
-	host = sdhci_pltfm_init(pdev, &sdhci_dwcmshc_pdata,
+	pltfm_data = of_device_get_match_data(&pdev->dev);
+	if (!pltfm_data) {
+		dev_err(&pdev->dev, "Error: No device match data found\n");
+		return -ENODEV;
+	}
+
+	host = sdhci_pltfm_init(pdev, pltfm_data,
 				sizeof(struct dwcmshc_priv));
 	if (IS_ERR(host))
 		return PTR_ERR(host);
@@ -159,7 +373,23 @@ static int dwcmshc_probe(struct platform_device *pdev)
 
 	sdhci_get_of_property(pdev);
 
+	priv->vendor_specific_area1 =
+		sdhci_readl(host, DWCMSHC_P_VENDOR_AREA1) & DWCMSHC_AREA1_MASK;
+
 	host->mmc_host_ops.request = dwcmshc_request;
+	host->mmc_host_ops.hs400_enhanced_strobe = dwcmshc_hs400_enhanced_strobe;
+
+	if (pltfm_data == &sdhci_dwcmshc_rk3568_pdata) {
+		rk_priv = devm_kzalloc(&pdev->dev, sizeof(struct rk3568_priv), GFP_KERNEL);
+		if (!rk_priv)
+			goto err_clk;
+
+		priv->priv = rk_priv;
+
+		err = dwcmshc_rk3568_init(host, rk_priv);
+		if (err)
+			goto err_clk;
+	}
 
 	err = sdhci_add_host(host);
 	if (err)
@@ -170,6 +400,9 @@ static int dwcmshc_probe(struct platform_device *pdev)
 err_clk:
 	clk_disable_unprepare(pltfm_host->clk);
 	clk_disable_unprepare(priv->bus_clk);
+	if (rk_priv)
+		clk_bulk_disable_unprepare(RK3568_MAX_CLKS,
+					   rk_priv->rockchip_clks);
 free_pltfm:
 	sdhci_pltfm_free(pdev);
 	return err;
@@ -180,12 +413,15 @@ static int dwcmshc_remove(struct platform_device *pdev)
 	struct sdhci_host *host = platform_get_drvdata(pdev);
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	struct rk3568_priv *rk_priv = priv->priv;
 
 	sdhci_remove_host(host, 0);
 
 	clk_disable_unprepare(pltfm_host->clk);
 	clk_disable_unprepare(priv->bus_clk);
-
+	if (rk_priv)
+		clk_bulk_disable_unprepare(RK3568_MAX_CLKS,
+					   rk_priv->rockchip_clks);
 	sdhci_pltfm_free(pdev);
 
 	return 0;
@@ -197,6 +433,7 @@ static int dwcmshc_suspend(struct device *dev)
 	struct sdhci_host *host = dev_get_drvdata(dev);
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	struct rk3568_priv *rk_priv = priv->priv;
 	int ret;
 
 	ret = sdhci_suspend_host(host);
@@ -207,6 +444,10 @@ static int dwcmshc_suspend(struct device *dev)
 	if (!IS_ERR(priv->bus_clk))
 		clk_disable_unprepare(priv->bus_clk);
 
+	if (rk_priv)
+		clk_bulk_disable_unprepare(RK3568_MAX_CLKS,
+					   rk_priv->rockchip_clks);
+
 	return ret;
 }
 
@@ -215,6 +456,7 @@ static int dwcmshc_resume(struct device *dev)
 	struct sdhci_host *host = dev_get_drvdata(dev);
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
+	struct rk3568_priv *rk_priv = priv->priv;
 	int ret;
 
 	ret = clk_prepare_enable(pltfm_host->clk);
@@ -227,18 +469,19 @@ static int dwcmshc_resume(struct device *dev)
 			return ret;
 	}
 
+	if (rk_priv) {
+		ret = clk_bulk_prepare_enable(RK3568_MAX_CLKS,
+					      rk_priv->rockchip_clks);
+		if (ret)
+			return ret;
+	}
+
 	return sdhci_resume_host(host);
 }
 #endif
 
 static SIMPLE_DEV_PM_OPS(dwcmshc_pmops, dwcmshc_suspend, dwcmshc_resume);
 
-static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
-	{ .compatible = "snps,dwcmshc-sdhci" },
-	{}
-};
-MODULE_DEVICE_TABLE(of, sdhci_dwcmshc_dt_ids);
-
 static struct platform_driver sdhci_dwcmshc_driver = {
 	.driver	= {
 		.name	= "sdhci-dwcmshc",
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
