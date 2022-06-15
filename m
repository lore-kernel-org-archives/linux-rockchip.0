Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20DC2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 04:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0V5+RxjPxaxY16rGnj/CAjl6CwiF4Wsw3opmU+MyFYo=; b=zAdItEG3+A//IL
	/JJ+bjtCf/6UUzRgCsBg81sCqXqQw1xgIuNCjUirCrPN/VsoxxtoJkg3CuC4+debFLWEaXUlrr2ly
	cz+xUJj+Dl/uwoXkC0BICLTds7j7iM5K2y6bKI2JWTSEwRZmNuqQgibhPH5ypr4Ov8ETj3iHoZa9l
	HsG9qQljE270VAmG3XA2bRWVjmuXNkjBRlqHuxhqIQdsSPgN2KGQl3f1/xf09n7jD6vsjTmmPQb2F
	HWd8Oajm+AZ2ISbaP7F1mXUGXJ0yETMyFIlUbiADabH2cyrfy96bf+MhdNYBs7s3atfm/KUc8lyTp
	nvdx9D99bi1JixfMFTzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1L65-00Ca22-9O; Wed, 15 Jun 2022 04:57:41 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1L5H-00CZcx-TC
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 04:56:55 +0000
Received: by mail-pf1-x42a.google.com with SMTP id 187so10385793pfu.9
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jun 2022 21:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mnGE+sl5lr0u65etaduIHXREDWgItVZcqh2y46jBrpQ=;
        b=K+uLpaJxpuouq19kyJff0ufJzxWyEz5PIn5xduFaeBegXmjuDk1+qoum1VSFpSfQGE
         xfiiUfMQQkFNof32frHytRfIEa1W7lADenrXPXZDT0RccyMABSx8/HvO09RU2T3bQBSd
         8/Nto9IWrd+9MDBB2n5RS+x6qHmhWGp0B10k0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mnGE+sl5lr0u65etaduIHXREDWgItVZcqh2y46jBrpQ=;
        b=lBMjoNtAiAK9/9YPeS1evPhCX/M9Jb4WPzkFsYwEEV+4DHZXfdH1TTiutcz96g+ypt
         l192fm+pnLvKM7WM1R2vzx8tf9ds1u1M45y5Kge8DE4JhB8XPB95KlQUogSiqHX5pZ/e
         /MHItvJT+0Pl0dS8tu+DpEy2xLvTarEel2WkvVvTULJIXdl7BtFoqN92fKslCIDBgIRw
         elEqeX8SiOds+I1tC8Ei03s1gNiUHCdRtUMqat+VFfJvRpz42tmIq3xhm2YXPyfwdeYB
         me6CqiDXNGxj4VLlxT+BRhSBERCSLpA571WFvoOThjsmRu+Y/mh6rXK3HR8Nbt4vRjLy
         svlw==
X-Gm-Message-State: AJIora8RxC1WQpfJEUQXKMO9j9E9B5IdcYmUsHnkZF01ZLxEdW8yFVko
	YzfqdmpuSBjiJvVPrHodwLHPBw==
X-Google-Smtp-Source: ABdhPJxGZp7XGp9DQi1pShUlfnCUwj0umOLMZ+YfWISmjCtnOlDVG9y44Qw66yyicleZ5+BxERi2lg==
X-Received: by 2002:aa7:93a5:0:b0:51b:e0f8:97a6 with SMTP id x5-20020aa793a5000000b0051be0f897a6mr7844193pff.44.1655269008946;
        Tue, 14 Jun 2022 21:56:48 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id z14-20020a17090a540e00b001e2f578560csm559933pjh.45.2022.06.14.21.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 21:56:48 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [v1] ASoC: rockchip: i2s: switch BCLK to GPIO
Date: Wed, 15 Jun 2022 04:56:43 +0000
Message-Id: <20220615045643.3137287-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_215652_075799_C4130593 
X-CRM114-Status: GOOD (  19.65  )
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

We discoverd that the state of BCLK on, LRCLK off and SD_MODE on
may cause the speaker melting issue. Removing LRCLK while BCLK
is present can cause unexpected output behavior including a large
DC output voltage as described in the Max98357a datasheet.

In order to:
  1. prevent BCLK from turning on by other component.
  2. keep BCLK and LRCLK being present at the same time

This patch switches BCLK to GPIO func before LRCLK output, and
configures BCLK func back during LRCLK is output.

