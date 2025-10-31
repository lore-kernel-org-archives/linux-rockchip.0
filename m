Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39A94CCFA00
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 15:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGNhtUxhZwx9NMjU8BUt1n36XlMmpFOZtJdroD5en9k=; b=s7OwZCiMsd+4Np
	uBDCuNM0RvhOtcy8KUSyk9bzz3InHteb9r1MwiClTGA7L32cTuy4U4JUDomV4+v4RhP1TuTi/S/nO
	9AYz5cf94Y4QUy2tCAJlUdL0KymBvpUembbGEr+xjdmyVLQjGrYtKW2j+fJF/m3vPYVuLaBH8wAw/
	EI28jdunyemkBqD8deSqOaFTrlfUH3fkIYW/zJtvvOil3PKYSxj5qF8m++JhWTKu2vx8KEJpFp0PB
	YFeP57PQ1I750PDuBOwiy8+zj6K+arG1A4v7Xu1wXfmhwHYjRSGN/yQJEJb46Ho5/M3CnHIfAeewj
	rAo6b3eLgw6PzA+Ty/5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vErWQ-00000006KvL-2KuD;
	Fri, 31 Oct 2025 15:58:38 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vErWL-00000006KtM-1vVC
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Oct 2025 15:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761926308;
	bh=2P+89POdGcGTjFRj1WCbCO97G/UGUVoBy9v+75DJkxc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=plFUgOtlZPqOqN1v5l2rivO7CIVd4SJsOuDHUFj87AirJCybqPFZf7mn+f/Toq48B
	 9N3D+VTMs5rHvetNt5+3ZJ1h1oYYdj199fMv5hecLEwhQFhsgYy5FyijC/kn8suCx/
	 cI4vLPhsVPsxCV8AzGk/PYiZZfNBvTqMJpCjzu2SfDacRkBNXQoWgKoBVNAoOYG+9d
	 r+DcSBYmd3eH/qhGqLbmeY5H4zpKLgnO3uvivd+wmj6MMYgVMj8kaVaAtcatrtNbrw
	 ywsZxEIiEj2Iz/tZUBH4JAha6WJxuw7log7INan/z+i8xI8bi6wbbns0+fJJAnXv0D
	 kvqvLtID8SqHw==
Received: from jupiter.universe (dyndsl-091-248-209-065.ewe-ip-backbone.de [91.248.209.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 686EE17E127F;
	Fri, 31 Oct 2025 16:58:28 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1982948003D; Fri, 31 Oct 2025 16:58:28 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 31 Oct 2025 16:58:23 +0100
Subject: [PATCH v2 1/2] mmc: sdhci-of-dwcmshc: Add command queue support
 for rockchip SOCs
MIME-Version: 1.0
Message-Id: <20251031-rockchip-emmc-cqe-support-v2-1-958171f5edad@collabora.com>
References: <20251031-rockchip-emmc-cqe-support-v2-0-958171f5edad@collabora.com>
In-Reply-To: <20251031-rockchip-emmc-cqe-support-v2-0-958171f5edad@collabora.com>
To: Adrian Hunter <adrian.hunter@intel.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6934;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=2P+89POdGcGTjFRj1WCbCO97G/UGUVoBy9v+75DJkxc=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGkE3KSNXi/tiUuJUrZn+6uB6aLHxLjbJiuMt
 NS3xmiDtHCSMokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpBNykAAoJENju1/PI
 O/qasPYP/39y0+najeDqGiBAV7DxCb7PutMN8QH+6VwcqQX7mV3/ydLCJ2ihmOQETDOF6EbEMrr
 AKeyyXl19/9lw3tVv6rQ0eCgemnBve5qdNbduiJSAxxnzdfyXwl/WfvjM7WE7TiVoFULetLfEYJ
 DFeRHdH+cpxp6CQcNkw1K51RQEBtpeU7F0vRxWr0ba/z1Kel4SPT9DbAKs5AxYcyzx8pqkJ85Y9
 sV9b4UWZKvN9eFCgaFYMMvOHe/B2WV8vk+33S6pTPJgG1XNJhG9vA36/wx+K3/JUi3Y/sI6lZDN
 gAfXAwKT/WRvVnHhUGfCOkcboSsoW5EqoC6JSAb3+orAdKlBzhOI+9rElIA3f/7hgPrbr5jnfX3
 mhdAbzlSVfMHrL+i+BaBIpvuI5yhzYWdClfVFSeQz44Wxt5/iEql8mp0BDzEMVYg9n2CkmcTs8X
 fx4BsYIxOWBPoet9Mxdfb3SCLvgI3e2DsGUsiGjjJKIext4HkmiSmw3PX3C21QplV59B4mBZS/7
 Auyhhl5voigX30lL0Y3mWjpIh9cdeOmI3bOL+wsQbLA7NXh6RpaVvp0IsPK/aoEmfBH/VxAvt6l
 7QSDWS4tAPyOKNV5piCszx/Qr3wPvN7j3Mnf5vJiJ4nDNc3KgT/HWRu7Pam5zbTDfZQiyjI8GKp
 QoAYmvTo6Y9RoKul0doE+fg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_085833_711539_EADEED33 
X-CRM114-Status: GOOD (  20.34  )
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

As the RK3576 device-tree has been upstreamed with the 'supports-cqe;'
property set by default, the kernel already tried to use CQE, which
results in system hang during suspend. This fixes the issue.

Co-developed-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mmc/host/sdhci-of-dwcmshc.c | 93 +++++++++++++++++++++++++++++++++++--
 1 file changed, 90 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index eebd45389956..47509435254b 100644
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
@@ -561,6 +565,68 @@ static void dwcmshc_cqhci_dumpregs(struct mmc_host *mmc)
 	sdhci_dumpregs(mmc_priv(mmc));
 }
 
+static void rk35xx_sdhci_cqe_pre_enable(struct mmc_host *mmc)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
+	u32 reg;
+
+	reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
+	reg |= CQHCI_ENABLE;
+	sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
+}
+
+static void rk35xx_sdhci_cqe_enable(struct mmc_host *mmc)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	u32 reg;
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
+}
+
+static void rk35xx_sdhci_cqe_disable(struct mmc_host *mmc, bool recovery)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	unsigned long flags;
+	u32 ctrl;
+
+	/*
+	 * During CQE command transfers, command complete bit gets latched.
+	 * So s/w should clear command complete interrupt status when CQE is
+	 * either halted or disabled. Otherwise unexpected SDCHI legacy
+	 * interrupt gets triggered when CQE is halted/disabled.
+	 */
+	spin_lock_irqsave(&host->lock, flags);
+	ctrl = sdhci_readl(host, SDHCI_INT_ENABLE);
+	ctrl |= SDHCI_INT_RESPONSE;
+	sdhci_writel(host,  ctrl, SDHCI_INT_ENABLE);
+	sdhci_writel(host, SDHCI_INT_RESPONSE, SDHCI_INT_STATUS);
+	spin_unlock_irqrestore(&host->lock, flags);
+
+	sdhci_cqe_disable(mmc, recovery);
+}
+
+static void rk35xx_sdhci_cqe_post_disable(struct mmc_host *mmc)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
+	u32 ctrl;
+
+	ctrl = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
+	ctrl &= ~CQHCI_ENABLE;
+	sdhci_writel(host, ctrl, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
+}
+
 static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock)
 {
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
@@ -679,6 +745,10 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
 	struct rk35xx_priv *priv = dwc_priv->priv;
+	u32 extra = sdhci_readl(host, DECMSHC_EMMC_MISC_CON);
+
+	if ((host->mmc->caps2 & MMC_CAP2_CQE) && (mask & SDHCI_RESET_ALL))
+		cqhci_deactivate(host->mmc);
 
 	if (mask & SDHCI_RESET_ALL && priv->reset) {
 		reset_control_assert(priv->reset);
@@ -687,6 +757,9 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
 	}
 
 	sdhci_reset(host, mask);
+
+	/* Enable INTERNAL CLOCK */
+	sdhci_writel(host, MISC_INTCLK_EN | extra, DECMSHC_EMMC_MISC_CON);
 }
 
 static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
