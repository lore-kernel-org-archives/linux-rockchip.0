Return-Path: <SRS0=7z7M=P3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29DCC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 11:00:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 967D661152
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 11:00:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 967D661152
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGVFrPE1ZIKohs3gal7aFaGbP1ZfPwsX6vzJnXPg5LM=; b=HBCE0NAJOKpHDT
	H8SPJbEf+1GE9EVp3Cx3e23KG7RVSuy9XrU5591pdL/UAlCHGhMwabC1GoVZCmxX0EALU5JHOx3xR
	H3T3LI2EH7PY0qBj9SeIClm+DNJowDHcJ8fpjCngz2Rb1RP9QsP68LS0YflszGlHEyQDOyruWGfke
	WkdEEIT7U/ZKxLjs6BwalE5w3y+s/iVpFVc6tiVA9DEVjuF5UTgg9z/ZqgObGGUxVFf8Db7V5knyV
	hYUBoOJSnHKVUZFX6T1kMUupkM2fNFZXimQT+NkCcMDOwr0HMIqI79XyfmZLf2KWxR9eoWLGoXRxI
	8pvTZVYXzeC38ahxyQ2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk2Ng-00GCrT-T4; Mon, 08 Nov 2021 11:00:04 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk2NT-00GCok-Kp; Mon, 08 Nov 2021 10:59:53 +0000
Received: (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 259DD2000D;
 Mon,  8 Nov 2021 10:59:48 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Jianqun Xu <jay.xu@rock-chips.com>, Linus Walleij
 <linus.walleij@linaro.org>, Sai Krishna Potthuri
 <lakshmi.sai.krishna.potthuri@xilinx.com>, Andrew Morton
 <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Patrice Chotard <patrice.chotard@foss.st.com>, Michal
 Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: Re: [PATCH v1 11/19] pinctrl: armada-37xx: Convert to use
 dev_err_probe()
In-Reply-To: <20211105124242.27288-11-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-11-andriy.shevchenko@linux.intel.com>
Date: Mon, 08 Nov 2021 11:59:47 +0100
Message-ID: <87wnlisyjg.fsf@BL-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_025951_840194_C303C3AA 
X-CRM114-Status: GOOD (  15.85  )
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

Hello Andy,

> It's fine to call dev_err_probe() in ->probe() when error code is known.
> Convert the driver to use dev_err_probe().
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Thanks,

Gregory

> ---
>  drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> index 282b3fac3bec..f48745c43419 100644
> --- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> +++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> @@ -736,10 +736,8 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
>  			break;
>  		}
>  	}
> -	if (ret) {
> -		dev_err(dev, "no gpio-controller child node\n");
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(dev, ret, "no gpio-controller child node\n");
>  
>  	nr_irq_parent = of_irq_count(np);
>  	spin_lock_init(&info->irq_lock);
> @@ -996,10 +994,8 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
>  		return ret;
>  
>  	info->pctl_dev = devm_pinctrl_register(dev, ctrldesc, info);
> -	if (IS_ERR(info->pctl_dev)) {
> -		dev_err(dev, "could not register pinctrl driver\n");
> -		return PTR_ERR(info->pctl_dev);
> -	}
> +	if (IS_ERR(info->pctl_dev))
> +		return dev_err_probe(dev, PTR_ERR(info->pctl_dev), "could not register pinctrl driver\n");
>  
>  	return 0;
>  }
> @@ -1135,10 +1131,8 @@ static int __init armada_37xx_pinctrl_probe(struct platform_device *pdev)
>  	info->dev = dev;
>  
>  	regmap = syscon_node_to_regmap(np);
> -	if (IS_ERR(regmap)) {
> -		dev_err(dev, "cannot get regmap\n");
> -		return PTR_ERR(regmap);
> -	}
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(dev, PTR_ERR(regmap), "cannot get regmap\n");
>  	info->regmap = regmap;
>  
>  	info->data = of_device_get_match_data(dev);
> -- 
> 2.33.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
