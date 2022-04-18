Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21CCBC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 19:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8TK522vUTjJozRuqr5XVk+F8f1ofHDf+6vJofQp9YU=; b=Q5PPwkMvky1krI
	iXSJlqoX8AnOKTYgUbNbrSDhGyiJemKtF5FY+GUyQKGa2I2a059a0nRVVk+mDvMmHGdxLglge5Hkk
	3HVVm0/MLqtGFmWV3Av326ClmfoCwqbDV3Gm/frFEBV5cRV0+qAiXmNSojlzeKD1+vec4ou1xNuoq
	IMkGEsz17ChXpdFPm4X90pJhKyILPLDZ8WBUIS+XfNz8tByOJGBQQGesad+u4Y/lAHhOGhkZt8n57
	OYLbz+u1mLwwFxeZPYT039RxAUdAusUEgg7edgy4yksLtrqc9Dc05+0kWOCCuHb9GGgDNI74jrr98
	ibLMjSZSPLzZlMEdME8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngXM1-000Uu8-QC; Mon, 18 Apr 2022 19:48:09 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngXLq-000UqX-9l
 for linux-rockchip@lists.infradead.org; Mon, 18 Apr 2022 19:48:00 +0000
Received: by mail-ed1-x532.google.com with SMTP id b24so18588462edu.10
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Apr 2022 12:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NXg16T5RHzmRSU7fzbqLl5dRDSsIh5leaaKIVXJix2Y=;
 b=n6TH58tO6Jf+8u5wbFfxZZ1rGSt9UpKEMo4zwn5SrzJg5kBLgAnwKPjEFKGOn1AsVS
 BlTUiehQ1Zjs+vmeVNX+gknbYOIT7noOyWXV3+LClR4fl7XiIIaS/9Cc1rxU22dCtuaK
 pQ/b93oy/yreNJvMQcrLjfcxDGUaFW/7+1GLVBne6lfgv+anTs0MIp60sRbuPxKfMUTS
 mAdwxkPpboKUwwoyDwxwYgC5LimvdLfbqffeEt/evWZRKSDezMKAsw3qP4hQgLnBorKX
 ND5e4C+abAw+VaSHw4ACJGqoi5sIyB7YGM8tQwYQ2tdzkxbJwnwNtfd2/1CkMBa6U87y
 8F9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NXg16T5RHzmRSU7fzbqLl5dRDSsIh5leaaKIVXJix2Y=;
 b=1aXUpBUoTUwL+eAOa1nDutHXx3PmNHf2xyPipgx1zmpTC22azi52fV/7Kiolh8xuV7
 xEBHHj6MJQgqiVcJzuh4iQudocPBAaC2Ka6aZdz9ho/H3hpFde3Z+RbAkdAoDRmGPwKe
 lZelmwZGsILTSmyTMo6Qh0tehgRH2BBxCRIgNVgoP0+xWH9ayp1V+kFasHRh6z4XMn68
 8IeOg8XlDRGMTaKjUFJgBUzhKujXQu5VZkaPaXSBmb7NRLg4ummwd76OG007zMjzUGDd
 x81LKN8dD/v8jqJesI9MlA9T1Wsa61wBYz5rCMzQROceWLN5eTkq2Tmv0JcZ71Pzui+X
 3L6w==
X-Gm-Message-State: AOAM532p9oQyBTVca0XXowxPW3lUs8gf9ytm9v5gKWrl9BJtyrQiweqy
 EHHAvpKX7aCAJsIfvUR8MCp5Ty9jG74HV3u2B1socg==
X-Google-Smtp-Source: ABdhPJwvoJ8S2SQnY/koE4FsNKMAxVbvlxW9QX5pT4ZaYsnS74IHedJObRxq4/ya8URo4hGKRxRf5E8Bb0WAjXdhtak=
X-Received: by 2002:a05:6402:128f:b0:41d:7e85:8421 with SMTP id
 w15-20020a056402128f00b0041d7e858421mr13502922edv.352.1650311273941; Mon, 18
 Apr 2022 12:47:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220328005005.72492-1-kc@postmarketos.org>
 <20220328005005.72492-4-kc@postmarketos.org>
In-Reply-To: <20220328005005.72492-4-kc@postmarketos.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 18 Apr 2022 21:47:43 +0200
Message-ID: <CAMRc=MfmaW7QX6Q8JFi2-32E_JvE=z6EspnpiHD+4JjeNGFT4g@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio/rockchip: handle deferring input-enable pinconfs
To: Caleb Connolly <kc@postmarketos.org>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Linus Walleij <linus.walleij@linaro.org>,
 devicetree <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 ~postmarketos/upstreaming@lists.sr.ht, 
 martijn@brixit.nl, Arnaud Ferraris <arnaud.ferraris@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_124758_362776_FDB238E3 
X-CRM114-Status: GOOD (  16.81  )
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

On Mon, Mar 28, 2022 at 2:50 AM Caleb Connolly <kc@postmarketos.org> wrote:
>
> Add support for deferred PIN_CONFIG_INPUT_ENABLE handling.
>
> Signed-off-by: Caleb Connolly <kc@postmarketos.org>
> ---
>  drivers/gpio/gpio-rockchip.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index bcf5214e3586..e342a6dc4c6c 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -760,6 +760,11 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>                                 dev_warn(dev, "setting output pin %u to %u failed\n", cfg->pin,
>                                          cfg->arg);
>                         break;
> +               case PIN_CONFIG_INPUT_ENABLE:
> +                       ret = rockchip_gpio_direction_input(&bank->gpio_chip, cfg->pin);
> +                       if (ret)
> +                               dev_warn(dev, "setting input pin %u failed\n", cfg->pin);
> +                       break;
>                 default:
>                         dev_warn(dev, "unknown deferred config param %d\n", cfg->param);
>                         break;
> --
> 2.35.1
>

Does this depend on patches 1 & 2 or does patch 4 depend on this one? If so:

Acked-by: Bartosz Golaszewski <brgl@bgdev.pl>

Otherwise I can take it through the GPIO tree.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
