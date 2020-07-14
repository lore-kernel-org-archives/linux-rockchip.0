From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] pinctrl: rockchip: Replace HTTP links with HTTPS ones
Date: Tue, 14 Jul 2020 20:27:10 +0200
Message-ID: <3739981.ORC64qsr6C@phil>
References: <20200713183541.36963-1-grandmaster@al2klimov.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200713183541.36963-1-grandmaster@al2klimov.de>
Sender: linux-gpio-owner@vger.kernel.org
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: linus.walleij@linaro.org, linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 13. Juli 2020, 20:35:41 CEST schrieb Alexander A. Klimov:
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
> 
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>             If both the HTTP and HTTPS versions
>             return 200 OK and serve the same content:
>               Replace HTTP with HTTPS.
> 
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>

At least from my cursory glance the www.samsung.com below
also behaves the same with both http and https .

In general ... I don't really believe anybody would use the rockchip
pinctrl-driver to access either Linaro nor Samsung, but I don't care that
much so ;-)

Acked-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Continuing my work started at 93431e0607e5.
>  See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
>  (Actually letting a shell for loop submit all this stuff for me.)
> 
>  If there are any URLs to be removed completely or at least not just HTTPSified:
>  Just clearly say so and I'll *undo my change*.
>  See also: https://lkml.org/lkml/2020/6/27/64
> 
>  If there are any valid, but yet not changed URLs:
>  See: https://lkml.org/lkml/2020/6/26/837
> 
>  If you apply the patch, please let me know.
> 
>  Sorry again to all maintainers who complained about subject lines.
>  Now I realized that you want an actually perfect prefixes,
>  not just subsystem ones.
>  I tried my best...
>  And yes, *I could* (at least half-)automate it.
>  Impossible is nothing! :)
> 
> 
>  drivers/pinctrl/pinctrl-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index c07324d1f265..a94b54636da9 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -9,7 +9,7 @@
>   * Copyright (c) 2012 Samsung Electronics Co., Ltd.
>   *		http://www.samsung.com
>   * Copyright (c) 2012 Linaro Ltd
> - *		http://www.linaro.org
> + *		https://www.linaro.org
>   *
>   * and pinctrl-at91:
>   * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