Without this fix, BCLK is turned on 11 ms earlier than LRCK by the
da7219.
With this fix, BCLK is turned on only 0.4 ms earlier than LRCK by
the rockchip codec.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 162 ++++++++++++++++++++++++------
 1 file changed, 130 insertions(+), 32 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 47a3971a9ce1..cecaadd54b48 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -13,6 +13,7 @@
 #include <linux/of_gpio.h>
 #include <linux/of_device.h>
 #include <linux/clk.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/spinlock.h>
@@ -54,8 +55,40 @@ struct rk_i2s_dev {
 	const struct rk_i2s_pins *pins;
 	unsigned int bclk_ratio;
 	spinlock_t lock; /* tx/rx lock */
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *bclk_on;
+	struct pinctrl_state *bclk_off;
 };
 
+static int i2s_pinctrl_select_bclk_on(struct rk_i2s_dev *i2s)
+{
+	int ret = 0;
+
+	if (!IS_ERR(i2s->pinctrl) && !IS_ERR_OR_NULL(i2s->bclk_on))
+		ret = pinctrl_select_state(i2s->pinctrl,
+				     i2s->bclk_on);
+
+	if (ret)
+		dev_err(i2s->dev, "bclk enable failed %d\n", ret);
+
+	return ret;
+}
+
+static int i2s_pinctrl_select_bclk_off(struct rk_i2s_dev *i2s)
+{
+
+	int ret = 0;
+
+	if (!IS_ERR(i2s->pinctrl) && !IS_ERR_OR_NULL(i2s->bclk_off))
+		ret = pinctrl_select_state(i2s->pinctrl,
+				     i2s->bclk_off);
+
+	if (ret)
+		dev_err(i2s->dev, "bclk disable failed %d\n", ret);
+
+	return ret;
+}
+
 static int i2s_runtime_suspend(struct device *dev)
 {
 	struct rk_i2s_dev *i2s = dev_get_drvdata(dev);
@@ -92,38 +125,49 @@ static inline struct rk_i2s_dev *to_info(struct snd_soc_dai *dai)
 	return snd_soc_dai_get_drvdata(dai);
 }
 
-static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
+static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 {
 	unsigned int val = 0;
 	int retry = 10;
+	int ret = 0;
 
 	spin_lock(&i2s->lock);
 	if (on) {
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
-				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+				I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
+		if (ret < 0)
+			goto end;
 
-		regmap_update_bits(i2s->regmap, I2S_XFER,
-				   I2S_XFER_TXS_START | I2S_XFER_RXS_START,
-				   I2S_XFER_TXS_START | I2S_XFER_RXS_START);
+		ret = regmap_update_bits(i2s->regmap, I2S_XFER,
+				I2S_XFER_TXS_START | I2S_XFER_RXS_START,
+				I2S_XFER_TXS_START | I2S_XFER_RXS_START);
+		if (ret < 0)
+			goto end;
 
 		i2s->tx_start = true;
 	} else {
 		i2s->tx_start = false;
 
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
-				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_DISABLE);
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+				I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_DISABLE);
+		if (ret < 0)
+			goto end;
 
 		if (!i2s->rx_start) {
-			regmap_update_bits(i2s->regmap, I2S_XFER,
-					   I2S_XFER_TXS_START |
-					   I2S_XFER_RXS_START,
-					   I2S_XFER_TXS_STOP |
-					   I2S_XFER_RXS_STOP);
+			ret = regmap_update_bits(i2s->regmap, I2S_XFER,
+					I2S_XFER_TXS_START |
+					I2S_XFER_RXS_START,
+					I2S_XFER_TXS_STOP |
+					I2S_XFER_RXS_STOP);
+			if (ret < 0)
+				goto end;
 
 			udelay(150);
-			regmap_update_bits(i2s->regmap, I2S_CLR,
-					   I2S_CLR_TXC | I2S_CLR_RXC,
-					   I2S_CLR_TXC | I2S_CLR_RXC);
+			ret = regmap_update_bits(i2s->regmap, I2S_CLR,
+					I2S_CLR_TXC | I2S_CLR_RXC,
+					I2S_CLR_TXC | I2S_CLR_RXC);
+			if (ret < 0)
+				goto end;
 
 			regmap_read(i2s->regmap, I2S_CLR, &val);
 
@@ -138,44 +182,57 @@ static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 			}
 		}
 	}
-	spin_unlock(&i2s->lock);
+end:
+	spin_unlock(&i2s->lock);
+	if (ret < 0)
+		dev_err(i2s->dev, "lrclk update failed\n");
+
+	return ret;
 }
 
