Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B0EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 11:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xg6fWrCPW5Cvj/9RVvJcThgJYr7irGevpBgt7drMQ+I=; b=k19uUFyhseikzA
	PPFwnq53YGEFoT+Z7JYSsDU2WbCjQsEs2txXzxLX0vuJL3I2btbb9rtRXfdds8N8FRo87SksA6YWW
	o8PV/3pX6XcVcqjrvC6omRlACZgfHscFlkvdhRsUA6/HFdpaJ0HojtiGoQsVaqqNiSuXzNCVHLw4B
	UQzIP2vPTFmNUoEeJHXqlWZHLe42YVwcqXE8cUUgppH98VXgd+kZ6D0N3Woxfcrfvvf5X/PzJZbVg
	IWDa+zHE5f3ojl4Zbg9UnZ0XdslkMReU+U9gS8vkOGSvaPZ/1k6f5/JsXdsGAbvODfZkqDYXewzFO
	Pf4Duf9GcpBLOLyNDFhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPjox-006EyV-C7; Thu, 03 Mar 2022 11:40:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPjou-006ExG-IE
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 11:40:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nPjos-0007nY-N4; Thu, 03 Mar 2022 12:40:30 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: linus.walleij@linaro.org, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 2/2] gpio: rockchip: get pinctrl node from 'gpio-ranges'
 property
Date: Thu, 03 Mar 2022 12:40:30 +0100
Message-ID: <2004737.KQk8vJUODO@diego>
In-Reply-To: <20220303062211.1378883-3-jay.xu@rock-chips.com>
References: <20220303062211.1378883-1-jay.xu@rock-chips.com>
 <20220303062211.1378883-3-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_034032_628380_95D76EA3 
X-CRM114-Status: GOOD (  25.06  )
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

Am Donnerstag, 3. M=E4rz 2022, 07:22:11 CET schrieb Jianqun Xu:
> The dt nodes for rockchip soc designes as
> =

> 	pinctrl: pinctrl {
> 		gpio {
> 			gpio-ranges =3D <&pinctrl xxx>;
> 		};
> 	};
> =

> Currently, we get the pinctrl dt node from parent of gpio, this patch
> try to get pinctrl dt node from 'gpio-ranges' property.
> =

> After this patch, the dt nodes possible to be
> =

> 	gpio {
> 		gpio-ranges =3D <&pinctrl xxx>;
> 	};
> =

> 	pinctrl: pinctrl {
> =

> 	};
> =

> then the gpio driver could register as platform device itself, but not
> populate from pinctrl driver.

The change looks interesting, as it would solve that long-standing
design-issue I "created" back in 2013 ;-) .

Though you need to keep some things in mind:

(1) Such a change should be reflected in the devicetree binding
    as it involves a different form of nodes and introduces.

    Looking at the binding description, using gpio-ranges to map
    to specific pinctrl pins really seems to be a valid use for this.


(2) Keep things backwards compatible.
    Old devicetrees should stay working with new kernel versions

    A common pattern is to try the new approach and if that fails
    try the "deprecated" method, which should be nicely doable
    when looking at the code change below.


Heiko

> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/gpio/gpio-rockchip.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 1da0324445cc..46c54dff92db 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -690,6 +690,9 @@ rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, =
int id)
>  	int i, found =3D 0;
>  =

>  	info =3D pinctrl_dev_get_drvdata(pctldev);
> +	if (!info)
> +		return NULL;
> +
>  	bank =3D info->ctrl->pin_banks;
>  	for (i =3D 0; i < info->ctrl->nr_banks; i++, bank++) {
>  		if (bank->bank_num =3D=3D id) {
> @@ -705,15 +708,16 @@ static int rockchip_gpio_probe(struct platform_devi=
ce *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
>  	struct device_node *np =3D dev->of_node;
> -	struct device_node *pctlnp =3D of_get_parent(np);
> +	struct device_node *pctlnp =3D NULL;
>  	struct pinctrl_dev *pctldev =3D NULL;
>  	struct rockchip_pin_bank *bank =3D NULL;
>  	struct rockchip_pin_output_deferred *cfg;
>  	static int gpio;
>  	int id, ret;
>  =

> -	if (!np || !pctlnp)
> -		return -ENODEV;
> +	pctlnp =3D of_parse_phandle(np, "gpio-ranges", 0);
> +	if (!pctlnp)
> +		pctlnp =3D of_get_parent(np);
>  =

>  	pctldev =3D of_pinctrl_get(pctlnp);
>  	if (!pctldev)
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
