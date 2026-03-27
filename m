Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40D3410AB83D
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 14:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=30F0ZNq8LTKXQQmJHSXkzaMrVAmKaOSt/vvystdMfTM=; b=SvJDyZF1fqLmer
	sKwplFEoMCU3dvZuSk/EyLiuVaPJ+rXzct/fsqVvQKfwTC1cMGY0RqRUqRRfxTpOi9lxa3Fb4vCor
	50ZF4zRCEeQneI4TB7VJzpCzepWfxEgthn/hW3xzfStBkT9G3dy4qFfFtra1DZ/+ehvLKJiSJfkaN
	YOU16IqeWN+fuV8kzXyezuGCRhc9fLsBzICe/62CBopTZ+YUwon1eRhybfO8uBC00O7GTVZJjAlWS
	AMlahm2y3uaFgUvkBx/HG1V2qrpAWeSveB1X8Mgl1gCxYTyRe/AWEb+tF4aSxgnuEKIWaZPKiOOse
	Ej4grQeBsJ8YscfDyvlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67xd-00000007a2M-0DLv;
	Fri, 27 Mar 2026 14:14:53 +0000
Received: from mail-m49228.qiye.163.com ([45.254.49.228])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67xa-00000007a0x-2Och
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Mar 2026 14:14:52 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 389480261;
	Fri, 27 Mar 2026 22:14:46 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] mmc: sdhci-dwcmshc: Refactor Rockchip platform data for controller revisions
Date: Fri, 27 Mar 2026 22:14:35 +0800
Message-Id: <1774620875-18258-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9d2fa5c4c309cckunmc15641eacac6bb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5KHlZCTU9MGk0eSkpCGUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PlC5TIHakuBN7qT6WNh9RtfxaYt/lidF/CASZGV+sV3f+72z1QaPyuur1bctsEUe0nBvioCHvY89M+CJCiqDiyYU/DO2mrpkfc1HX5ntd2xj99rJqLqwjKMS322USUumf1hj8VUaLZ25Nlj6NswfiIYnGlk3Gzbkc331n8MIzA4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gFgoEUV9L8JDZIBojAxp3TVgf/l7jRPLQy0YDO/RzPQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_071451_255402_AEDA2290 
X-CRM114-Status: GOOD (  16.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

The driver previously used an enum (dwcmshc_rk_type) to distinguish
platforms like the RK3568 and RK3588 based on DT compatible names.
This approach is inflexible, scales poorly for future revisions or
mixed-revision platforms, and conflates SoC names with controller
revisions. One example is RK3576 which lists "rockchip,rk3588-dwcmshc"
as a secondary compatible string just in order to claim it uses the
same controller revision as RK3588. This is confusing and makes it
error-prone to add new SoC support.

Introduces a new struct rockchip_pltfm_data containing a dedicated
revision field. The old enum is removed, and all code paths are
updated to use the revision-based data.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- update commit msg
- document the revision field
- re-order the Rockchip plftm data

 drivers/mmc/host/sdhci-of-dwcmshc.c | 92 +++++++++++++++++++++++--------------
 1 file changed, 57 insertions(+), 35 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index a91b3e7..aae7656 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -278,14 +278,8 @@
 #define PHY_DELAY_CODE_EMMC		0x17
 #define PHY_DELAY_CODE_SD		0x55
 
-enum dwcmshc_rk_type {
-	DWCMSHC_RK3568,
-	DWCMSHC_RK3588,
-};
-
 struct rk35xx_priv {
 	struct reset_control *reset;
-	enum dwcmshc_rk_type devtype;
 	u8 txclk_tapnum;
 };
 
@@ -330,6 +324,16 @@ struct k230_pltfm_data {
 	u32 write_prot_bit;
 };
 
+struct rockchip_pltfm_data {
+	struct dwcmshc_pltfm_data dwcmshc_pdata;
+	/*
+	 * The controller hardware has two known revisions documented internally:
+	 * - Revision 0: Exclusively used by RK3566 and RK3568 SoCs.
+	 * - Revision 1: Implemented in all other Rockchip SoCs, including RK3576, RK3588, etc.
+	 */
+	int revision;
+};
+
 static void dwcmshc_enable_card_clk(struct sdhci_host *host)
 {
 	u16 ctrl;
@@ -749,6 +753,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
 	struct rk35xx_priv *priv = dwc_priv->priv;
+	const struct rockchip_pltfm_data *rockchip_pdata = to_pltfm_data(dwc_priv, rockchip);
 	u8 txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT;
 	u32 extra, reg;
 	int err;
@@ -816,7 +821,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	 * we must set it in higher speed mode.
 	 */
 	extra = DWCMSHC_EMMC_DLL_DLYENA;
-	if (priv->devtype == DWCMSHC_RK3568)
+	if (rockchip_pdata->revision == 0)
 		extra |= DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
 	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_RXCLK);
 
@@ -842,7 +847,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	    host->mmc->ios.timing == MMC_TIMING_MMC_HS400)
 		txclk_tapnum = priv->txclk_tapnum;
 
