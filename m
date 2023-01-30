Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5856CC54EAA
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 07:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPL0VMwKYbQlqbZpeCmoMdUY47vwUX4jcVkYm+VgdrM=; b=HyTdk2uFaQrB21
	zr33MXiehXGJPJR/obHcJQHnpCmqlCCZWEEKwXqJlagGcnl5povacc42So/Khb9zg6nj14T3eELf/
	ZSuG4bbRgwnjmGb3I9WcA8eeEG9RqXZZuLQKo46nI0De+YRtlkyYjm7zROs/w+Xybis8ZVhul8TWi
	hC/FKrLNeE8CQn/NbvMiVVuI4UYm/90WVr9Y+sP81dcqcJNcZMDSKeA/SsjLkTUOe2RUPnd3KijST
	OOq9NNTGhkOQhOG0gOrmz5nXX+txMFvCyc9Zh/jFGXmHT2yXBYAVE0dRMXPTt3SIUpWzkk57wE/JM
	M6SV2PopBxRoRgh1GLqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOkG-002ZKo-Dr; Mon, 30 Jan 2023 07:38:28 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMOkD-002ZIC-2h
	for linux-rockchip@lists.infradead.org; Mon, 30 Jan 2023 07:38:27 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 9C62F280222;
	Mon, 30 Jan 2023 15:38:13 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/3] mmc: sdhci-of-dwcmshc: Update DLL and pre-change delay for rockchip platform
Date: Mon, 30 Jan 2023 15:38:03 +0800
Message-Id: <1675064285-25425-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1675064285-25425-1-git-send-email-shawn.lin@rock-chips.com>
References: <1675064285-25425-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTk0ZVkwYGE4eGENCTx8YGlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktPSEhVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MzI6Oio*SD0SOjgrAhMyTR0Q
	SxFPCTJVSlVKTUxOS01PSUJPSkxKVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhPSE03Bg++
X-HM-Tid: 0a86019cb9802eb1kusn9c62f280222
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_233825_302901_D988BE6C 
X-CRM114-Status: GOOD (  11.90  )
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

For Rockchip platform, DLL bypass bit and start bit need to be set if
DLL is not locked. And adjust pre-change delay to 0x3 for better signal
test result.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/sdhci-of-dwcmshc.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index 4933867..46b1ce7 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -48,6 +48,7 @@
 #define DWCMSHC_EMMC_DLL_RXCLK_SRCSEL	29
 #define DWCMSHC_EMMC_DLL_START_POINT	16
 #define DWCMSHC_EMMC_DLL_INC		8
+#define DWCMSHC_EMMC_DLL_BYPASS		BIT(24)
 #define DWCMSHC_EMMC_DLL_DLYENA		BIT(27)
 #define DLL_TXCLK_TAPNUM_DEFAULT	0x10
 #define DLL_TXCLK_TAPNUM_90_DEGREES	0xA
@@ -60,6 +61,7 @@
 #define DLL_RXCLK_NO_INVERTER		1
 #define DLL_RXCLK_INVERTER		0
 #define DLL_CMDOUT_TAPNUM_90_DEGREES	0x8
+#define DLL_RXCLK_ORI_GATE		BIT(31)
 #define DLL_CMDOUT_TAPNUM_FROM_SW	BIT(24)
 #define DLL_CMDOUT_SRC_CLK_NEG		BIT(28)
 #define DLL_CMDOUT_EN_SRC_CLK_NEG	BIT(29)
@@ -234,9 +236,12 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	sdhci_writel(host, extra, reg);
 
 	if (clock <= 52000000) {
-		/* Disable DLL and reset both of sample and drive clock */
-		sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_CTRL);
-		sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_RXCLK);
+		/*
+		 * Disable DLL and reset both of sample and drive clock.
+		 * The bypass bit and start bit need to be set if DLL is not locked.
+		 */
+		sdhci_writel(host, DWCMSHC_EMMC_DLL_BYPASS | DWCMSHC_EMMC_DLL_START, DWCMSHC_EMMC_DLL_CTRL);
+		sdhci_writel(host, DLL_RXCLK_ORI_GATE, DWCMSHC_EMMC_DLL_RXCLK);
 		sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_TXCLK);
 		sdhci_writel(host, 0, DECMSHC_EMMC_DLL_CMDOUT);
 		/*
@@ -279,7 +284,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	}
 
 	extra = 0x1 << 16 | /* tune clock stop en */
-		0x2 << 17 | /* pre-change delay */
+		0x3 << 17 | /* pre-change delay */
 		0x3 << 19;  /* post-change delay */
 	sdhci_writel(host, extra, dwc_priv->vendor_specific_area1 + DWCMSHC_EMMC_ATCTRL);
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
