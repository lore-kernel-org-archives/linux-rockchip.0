Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCF27E743C8
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 22:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsiNJyY9QRiJv3C43hlWwKl2EI3gFgeYuM2WsFiJ1C8=; b=LLORuBP7KJ5WJH
	q+kzS0E/WlT8k8zazJVPckSZrnjtJJb/XrLU/uG67z65YHJ3EKGXmrsU2JjhIYjwYYjnyAgyiaVmv
	tmIkeWGrTPXRHQx1m+TxKgs5Oq6SSyA5VURcEet9CqLxmvzrb+V8EgeLLb9brfisrZcL5o2b+Tgc8
	kldjRTqDoEQmg/x2jApcOGbmw/wocLiVvaheojNu7Oxhkv9l20LEOt2cdXBk6sBo/hSxRInOMoPGP
	R73YfHe8cOM4nH/4t1ga4ap8teGtObM8YS1ljoPM/BmsLizwgicEKr+Uj3XVcLlFev7JnGu6rnlVy
	9b62Uep22gO17yyV38ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFp-006l6U-2V;
	Thu, 28 Sep 2023 22:13:05 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlzFm-006l40-3A
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 22:13:04 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-503056c8195so22090148e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Sep 2023 15:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695939178; x=1696543978; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gEziQa3WMTxBubEiTduzNr8x972su8Z0Wh8gtotlZpA=;
        b=TVeLQThNezHmcxj09sjFLsJkGmuByrAxGXXzrfPI4i2iFu+HlYXM+FQklrr8qKSgEG
         g4f9727inulZHWmQvzACr2puondhdPTeNgUX6C/GEbJMWsMb5FLtjDD/hy6iAn/A5J2p
         3VoUunzUyX44UPMxt+LKjcNGEniMx70F0bz341ABgME8s7o0Bk9P5ZgOzXillsmSY2zO
         0jnCHvx1ni6LaSmbe6lUmgsnKrE9fBs4BwbEIS/tQG0HmNV9NvXXpJsy7IwefB4XSwLZ
         ZU5AS2cvkMqmsyUZmWpokx1kcWeEM35s/k5RUvgPLbGGmi2h+gQv/VWb6ga+zrC/zQlZ
         c1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695939178; x=1696543978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gEziQa3WMTxBubEiTduzNr8x972su8Z0Wh8gtotlZpA=;
        b=FvIxU/szr3Bna8YpN0LEjPxy3oCMIAeEf/WdsAhJ3YkLVWqw7FDxBbHYvPRjP0fKAY
         mqlfijMMO1UvgglYj5Tb2ecnMpPlKon/bt0rQuTGLWIUw+2zLcKgJFicv1U49xzmy+yi
         XuIHkBrwygVZDPHwassdc8yFb4MTEn3nzWk8JTWB2LtvM8WmtXxOUDXNrWlItdgPehRr
         gmJ1Qn624Uc3NZI1A/Tm5MvagcU+fEcAfpRJcUGZaP28FiT0HVyHgp6yOQbbU0LupDSM
         bwboSG3a+3eJ9TUgD8+I8hi6mbZiQzYyNl2HG86s70ZQpzidN/gVBlblaZa2GG++0VJ9
         Au8A==
X-Gm-Message-State: AOJu0YwHF1OrpRAMPQWqM2fuXKmzjI9P5Vw//mSZhSbuqAGMVOu0lZam
	5fOiw0tEiiQME8wsgdu8Qa7Y3A==
X-Google-Smtp-Source: AGHT+IGzel1RkPZ4JzmTAzm8NUoePCdFt5ZlaT/NGsNucaV0V6gsJlM+udU+/kODIJyvFU9Ivj83aA==
X-Received: by 2002:a05:6512:448:b0:4e0:a426:6ddc with SMTP id y8-20020a056512044800b004e0a4266ddcmr2091697lfk.0.1695939177623;
        Thu, 28 Sep 2023 15:12:57 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id r27-20020ac25a5b000000b005030cef433esm3271964lfn.94.2023.09.28.15.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 15:12:56 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 29 Sep 2023 00:12:54 +0200
Subject: [PATCH v2 1/4] ASoC: rockchip: Convert RK3288 HDMI to GPIO
 descriptors
MIME-Version: 1.0
Message-Id: <20230929-descriptors-asoc-rockchip-v2-1-2d2c0e043aab@linaro.org>
References: <20230929-descriptors-asoc-rockchip-v2-0-2d2c0e043aab@linaro.org>
In-Reply-To: <20230929-descriptors-asoc-rockchip-v2-0-2d2c0e043aab@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_151303_022774_671547AE 
X-CRM114-Status: GOOD (  18.87  )
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

This converts the Rockchip RK3288 HDMI driver to use GPIO
descriptors:

