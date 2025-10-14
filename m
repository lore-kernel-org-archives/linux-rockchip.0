Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2A3DCCD194
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 15:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOVvf167Wr79fB2dse7W06WR195mQkfe2jzLykATjnc=; b=MGxhMGUYCFfotW
	fOi46iwQEoEh+valLmPYkxSo37Pz9/GJCmGHMIAR5BHqv5aJN20L8I2dABAvm7BSme1PMhQ4+zo9z
	SgtiXiyXaONOotA5SSRyg3EwUo20HczzNT2F2W8BLxKwXdUXS6Be6erdfwbZfJ3zTt8iBBv+e5hAN
	zZaK8QPH8h6YvSORg+ATsJTFxWnJvGuwm+FNQwPy1ddmJFSyBL3I6E225NnWBxY62MSe2MlPkKTpf
	WE3rp7ubIKLeOqn06FWyKDMG3or2m/fO1C3RN7Wuxgl/1qXMCQj7WV5e24DSS0ErkUhIVFTWa0Q6C
	rPVMBm8qGiaepha1sOqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8h9a-0000000GsqJ-3AB3;
	Tue, 14 Oct 2025 15:41:34 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8h9Y-0000000GsoD-31oB
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 15:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760456490;
	bh=L3oHp0nah+4JfGPo7u1dsT5zNOH3mpc8ie89Ur4iki4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ze+sP9mnDbkfzGA08OETFxxNirtWIy6uQzYfjd54ZbV8je8WpEOliPWhejfMcUyXT
	 /iZRxVXc6PrXOsgr/Fom9gnsbpA4DOt1Bp/kfsj/l56zwu290Z0AqQuN0E7NcQf9+Y
	 8qHzs2oZXhUR6nq05LJ50i4IYMLPRiVtxv3mf6XMocblUUw3tsngsXPfClNQMasjZ9
	 NPBfj/bgl1oJmjKSBVkvsVI2gEFKejI00v8ve4kGtoh2VPPbcB9zvFY3C9oMyWvXWv
	 aZC+uafWmxhbNdrDaW3tjxilHMdBUYUUBVFDy1hBUxdrr3+3iDhjdWJ1KTGA6PcdE/
	 pa0Kpnp3ig9EA==
