Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FCC210BA435
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nhBhO7fyLvch+mLF3lBH2bFktyFyuxPUXyWui1SFrpY=; b=JLX0tp5oeQgDlM
	jKIDf49JjGKghgkIXDCTUkInj9UFxbvUL1Ds++SK/oZTEhzP/L8Wn2wGHcRgmHKx9tJIROnef4ZYC
	ayk0AVX4u82rQaK0uuMA4ogtzMXZMczUyX1LpLTfntV6vpNJdunsc8sMB4c2H3jXozhS2b54bCZ/i
	bgePombjbc2SofwwdSmeMs8rKVWqsBMcebqFMYQY7H//RviNnc/gQa5LK2CIYKTh8w3xaOJRxy+Gu
	n1fT2YYfp09YDMhvhsdiDkQ2HfN9SniyI4fvgbGPbpLh+M0Dke2nYbOBj7UOBl5KOGQQ5ElayzJYN
	48p21pABFQwNJQQuto5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w62DO-00000006wL7-0vtB;
	Fri, 27 Mar 2026 08:06:46 +0000
Received: from mail-m49209.qiye.163.com ([45.254.49.209])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w62DL-00000006wIE-2fyt
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Mar 2026 08:06:45 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3888d3407;
	Fri, 27 Mar 2026 15:51:20 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] mmc: sdhci-of-dwcmshc: Refactor Rockchip platform data for controller revisions
Date: Fri, 27 Mar 2026 15:51:12 +0800
Message-Id: <1774597872-179908-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9d2e46badf09cckunm2e8f793ec78a78
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pOTVZJT09NSkpKQ05DGU9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=b8FDtS1S4B9jEoTSuHjOeZ/jv1OrGM5zaV7MgUT9qWRDXSnHEEbp5KTcvPwOf/1rMnqDExKsJN6O8tFR7sVBN2LQTVSwHzEAvlnMhpPiOyseb046ZpYY6TLt2VZr1++dRyLgts+xqH+ZqngCMwun5X1ypKs/8TQiV134RE9ONOM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HWEckGq10Wq/QXCQinHB3SY/nA2f2aQDidy2TvEYOlw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_010644_300939_3F183634 
X-CRM114-Status: GOOD (  14.55  )
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
revisions.

Introduces a new struct rockchip_pltfm_data containing a dedicated
revision field. The old enum is removed, and all code paths are
updated to use the revision-based data.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/sdhci-of-dwcmshc.c | 87 ++++++++++++++++++++++---------------
 1 file changed, 52 insertions(+), 35 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index a91b3e7..6b43ba9 100644
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
 
@@ -330,6 +324,11 @@ struct k230_pltfm_data {
 	u32 write_prot_bit;
 };
 
+struct rockchip_pltfm_data {
+	struct dwcmshc_pltfm_data dwcmshc_pdata;
+	int revision;
+};
+
 static void dwcmshc_enable_card_clk(struct sdhci_host *host)
 {
 	u16 ctrl;
@@ -749,6 +748,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
 	struct rk35xx_priv *priv = dwc_priv->priv;
+	const struct rockchip_pltfm_data *rockchip_pdata = to_pltfm_data(dwc_priv, rockchip);
 	u8 txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT;
 	u32 extra, reg;
 	int err;
@@ -816,7 +816,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	 * we must set it in higher speed mode.
 	 */
 	extra = DWCMSHC_EMMC_DLL_DLYENA;
-	if (priv->devtype == DWCMSHC_RK3568)
+	if (rockchip_pdata->revision == 0)
 		extra |= DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
 	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_RXCLK);
 
@@ -842,7 +842,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	    host->mmc->ios.timing == MMC_TIMING_MMC_HS400)
 		txclk_tapnum = priv->txclk_tapnum;
 
-	if ((priv->devtype == DWCMSHC_RK3588) && host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
+	if ((rockchip_pdata->revision == 1) && host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
 		txclk_tapnum = DLL_TXCLK_TAPNUM_90_DEGREES;
 
 		extra = DLL_CMDOUT_SRC_CLK_NEG |
@@ -898,11 +898,6 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
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
@@ -2115,30 +2110,52 @@ static const struct cqhci_host_ops rk35xx_cqhci_ops = {
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
+	},
+	.revision = 1,
+};
+
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
 	},
-	.cqhci_host_ops = &rk35xx_cqhci_ops,
-	.init = dwcmshc_rk35xx_init,
-	.postinit = dwcmshc_rk3576_postinit,
+	.revision = 1,
 };
 
 static const struct dwcmshc_pltfm_data sdhci_dwcmshc_th1520_pdata = {
@@ -2309,7 +2326,7 @@ static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
 	},
 	{
 		.compatible = "rockchip,rk3588-dwcmshc",
-		.data = &sdhci_dwcmshc_rk35xx_pdata,
+		.data = &sdhci_dwcmshc_rk3588_pdata,
 	},
 	{
 		.compatible = "rockchip,rk3576-dwcmshc",
@@ -2317,7 +2334,7 @@ static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
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
