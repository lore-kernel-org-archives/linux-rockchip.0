Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8006AE80ABD
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 22:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyuxkXsnWpWaUfd6eiMTQ7adp81znpGy1jadj4hwkoM=; b=WSo0n8kPXCPOYy
	wmSWqOzXvBzNshQRkLvbkXofVG0T3/iVOt/YfUQ+5/3uRdm7oJwrabuWPEdC9bMMZqbrt4k044G23
	hmUQB980zqN5jIKW6NswsXEMYUjmWA7KIgr/69zzU1K5dhSQyPhDulriNvWX9s6yz+NMCKES/VGE8
	ez/CbOuCDtr+ZdBMMidRERhYykKwLKDipQfusiC945jhsM2u5Z7OjcgnPICImqHRuVb4J5x6Eaf9q
	jdEFqyqcsRPw1L8GFGiaemO8gyZX9kx6CLHqBop8HX+MpqbPgm4i+ZMy2sLRWfSH3/Wf8SsHJCNT8
	kqAP1gbTTWsYSPWCYaaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJT-001rnC-1x;
	Wed, 27 Sep 2023 22:47:23 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJP-001rks-2m
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Sep 2023 22:47:21 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5044dd5b561so14470068e87.1
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Sep 2023 15:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695854836; x=1696459636; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OpV1FPJ6dyO8NC9vUuzjI6C6mCi6OEhOeoX88LtgNes=;
        b=gj+qem7CJsAViptTRw74BHSjp9qc3uxtEv9g0/qWVMAByByjI5Ygj6fBp/FD6WRDB7
         0AR5/cNoumHnneDj/PXB03aQiaKqXLfaRw6HwsD3TguBK0zWH7mif20fkqUOcwADsPZt
         W/jZS+P1+5N4hGFhr331XsfdjR+QRRXIayEqbE8P70wm/66+dhcELl+8aS/50kqlyb/W
         8ljZ2d2vuz/Yx84n/cdbiU3mHF0jlNEfgmw9gJLxOdC7+jSokuvxDSTo1M1F/cdEX5+m
         Znf6eCg9YJtvXPcuSgg8je9pYt0HYP4u4XFUPuq1C3tYJIukqAyVOzgDjm7jUTNy6S37
         mVVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695854836; x=1696459636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OpV1FPJ6dyO8NC9vUuzjI6C6mCi6OEhOeoX88LtgNes=;
        b=Wh/OUZ/RRfl9wRY/ekI2De1BXq6WSUfHPhd52ZBL16F11Hg1ZD1scZEuNT0OP7yzIy
         /vyZvTX2g3rbPQvFEKY2pN5VExUpJTcAWeiC44Mx06xFTm8tckXO9bLSABQ1ufR6xVQL
         cCjnSOJtlPTsrvqa8OkTXRimwQi7FDyKq6+9kxYAiHN+bMC1qOA9iWZwq429KYvsiE03
         nUZ8BrrTmamzkj7eqQ8mNO3zkCJF9AVQnhupKivTbW0tpAlgcLYzgKjpf2nrMEfNy5Qh
         MHiRnixrPaZ2rwEeWYN1n8TB5df/O8KpJyllFmg93LPmH5ntj2tfOt4OrXQEKbiRKgen
         SM5Q==
X-Gm-Message-State: AOJu0YwIUQd9SHwCbcH9hykmruhrg3ZsPQDMWSdZqMQYkhHg7CDoKeci
	d2KuPNsUW9FKf5OSgTqvS6uqmA==
X-Google-Smtp-Source: AGHT+IFnmsvK1nxU2ZWigAtiHCfvQZQxWBNESo/oxRorRUK1l2swAncu+UDIFedYPQJbRbubcGQzmA==
X-Received: by 2002:a05:6512:159c:b0:500:8fc1:8aba with SMTP id bp28-20020a056512159c00b005008fc18abamr3338721lfb.26.1695854835883;
        Wed, 27 Sep 2023 15:47:15 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id ep14-20020a056512484e00b0050296068a12sm2801746lfb.30.2023.09.27.15.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 15:47:15 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Sep 2023 00:47:14 +0200
Subject: [PATCH 1/4] ASoC: rockchip: Convert RK3288 HDMI to GPIO
 descriptors
MIME-Version: 1.0
Message-Id: <20230928-descriptors-asoc-rockchip-v1-1-a142a42d4787@linaro.org>
References: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
In-Reply-To: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_154719_975360_E97BECFF 
X-CRM114-Status: GOOD (  18.90  )
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

- Look up the HP EN GPIO as a descriptor and handle it directly.

- Let the Jack detection core obtain and handle the HP detection
  GPIO, just pass the right name and gpiod_dev and it will
  do the job.

- As the probe() code is very insistent on getting valid
  GPIOs out of the device before it will continue, there
  is no point to carry all the code handling the GPIOs as
  optional, drop all these checks.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 sound/soc/rockchip/rk3288_hdmi_analog.c | 54 +++++++++++----------------------
 1 file changed, 17 insertions(+), 37 deletions(-)

diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
index 0c6bd9a019db..7199f991ec26 100644
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
@@ -113,24 +108,23 @@ static int rk_hw_params(struct snd_pcm_substream *substream,
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
 
 	/* Enable Headset Jack detection */
-	if (gpio_is_valid(machine->gpio_hp_det)) {
-		snd_soc_card_jack_new_pins(runtime->card, "Headphone Jack",
-					   SND_JACK_HEADPHONE, &headphone_jack,
-					   headphone_jack_pins,
-					   ARRAY_SIZE(headphone_jack_pins));
-		rk_hp_jack_gpio.gpio = machine->gpio_hp_det;
-		snd_soc_jack_add_gpios(&headphone_jack, 1, &rk_hp_jack_gpio);
-	}
+	rk_hp_jack_gpio.gpiod_dev = dev;
+	snd_soc_card_jack_new_pins(runtime->card, "Headphone Jack",
+				   SND_JACK_HEADPHONE, &headphone_jack,
+				   headphone_jack_pins,
+				   ARRAY_SIZE(headphone_jack_pins));
+	snd_soc_jack_add_gpios(&headphone_jack, 1, &rk_hp_jack_gpio);
 
 	return 0;
 }
@@ -182,24 +176,10 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 
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
+	machine->gpio_hp_en = devm_gpiod_get(&pdev->dev, "rockchip,hp-en", GPIOD_OUT_LOW);
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
