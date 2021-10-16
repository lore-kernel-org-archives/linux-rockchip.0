Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934ACC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:54:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 583B26023F
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:54:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 583B26023F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAbe19J1Gzp3dSbcnycTxvwAGy3nwfRUMh+njcf38w0=; b=RM2mar9IaN9vh+
	55bvvD1RiIYi8II3oYGOMNspF7NDZQSR8gavCXCmnEAWIejzsK+dXj0zMw48oW8GlL/rKrEceGG8S
	KX9NOt6AIWMyGr7SJnou0bNPc3iQSUYDd9y/tY47I9u/z2gOr6Xn7YB4E4tG3Cldobn9rdJEHiQsd
	OgwPXU+NYNLV+aXrzQt2YrNOEAkCkAkYwQlfQGJ4b+UYPpYKozjciDmNZ3a2i0zT6PTN6CLOVirqX
	wxXkE6mp+GT/pcsUgjYSudVbB7+h3qFGfH1nrsjD9Xy3D9K3mjsH0eSDO5YLp0wie3ar69w99Bo4D
	BM1+GKZJ+NP+oa45wXjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbhKn-00AOvU-3k; Sat, 16 Oct 2021 10:54:37 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbhKc-00AOrJ-VM; Sat, 16 Oct 2021 10:54:28 +0000
Received: by mail-lf1-x12d.google.com with SMTP id y26so53352960lfa.11;
 Sat, 16 Oct 2021 03:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r1t3cjPIsmbnVmpDpdxsuV04yrgsRMtPvalH1qtR1ds=;
 b=d7CUvmmzrj229RbaPRVbcfBwj3yVDANr4Js7bqewfx5ut/fV3m8r1OAvMLtMSLv8e0
 xfnHCcf4CZ8XjYoAgcPUyLqkyTvUuviajJbaWxfSLyStGHgI9VgYjvN0aq3SR5f0wV7n
 6rOiiRY5wNRLhRN8egHT2SMWd1EO8zQ2rxYQCQNnrNbhd1nWv+/pMWWHjb3FLO2P7hS6
 ISLhSoaXdCgA+/GGzjHVdPGT4nlxp8Ds3+BlAUvLq6DzHQqP1QF695VHk/VeUxnQR/M1
 IZyUvoYgHwRYyjiIdfO9RsYpafRECQXoCvjAxRiVdeIWEnVnHoCIHWpBi9msbqVpfyG5
 a/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r1t3cjPIsmbnVmpDpdxsuV04yrgsRMtPvalH1qtR1ds=;
 b=Nj1Ken0cf+ynhtgGjkXakNFaDr9fqH2t+o95M4atN8/yVRDgDIe1o2FWOtj1XzeNEC
 xBQmhX5kMdFTcLdEccuc5L8s2lQrTg3K1a8H3tG49ZS4fvsWlqz8zrfTpxxaXa2eM8Nm
 DqVFPfzGpf6fU5bKZNCT7Wp0/JTCt8maNCUcALnaN9ZHDHwxfTEwVN+0WLOZCRuzVvi3
 r48yM0/TxI1UYFu+y6HvjEVgey4xRjuPXuAayM/8vru7spSB3nGpHmDzWWJ9aTFpHI5k
 nR2NGUVwJxFma/2TudWFryMWixzhAQcjvcAhknlpHuHtVsFL8xzahSJ7EIyOmgqI/ajn
 InVw==
X-Gm-Message-State: AOAM53001h5dbd+NZc+OyCU2JodTK7tTnPOMrbFR8uiKXIQOkQ+ed0rS
 EubDxoJqj7ka63Vh123HS0M=
X-Google-Smtp-Source: ABdhPJztWs/oVkbOxPvKRlRhdQGistuMddM1Acl82+hk8s8Ataj3URPiMnfrlxFEKG7T8fcE/EZwVA==
X-Received: by 2002:a19:761a:: with SMTP id c26mr15713886lff.242.1634381665230; 
 Sat, 16 Oct 2021 03:54:25 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r3sm814224lfc.131.2021.10.16.03.54.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 03:54:24 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] ASoC: rockchip: i2s-tdm: Strip out direct CRU use
