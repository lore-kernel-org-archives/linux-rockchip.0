Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C89D3E65D3A
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Nov 2024 09:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WO1I58D1awl8CqodWYkcUf3MdcEWMdfv2017OejMREY=; b=YlKhg+jyqE1ET5
	7bL98sW39PXyVATsTNNfBP1icROCKvJAvFkfRxrKGaR2q4JUtANlYazybFkfd33kdRJqI1qgkrdPQ
	t7gh5X0MLTVGVEsujDoElMR47eOSlntAq+eDuTnnndh7mkd4K6ASt4yOgO8tpxdOkSxLQYNQVZUKx
	9H/P9INWMAiUdw6W1OnNNL/+7qPzcuilkxjhKHH8KjrkEHsnvEjllXdRN7/vg6iCVIAXEXEcBlUq+
	EKdffPPjBZLmC3p+yYCrc82eU88OtipKWtl+bqcrm0fj+QY/4cJuh1p5SKnYW/AcMTMPVbvtZYZL8
	W8eh+QvAR4KAFW5iz4YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPwt-000000025vj-2Tt2;
	Fri, 22 Nov 2024 09:27:35 +0000
Received: from mail-m127217.xmail.ntesmail.com ([115.236.127.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEPuD-000000025O7-1Qw0
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Nov 2024 09:24:51 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 38959665;
	Fri, 22 Nov 2024 17:24:35 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] mmc: sdhci-of-dwcmshc: Restore missing regs for RK3576 platform
Date: Fri, 22 Nov 2024 17:24:08 +0800
Message-Id: <1732267448-72548-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlIHlZNSEkdSE5CT0tNSklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a935330032409cckunm38959665
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P006Kxw6PjIYGT4JDAE0GEtW
	Mk4KC0pVSlVKTEhJSU1MT0xNQ0pIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLTkM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=bASxYq9W35aKDVpuxQJMSLflCRPg84ZdQsJ+Wzd5Zvksz3OVW2tnipj6qztENdyu2BJ7U/B1Z60DQ9dJyq5WJv5N5VMaiXvzDVJb8oK/tr3+09uMxWEyCuzvmaJ15aofGCRKpm1XobFXVMpDr8ndZFhTWWLAIvgGccjTb7OxQ70=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ULdm66vH3eysA/Cw8Jg21nq4yfZIlWCcghnT2DeAKqs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_012449_895901_630257BA 
X-CRM114-Status: GOOD (  13.69  )
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

DECMSHC_EMMC_MISC_CON is introduced from RK3576 which need to be
saved and restore after .reset() with SDHCI_RESET_ALL is called,
because we assert the reset line. Otherwise the entire controller
is broken anyway.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/sdhci-of-dwcmshc.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index 8999b97..aa46655 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -81,6 +81,8 @@
 #define DWCMSHC_EMMC_DLL_TXCLK		0x808
 #define DWCMSHC_EMMC_DLL_STRBIN		0x80c
 #define DECMSHC_EMMC_DLL_CMDOUT		0x810
+#define MISC_INTCLK_EN			BIT(1)
+#define DECMSHC_EMMC_MISC_CON		0x81c
 #define DWCMSHC_EMMC_DLL_STATUS0	0x840
 #define DWCMSHC_EMMC_DLL_START		BIT(0)
 #define DWCMSHC_EMMC_DLL_LOCKED		BIT(8)
@@ -213,6 +215,7 @@ enum dwcmshc_rk_type {
 struct rk35xx_priv {
 	struct reset_control *reset;
 	enum dwcmshc_rk_type devtype;
+	bool has_misc_con;
 	u8 txclk_tapnum;
 };
 
@@ -720,6 +723,7 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
 	struct rk35xx_priv *priv = dwc_priv->priv;
+	int misc_con;
 
 	if (mask & SDHCI_RESET_ALL && priv->reset) {
 		reset_control_assert(priv->reset);
@@ -728,6 +732,12 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
 	}
 
 	sdhci_reset(host, mask);
+
+	/* Restore DECMSHC_EMMC_MISC_CON */
+	if (priv->has_misc_con) {
+		misc_con = sdhci_readl(host, DECMSHC_EMMC_MISC_CON);
+		sdhci_writel(host, misc_con | MISC_INTCLK_EN, DECMSHC_EMMC_MISC_CON);
+	}
 }
 
 static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
@@ -735,7 +745,7 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
 {
 	static const char * const clk_ids[] = {"axi", "block", "timer"};
 	struct rk35xx_priv *priv;
-	int err;
+	int err, misc_con;
 
 	priv = devm_kzalloc(dev, sizeof(struct rk35xx_priv), GFP_KERNEL);
 	if (!priv)
@@ -746,6 +756,9 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
 	else
 		priv->devtype = DWCMSHC_RK3568;
 
+	if (of_device_is_compatible(dev->of_node, "rockchip,rk3576-dwcmshc"))
+		priv->has_misc_con = true;
+
 	priv->reset = devm_reset_control_array_get_optional_exclusive(mmc_dev(host->mmc));
 	if (IS_ERR(priv->reset)) {
 		err = PTR_ERR(priv->reset);
@@ -767,6 +780,10 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
 	/* Reset previous settings */
 	sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_TXCLK);
 	sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_STRBIN);
+	if (priv->has_misc_con) {
+		misc_con = sdhci_readl(host, DECMSHC_EMMC_MISC_CON);
+		sdhci_writel(host, misc_con | MISC_INTCLK_EN, DECMSHC_EMMC_MISC_CON);
+	}
 
 	dwc_priv->priv = priv;
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
