Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B814C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 11:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bkE3/eUwHCG9MxB+bLO6oIuBA92mr/cNnq2ZkWAfpg=; b=h0N2+0cjGSoIwQ
	kgfYzk0MpcYbUa1BtULWFRetAAahycS3rH/V0+DJF35yTPCACYa2v1J0m/px4a/O1ztGpIlnFTdCx
	nndBGW2LxmRoueFpJ/MxG0E2kvPM5vBibMbLpXlJrlYIsP6O5OU1LfHSBwfjHZSZ8+oYxXbsljM4t
	jneuaVb9or/d1AaD6+xD19nT66/ajQWiYUK6+H23iyerF2R0lNxAo6L1TSce8uxmco8IYUiFSLIOC
	482rxmytpZIIiqvgmCaBi+NRIbm7DNMperpszOx7okEPIIttNqzJlJ2Genzi6+5BvT4V+OJ1lXSbO
	BAGQ3MkaLGLM7B8uoIHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPjd4-006Cvw-Ra; Thu, 03 Mar 2022 11:28:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPjd2-006CvW-7S
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 11:28:17 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nPjcx-0007jj-Gf; Thu, 03 Mar 2022 12:28:11 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: linus.walleij@linaro.org, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 1/2] gpio: rockchip: make gpio work without cru module
Date: Thu, 03 Mar 2022 12:28:10 +0100
Message-ID: <8576445.5iEe77X0Xf@diego>
In-Reply-To: <20220303062211.1378883-2-jay.xu@rock-chips.com>
References: <20220303062211.1378883-1-jay.xu@rock-chips.com>
 <20220303062211.1378883-2-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_032816_294309_DC8069E7 
X-CRM114-Status: GOOD (  20.17  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jianqun,

Am Donnerstag, 3. M=E4rz 2022, 07:22:10 CET schrieb Jianqun Xu:
> In some case the system may has no builtin cru module, the gpio driver
> will fail to get periph clock and debounce clock.

can you elaborate a bit on what these cases are?

> On rockchip SoCs, the pclk and dbg clk are default to be enabled and
> ungated, the gpio possible to work without cru module.
> =

> This patch makes gpio work fine without cru module.
> =

> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index a4c4e4584f5b..1da0324445cc 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -195,6 +195,9 @@ static int rockchip_gpio_set_debounce(struct gpio_chi=
p *gc,
>  	unsigned int cur_div_reg;
>  	u64 div;
>  =

> +	if (!bank->db_clk)
> +		return -ENOENT;
> +
>  	if (bank->gpio_type =3D=3D GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
>  		div_debounce_support =3D true;
>  		freq =3D clk_get_rate(bank->db_clk);
> @@ -654,8 +657,10 @@ static int rockchip_get_bank_data(struct rockchip_pi=
n_bank *bank)
>  		return -EINVAL;
>  =

>  	bank->clk =3D of_clk_get(bank->of_node, 0);
> -	if (IS_ERR(bank->clk))
> -		return PTR_ERR(bank->clk);
> +	if (IS_ERR(bank->clk)) {
> +		bank->clk =3D NULL;
> +		dev_warn(bank->dev, "works without clk pm\n");

I'd definitly expect a more sensitive handling here (and below).

I.e. the change right now, simply disables all error handling.
But I do expect a handling difference between:
- clock described in DT, but not available - should fail
- clock not described in DT - can be allowed to go to NULL


Heiko


> +	}
>  =

>  	clk_prepare_enable(bank->clk);
>  	id =3D readl(bank->reg_base + gpio_regs_v2.version_id);
> @@ -666,9 +671,8 @@ static int rockchip_get_bank_data(struct rockchip_pin=
_bank *bank)
>  		bank->gpio_type =3D GPIO_TYPE_V2;
>  		bank->db_clk =3D of_clk_get(bank->of_node, 1);
>  		if (IS_ERR(bank->db_clk)) {
> -			dev_err(bank->dev, "cannot find debounce clk\n");
> -			clk_disable_unprepare(bank->clk);
> -			return -EINVAL;
> +			bank->db_clk =3D NULL;
> +			dev_warn(bank->dev, "works without debounce clk pm\n");
>  		}
>  	} else {
>  		bank->gpio_regs =3D &gpio_regs_v1;
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
