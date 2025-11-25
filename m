Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62D5AD0EE18
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 23:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bvUvxYOvXXCz18nRkmkdv7Bu3kramOpZPbBdjo+hFQ=; b=e68KoHTc/smp8c
	wvIIgk+vkVquf4vsYNxTAQZGUMzZlTBcA/7QN7i73kl1Tk5wNk+80Mld9MWE+YF8bIzjDTFMMv1CD
	NBwLhyO8wWaYkyzJ8gT3/2d2SGv4be2RVsMl4iCVQ0wZQ0UgROw6suoqZuFirHeVKPrEVEoL/y6GT
	faLJe+sMK+P/UZLSnin8WxQM6TF6BZZJsuxfH/stp0lteID81gJcK3rkwDx69eriKmDRpSHSMmbmK
	HgRWbIjszfM87lob3YAJfgodIXyBpyOiFCycAIOmqe01SKjMm3zF9KlmuKRkmK7NV9IF0p4lYQux+
	Iq4ltXtkmQYhdSqf5mjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO2RA-0000000E3hk-0COa;
	Tue, 25 Nov 2025 23:27:08 +0000
Received: from mail-m833.xmail.ntesmail.com ([156.224.83.3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO2R6-0000000E3gf-3v6Q
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 23:27:06 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ae234a1b;
	Wed, 26 Nov 2025 07:27:00 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/2] mmc: sdhci-of-dwcmshc: reduce CIT for better performance
Date: Wed, 26 Nov 2025 07:26:40 +0800
Message-Id: <1764113200-237279-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1764113200-237279-1-git-send-email-shawn.lin@rock-chips.com>
References: <1764113200-237279-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9abd5783a809cckunm0d7ff06b4d7c1b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkJPHVYaGUpJHU0YQ00eGhhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QX3sIx0Ty4/OFX3X62A8lKV8D4H9JvcraBMzoXlBo0rcPF3WDvV0g15qsTMJbUsmWzK0HVOv40uUufqFojAsoAI7rcE8QlTJDmPvtdHQ11EkpFyhsohZsDGJnouwM5UomSQ/yx9ZgjdXbdihMQnGJ7PvniQaE9pd6vfwJkxQ8ds=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=OZHPhjL4QkHRRqFNW+rxGRk+OtVXm+AIK+TIQx+giug=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_152705_248334_86C6857A 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

CQHCI_SSC1.CIT indicates to the CQE the polling period to use for
periodic SEND_QUEUE_STATUS (CMD13) polling. Some eMMCs have only one
hardware queue, and CMD13 can only query one slot at a time for data
transmission, which cannot be processed in parallel. Modifying the
CMD13 query interval can increase the query frequency and improve
random write performance.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---

Changes in v2:
- rebase and add acked-by tag

 drivers/mmc/host/cqhci.h            | 1 +
 drivers/mmc/host/sdhci-of-dwcmshc.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/mmc/host/cqhci.h b/drivers/mmc/host/cqhci.h
index ce189a1..3668856 100644
--- a/drivers/mmc/host/cqhci.h
+++ b/drivers/mmc/host/cqhci.h
@@ -93,6 +93,7 @@
 /* send status config 1 */
 #define CQHCI_SSC1			0x40
 #define CQHCI_SSC1_CBC_MASK		GENMASK(19, 16)
+#define CQHCI_SSC1_CIT_MASK		GENMASK(15, 0)
 
 /* send status config 2 */
 #define CQHCI_SSC2			0x44
diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index e276a4e..cad5165 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -631,6 +631,11 @@ static void rk35xx_sdhci_cqe_pre_enable(struct mmc_host *mmc)
 	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
 	u32 reg;
 
+	/* Set Send Status Command Idle Timer to 10.66us (256 * 1 / 24) */
+	reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_SSC1);
+	reg = (reg & ~CQHCI_SSC1_CIT_MASK) | 0x0100;
+	sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_SSC1);
+
 	reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
 	reg |= CQHCI_ENABLE;
 	sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