Received: from jupiter.universe (dyndsl-091-248-212-042.ewe-ip-backbone.de [91.248.212.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5603817E0FC2;
	Tue, 14 Oct 2025 17:41:30 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0CB7A480041; Tue, 14 Oct 2025 17:41:30 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 14 Oct 2025 17:41:18 +0200
Subject: [PATCH 1/2] mmc: sdhci-of-dwcmshc: Add command queue support for
 rockchip SOCs
MIME-Version: 1.0
Message-Id: <20251014-rockchip-emmc-cqe-support-v1-1-918f03de0cb1@collabora.com>
References: <20251014-rockchip-emmc-cqe-support-v1-0-918f03de0cb1@collabora.com>
In-Reply-To: <20251014-rockchip-emmc-cqe-support-v1-0-918f03de0cb1@collabora.com>
To: Adrian Hunter <adrian.hunter@intel.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6711;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=L3oHp0nah+4JfGPo7u1dsT5zNOH3mpc8ie89Ur4iki4=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGjubykKOW1USlwL32y7ncJfW0xUfvSkhjswL
 Qhak+ePGXsoUokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJo7m8pAAoJENju1/PI
 O/qa7BgP/1hCgNloEK6EgHaBX6yw8yXyFCyET6y4TbDvUrI9VwGaPEOE8hIIV9owXtid5+EUV1/
 NjBW30ZUlnX3B7ja1JyQNPoitqYbk2Tp8f4dHhl+OiNqD5gLiEXmijRfrQO6+67Rxhd9xnaWlun
 r4x4QaAvatSJ79bfbfVg33k9PubpctV1hSex2HBt5dJ5G3D70A3eGx58EngHeuFmK5U02jbvNgK
 EvmgEXmah22oFEHVUKdDntbwzkjJDMdqEfKd7Z95tBCCJ/Wv5Qe5KQhl5H5gnGLPg1h0QSqaqmA
 f24CEXEv7HStRwKjyMp6AXzkP+dM7IGrxw+fSXlYHNapeaGlEXmXuE/LeEiJxgU4oEqVoTSbZj0
 5teUZ9r7bqzAU6Iww6rMEKSxMYOYs5OmNg8XeVjz5rNe2JKTliXGFn5toxwRSp2Ow3ab/29375U
 jDcpn27m/GeHsr7d/sAzrWupN0kMtn6xym5SvxUxoIOb/hAPZ8BnwR50cfyVdH16Ilsf9cMZq2K
 MDDX7ALiBgJ4oDs7gkNUP7mXOD53qYSUw+gA45tU7ZS3XrD00W6OIpBYxiuCLLB1SZ6bS9zcxr3
 rQhyGlLPk2tahLMuBOAQEjCaejjwC5yELnQ7K8jvZrHL3rGJWQKanwnRml464qpc5klV8YSFMIw
 3/irbUBcSPhqijC02pKctQg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_084132_920522_6A2E76E0 
X-CRM114-Status: GOOD (  20.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This adds CQE support for the Rockchip RK3588 and RK3576 platform. To
be functional, the eMMC device-tree node must have a 'supports-cqe;'
flag property.

As the RK3576 devicet-tree has been upstreamed with the 'supports-cqe;'
property set by default, the kernel already tried to use CQE, which
results in system hang during suspend. This fixes the issue.

Co-developed-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mmc/host/sdhci-of-dwcmshc.c | 85 +++++++++++++++++++++++++++++++++++--
 1 file changed, 82 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index eebd45389956..f533c98d5db1 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -24,6 +24,7 @@
 
 #include "sdhci-pltfm.h"
 #include "cqhci.h"
+#include "sdhci-cqhci.h"
 
 #define SDHCI_DWCMSHC_ARG2_STUFF	GENMASK(31, 16)
 
@@ -82,6 +83,8 @@
 #define DWCMSHC_EMMC_DLL_TXCLK		0x808
 #define DWCMSHC_EMMC_DLL_STRBIN		0x80c
 #define DECMSHC_EMMC_DLL_CMDOUT		0x810
+#define DECMSHC_EMMC_MISC_CON		0x81C
+#define MISC_INTCLK_EN			BIT(1)
 #define DWCMSHC_EMMC_DLL_STATUS0	0x840
 #define DWCMSHC_EMMC_DLL_START		BIT(0)
 #define DWCMSHC_EMMC_DLL_LOCKED		BIT(8)
@@ -234,6 +237,7 @@ struct dwcmshc_priv {
 
 struct dwcmshc_pltfm_data {
 	const struct sdhci_pltfm_data pdata;
+	const struct cqhci_host_ops *cqhci_host_ops;
 	int (*init)(struct device *dev, struct sdhci_host *host, struct dwcmshc_priv *dwc_priv);
 	void (*postinit)(struct sdhci_host *host, struct dwcmshc_priv *dwc_priv);
 };
@@ -561,6 +565,61 @@ static void dwcmshc_cqhci_dumpregs(struct mmc_host *mmc)
 	sdhci_dumpregs(mmc_priv(mmc));
 }
 
+static void rk35xx_sdhci_cqe_enable(struct mmc_host *mmc)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
+	u32 reg;
+
+	reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
+	reg |= CQHCI_ENABLE;
+	sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
+
+	reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
+	while (reg & SDHCI_DATA_AVAILABLE) {
+		sdhci_readl(host, SDHCI_BUFFER);
+		reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
+	}
+
+	sdhci_writew(host, DWCMSHC_SDHCI_CQE_TRNS_MODE, SDHCI_TRANSFER_MODE);
+
+	sdhci_cqe_enable(mmc);
+
+	sdhci_writew(host, DWCMSHC_SDHCI_CQE_TRNS_MODE, SDHCI_TRANSFER_MODE);
+}
+
+static void rk35xx_sdhci_cqe_disabled(struct mmc_host *mmc, bool recovery)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
+	unsigned long flags;
+	u32 ctrl;
+
+	mmc->cqe_ops->cqe_wait_for_idle(mmc);
+	spin_lock_irqsave(&host->lock, flags);
+
+	/*
+	 * During CQE command transfers, command complete bit gets latched.
+	 * So s/w should clear command complete interrupt status when CQE is
+	 * either halted or disabled. Otherwise unexpected SDCHI legacy
+	 * interrupt gets triggered when CQE is halted/disabled.
+	 */
+	ctrl = sdhci_readl(host, SDHCI_INT_ENABLE);
+	ctrl |= SDHCI_INT_RESPONSE;
+	sdhci_writel(host,  ctrl, SDHCI_INT_ENABLE);
+	sdhci_writel(host, SDHCI_INT_RESPONSE, SDHCI_INT_STATUS);
+
+	spin_unlock_irqrestore(&host->lock, flags);
+
+	sdhci_cqe_disable(mmc, recovery);
+
+	ctrl = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
+	ctrl &= ~CQHCI_ENABLE;
+	sdhci_writel(host, ctrl, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
+}
+
 static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
@@ -679,6 +738,10 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
 	struct rk35xx_priv *priv = dwc_priv->priv;
+	u32 extra = sdhci_readl(host, DECMSHC_EMMC_MISC_CON);
+
+	if ((host->mmc->caps2 & MMC_CAP2_CQE) && (mask & SDHCI_RESET_ALL))
+		cqhci_deactivate(host->mmc);
 
 	if (mask & SDHCI_RESET_ALL && priv->reset) {
 		reset_control_assert(priv->reset);
@@ -687,6 +750,9 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
 	}
 
 	sdhci_reset(host, mask);
+
+	/* Enable INTERNAL CLOCK */
+	sdhci_writel(host, MISC_INTCLK_EN | extra, DECMSHC_EMMC_MISC_CON);
 }
 
 static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
@@ -1188,6 +1254,13 @@ static const struct dwcmshc_pltfm_data sdhci_dwcmshc_bf3_pdata = {
 };
 #endif
 
+static const struct cqhci_host_ops rk35xx_cqhci_ops = {
+	.enable		= rk35xx_sdhci_cqe_enable,
+	.disable	= rk35xx_sdhci_cqe_disabled,
+	.dumpregs	= dwcmshc_cqhci_dumpregs,
+	.set_tran_desc	= dwcmshc_set_tran_desc,
+};
+
 static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
 	.pdata = {
 		.ops = &sdhci_dwcmshc_rk35xx_ops,
@@ -1196,6 +1269,7 @@ static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
 		.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
 			   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
 	},
+	.cqhci_host_ops = &rk35xx_cqhci_ops,
 	.init = dwcmshc_rk35xx_init,
 	.postinit = dwcmshc_rk35xx_postinit,
 };