-static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
+static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 {
 	unsigned int val = 0;
 	int retry = 10;
+	int ret = 0;
 
 	spin_lock(&i2s->lock);
 	if (on) {
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
 				   I2S_DMACR_RDE_ENABLE, I2S_DMACR_RDE_ENABLE);
+		if (ret < 0)
+			goto end;
 
-		regmap_update_bits(i2s->regmap, I2S_XFER,
+		ret = regmap_update_bits(i2s->regmap, I2S_XFER,
 				   I2S_XFER_TXS_START | I2S_XFER_RXS_START,
 				   I2S_XFER_TXS_START | I2S_XFER_RXS_START);
+		if (ret < 0)
+			goto end;
 
 		i2s->rx_start = true;
 	} else {
 		i2s->rx_start = false;
 
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
 				   I2S_DMACR_RDE_ENABLE, I2S_DMACR_RDE_DISABLE);
+		if (ret < 0)
+			goto end;
 
 		if (!i2s->tx_start) {
-			regmap_update_bits(i2s->regmap, I2S_XFER,
+			ret = regmap_update_bits(i2s->regmap, I2S_XFER,
 					   I2S_XFER_TXS_START |
 					   I2S_XFER_RXS_START,
 					   I2S_XFER_TXS_STOP |
 					   I2S_XFER_RXS_STOP);
-
+			if (ret < 0)
+				goto end;
 			udelay(150);
-			regmap_update_bits(i2s->regmap, I2S_CLR,
+			ret = regmap_update_bits(i2s->regmap, I2S_CLR,
 					   I2S_CLR_TXC | I2S_CLR_RXC,
 					   I2S_CLR_TXC | I2S_CLR_RXC);
-
+			if (ret < 0)
+				goto end;
 			regmap_read(i2s->regmap, I2S_CLR, &val);
-
 			/* Should wait for clear operation to finish */
 			while (val) {
 				regmap_read(i2s->regmap, I2S_CLR, &val);
@@ -187,7 +244,12 @@ static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 			}
 		}
 	}
+end:
 	spin_unlock(&i2s->lock);
+	if (ret < 0)
+		dev_err(i2s->dev, "lrclk update failed\n");
+
+	return ret;
 }
 
 static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
@@ -425,17 +487,26 @@ static int rockchip_i2s_trigger(struct snd_pcm_substream *substream,
 	case SNDRV_PCM_TRIGGER_RESUME:
 	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
 		if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
-			rockchip_snd_rxctrl(i2s, 1);
+			ret = rockchip_snd_rxctrl(i2s, 1);
 		else
-			rockchip_snd_txctrl(i2s, 1);
+			ret = rockchip_snd_txctrl(i2s, 1);
+		/* Do not turn on bclk if lrclk open fails. */
+		if (ret < 0)
+			return ret;
+		i2s_pinctrl_select_bclk_on(i2s);
 		break;
 	case SNDRV_PCM_TRIGGER_SUSPEND:
 	case SNDRV_PCM_TRIGGER_STOP:
 	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
-		if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
-			rockchip_snd_rxctrl(i2s, 0);
-		else
-			rockchip_snd_txctrl(i2s, 0);
+		if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
+			if (!i2s->tx_start)
+				i2s_pinctrl_select_bclk_off(i2s);
+			ret = rockchip_snd_rxctrl(i2s, 0);
+		} else {
+			if (!i2s->rx_start)
+				i2s_pinctrl_select_bclk_off(i2s);
+			ret = rockchip_snd_txctrl(i2s, 0);
+		}
 		break;
 	default:
 		ret = -EINVAL;
@@ -736,6 +807,33 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	}
 
 	i2s->bclk_ratio = 64;
+	i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (IS_ERR(i2s->pinctrl))
+		dev_err(&pdev->dev, "failed to find i2s pinctrl\n");
+
+	i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl,
+				   "bclk_on");
+	if (IS_ERR_OR_NULL(i2s->bclk_on))
+		dev_err(&pdev->dev, "failed to find i2s default state\n");
+	else
+		dev_dbg(&pdev->dev, "find i2s bclk state\n");
+
+	i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl,
+				  "bclk_off");
+	if (IS_ERR_OR_NULL(i2s->bclk_off))
+		dev_err(&pdev->dev, "failed to find i2s gpio state\n");
+	else
+		dev_dbg(&pdev->dev, "find i2s bclk_off state\n");
+
+	i2s_pinctrl_select_bclk_off(i2s);
+
+	i2s->playback_dma_data.addr = res->start + I2S_TXDR;
+	i2s->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+	i2s->playback_dma_data.maxburst = 4;
+
+	i2s->capture_dma_data.addr = res->start + I2S_RXDR;
+	i2s->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+	i2s->capture_dma_data.maxburst = 4;
 
 	dev_set_drvdata(&pdev->dev, i2s);
 
-- 
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
