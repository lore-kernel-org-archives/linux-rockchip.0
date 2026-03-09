Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECC54EA854A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 03:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8sKJ1GphwfMW27n0cwM4gnoTVroqBuArtbk+X2LhBQ=; b=m/F81aURe0GBKa
	1ArnE8N+H5GPJ3L5uySaQrATGmCkTdloSye/OuT+E7IXy+pUna8F4rto3lvF4dKg+xigSICLaow7U
	bI8NbUcT7uRV0YQqplw7CuWg9+huh9Bkb1XhMW0r6x1yLI5CNA5mlWrQqcfgLTbFmugp/jlXynlxh
	ZfpQMRuYQRS6WvJ/MZ51+tuPs8+DLkFhsa348H3ncATANpmfanAUZDG5Ji3swYdIV+cDsfplCKcoA
	+ZFvnG5fNgY1aqlHELYu/y8UuI6FLHtepZgZOr6wPAR4RX8huHVC+di4nEjpET4mmqUX7Hefh30zz
	BU8/xrmauuFa57v21abw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzRJD-00000006azl-3mwK;
	Mon, 09 Mar 2026 03:29:31 +0000
Received: from mail-m32121.qiye.163.com ([220.197.32.121])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzRJB-00000006axu-1j3G
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 03:29:30 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36314790e;
	Mon, 9 Mar 2026 11:29:25 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Jaehoon Chung <jh80.chung@samsung.com>
Cc: linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/3] mmc: dw_mmc-hi3798mv200: Using phase map from dw_mmc core
Date: Mon,  9 Mar 2026 11:29:02 +0800
Message-Id: <1773026943-111633-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
References: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9cd0a4763f09cckunm2100c80115ef306
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGktIHlZOQk5CGEoZQkhPSkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=K6i2E8P8Lo3hbZsVort13sKlOJO46PPgw38q44XJtpcIeKP4z2GwbLLH8DN1WF0snftpLPjOp+hniYroBFmaIb8ybXfiqoUQojEi3sRNHCWGxiRZGJHkxVp7kkdN3UzoT0P2Bri8Ub1SXHly5Zpt70qmnMpvZNU0YCAybCk7Od8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=i5btDijxszuMykpSWLDZiSOgfbymhsrQbgwiBJnZEsY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260308_202929_668578_1D0E0B44 
X-CRM114-Status: GOOD (  10.04  )
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

dw_mmc core helps parse phase map now, so reuse it.

No functional changes intended.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/dw_mmc-hi3798mv200.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-hi3798mv200.c b/drivers/mmc/host/dw_mmc-hi3798mv200.c
index a64907e..fda4178 100644
--- a/drivers/mmc/host/dw_mmc-hi3798mv200.c
+++ b/drivers/mmc/host/dw_mmc-hi3798mv200.c
@@ -30,13 +30,12 @@ struct dw_mci_hi3798mv200_priv {
 	struct clk *drive_clk;
 	struct regmap *crg_reg;
 	u32 sap_dll_offset;
-	struct mmc_clk_phase_map phase_map;
 };
 
 static void dw_mci_hi3798mv200_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 {
 	struct dw_mci_hi3798mv200_priv *priv = host->priv;
-	struct mmc_clk_phase phase = priv->phase_map.phase[ios->timing];
+	struct mmc_clk_phase phase = host->phase_map.phase[ios->timing];
 	u32 val;
 
 	val = mci_readl(host, ENABLE_SHIFT);
@@ -158,9 +157,9 @@ static int dw_mci_hi3798mv200_execute_tuning_mix_mode(struct dw_mci *host,
 		 * We don't care what timing we are tuning for,
 		 * simply use the same phase for all timing needs tuning.
 		 */
-		priv->phase_map.phase[MMC_TIMING_MMC_HS200].in_deg = degrees[mid];
-		priv->phase_map.phase[MMC_TIMING_MMC_HS400].in_deg = degrees[mid];
-		priv->phase_map.phase[MMC_TIMING_UHS_SDR104].in_deg = degrees[mid];
+		host->phase_map.phase[MMC_TIMING_MMC_HS200].in_deg = degrees[mid];
+		host->phase_map.phase[MMC_TIMING_MMC_HS400].in_deg = degrees[mid];
+		host->phase_map.phase[MMC_TIMING_UHS_SDR104].in_deg = degrees[mid];
 
 		clk_set_phase(priv->sample_clk, degrees[mid]);
 		dev_dbg(host->dev, "Tuning clk_sample[%d, %d], set[%d]\n",
@@ -185,8 +184,6 @@ static int dw_mci_hi3798mv200_init(struct dw_mci *host)
 	if (!priv)
 		return -ENOMEM;
 
-	mmc_of_parse_clk_phase(host->dev, &priv->phase_map);
-
 	priv->sample_clk = devm_clk_get_enabled(host->dev, "ciu-sample");
 	if (IS_ERR(priv->sample_clk))
 		return dev_err_probe(host->dev, PTR_ERR(priv->sample_clk),
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