Date: Sat, 16 Oct 2021 12:53:50 +0200
Message-Id: <20211016105354.116513-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_035427_051522_862223CC 
X-CRM114-Status: GOOD (  28.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

In cases where both rx and tx lrck are synced to the same source,
the resets for rx and tx need to be triggered simultaneously,
according to the downstream driver.

As there is no reset API to atomically bulk (de)assert two resets
at once, what the driver did was implement half a reset controller
specific to Rockchip, which tried to write the registers for the
resets within one write ideally or several writes within an irqsave
section.

This of course violates abstractions quite badly. The driver should
not write to the CRU's registers directly.

In practice, for the cases I tested the driver with, which is audio
playback, replacing the synchronised asserts with just individual
ones does not seem to make any difference.

If it turns out that this breaks something in the future, it should
be fixed through the specification and implementation of an atomic
bulk reset API, not with a CRU hack.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 126 +++++---------------------
 1 file changed, 21 insertions(+), 105 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 5d3abbada72a..e8dee1f95d85 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -76,7 +76,6 @@ struct rk_i2s_tdm_dev {
 	struct reset_control *tx_reset;
 	struct reset_control *rx_reset;
 	struct rk_i2s_soc_data *soc_data;
-	void __iomem *cru_base;
 	bool is_master_mode;
 	bool io_multiplex;
 	bool mclk_calibrate;
@@ -92,8 +91,6 @@ struct rk_i2s_tdm_dev {
 	unsigned int i2s_sdis[CH_GRP_MAX];
 	unsigned int i2s_sdos[CH_GRP_MAX];
 	int clk_ppm;
-	int tx_reset_id;
-	int rx_reset_id;
 	int refcount;
 	spinlock_t lock; /* xfer lock */
 	bool has_playback;
@@ -222,83 +219,35 @@ static inline struct rk_i2s_tdm_dev *to_info(struct snd_soc_dai *dai)
 	return snd_soc_dai_get_drvdata(dai);
 }
 
-static void rockchip_snd_xfer_reset_assert(struct rk_i2s_tdm_dev *i2s_tdm,
-					   int tx_bank, int tx_offset,
-					   int rx_bank, int rx_offset)
-{
-	void __iomem *cru_reset;
-	unsigned long flags;
-
-	cru_reset = i2s_tdm->cru_base + i2s_tdm->soc_data->softrst_offset;
-
-	if (tx_bank == rx_bank) {
-		writel(BIT(tx_offset) | BIT(rx_offset) |
-		       (BIT(tx_offset) << 16) | (BIT(rx_offset) << 16),
-		       cru_reset + (tx_bank * 4));
-	} else {
-		local_irq_save(flags);
-		writel(BIT(tx_offset) | (BIT(tx_offset) << 16),
-		       cru_reset + (tx_bank * 4));
-		writel(BIT(rx_offset) | (BIT(rx_offset) << 16),
-		       cru_reset + (rx_bank * 4));
-		local_irq_restore(flags);
-	}
-}
-
-static void rockchip_snd_xfer_reset_deassert(struct rk_i2s_tdm_dev *i2s_tdm,
-					     int tx_bank, int tx_offset,
-					     int rx_bank, int rx_offset)
-{
-	void __iomem *cru_reset;
-	unsigned long flags;
-
-	cru_reset = i2s_tdm->cru_base + i2s_tdm->soc_data->softrst_offset;
-
-	if (tx_bank == rx_bank) {
-		writel((BIT(tx_offset) << 16) | (BIT(rx_offset) << 16),
-		       cru_reset + (tx_bank * 4));
-	} else {
-		local_irq_save(flags);
-		writel((BIT(tx_offset) << 16),
-		       cru_reset + (tx_bank * 4));
-		writel((BIT(rx_offset) << 16),
-		       cru_reset + (rx_bank * 4));
-		local_irq_restore(flags);
-	}
-}
-
 /*
  * Makes sure that both tx and rx are reset at the same time to sync lrck
  * when clk_trcm > 0.
  */
 static void rockchip_snd_xfer_sync_reset(struct rk_i2s_tdm_dev *i2s_tdm)
 {
-	int tx_id, rx_id;
-	int tx_bank, rx_bank, tx_offset, rx_offset;
-
-	if (!i2s_tdm->cru_base || !i2s_tdm->soc_data)
-		return;
-
-	tx_id = i2s_tdm->tx_reset_id;
-	rx_id = i2s_tdm->rx_reset_id;
-	if (tx_id < 0 || rx_id < 0)
-		return;
-
-	tx_bank = tx_id / 16;
-	tx_offset = tx_id % 16;
-	rx_bank = rx_id / 16;
-	rx_offset = rx_id % 16;
-	dev_dbg(i2s_tdm->dev,
-		"tx_bank: %d, rx_bank: %d, tx_offset: %d, rx_offset: %d\n",
-		tx_bank, rx_bank, tx_offset, rx_offset);
-
-	rockchip_snd_xfer_reset_assert(i2s_tdm, tx_bank, tx_offset,
-				       rx_bank, rx_offset);
+	/* This is technically race-y.
+	 *
+	 * In an ideal world, we could atomically assert both resets at the
+	 * same time, through an atomic bulk reset API. This API however does
+	 * not exist, so what the downstream vendor code used to do was
+	 * implement half a reset controller here and require the CRU to be
+	 * passed to the driver as a device tree node. Violating abstractions
+	 * like that is bad, especially when it influences something like the
+	 * bindings which are supposed to describe the hardware, not whatever
+	 * workarounds the driver needs, so it was dropped.
+	 *
+	 * In practice, asserting the resets one by one appears to work just
+	 * fine for playback. During duplex (playback + capture) operation,
+	 * this might become an issue, but that should be solved by the
+	 * implementation of the aforementioned API, not by shoving a reset
+	 * controller into an audio driver.
+	 */
 
+	reset_control_assert(i2s_tdm->tx_reset);
+	reset_control_assert(i2s_tdm->rx_reset);
 	udelay(10);
-
-	rockchip_snd_xfer_reset_deassert(i2s_tdm, tx_bank, tx_offset,
-					 rx_bank, rx_offset);
+	reset_control_deassert(i2s_tdm->tx_reset);
+	reset_control_deassert(i2s_tdm->rx_reset);
 	udelay(10);
 }
 
@@ -1361,24 +1310,6 @@ static const struct of_device_id rockchip_i2s_tdm_match[] = {
 	{},
 };
 
-static int of_i2s_resetid_get(struct device_node *node,
-			      const char *id)
-{
-	struct of_phandle_args args;
-	int index = 0;
-	int ret;
-
-	if (id)
-		index = of_property_match_string(node,
-						 "reset-names", id);
-	ret = of_parse_phandle_with_args(node, "resets", "#reset-cells",
-					 index, &args);
-	if (ret)
-		return ret;
-
-	return args.args[0];
-}
-
 static struct snd_soc_dai_driver i2s_tdm_dai = {
 	.probe = rockchip_i2s_tdm_dai_probe,
 	.playback = {
@@ -1591,7 +1522,6 @@ static int rockchip_i2s_tdm_rx_path_prepare(struct rk_i2s_tdm_dev *i2s_tdm,
 static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
 {
 	struct device_node *node = pdev->dev.of_node;
-	struct device_node *cru_node;
 	const struct of_device_id *of_id;
 	struct rk_i2s_tdm_dev *i2s_tdm;
 	struct resource *res;
@@ -1633,20 +1563,6 @@ static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
 		return dev_err_probe(i2s_tdm->dev, PTR_ERR(i2s_tdm->grf),
 				     "Error in rockchip,grf\n");
 
-	if (i2s_tdm->clk_trcm != TRCM_TXRX) {
-		cru_node = of_parse_phandle(node, "rockchip,cru", 0);
-		i2s_tdm->cru_base = of_iomap(cru_node, 0);
-		of_node_put(cru_node);
-		if (!i2s_tdm->cru_base) {
-			dev_err(i2s_tdm->dev,
-				"Missing or unsupported rockchip,cru node\n");
-			return -ENOENT;
-		}
-
-		i2s_tdm->tx_reset_id = of_i2s_resetid_get(node, "tx-m");
-		i2s_tdm->rx_reset_id = of_i2s_resetid_get(node, "rx-m");
-	}
-
 	i2s_tdm->tx_reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
 								      "tx-m");
 	if (IS_ERR(i2s_tdm->tx_reset)) {
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
