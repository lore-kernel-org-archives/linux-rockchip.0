Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18259EA854A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 03:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOPXCOZM/SzRVI3Sv+jKCcLVN2CIYc9TgBhD67/9l6g=; b=CydTi5gxLZ5iLf
	EBK80pBXNBai6y3nZ8MQKQNvSqw2O27NA7yhNQWAEYr2PhjnQgZEQwsy6B2X4+U9uYpKAQHQScz8C
	if2fZ9pfVXpqxWek2oNbhe0NsZNARiMn00h1F+O/pOtYMFH0YdhQVYBLHg7UIwqYBr4YoOgVntyY6
	+Hm92Ld5fzNUUVEGmdol+KGpN6zNU8hhtGW6E0Y9JjTOYYhoRlHp744ekgzX0R1PlLULU+5Bx2p1D
	X2aBpKeRwpVcv25K7Dm/udb26Z3uue7Vsl3jkfdwcnkKsoblbHnH5M0QPdCSoeajLUuz+PPP/rrg2
	wpJopBTqz4QzsHwS1Wrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzRJH-00000006b1P-1SWG;
	Mon, 09 Mar 2026 03:29:35 +0000
Received: from mail-m19731110.qiye.163.com ([220.197.31.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzRJF-00000006ays-0CDS
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 03:29:34 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 363147917;
	Mon, 9 Mar 2026 11:29:28 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Jaehoon Chung <jh80.chung@samsung.com>
Cc: linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 3/3] mmc: dw_mmc-rockchip: Add phase map support
Date: Mon,  9 Mar 2026 11:29:03 +0800
Message-Id: <1773026943-111633-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
References: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9cd0a4824709cckunm2100c80115ef32a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUsfT1ZKTx5IT00fTR4fHhlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=WgGzW8abesGFh9oR765J1VaMLti7Y58/5mXfxfZ/MGLS7vvkbc2hs+ryCY57+YH2Ub0SuPwwqMU7F2TKObwZkxDBlqPj28CDVyDZq7+2nNxWvOhPthRo3zHVXyZ2wBbl3CRX417U08YswR94Rd8N2XNTD+uOK1ZnIUCvUcw7384=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=mlM35uqN2yUhjHZ4GGat8HwhQ4cccNIP8fSMoinlNo4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260308_202933_242931_466AB98B 
X-CRM114-Status: GOOD (  17.85  )
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

Multiple boards require different phase settings, rendering the default
phase policy unscalable. Therefore, we introduce phase map to address this
limitation. To preserve backward compatibility, the default_sample_phase
and original drv phase for different modes are retained, with phase map
values taking precedence when available.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

 drivers/mmc/host/dw_mmc-rockchip.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 7699541..c6eece4 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -179,7 +179,8 @@ static int rockchip_mmc_set_phase(struct dw_mci *host, bool sample, int degrees)
 static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 {
 	struct dw_mci_rockchip_priv_data *priv = host->priv;
-	int ret;
+	struct mmc_clk_phase phase = host->phase_map.phase[ios->timing];
+	int ret, sample_phase, drv_phase;
 	unsigned int cclkin;
 	u32 bus_hz;
 
@@ -213,8 +214,15 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 	}
 
 	/* Make sure we use phases which we can enumerate with */
-	if (!IS_ERR(priv->sample_clk) && ios->timing <= MMC_TIMING_SD_HS)
-		rockchip_mmc_set_phase(host, true, priv->default_sample_phase);
+	if (!IS_ERR(priv->sample_clk)) {
+		/* Keep backward compatibility */
+		if (ios->timing <= MMC_TIMING_SD_HS) {
+			sample_phase = phase.valid ? phase.in_deg : priv->default_sample_phase;
+			rockchip_mmc_set_phase(host, true, sample_phase);
+		} else if (phase.valid) {
+			rockchip_mmc_set_phase(host, true, phase.in_deg);
+		}
+	}
 
 	/*
 	 * Set the drive phase offset based on speed mode to achieve hold times.
@@ -243,15 +251,13 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 	 * same results, for instance).
 	 */
 	if (!IS_ERR(priv->drv_clk)) {
-		int phase;
-
 		/*
 		 * In almost all cases a 90 degree phase offset will provide
 		 * sufficient hold times across all valid input clock rates
 		 * assuming delay_o is not absurd for a given SoC.  We'll use
 		 * that as a default.
 		 */
-		phase = 90;
+		drv_phase = 90;
 
 		switch (ios->timing) {
 		case MMC_TIMING_MMC_DDR52:
@@ -261,7 +267,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 			 * to get the same timings.
 			 */
 			if (ios->bus_width == MMC_BUS_WIDTH_8)
-				phase = 180;
+				drv_phase = 180;
 			break;
 		case MMC_TIMING_UHS_SDR104:
 		case MMC_TIMING_MMC_HS200:
@@ -273,11 +279,14 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 			 * SoCs measured this seems to be OK, but it doesn't
 			 * hurt to give margin here, so we use 180.
 			 */
-			phase = 180;
+			drv_phase = 180;
 			break;
 		}
 
-		rockchip_mmc_set_phase(host, false, phase);
+		/* Use out phase from phase map first */
+		if (phase.valid)
+			drv_phase = phase.out_deg;
+		rockchip_mmc_set_phase(host, false, drv_phase);
 	}
 }
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
