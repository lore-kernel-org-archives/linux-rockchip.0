Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BC89C63797
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 09:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Zz9i3+Y+onRKty+qKPE7t/5lfyl0a46+5p8mdjdy2Y=; b=RnHsNMtAvUOkO8
	unU2jpV+DLowBz+eiiMB9Ku0YtrtBLg8nXDXUNaEClxsba1Kj6B+s7du7nd6IupAn2A4CLNPB9q5L
	1ySCiSFR6pELL5bCmmka+YWGOPqjHY/jvAQxOWKYrhp/N0A0PIru71FtoMQRFxHAYPonRcgYR64Di
	9UZGdNeWqXPtQnP0pw3J9qAHa0VfF//2FR80CfBxZifm7LejQmi6MjQSzLhmTPy8friOw/SRRsiRx
	cxdyDxN6x9S4zHrb63Ndnp28KurdT5hCDfdcRXq6KJdDv8i66sa7zV8plNBcsXynU64WFELkHPgwY
	A3lfdwBftsz45iRcW37w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHLsf-009NYb-ED; Mon, 16 Jan 2023 09:34:17 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHLsZ-009NVA-RZ
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 09:34:15 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id n190so24560384vsc.11
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Jan 2023 01:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XZOuVys9mIzGnHTVfzNN5gjowcf0f3FatVf154JV6kI=;
        b=CAgnq0I7BlFfkCghCCqc3RKNz/Q7K2CoNwOb30lf57/hbdxKULjkM/TM+wdhkP6w9R
         1giTcgyCxnZsErQxTyJ1UzD3mKoA0jlupISi36EvixNBTjRDQlrml7FYcrMyLzjZn9UL
         oYmZLmTCrV3kKVdadxU6/cJaq93U+EDgR3I9OQwGgc+OmnprWH+PiQMDM0Q4ZKIv/XK5
         WTY8PirgFG9M+Dsj3mnxHtwVD5o3ElndxTNWnIZrJtFvkE+A+GhehBIKX4g1W38SOWTg
         AhFHCUzpL9QR4g8h1A7XjWmwA5Yk2vH9TVcKwy71QvLvBdWHu0XrwsNWMIh8NhRFG3nV
         pdzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZOuVys9mIzGnHTVfzNN5gjowcf0f3FatVf154JV6kI=;
        b=Z4Qv/BMVeepne3SsI4hfyeHUXjvy/fD1CF517vCRuvrN9k3S60TnV6RFHHFILLHcc1
         E65KqQ/kbUCOtKQCbp0GO7R1VCUkQ+kFjMkJmgD/jwsEzmutoeLNM/jaftokG4M9WJwm
         PdugNJIW5URrf3e077OALOX5blo1eczTf+VQpDHt79IpAkkco+oBYtzK/ogwhf64XVZV
         jQB8qc5zxWA0oiAlGeEiozqMOHZwwvDMTliMyride+sQdQrzXXEmB4b41Eg7onVSN4hx
         41FfgcjgaBql/CbadEZxk7ZZrOpNeIWsSixgqzLfy9wmVLRd58fbV9sfPX2IEsICRgFo
         X6Fg==
X-Gm-Message-State: AFqh2krhmXCjmq95c0HSYj1rEIp0nGeO+JtXgLbaBvhg7YP6rzbLEDpE
	APC/dvO90crC3dNam3tPTiKmk2ouyYc3qmKnb7lrPA==
X-Google-Smtp-Source: AMrXdXupP3qQ3MR8Xhcjf19nZo0r5SdZGW1Fyn0PeSZXrUauTJQF3PKLBZ56aau/2xm/B0FrvP5coVOd488pke6eeic=
X-Received: by 2002:a67:f899:0:b0:3d3:d90c:5ef2 with SMTP id
 h25-20020a67f899000000b003d3d90c5ef2mr414465vso.17.1673861649780; Mon, 16 Jan
 2023 01:34:09 -0800 (PST)
MIME-Version: 1.0
References: <20230112134653.59268-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20230112134653.59268-1-andriy.shevchenko@linux.intel.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 16 Jan 2023 10:33:59 +0100
Message-ID: <CAMRc=MeFmZWnCKxT7QJv2dmSO-OKLCp60NwP-11MhvKRw1whgQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] gpio: rockchip: Do not mention legacy API in the code
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_013411_920685_36436C4E 
X-CRM114-Status: GOOD (  15.90  )
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

On Thu, Jan 12, 2023 at 2:46 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> Replace mentioning of legacy API by the latest one.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 200e43a6f4b4..e5de15a2ab9a 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -299,7 +299,7 @@ static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
>  }
>
>  /*
> - * gpiolib gpio_to_irq callback function. Creates a mapping between a GPIO pin
> + * gpiod_to_irq() callback function. Creates a mapping between a GPIO pin
>   * and a virtual IRQ, if not already present.
>   */
>  static int rockchip_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
> --
> 2.39.0
>

Applied, thanks!

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
