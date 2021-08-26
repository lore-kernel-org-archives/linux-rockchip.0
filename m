Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F11C4320A
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 04:03:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 380FF610E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 04:03:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 380FF610E6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecyP3jW5ZKp0jIrjQW40vc6uSWlDb06jTsuZyK83jKI=; b=EuCuEE2F4FY6e4
	L7SsYueY8JYOWsneOQ+anilYp3iH1EQJDLRyASY/sNGONS/QBwiJ4L8tapkjBasCh4/jW3gj9PiEP
	f6Fh8MW9QTLUnpp1q+x+C5C4doGw2iAXvluLadb9E4nLUt9lkEy+AJza+AKsLhFbr0HpdOXKY3uQZ
	+33BiSfz9r/PSwxR3Q7yF4mDqCNDOk89foCax1V6pEUSfGKUHdTb2TJtBfrlXVOaQKmFC9eQf3L4G
	1qmqRsCBSWATaahgrFzRpbC8Oubqv/cN4vwkXt8tTRdT5yJWiNZ6yZSCFaXnePM4lAqvp//A46nwc
	R71C3p4mKFfcjDAW8XmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJ6bR-00960U-Su; Thu, 26 Aug 2021 04:02:57 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJ6bO-0095yC-13
 for linux-rockchip@lists.infradead.org; Thu, 26 Aug 2021 04:02:55 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id B4225B2F31;
 Thu, 26 Aug 2021 12:02:51 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22778T140142501164800S1629950564011175_; 
 Thu, 26 Aug 2021 12:02:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b848bf4361b3454f5ba33631047c257d>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v3 09/14] ASoC: rockchip: i2s: Make playback/capture optional
