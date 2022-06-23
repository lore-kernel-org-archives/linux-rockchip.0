Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24673C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 02:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27V5iYPyvMQUsmeeE+NoytFD/pQ2fADLZa9b+bomsAY=; b=LW/ouFg5KUjuV2
	0KID3+3zGjP4xi3OrGqX6yffervUO41JafVAeDtn51c1Hs40TaVf6TF/9j53EaGo+sMqSgeZ+S7bI
	0yaMBj9M8iD6usnpZEg0iLlOm2sBpSBxNARekHchlyGxkten2BOazd3wd9tx4pTpdZBwtXfLiFdHV
	0b6KlTTUM1p1z8c4dwvphlzDYimvHQdXGJY8gyLAZIfJGwW3jUAIWfeyG0VRggpF3L+GA3A04nA/7
	cMCJZDyr0tIJkp/VYtJo1tf7ooDfIKfchjNjD8e9z/0f8DY3HON0mM5wpJZAMZFZACPqG1M13BKSB
	nbf7ryn6/nzPlO/Poxtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4CTf-00CxHj-Bb; Thu, 23 Jun 2022 02:21:51 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4CKF-00CtK1-G8
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 02:12:10 +0000
Received: by mail-pj1-x1035.google.com with SMTP id h9-20020a17090a648900b001ecb8596e43so1167423pjj.5
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jun 2022 19:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B49d4SIox+e+mb7jQzvkFTKZpAevCiiZS2mIDlEpl4k=;
        b=kEgb9LUqG+MZosF6hO/uW1v1tK8ivJcSTm0EWjSMAdk7qY3wyvK7sS4oHwSdxT2VQC
         yTVQhyPgZlwNGLuqtKrRq8c40jf+pOHvTKcIPd9tdkI2zLvjJ8mqTEhcsA+sxOEnkeWy
         6zHUEqSXwbh4zb5iQzemIgZCGhufWwCWQ1W6E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B49d4SIox+e+mb7jQzvkFTKZpAevCiiZS2mIDlEpl4k=;
        b=mU00vzJhU0L68+uZ0/BrXemSlZmE/Ihs8Uiq2FSpDpIToxZ+OorQMizl3TMSXt4Ivi
         u42WrRr/L0F8eatWN/qFkIwD+VIxcn47Xx62zOMw0xUjwKFJ8IUM+h30pULtTRDDE0ZM
         nmJvZZgkwWistP5xfFAA7CqcQvXMjs6YB2Yz58XY3inbcG01Sc+7NFRn7d+o81H3vOtE
         JadVkkjVGE9xdVwrnRFIuc/21E/ej78RcRW5HOIIaXajhnf3ocfDAaV7eRN0a9M7OWJ+
         2UVs6mvjlZ4gsiUQZ9PnkWCvSuE9K7MbPHmpvC/M3Geh+hy92VICL2IlGWq5hSrTFYxL
         FyMw==
X-Gm-Message-State: AJIora/qeEfLtpjSQGB26cZZ+OO6ckKhoDQXCnPp4N+e9y1jXdbL0qTG
	jQTNregd4AdyMtUPu9IaqRRMJjI6AmHQ5HRa
