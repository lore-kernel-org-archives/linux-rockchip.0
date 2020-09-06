Return-Path: <SRS0=igfw=CP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A6DDC43461
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2020 10:20:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC75620738
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2020 10:20:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="j+W9G6oq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DC75620738
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OyhSsjIc87tdoGaVezlBI9kLkkowe8W6Phhi8fmNPmo=; b=j+W9G6oqiisOF5CDfnI/8REzc
	8LtqFRzoe+oVuy7xXEdxRaLkvC4nxfnwTMdRM3PXnndeWue3Q4/DpSb4aVIjfdLTaox/CkL+lDGUb
	XW90amnVPkBPaBp3Wca9WVq/h9KZ9y506jYsjSNddK7Ai2yQtPqNMsiahCIR+gFQED4Ioc5vBj1tH
	gYSWW0yiTAnKXO0XXDlDfE+W5oVX053i7ElAXszaYD9bdcpsTQgsoPBhE8j02MTFGZmrzPk5s7iBf
	oHwIFRG3b1o6uSuOtAmzW2korqpFiXvfi0XK/zvpLUeotq0p5NJ/SAOa4eMWguMz7FnDO7ci/svp7
	gQiA2Skvg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kErmp-0000GL-TO; Sun, 06 Sep 2020 10:20:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kErmo-0000Fw-Ae
 for linux-rockchip@lists.infradead.org; Sun, 06 Sep 2020 10:20:39 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kErmi-0004EO-0Z; Sun, 06 Sep 2020 12:20:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 6/6] pinctrl: rockchip: populate platform device for
 rockchip gpio
Date: Sun, 06 Sep 2020 12:20:31 +0200
Message-ID: <76163126.riIkUvEO9g@diego>
In-Reply-To: <20200831085021.7288-1-jay.xu@rock-chips.com>
References: <20200831084753.7115-1-jay.xu@rock-chips.com>
 <20200831085021.7288-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200906_062038_475422_B4230724 
X-CRM114-Status: GOOD (  19.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jianqun,

Am Montag, 31. August 2020, 10:50:21 CEST schrieb Jianqun Xu:
> Register both gpio driver and device as part of driver model, so that
> the '-gpio'/'-gpios' dependency in dts can be correctly handled by
> of_devlink/of_fwlink.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

[...]

> -static int rockchip_gpiolib_unregister(struct platform_device *pdev,
> -						struct rockchip_pinctrl *info)
> -{
> -	struct rockchip_pin_ctrl *ctrl = info->ctrl;
> -	struct rockchip_pin_bank *bank = ctrl->pin_banks;
> -	int i;
> +		pctldev = info->pctl_dev;
> +		if (!pctldev)
> +			return -ENODEV;
>  
> -	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
> -		if (!bank->valid)
> -			continue;
> -		gpiochip_remove(&bank->gpio_chip);
> +		ret = gpiochip_add_pin_range(gc, dev_name(pctldev->dev), 0, gc->base, gc->ngpio);
> +		if (ret) {
> +			dev_err(&pdev->dev, "Failed to add pin range\n");
> +			gpiochip_remove(&bank->gpio_chip);
> +			return ret;
> +		}
>  	}
>  
>  	return 0;
> @@ -3752,6 +3734,46 @@ static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
>  static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
>  			 rockchip_pinctrl_resume);
>  
> +static int rockchip_gpio_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	struct device *parent = pdev->dev.parent;
> +	struct rockchip_pinctrl *info = dev_get_drvdata(parent);
> +	struct rockchip_pin_ctrl *ctrl = info ? (info->ctrl) : NULL;
> +	struct rockchip_pin_bank *bank;
> +	int ret, i;
> +
> +	if (!info || !ctrl)
> +		return -EINVAL;
> +
> +	if (!of_find_property(np, "gpio-controller", NULL))
> +		return -ENODEV;
> +
> +	bank = ctrl->pin_banks;
> +	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
> +		if (!strcmp(bank->name, np->name)) {
> +			bank->of_node = np;
> +
> +			if (!rockchip_get_bank_data(bank, info))
> +				bank->valid = true;
> +
> +			break;
> +		}
> +	}
> +
> +	bank->of_node = pdev->dev.of_node;
> +
> +	ret = rockchip_gpiolib_register(pdev, bank);
> +	if (ret)
> +		return ret;
> +
> +	ret = rockchip_interrupts_register(pdev, bank);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
>  static int rockchip_pinctrl_probe(struct platform_device *pdev)
>  {
>  	struct rockchip_pinctrl *info;
> @@ -3823,18 +3845,20 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
>  			return PTR_ERR(info->regmap_pmu);
>  	}
>  
> -	ret = rockchip_gpiolib_register(pdev, info);
> -	if (ret)
> -		return ret;
> -
>  	ret = rockchip_pinctrl_register(pdev, info);
>  	if (ret) {
> -		rockchip_gpiolib_unregister(pdev, info);
> +		dev_err(&pdev->dev, "failed to register pinctrl device\n");
>  		return ret;
>  	}
>  
>  	platform_set_drvdata(pdev, info);
>  
> +	ret = of_platform_populate(np, rockchip_bank_match, NULL, dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to register gpio device\n");
> +		return ret;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -4254,6 +4278,14 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
>  	{},
>  };
>  
> +static struct platform_driver rockchip_gpio_driver = {
> +	.probe		= rockchip_gpio_probe,
> +	.driver = {
> +		.name	= "rockchip-gpio",
> +		.of_match_table = rockchip_bank_match,
> +	},
> +};
> +
>  static struct platform_driver rockchip_pinctrl_driver = {
>  	.probe		= rockchip_pinctrl_probe,
>  	.driver = {
> @@ -4265,7 +4297,9 @@ static struct platform_driver rockchip_pinctrl_driver = {
>  
>  static int __init rockchip_pinctrl_drv_register(void)
>  {
> -	return platform_driver_register(&rockchip_pinctrl_driver);
> +	platform_driver_register(&rockchip_pinctrl_driver);
> +
> +	return platform_driver_register(&rockchip_gpio_driver);
>  }
>  postcore_initcall(rockchip_pinctrl_drv_register);

This also seems to miss the whole unloading of module paths?
I'd expect a gpiochip_remove etc in some _remove function and
of course a platform_driver_unregister.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
