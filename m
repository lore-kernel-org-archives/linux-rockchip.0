Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D00A1C678D4
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Mar 2023 03:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8bh+izf2JhxSxBhbvBj/Gkyf8zxh49mc4jag8BA2+k=; b=aWlpjCacndU/nH
	+ALecV7UJrO0L+i444flbhD2cnemsS1CI4gWY4sallI7m+1XeNKQC3c1JOrT9LhH6biw2MQsiAbj9
	iAr0pbz/9vgsOoJsrrASLxlfnspPGXARBzZmNHoqS1esgTUZOV8C0CDR64fGyARZnnegtQY++i/6r
	+icMVmNaE6W8E/1juQ8DKn/LZMgqKElDEGUoHTdJE43u3SqNdIy7gD3b7G+D66eQwnyf9whjgHi5Y
	KvqxE5ovmZjvojuGcx3UrN9CxR0N1JBS8BdXaGlJnSrdjUxxhhJUCQGWk1st2Ap9NEgYeBSoepUtH
	oo2UeJvWGNa9/CqdIPcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXZe6-000gKe-4O; Thu, 02 Mar 2023 03:30:18 +0000
Received: from mail-m11874.qiye.163.com ([115.236.118.74])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXZdu-000gIQ-I2; Thu, 02 Mar 2023 03:30:08 +0000
Received: from [172.16.12.93] (unknown [58.22.7.114])
	by mail-m11874.qiye.163.com (Hmail) with ESMTPA id 946593C0196;
	Thu,  2 Mar 2023 11:29:45 +0800 (CST)
Message-ID: <b86a53d7-778e-5ec7-cc5b-8e741af10986@rock-chips.com>
Date: Thu, 2 Mar 2023 11:29:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 3/8] gpio: gpio-rockchip: parse gpio-ranges for bank id
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, sjg@chromium.org, philipp.tomsich@vrull.eu,
 john@metanate.com, quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <890be9a0-8e82-a8f4-bc15-d5d1597343c2@gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <890be9a0-8e82-a8f4-bc15-d5d1597343c2@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0JDTlYfTktCTExMSR1PHktVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLT0tDVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTo6ASo*Aj0QPkIoOQ0SLjAW
	FglPC1ZVSlVKTUxMTElMTENNTk9DVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIQkhONwY+
X-HM-Tid: 0a86a05e64182eb0kusn946593c0196
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_193006_800579_FE4715A9 
X-CRM114-Status: GOOD (  20.64  )
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

Hi Johan,

On 2023/1/21 19:08, Johan Jonker wrote:
> Parse the gpio-ranges property in Rockchip gpio nodes to be
> independent from aliases and probe order for our bank id.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Looks good to me.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>


Thanks,
- Kever
> ---
>   drivers/gpio/gpio-rockchip.c | 24 ++++++++++++++++++------
>   1 file changed, 18 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index e5de15a2a..df74b71aa 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -702,24 +702,36 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
>   	struct device_node *np = dev->of_node;
> -	struct device_node *pctlnp = of_get_parent(np);
> +	struct device_node *pctlnp;
>   	struct pinctrl_dev *pctldev = NULL;
>   	struct rockchip_pin_bank *bank = NULL;
>   	struct rockchip_pin_deferred *cfg;
> +	struct of_phandle_args args;
>   	static int gpio;
>   	int id, ret;
>
> -	if (!np || !pctlnp)
> +	if (!np)
> +		return -ENODEV;
> +
> +	ret = of_parse_phandle_with_fixed_args(np, "gpio-ranges", 3, 0, &args);
> +	if (ret == 0) {
> +		pctlnp = args.np;
> +		id = args.args[1] / 32;
> +	} else {
> +		pctlnp = of_get_parent(np);
> +		id = of_alias_get_id(np, "gpio");
> +		if (id < 0)
> +			id = gpio++;
> +	}
> +
> +	if (!pctlnp)
>   		return -ENODEV;
>
>   	pctldev = of_pinctrl_get(pctlnp);
> +	of_node_put(pctlnp);
>   	if (!pctldev)
>   		return -EPROBE_DEFER;
>
> -	id = of_alias_get_id(np, "gpio");
> -	if (id < 0)
> -		id = gpio++;
> -
>   	bank = rockchip_gpio_find_bank(pctldev, id);
>   	if (!bank)
>   		return -EINVAL;
> --
> 2.20.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