-	if ((priv->devtype == DWCMSHC_RK3588) && host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
+	if ((rockchip_pdata->revision == 1) && host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
 		txclk_tapnum = DLL_TXCLK_TAPNUM_90_DEGREES;
 
 		extra = DLL_CMDOUT_SRC_CLK_NEG |
@@ -898,11 +903,6 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
 	if (!priv)
 		return -ENOMEM;
 
-	if (of_device_is_compatible(dev->of_node, "rockchip,rk3588-dwcmshc"))
-		priv->devtype = DWCMSHC_RK3588;
-	else
-		priv->devtype = DWCMSHC_RK3568;
-
 	priv->reset = devm_reset_control_array_get_optional_exclusive(mmc_dev(host->mmc));
 	if (IS_ERR(priv->reset)) {
 		err = PTR_ERR(priv->reset);
@@ -2115,30 +2115,52 @@ static const struct cqhci_host_ops rk35xx_cqhci_ops = {
 	.set_tran_desc	= dwcmshc_set_tran_desc,
 };
 
-static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
-	.pdata = {
-		.ops = &sdhci_dwcmshc_rk35xx_ops,
-		.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
-			  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
-		.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
-			   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
+static const struct rockchip_pltfm_data sdhci_dwcmshc_rk3568_pdata = {
+	.dwcmshc_pdata = {
+		.pdata = {
+			.ops = &sdhci_dwcmshc_rk35xx_ops,
+			.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
+				  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
+			.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+				   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
+		},
+		.cqhci_host_ops = &rk35xx_cqhci_ops,
+		.init = dwcmshc_rk35xx_init,
+		.postinit = dwcmshc_rk35xx_postinit,
 	},
-	.cqhci_host_ops = &rk35xx_cqhci_ops,
-	.init = dwcmshc_rk35xx_init,
-	.postinit = dwcmshc_rk35xx_postinit,
+	.revision = 0,
 };
 
-static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk3576_pdata = {
-	.pdata = {
-		.ops = &sdhci_dwcmshc_rk35xx_ops,
-		.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
-			  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
-		.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
-			   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
+static const struct rockchip_pltfm_data sdhci_dwcmshc_rk3576_pdata = {
+	.dwcmshc_pdata = {
+		.pdata = {
+			.ops = &sdhci_dwcmshc_rk35xx_ops,
+			.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
+				  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
+			.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+				   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
+		},
+		.cqhci_host_ops = &rk35xx_cqhci_ops,
+		.init = dwcmshc_rk35xx_init,
+		.postinit = dwcmshc_rk3576_postinit,
+	},
+	.revision = 1,
+};
+
+static const struct rockchip_pltfm_data sdhci_dwcmshc_rk3588_pdata = {
+	.dwcmshc_pdata = {
+		.pdata = {
+			.ops = &sdhci_dwcmshc_rk35xx_ops,
+			.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
+				  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
+			.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+				   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
+		},
+		.cqhci_host_ops = &rk35xx_cqhci_ops,
+		.init = dwcmshc_rk35xx_init,
+		.postinit = dwcmshc_rk35xx_postinit,
 	},
-	.cqhci_host_ops = &rk35xx_cqhci_ops,
-	.init = dwcmshc_rk35xx_init,
-	.postinit = dwcmshc_rk3576_postinit,
+	.revision = 1,
 };
 
 static const struct dwcmshc_pltfm_data sdhci_dwcmshc_th1520_pdata = {
@@ -2309,7 +2331,7 @@ static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
 	},
 	{
 		.compatible = "rockchip,rk3588-dwcmshc",
-		.data = &sdhci_dwcmshc_rk35xx_pdata,
+		.data = &sdhci_dwcmshc_rk3588_pdata,
 	},
 	{
 		.compatible = "rockchip,rk3576-dwcmshc",
@@ -2317,7 +2339,7 @@ static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
 	},
 	{
 		.compatible = "rockchip,rk3568-dwcmshc",
-		.data = &sdhci_dwcmshc_rk35xx_pdata,
+		.data = &sdhci_dwcmshc_rk3568_pdata,
 	},
 	{
 		.compatible = "snps,dwcmshc-sdhci",
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