X-Google-Smtp-Source: AGRyM1vUdIB+8cpeDYyqckhQRPC0sjPvKxMcaRn3LdvlrufgT7/mPMROzc9F0xJ7lUreCuUBW6WllA==
X-Received: by 2002:a17:902:f646:b0:168:e2da:8931 with SMTP id m6-20020a170902f64600b00168e2da8931mr36827774plg.84.1655950324519;
        Wed, 22 Jun 2022 19:12:04 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id m6-20020a170902768600b0016196bd15f4sm6194000pll.15.2022.06.22.19.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 19:12:03 -0700 (PDT)
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
Subject: [PATCH v5 1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Date: Thu, 23 Jun 2022 02:11:51 +0000
Message-Id: <20220623021153.587423-2-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.rc0.104.g0611611a94-goog
In-Reply-To: <20220623021153.587423-1-judyhsiao@chromium.org>
References: <20220623021153.587423-1-judyhsiao@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_191207_627098_C399B243 
X-CRM114-Status: GOOD (  19.05  )
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
Reviewed-by: Brian Norris <briannorris@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 171 ++++++++++++++++++++++--------
 1 file changed, 124 insertions(+), 47 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 47a3971a9ce1..79d94fbd2550 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -54,8 +54,38 @@ struct rk_i2s_dev {
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
+		ret = pinctrl_select_state(i2s->pinctrl, i2s->bclk_on);
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
+		ret = pinctrl_select_state(i2s->pinctrl, i2s->bclk_off);
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
@@ -92,39 +122,46 @@ static inline struct rk_i2s_dev *to_info(struct snd_soc_dai *dai)
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
-				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
-
-		regmap_update_bits(i2s->regmap, I2S_XFER,
-				   I2S_XFER_TXS_START | I2S_XFER_RXS_START,
-				   I2S_XFER_TXS_START | I2S_XFER_RXS_START);
-
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+					 I2S_DMACR_TDE_ENABLE,
+					 I2S_DMACR_TDE_ENABLE);
+		if (ret < 0)
+			goto end;
+		ret = regmap_update_bits(i2s->regmap, I2S_XFER,
+					 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
+					 I2S_XFER_TXS_START | I2S_XFER_RXS_START);
+		if (ret < 0)
+			goto end;
 		i2s->tx_start = true;
 	} else {
 		i2s->tx_start = false;
 
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
-				   I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_DISABLE);
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+					 I2S_DMACR_TDE_ENABLE,
+					 I2S_DMACR_TDE_DISABLE);
+		if (ret < 0)
+			goto end;
 
 		if (!i2s->rx_start) {
-			regmap_update_bits(i2s->regmap, I2S_XFER,
-					   I2S_XFER_TXS_START |
-					   I2S_XFER_RXS_START,
-					   I2S_XFER_TXS_STOP |
-					   I2S_XFER_RXS_STOP);
-
+			ret = regmap_update_bits(i2s->regmap, I2S_XFER,
+						 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
+						 I2S_XFER_TXS_STOP | I2S_XFER_RXS_STOP);
+			if (ret < 0)
+				goto end;
 			udelay(150);
-			regmap_update_bits(i2s->regmap, I2S_CLR,
-					   I2S_CLR_TXC | I2S_CLR_RXC,
-					   I2S_CLR_TXC | I2S_CLR_RXC);
-
+			ret = regmap_update_bits(i2s->regmap, I2S_CLR,
+						 I2S_CLR_TXC | I2S_CLR_RXC,
+						 I2S_CLR_TXC | I2S_CLR_RXC);
+			if (ret < 0)
+				goto end;
 			regmap_read(i2s->regmap, I2S_CLR, &val);
 
 			/* Should wait for clear operation to finish */
@@ -138,42 +175,55 @@ static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
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
 
-static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
+static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
 {
 	unsigned int val = 0;
 	int retry = 10;
+	int ret = 0;
 
 	spin_lock(&i2s->lock);
 	if (on) {
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
-				   I2S_DMACR_RDE_ENABLE, I2S_DMACR_RDE_ENABLE);
-
-		regmap_update_bits(i2s->regmap, I2S_XFER,
-				   I2S_XFER_TXS_START | I2S_XFER_RXS_START,
-				   I2S_XFER_TXS_START | I2S_XFER_RXS_START);
-
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+					 I2S_DMACR_RDE_ENABLE,
+					 I2S_DMACR_RDE_ENABLE);
+		if (ret < 0)
+			goto end;
+
+		ret = regmap_update_bits(i2s->regmap, I2S_XFER,
+					 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
+					 I2S_XFER_TXS_START | I2S_XFER_RXS_START);
+		if (ret < 0)
+			goto end;
 		i2s->rx_start = true;
 	} else {
 		i2s->rx_start = false;
 
-		regmap_update_bits(i2s->regmap, I2S_DMACR,
-				   I2S_DMACR_RDE_ENABLE, I2S_DMACR_RDE_DISABLE);
+		ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
+					 I2S_DMACR_RDE_ENABLE,
+					 I2S_DMACR_RDE_DISABLE);
+		if (ret < 0)
+			goto end;
 
 		if (!i2s->tx_start) {
-			regmap_update_bits(i2s->regmap, I2S_XFER,
-					   I2S_XFER_TXS_START |
-					   I2S_XFER_RXS_START,
-					   I2S_XFER_TXS_STOP |
-					   I2S_XFER_RXS_STOP);
-
+			ret = regmap_update_bits(i2s->regmap, I2S_XFER,
+						 I2S_XFER_TXS_START | I2S_XFER_RXS_START,
+						 I2S_XFER_TXS_STOP | I2S_XFER_RXS_STOP);
+			if (ret < 0)
+				goto end;
 			udelay(150);
-			regmap_update_bits(i2s->regmap, I2S_CLR,
-					   I2S_CLR_TXC | I2S_CLR_RXC,
-					   I2S_CLR_TXC | I2S_CLR_RXC);
-
+			ret = regmap_update_bits(i2s->regmap, I2S_CLR,
+						 I2S_CLR_TXC | I2S_CLR_RXC,
+						 I2S_CLR_TXC | I2S_CLR_RXC);
+			if (ret < 0)
+				goto end;
 			regmap_read(i2s->regmap, I2S_CLR, &val);
 
 			/* Should wait for clear operation to finish */
@@ -187,7 +237,12 @@ static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
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
@@ -425,17 +480,25 @@ static int rockchip_i2s_trigger(struct snd_pcm_substream *substream,
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
@@ -736,6 +799,20 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	}
 
 	i2s->bclk_ratio = 64;
+	i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (IS_ERR(i2s->pinctrl)) {
+		dev_err(&pdev->dev, "failed to find i2s pinctrl\n");
+	} else {
+		i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl, "bclk_on");
+		if (!IS_ERR_OR_NULL(i2s->bclk_on)) {
+			i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl, "bclk_off");
+			if (IS_ERR_OR_NULL(i2s->bclk_off)) {
+				dev_err(&pdev->dev, "failed to find i2s bclk_off\n");
+				goto err_clk;
+			}
+		}
+		i2s_pinctrl_select_bclk_off(i2s);
+	}
 
 	dev_set_drvdata(&pdev->dev, i2s);
 
-- 
2.37.0.rc0.104.g0611611a94-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