@@ -1188,6 +1261,15 @@ static const struct dwcmshc_pltfm_data sdhci_dwcmshc_bf3_pdata = {
 };
 #endif
 
+static const struct cqhci_host_ops rk35xx_cqhci_ops = {
+	.pre_enable	= rk35xx_sdhci_cqe_pre_enable,
+	.enable		= rk35xx_sdhci_cqe_enable,
+	.disable	= rk35xx_sdhci_cqe_disable,
+	.post_disable	= rk35xx_sdhci_cqe_post_disable,
+	.dumpregs	= dwcmshc_cqhci_dumpregs,
+	.set_tran_desc	= dwcmshc_set_tran_desc,
+};
+
 static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
 	.pdata = {
 		.ops = &sdhci_dwcmshc_rk35xx_ops,
@@ -1196,6 +1278,7 @@ static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk35xx_pdata = {
 		.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
 			   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
 	},
+	.cqhci_host_ops = &rk35xx_cqhci_ops,
 	.init = dwcmshc_rk35xx_init,
 	.postinit = dwcmshc_rk35xx_postinit,
 };
@@ -1245,7 +1328,8 @@ static const struct cqhci_host_ops dwcmshc_cqhci_ops = {
 	.set_tran_desc	= dwcmshc_set_tran_desc,
 };
 
-static void dwcmshc_cqhci_init(struct sdhci_host *host, struct platform_device *pdev)
+static void dwcmshc_cqhci_init(struct sdhci_host *host, struct platform_device *pdev,
+			       const struct dwcmshc_pltfm_data *pltfm_data)
 {
 	struct cqhci_host *cq_host;
 	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
@@ -1275,7 +1359,10 @@ static void dwcmshc_cqhci_init(struct sdhci_host *host, struct platform_device *
 	}
 
 	cq_host->mmio = host->ioaddr + priv->vendor_specific_area2;
-	cq_host->ops = &dwcmshc_cqhci_ops;
+	if (pltfm_data->cqhci_host_ops)
+		cq_host->ops = pltfm_data->cqhci_host_ops;
+	else
+		cq_host->ops = &dwcmshc_cqhci_ops;
 
 	/* Enable using of 128-bit task descriptors */
 	dma64 = host->flags & SDHCI_USE_64_BIT_DMA;
@@ -1443,7 +1530,7 @@ static int dwcmshc_probe(struct platform_device *pdev)
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
