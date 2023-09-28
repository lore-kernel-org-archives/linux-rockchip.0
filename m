Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2F7CE732C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 12:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AS/cK7R2+X2agCAB+8mQGz/ZndRWnk9M1Dzhj9IJND0=; b=hZEMl5ZYHaP9Em
	KZVOlK6w4OL2o060sCDJBC3G+Qnjuwzs+SBrDkTILS6jiyX4JV43fldFv/W8R2AH4BVGK4+tYRH41
	9e6pBKfCbzpVc15ADt4LZBEzuZY/hkR+iONXV5/Q2XdpeXanRSd6ZcUv6tRdK8lgQWsH1Rz5vm7wI
	8dEAphly+cN1xQ2mBmHVmGhetG//+4rTLzjDff3SlD1dJ5CF/m8UM1CZMMo9drfQKGzH29bY5jNOP
	ZIeckRyWSVZDSHQrQBwFgIr4q/knlCpCVv+5CBCKNc4iHEHo2ANnE2HUajNe/mHY0dTP/D1GVe0JB
	qNkqM+K9XwIbOGZ8Mk3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlqEV-003p8R-0t;
	Thu, 28 Sep 2023 12:35:07 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlqER-003p5b-2i
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 12:35:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 998461FB;
	Thu, 28 Sep 2023 05:35:39 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F5CB3F5A1;
	Thu, 28 Sep 2023 05:35:00 -0700 (PDT)
Message-ID: <9199562c-65ac-d8b1-20bd-429a32ede6c9@arm.com>
Date: Thu, 28 Sep 2023 13:34:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/4] ASoC: rockchip: Convert RK3288 HDMI to GPIO
 descriptors
Content-Language: en-GB
To: Linus Walleij <linus.walleij@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
 <20230928-descriptors-asoc-rockchip-v1-1-a142a42d4787@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230928-descriptors-asoc-rockchip-v1-1-a142a42d4787@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_053503_995777_7AE83475 