@@ -1245,7 +1319,9 @@ static const struct cqhci_host_ops dwcmshc_cqhci_ops = {
 	.set_tran_desc	= dwcmshc_set_tran_desc,
 };
 
-static void dwcmshc_cqhci_init(struct sdhci_host *host, struct platform_device *pdev)
+static void dwcmshc_cqhci_init(struct sdhci_host *host,
+			       struct platform_device *pdev,
+			       const struct dwcmshc_pltfm_data *pltfm_data)
 {
 	struct cqhci_host *cq_host;
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
@@ -1275,7 +1351,10 @@ static void dwcmshc_cqhci_init(struct sdhci_host *host, struct platform_device *
 	}
 
 	cq_host->mmio = host->ioaddr + priv->vendor_specific_area2;
-	cq_host->ops = &dwcmshc_cqhci_ops;
+	if (pltfm_data->cqhci_host_ops)
+		cq_host->ops = pltfm_data->cqhci_host_ops;
+	else
+		cq_host->ops = &dwcmshc_cqhci_ops;
 
 	/* Enable using of 128-bit task descriptors */
 	dma64 = host->flags & SDHCI_USE_64_BIT_DMA;
@@ -1443,7 +1522,7 @@ static int dwcmshc_probe(struct platform_device *pdev)
 		priv->vendor_specific_area2 =
 			sdhci_readw(host, DWCMSHC_P_VENDOR_AREA2);
 
-		dwcmshc_cqhci_init(host, pdev);
+		dwcmshc_cqhci_init(host, pdev, pltfm_data);
 	}
 
 	if (pltfm_data->postinit)

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
