Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43F8EC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 15:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSxjSgy8wtZXMCfbQ63HYuLQozAxNq3EpMYLwpqt8Wo=; b=mRJkJ4xSmAnztx
	ozE4bFbgwSQK+gScGeLT70J1PXm9Ge9C5iogpeztocaqqm7LekpngkVeG2cv7H31mRP137woY7Wh0
	vbnb0ODOscsvLSn45glCrkRkO8MlajC+6ok1cc97UPIYuHxcblzVLaPjMW5M6VoOd2cu6UddrzZtJ
	71cgYBz8wYD4EtCSRzax2/CMpcna+hySXoBqVY5N7cbhlV/2T4pYxwkRgXd0pwYKEGGYCbFEcEmsd
	JsZLmZ3hbCLg0cXLo1n7llaeTIsUlrS7cnp64hxnWLrXxuonMRiZ/u893nX2b+M39KJJmtZoM20nT
	9l60/B6BBu1tXgFL1uvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rtz-003GxU-Pu; Thu, 16 Jun 2022 15:59:23 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1rtn-003Gns-7D
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 15:59:13 +0000
Received: by mail-pl1-x62b.google.com with SMTP id f8so1610635plo.9
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 08:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hr1jmjONcx7ZPGYxp0mA/BSgGQb50zHv1XSk0r2m1ZQ=;
        b=eUb0sCabS4tR1ZWwwFSUb1anL3bnXZhpgdzzuHZkmxgpjw6mexWTssfZ6PMJw+lK2L
         rjKvT81e2j/Xf3KROMjp/1BpV9ySkINV/Fm0bc8v83B1GXjLZah9vWBXL/XGRh/kDZNp
         BGT6o2ToLqYRhpOgmSWjA8VaDuZKVyq4RTBdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hr1jmjONcx7ZPGYxp0mA/BSgGQb50zHv1XSk0r2m1ZQ=;
        b=AqP8xM40mvI6jyH/Bc99PMH8QEm+4e2TxMSBMR6sM2kA/pgHkVk2DTdk0G5eApLrA5
         0lX1UCpJkM/BOKI9yPKVkV2w1feTqICRYJpA7iSCZZ8IHbhC7aUAO9B4XSK7P3ujZV0e
         7N+GLe8f3J0vQCzI8wkxheExQ/bMzmMgQmEdXwjWqNHrZ9nYs/2j4l1ySQMMNNF55psW
         DxVpQN5NRnvaZi+A0+inKxqzvvXHOGGs1qvUcA8XaY0bYlK5dXEDk9ajWwEhOONblhiA
         Z/AzO2Mlco9pBpaFX9yoSC14cU/9DGPkyeWP8RseiMWz1n4i6KCCmruHMqYI2rBFtkjO
         qhIw==
X-Gm-Message-State: AJIora/J2Zf0zV2m+e5+PLJbAcQKidiIcHNhYytePPUmtL/dPKoDxdsJ
	tSD56b4CwNS6dmsY8QuxxHn2yQ==
X-Google-Smtp-Source: AGRyM1t+I7uZ3tDiiC0xD1KoX0+OfhENUkzJAvRcbOb25SLiGcsjbqCm8iR5BwWf6is5Xg95B1DZJw==
X-Received: by 2002:a17:902:f112:b0:169:968:29b5 with SMTP id e18-20020a170902f11200b00169096829b5mr2628231plb.109.1655395147518;
        Thu, 16 Jun 2022 08:59:07 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id f8-20020a170902684800b00161478027f5sm1779797pln.150.2022.06.16.08.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 08:59:07 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v2 1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Date: Thu, 16 Jun 2022 15:58:34 +0000
Message-Id: <20220616155836.3401420-2-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
In-Reply-To: <20220616155836.3401420-1-judyhsiao@chromium.org>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_085911_290551_07261A9E 
X-CRM114-Status: GOOD (  19.29  )
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
 sound/soc/rockchip/rockchip_i2s.c | 134 ++++++++++++++++++++++++------
 1 file changed, 108 insertions(+), 26 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 47a3971a9ce1..574d3d0900c4 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -54,8 +54,40 @@ struct rk_i2s_dev {
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
@@ -92,39 +124,46 @@ static inline struct rk_i2s_dev *to_info(struct snd_soc_dai *dai)
 	return snd_soc_dai_get_drvdata(dai);
 }
 
-static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
+static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
 {
 	unsigned int val = 0;
 	int retry = 10;
-
+	int ret = 0;
+
 	spin_lock(&i2s->lock);
 	if (on) {
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
 				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
-
-		regmap_update_bits(i2s->regmap, I2S_XFER,
+		if (ret < 0)
+			goto end;
+		ret = regmap_update_bits(i2s->regmap, I2S_XFER,
 				   I2S_XFER_TXS_START | I2S_XFER_RXS_START,
 				   I2S_XFER_TXS_START | I2S_XFER_RXS_START);
-
+		if (ret < 0)
+			goto end;
 		i2s->tx_start = true;
 	} else {
 		i2s->tx_start = false;
 
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
 				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_DISABLE);
+		if (ret < 0)
+			goto end;
 
 		if (!i2s->rx_start) {
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
 
 			/* Should wait for clear operation to finish */
@@ -138,42 +177,55 @@ static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
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
 
 static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
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
-
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
-					   I2S_XFER_RXS_START,
+						   I2S_XFER_RXS_START,
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
 
 			/* Should wait for clear operation to finish */
@@ -187,7 +239,12 @@ static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
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
@@ -425,17 +482,25 @@ static int rockchip_i2s_trigger(struct snd_pcm_substream *substream,
 	case SNDRV_PCM_TRIGGER_RESUME:
 	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
 		if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
-			rockchip_snd_rxctrl(i2s, 1);
+			ret = rockchip_snd_rxctrl(i2s, 1);
 		else
-			rockchip_snd_txctrl(i2s, 1);
+			ret = rockchip_snd_txctrl(i2s, 1);
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
@@ -736,6 +801,23 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	}
 
 	i2s->bclk_ratio = 64;
+	i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (IS_ERR(i2s->pinctrl))
+		dev_err(&pdev->dev, "failed to find i2s pinctrl\n");
+
+	i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl,
+				   "bclk_on");
+	if (!IS_ERR_OR_NULL(i2s->bclk_on)) {
+		dev_info(&pdev->dev, "switch bclk to GPIO func\n");
+		i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl,
+				  "bclk_off");
+		if (IS_ERR_OR_NULL(i2s->bclk_off)) {
+			dev_err(&pdev->dev, "failed to find i2s bclk_off\n");
+			goto err_clk;
+		}
+	}
+
+	i2s_pinctrl_select_bclk_off(i2s);
 
 	dev_set_drvdata(&pdev->dev, i2s);
 
-- 
2.36.1.476.g0c4daa206d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