Date: Thu, 26 Aug 2021 12:02:37 +0800
Message-Id: <1629950562-14281-4-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_210254_529196_DD02A6FC 
X-CRM114-Status: GOOD (  18.28  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

There are some controllers which support playback only or
capture only. so, make it optional. and initial capability
by 'dma-names' of DT.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v3:
- Drop property 'rockchip,playback-only', 'rockchip,capture-only'.
  Implement it by 'dma-names' of DT instead.

Changes in v2: None

 sound/soc/rockchip/rockchip_i2s.c | 129 +++++++++++++++++++++++---------------
 1 file changed, 79 insertions(+), 50 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 15e2690..c0b3960 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -44,6 +44,9 @@ struct rk_i2s_dev {
 	struct reset_control *reset_m;
 	struct reset_control *reset_h;
 
+	bool has_capture;
+	bool has_playback;
+
 /*
  * Used to indicate the tx/rx status.
  * I2S controller hopes to start the tx and rx together,
@@ -478,8 +481,9 @@ static int rockchip_i2s_dai_probe(struct snd_soc_dai *dai)
 {
 	struct rk_i2s_dev *i2s = snd_soc_dai_get_drvdata(dai);
 
-	dai->capture_dma_data = &i2s->capture_dma_data;
-	dai->playback_dma_data = &i2s->playback_dma_data;
+	snd_soc_dai_init_dma_data(dai,
+		i2s->has_playback ? &i2s->playback_dma_data : NULL,
+		i2s->has_capture  ? &i2s->capture_dma_data  : NULL);
 
 	return 0;
 }
@@ -494,28 +498,6 @@ static const struct snd_soc_dai_ops rockchip_i2s_dai_ops = {
 
 static struct snd_soc_dai_driver rockchip_i2s_dai = {
 	.probe = rockchip_i2s_dai_probe,
-	.playback = {
-		.stream_name = "Playback",
-		.channels_min = 2,
-		.channels_max = 8,
-		.rates = SNDRV_PCM_RATE_8000_192000,
-		.formats = (SNDRV_PCM_FMTBIT_S8 |
-			    SNDRV_PCM_FMTBIT_S16_LE |
-			    SNDRV_PCM_FMTBIT_S20_3LE |
-			    SNDRV_PCM_FMTBIT_S24_LE |
-			    SNDRV_PCM_FMTBIT_S32_LE),
-	},
-	.capture = {
-		.stream_name = "Capture",
-		.channels_min = 2,
-		.channels_max = 2,
-		.rates = SNDRV_PCM_RATE_8000_192000,
-		.formats = (SNDRV_PCM_FMTBIT_S8 |
-			    SNDRV_PCM_FMTBIT_S16_LE |
-			    SNDRV_PCM_FMTBIT_S20_3LE |
-			    SNDRV_PCM_FMTBIT_S24_LE |
-			    SNDRV_PCM_FMTBIT_S32_LE),
-	},
 	.ops = &rockchip_i2s_dai_ops,
 	.symmetric_rate = 1,
 };
@@ -620,16 +602,84 @@ static const struct of_device_id rockchip_i2s_match[] __maybe_unused = {
 	{},
 };
 
+static int rockchip_i2s_init_dai(struct rk_i2s_dev *i2s, struct resource *res,
+				 struct snd_soc_dai_driver **dp)
+{
+	struct device_node *node = i2s->dev->of_node;
+	struct snd_soc_dai_driver *dai;
+	struct property *dma_names;
+	const char *dma_name;
+	unsigned int val;
+
+	of_property_for_each_string(node, "dma-names", dma_names, dma_name) {
+		if (!strcmp(dma_name, "tx"))
+			i2s->has_playback = true;
+		if (!strcmp(dma_name, "rx"))
+			i2s->has_capture = true;
+	}
+
+	dai = devm_kmemdup(i2s->dev, &rockchip_i2s_dai,
+			   sizeof(*dai), GFP_KERNEL);
+	if (!dai)
+		return -ENOMEM;
+
+	if (i2s->has_playback) {
+		dai->playback.stream_name = "Playback";
+		dai->playback.channels_min = 2;
+		dai->playback.channels_max = 8;
+		dai->playback.rates = SNDRV_PCM_RATE_8000_192000;
+		dai->playback.formats = SNDRV_PCM_FMTBIT_S8 |
+					SNDRV_PCM_FMTBIT_S16_LE |
+					SNDRV_PCM_FMTBIT_S20_3LE |
+					SNDRV_PCM_FMTBIT_S24_LE |
+					SNDRV_PCM_FMTBIT_S32_LE;
+
+		i2s->playback_dma_data.addr = res->start + I2S_TXDR;
+		i2s->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+		i2s->playback_dma_data.maxburst = 8;
+
+		if (!of_property_read_u32(node, "rockchip,playback-channels", &val)) {
+			if (val >= 2 && val <= 8)
+				dai->playback.channels_max = val;
+		}
+	}
+
+	if (i2s->has_capture) {
+		dai->capture.stream_name = "Capture";
+		dai->capture.channels_min = 2;
+		dai->capture.channels_max = 8;
+		dai->capture.rates = SNDRV_PCM_RATE_8000_192000;
+		dai->capture.formats = SNDRV_PCM_FMTBIT_S8 |
+				       SNDRV_PCM_FMTBIT_S16_LE |
+				       SNDRV_PCM_FMTBIT_S20_3LE |
+				       SNDRV_PCM_FMTBIT_S24_LE |
+				       SNDRV_PCM_FMTBIT_S32_LE;
+
+		i2s->capture_dma_data.addr = res->start + I2S_RXDR;
+		i2s->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+		i2s->capture_dma_data.maxburst = 8;
+
+		if (!of_property_read_u32(node, "rockchip,capture-channels", &val)) {
+			if (val >= 2 && val <= 8)
+				dai->capture.channels_max = val;
+		}
+	}
+
+	if (dp)
+		*dp = dai;
+
+	return 0;
+}
+
 static int rockchip_i2s_probe(struct platform_device *pdev)
 {
 	struct device_node *node = pdev->dev.of_node;
 	const struct of_device_id *of_id;
 	struct rk_i2s_dev *i2s;
-	struct snd_soc_dai_driver *soc_dai;
+	struct snd_soc_dai_driver *dai;
 	struct resource *res;
 	void __iomem *regs;
 	int ret;
-	int val;
 
 	i2s = devm_kzalloc(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
 	if (!i2s)
@@ -684,14 +734,6 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 		return PTR_ERR(i2s->regmap);
 	}
 
-	i2s->playback_dma_data.addr = res->start + I2S_TXDR;
-	i2s->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-	i2s->playback_dma_data.maxburst = 8;
-
-	i2s->capture_dma_data.addr = res->start + I2S_RXDR;
-	i2s->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-	i2s->capture_dma_data.maxburst = 8;
-
 	i2s->bclk_ratio = 64;
 
 	dev_set_drvdata(&pdev->dev, i2s);
@@ -703,26 +745,13 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 			goto err_pm_disable;
 	}
 
-	soc_dai = devm_kmemdup(&pdev->dev, &rockchip_i2s_dai,
-			       sizeof(*soc_dai), GFP_KERNEL);
-	if (!soc_dai) {
-		ret = -ENOMEM;
+	ret = rockchip_i2s_init_dai(i2s, res, &dai);
+	if (ret)
 		goto err_pm_disable;
-	}
-
-	if (!of_property_read_u32(node, "rockchip,playback-channels", &val)) {
-		if (val >= 2 && val <= 8)
-			soc_dai->playback.channels_max = val;
-	}
-
-	if (!of_property_read_u32(node, "rockchip,capture-channels", &val)) {
-		if (val >= 2 && val <= 8)
-			soc_dai->capture.channels_max = val;
-	}
 
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &rockchip_i2s_component,
-					      soc_dai, 1);
+					      dai, 1);
 
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register DAI\n");
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
