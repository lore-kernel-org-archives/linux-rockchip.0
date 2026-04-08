Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B597DFD5F8F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Apr 2026 07:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+Dw/oFhk4k1Hcn/mxu7CXY4U/jHIa5ZN/10CXx//vvk=; b=kIj83B/eyIHHNv
	ohmlL9+/NOhGyBGpZelbAQijmLxwY32RpeRuWCeXDmKKJurmYajUmGvlfoO54JJLcXyTaNXP0IrG5
	LnwjUhQzaIdZCRMziPSyqqfeLDwQ/6hqM3mvMm55rsqhPcUzhzIVHPR8uB96RpHOwMLF3xHuxP3rj
	G223MKmQ6fs5dWMfxMHjE7/DN7cuKf3JJ+WLWD3rTxUXrPRmc5xBlNyAULPiTS6IbG7TDe+1Chryn
	popMis9gew1qrTBiL2ch5b2czImaEyL9WM2BJ0XXBat9w1/7emeiHsBAgldVw2vv04g0lSFgjAeEB
	ZJOi/aUjPCvzOzUC0zHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wANBn-00000008PS1-1jcF;
	Wed, 08 Apr 2026 07:19:03 +0000
Received: from mail-m155106.qiye.163.com ([101.71.155.106])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wANBk-00000008PQU-1FSS
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Apr 2026 07:19:02 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 39ebf7966;
	Wed, 8 Apr 2026 15:18:55 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Stable@vger.kernel.org
Subject: [PATCH v3] mmc: sdhci-of-dwcmshc: Disable clock before DLL configuration
Date: Wed,  8 Apr 2026 15:18:49 +0800
Message-Id: <1775632729-22841-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9d6bf55ae309cckunme35ea9d83d4adc
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlOHlYaSB1PGENMQh9NSElWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=HwpJFeweu3R5NIP4dXGV70nmUH6gUix0s6DYkSoeUwkjebi60Nyr/pFRGzVcUq9tJ3urwxVFtcqYYZdY2HhGy4WkcySq1k6WMFmqVJrcijROnNa0wDP1JldRZ0R5tdNssXpBI8SwAw2raMY2odgnw6UQeTkhe4dFOVHbBtb53KE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=tmO77fZlhTlVEPb/mMV3UB77aYxemzSiw2yLGeo3C7c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_001900_842775_0B0D18DA 
X-CRM114-Status: GOOD (  12.54  )
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

According to the ASIC design recommendations, the clock must be
disabled before operating the DLL to prevent glitches that could
affect the internal digital logic. In extreme cases, failing to
do so may cause the controller to malfunction completely.

Adds a step to disable the clock before DLL configuration and
re-enables it at the end.

Fixes: 08f3dff799d4 ("mmc: sdhci-of-dwcmshc: add rockchip platform support")
Cc: <Stable@vger.kernel.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---

Changes in v3:
- Fix compile error while amending the patch file by mistake
- Add Adrian's tag

Changes in v2:
- Add a comment about why passing zero to sdhci_enable_clk()

 drivers/mmc/host/sdhci-of-dwcmshc.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index 6139516..0b2158a 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -783,12 +783,15 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	extra |= BIT(4);
 	sdhci_writel(host, extra, reg);
 
+	/* Disable clock while config DLL */
+	sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
+
 	if (clock <= 52000000) {
 		if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
 		    host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
 			dev_err(mmc_dev(host->mmc),
 				"Can't reduce the clock below 52MHz in HS200/HS400 mode");
-			return;
+			goto enable_clk;
 		}
 
 		/*
@@ -808,7 +811,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 			DLL_STRBIN_DELAY_NUM_SEL |
 			DLL_STRBIN_DELAY_NUM_DEFAULT << DLL_STRBIN_DELAY_NUM_OFFSET;
 		sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
-		return;
+		goto enable_clk;
 	}
 
 	/* Reset DLL */
@@ -835,7 +838,7 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 				 500 * USEC_PER_MSEC);
 	if (err) {
 		dev_err(mmc_dev(host->mmc), "DLL lock timeout!\n");
-		return;
+		goto enable_clk;
 	}
 
 	extra = 0x1 << 16 | /* tune clock stop en */
@@ -868,6 +871,16 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 		DLL_STRBIN_TAPNUM_DEFAULT |
 		DLL_STRBIN_TAPNUM_FROM_SW;
 	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
+
+enable_clk:
+	/*
+	 * The sdclk frequency select bits in SDHCI_CLOCK_CONTROL are not functional
+	 * on Rockchip's SDHCI implementation. Instead, the clock frequency is fully
+	 * controlled via external clk provider by calling clk_set_rate(). Consequently,
+	 * passing 0 to sdhci_enable_clk() only re-enables the already-configured clock,
+	 * which matches the hardware's actual behavior.
+	 */
+	sdhci_enable_clk(host, 0);
 }
 
 static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
