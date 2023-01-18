Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F34F5C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 14:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FDR5Z3pFRgfs7ln8PCUkNvgPX2EQtAudcJjqPZwrtI=; b=LGIjrRkRWpAB85
	umKTggmc2op/Z7NONlA+5zpDfCm7R5+oHATWffBUBwEqVu9s5Y+UjbCsHSNYBSrOZO2iik9NwuuP9
	sn+j0dMNSVY2tyAe2SP57CBeFoJIb8zvM8OzyyWZMCn+AKp7Po3T52GJ9rIpTfZMHXqh/sWWkvhC9
	hroPtFCWEyuofCOQLT6fn8sVWZuQytLTqm7ArwIiyc8R1J46eWOmGPUQ3gchvoDtrHOXWnQ1nTqvI
	UkUPzQMEF5MHn+UYEyh+g934Za81NQ/ScyEkZ51n+wNjcQC59Opa3GI6bWgGrkc2KyTZScKISOvbC
	Om0f/XZ/HySX7Rf3MWgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI9D3-001Hvi-8h; Wed, 18 Jan 2023 14:14:37 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI9D0-001HuJ-TX
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 14:14:36 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id l125so16478329vsc.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 06:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Yplg9S1JhovxIGfaL6Q6VaDnzZMitHU7C7LFyjrBCuM=;
        b=mGOjDpy3dF95PKoyeVvrLC5FeH+PXh22DunupbTN82XxucIOoB9IfnAGgZWsA0bugk
         ghgVxgGaqxmR1Suz1X/FfKWLNnkW3ZVoxc9K0HMrtBSkHdXD8DVM7N1sJaasijyFGpnR
         L/1aqNTzRZrH3sdOcPKK1ofJQarqe9W68GcIg7QcyjwAzPuDPqSirGWp7t9mK1jTsa0i
         WSgvuq7Y96gAC3j8N+B+YTGhhCGZDenxGIp5XgUgDA6CxWmjlDdcPunypgl1EpnbTA1F
         yuNk7YZRFtrL0oFiPy1YRkh6kQwTk/WoF30VksoF4gQ7irgW1QWeXKd5LsQO9ulEYE34
         1QKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yplg9S1JhovxIGfaL6Q6VaDnzZMitHU7C7LFyjrBCuM=;
        b=ls9TSur5H5i+HnEZz+EULhFJeU6ERekxSssbZGF2AG1//Es19RUzoCSRjBkiyk6QCY
         5CS4mLl7WJMDWgQbL2wkENbz+0rRVDYhSAPdH17ejlfGj6PUHHqcIM5fw9zX73yR8O9J
         wX37pfdRkS0OEhaD8Dh9dAkORGj3pxBYfmJZYxzWXa/luNfhdZTCjO59BiQk0vgtAPnr
         8TASwvipQAi9J2gEm2o7734NpOKeDpxfoFNVCdPQjflHzQmYdtia5ZBQwJDkXVtLUiYf
         08VRczUmD4fUunfEvgDopeFYGC1x3J2EqQeKLZMOaFE1BU63MkD/oRz5nvr7e+wsYz3u
         zEpw==
X-Gm-Message-State: AFqh2kpinR/pJq742SRGUkTcRm19I9L0RTwCLwONRvDCnffpy/aeRS9e
	yFzxeS30RX/j1C5hCAo5hhv74NP/4Dcs+416qhQwlA==
X-Google-Smtp-Source: AMrXdXsOVriRa6oQhyPR0ZpbJLJH4CUKQQvaM0V7d5YeQLv6Q29OqDl6sUg6xmxGgO5mtPbL0SJUElCeOqG5CnHMkcw=
X-Received: by 2002:a05:6102:3e08:b0:3c5:1ac1:bf38 with SMTP id
 j8-20020a0561023e0800b003c51ac1bf38mr1062676vsv.78.1674051271374; Wed, 18 Jan
 2023 06:14:31 -0800 (PST)
MIME-Version: 1.0
References: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com> <1510c02c-f640-9924-e42e-fa34e28a580f@gmail.com>
In-Reply-To: <1510c02c-f640-9924-e42e-fa34e28a580f@gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 18 Jan 2023 15:14:20 +0100
Message-ID: <CAMRc=Me2yj6A5ZvLXbWn8H0yuL5pUqOJ7B7kGaOyN=jLXGJEGQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] gpio: gpio-rockchip: add compatible string per SoC
To: Johan Jonker <jbx6244@gmail.com>
Cc: linus.walleij@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org, 
	philipp.tomsich@vrull.eu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_061434_968942_B8A2EE9A 
X-CRM114-Status: GOOD (  17.56  )
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

On Wed, Jan 18, 2023 at 1:14 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Currently all Rockchip gpio nodes have the same compatible.
> Replace all the compatibles in gpio nodes to be able to
> give them a consistent ID independent from probe order or alias.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>
> For now only add new compatibles.
> No changes to rockchip_gpio_probe() function yet.
> ---
>  drivers/gpio/gpio-rockchip.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index e5de15a2a..493207de1 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -790,7 +790,22 @@ static int rockchip_gpio_remove(struct platform_device *pdev)
>
>  static const struct of_device_id rockchip_gpio_match[] = {
>         { .compatible = "rockchip,gpio-bank", },
> +       { .compatible = "rockchip,px30-gpio-bank", },
> +       { .compatible = "rockchip,rk3036-gpio-bank", },
> +       { .compatible = "rockchip,rk3066a-gpio-bank", },
> +       { .compatible = "rockchip,rk3128-gpio-bank", },
> +       { .compatible = "rockchip,rk3188-gpio-bank", },
>         { .compatible = "rockchip,rk3188-gpio-bank0" },
> +       { .compatible = "rockchip,rk3228-gpio-bank", },
> +       { .compatible = "rockchip,rk3288-gpio-bank", },
> +       { .compatible = "rockchip,rk3328-gpio-bank", },
> +       { .compatible = "rockchip,rk3308-gpio-bank", },
> +       { .compatible = "rockchip,rk3368-gpio-bank", },
> +       { .compatible = "rockchip,rk3399-gpio-bank", },
> +       { .compatible = "rockchip,rk3568-gpio-bank", },
> +       { .compatible = "rockchip,rk3588-gpio-bank", },
> +       { .compatible = "rockchip,rv1108-gpio-bank", },
> +       { .compatible = "rockchip,rv1126-gpio-bank", },
>         { },
>  };
>
> --
> 2.20.1
>

If they don't have any additional data associated with each compatible
- why not just use "rockchip,gpio-bank" as the fallback in DT?

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