X-CRM114-Status: GOOD (  26.33  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 27/09/2023 11:47 pm, Linus Walleij wrote:
> This converts the Rockchip RK3288 HDMI driver to use GPIO
> descriptors:
> 
> - Look up the HP EN GPIO as a descriptor and handle it directly.
> 
> - Let the Jack detection core obtain and handle the HP detection
>    GPIO, just pass the right name and gpiod_dev and it will
>    do the job.
> 
> - As the probe() code is very insistent on getting valid
>    GPIOs out of the device before it will continue, there
>    is no point to carry all the code handling the GPIOs as
>    optional, drop all these checks.

Isn't it allowing them to be optional as long as of_get_named_gpio() 
returns -ENODEV (which I guess may come out of the chip->of_xlate 
callback)? Or is it implied that that's never actually been able to happen?

(just curious...)

FWIW the DT binding does define them as optional, but the only in-tree 
user provides both, so it seems unlikely to pose a regression in 
practice even if we did just drop the notional support.

Thanks,
Robin.

> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>   sound/soc/rockchip/rk3288_hdmi_analog.c | 54 +++++++++++----------------------
>   1 file changed, 17 insertions(+), 37 deletions(-)
> 
> diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
> index 0c6bd9a019db..7199f991ec26 100644
> --- a/sound/soc/rockchip/rk3288_hdmi_analog.c
> +++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
> @@ -12,8 +12,7 @@
>   #include <linux/module.h>
>   #include <linux/platform_device.h>
>   #include <linux/slab.h>
> -#include <linux/gpio.h>
> -#include <linux/of_gpio.h>
> +#include <linux/gpio/consumer.h>
>   #include <sound/core.h>
>   #include <sound/jack.h>
>   #include <sound/pcm.h>
> @@ -26,8 +25,7 @@
>   #define DRV_NAME "rk3288-snd-hdmi-analog"
>   
>   struct rk_drvdata {
> -	int gpio_hp_en;
> -	int gpio_hp_det;
> +	struct gpio_desc *gpio_hp_en;
>   };
>   
>   static int rk_hp_power(struct snd_soc_dapm_widget *w,
> @@ -35,11 +33,8 @@ static int rk_hp_power(struct snd_soc_dapm_widget *w,
>   {
>   	struct rk_drvdata *machine = snd_soc_card_get_drvdata(w->dapm->card);
>   
> -	if (!gpio_is_valid(machine->gpio_hp_en))
> -		return 0;
> -
> -	gpio_set_value_cansleep(machine->gpio_hp_en,
> -				SND_SOC_DAPM_EVENT_ON(event));
> +	gpiod_set_value_cansleep(machine->gpio_hp_en,
> +				 SND_SOC_DAPM_EVENT_ON(event));
>   
>   	return 0;
>   }
> @@ -113,24 +108,23 @@ static int rk_hw_params(struct snd_pcm_substream *substream,
>   }
>   
>   static struct snd_soc_jack_gpio rk_hp_jack_gpio = {
> -	.name = "Headphone detection",
> +	.name = "rockchip,hp-det",
>   	.report = SND_JACK_HEADPHONE,
>   	.debounce_time = 150
>   };
>   
>   static int rk_init(struct snd_soc_pcm_runtime *runtime)
>   {
> -	struct rk_drvdata *machine = snd_soc_card_get_drvdata(runtime->card);
> +	struct snd_soc_card *card = runtime->card;
> +	struct device *dev = card->dev;
>   
>   	/* Enable Headset Jack detection */
> -	if (gpio_is_valid(machine->gpio_hp_det)) {
> -		snd_soc_card_jack_new_pins(runtime->card, "Headphone Jack",
> -					   SND_JACK_HEADPHONE, &headphone_jack,
> -					   headphone_jack_pins,
> -					   ARRAY_SIZE(headphone_jack_pins));
> -		rk_hp_jack_gpio.gpio = machine->gpio_hp_det;
> -		snd_soc_jack_add_gpios(&headphone_jack, 1, &rk_hp_jack_gpio);
> -	}
> +	rk_hp_jack_gpio.gpiod_dev = dev;
> +	snd_soc_card_jack_new_pins(runtime->card, "Headphone Jack",
> +				   SND_JACK_HEADPHONE, &headphone_jack,
> +				   headphone_jack_pins,
> +				   ARRAY_SIZE(headphone_jack_pins));
> +	snd_soc_jack_add_gpios(&headphone_jack, 1, &rk_hp_jack_gpio);
>   
>   	return 0;
>   }
> @@ -182,24 +176,10 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
>   
>   	card->dev = &pdev->dev;
>   
> -	machine->gpio_hp_det = of_get_named_gpio(np,
> -		"rockchip,hp-det-gpios", 0);
> -	if (!gpio_is_valid(machine->gpio_hp_det) && machine->gpio_hp_det != -ENODEV)
> -		return machine->gpio_hp_det;
> -
> -	machine->gpio_hp_en = of_get_named_gpio(np,
> -		"rockchip,hp-en-gpios", 0);
> -	if (!gpio_is_valid(machine->gpio_hp_en) && machine->gpio_hp_en != -ENODEV)
> -		return machine->gpio_hp_en;
> -
> -	if (gpio_is_valid(machine->gpio_hp_en)) {
> -		ret = devm_gpio_request_one(&pdev->dev, machine->gpio_hp_en,
> -					    GPIOF_OUT_INIT_LOW, "hp_en");
> -		if (ret) {
> -			dev_err(card->dev, "cannot get hp_en gpio\n");
> -			return ret;
> -		}
> -	}
> +	machine->gpio_hp_en = devm_gpiod_get(&pdev->dev, "rockchip,hp-en", GPIOD_OUT_LOW);
> +	if (IS_ERR(machine->gpio_hp_en))
> +		return PTR_ERR(machine->gpio_hp_en);
> +	gpiod_set_consumer_name(machine->gpio_hp_en, "hp_en");
>   
>   	ret = snd_soc_of_parse_card_name(card, "rockchip,model");
>   	if (ret) {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