- Look up the HP EN GPIO as an optional descriptor and handle
  it directly, the gpiod API is NULL-tolerant so no special
  guards are needed.

- Let the Jack detection core obtain and handle the HP detection
  GPIO, just pass the right name and gpiod_dev and it will
  do the job. Make sure to check that the GPIO property
  is there first, so it becomes optional.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 sound/soc/rockchip/rk3288_hdmi_analog.c | 46 ++++++++++-----------------------
 1 file changed, 14 insertions(+), 32 deletions(-)

diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
index 0c6bd9a019db..cdb5dfd0d1d4 100644
--- a/sound/soc/rockchip/rk3288_hdmi_analog.c
+++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
@@ -12,8 +12,7 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
-#include <linux/gpio.h>
-#include <linux/of_gpio.h>
+#include <linux/gpio/consumer.h>
 #include <sound/core.h>
 #include <sound/jack.h>
 #include <sound/pcm.h>
@@ -26,8 +25,7 @@
 #define DRV_NAME "rk3288-snd-hdmi-analog"
 
 struct rk_drvdata {
-	int gpio_hp_en;
-	int gpio_hp_det;
+	struct gpio_desc *gpio_hp_en;
 };
 
 static int rk_hp_power(struct snd_soc_dapm_widget *w,
@@ -35,11 +33,8 @@ static int rk_hp_power(struct snd_soc_dapm_widget *w,
 {
 	struct rk_drvdata *machine = snd_soc_card_get_drvdata(w->dapm->card);
 
-	if (!gpio_is_valid(machine->gpio_hp_en))
-		return 0;
-
-	gpio_set_value_cansleep(machine->gpio_hp_en,
-				SND_SOC_DAPM_EVENT_ON(event));
+	gpiod_set_value_cansleep(machine->gpio_hp_en,
+				 SND_SOC_DAPM_EVENT_ON(event));
 
 	return 0;
 }
@@ -113,22 +108,23 @@ static int rk_hw_params(struct snd_pcm_substream *substream,
 }
 
 static struct snd_soc_jack_gpio rk_hp_jack_gpio = {
-	.name = "Headphone detection",
+	.name = "rockchip,hp-det",
 	.report = SND_JACK_HEADPHONE,
 	.debounce_time = 150
 };
 
 static int rk_init(struct snd_soc_pcm_runtime *runtime)
 {
-	struct rk_drvdata *machine = snd_soc_card_get_drvdata(runtime->card);
+	struct snd_soc_card *card = runtime->card;
+	struct device *dev = card->dev;
 
-	/* Enable Headset Jack detection */
-	if (gpio_is_valid(machine->gpio_hp_det)) {
+	/* Enable optional Headset Jack detection */
+	if (of_property_present(dev->of_node, "rockchip,hp-det-gpios")) {
+		rk_hp_jack_gpio.gpiod_dev = dev;
 		snd_soc_card_jack_new_pins(runtime->card, "Headphone Jack",
 					   SND_JACK_HEADPHONE, &headphone_jack,
 					   headphone_jack_pins,
 					   ARRAY_SIZE(headphone_jack_pins));
-		rk_hp_jack_gpio.gpio = machine->gpio_hp_det;
 		snd_soc_jack_add_gpios(&headphone_jack, 1, &rk_hp_jack_gpio);
 	}
 
@@ -182,24 +178,10 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 
 	card->dev = &pdev->dev;
 
-	machine->gpio_hp_det = of_get_named_gpio(np,
-		"rockchip,hp-det-gpios", 0);
-	if (!gpio_is_valid(machine->gpio_hp_det) && machine->gpio_hp_det != -ENODEV)
-		return machine->gpio_hp_det;
-
-	machine->gpio_hp_en = of_get_named_gpio(np,
-		"rockchip,hp-en-gpios", 0);
-	if (!gpio_is_valid(machine->gpio_hp_en) && machine->gpio_hp_en != -ENODEV)
-		return machine->gpio_hp_en;
-
-	if (gpio_is_valid(machine->gpio_hp_en)) {
-		ret = devm_gpio_request_one(&pdev->dev, machine->gpio_hp_en,
-					    GPIOF_OUT_INIT_LOW, "hp_en");
-		if (ret) {
-			dev_err(card->dev, "cannot get hp_en gpio\n");
-			return ret;
-		}
-	}
+	machine->gpio_hp_en = devm_gpiod_get_optional(&pdev->dev, "rockchip,hp-en", GPIOD_OUT_LOW);
+	if (IS_ERR(machine->gpio_hp_en))
+		return PTR_ERR(machine->gpio_hp_en);
+	gpiod_set_consumer_name(machine->gpio_hp_en, "hp_en");
 
 	ret = snd_soc_of_parse_card_name(card, "rockchip,model");
 	if (ret) {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
