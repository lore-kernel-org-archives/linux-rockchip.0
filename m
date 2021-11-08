Return-Path: <SRS0=7z7M=P3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BAF9C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 10:56:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2400360230
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 10:56:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2400360230
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvB1f8GQBord9krdVmOMm43nvgrtlHG7riMn55Vh8B0=; b=0wOZqHyK4OJmzG
	ZG+xwkUO1if5reFA3XaZ6iNlgTK3sPitBSTSBhoOOCaJM9B62Q65wgYAwI5/zIeqWwOtSBISSE8Vs
	GrruKiWDn2WjwZcoQA2ZY37N07dklXHaldrXCs1EPJwJFadI2jx7DHr6U1bpcwafqJtZQ8a+P3Uxp
	A8IxGbS3zaT9WkaMVAdYFj0eGYoXDK9g4w0FFPrddLNm4FV/NVReYM5KbvPunIy05J+pgSxNiT8kZ
	JFyxOEJDLP0bIRcoDazhZddrFpuftrGVSa8knTbsGeFRKiM3O9hn7MnOUZsV7pQzN9oNN2DrUODFt
	zmKwRsMkjJUHjrQujwvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk2KY-00GC3u-1m; Mon, 08 Nov 2021 10:56:50 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk2KL-00GC0h-CD; Mon, 08 Nov 2021 10:56:38 +0000
Received: (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 4605D24000B;
 Mon,  8 Nov 2021 10:56:34 +0000 (UTC)
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
Subject: Re: [PATCH v1 10/19] pinctrl: armada-37xx: Make use of the
 devm_platform_ioremap_resource()
In-Reply-To: <20211105124242.27288-10-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-10-andriy.shevchenko@linux.intel.com>
Date: Mon, 08 Nov 2021 11:56:33 +0100
Message-ID: <87zgqesyou.fsf@BL-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_025637_575914_D843C467 
X-CRM114-Status: GOOD (  14.97  )
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

> Use the devm_platform_ioremap_resource() helper instead of
> calling of_address_to_resource() and devm_ioremap_resource()
> separately.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Thanks,

Gregory

> ---
>  drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> index 37f92dc54d7a..282b3fac3bec 100644
> --- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> +++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> @@ -727,7 +727,6 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
>  	struct gpio_irq_chip *girq = &gc->irq;
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np;
> -	struct resource res;
>  	int ret = -ENODEV, i, nr_irq_parent;
>  
>  	/* Check if we have at least one gpio-controller child node */
> @@ -750,12 +749,7 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
>  		return 0;
>  	}
>  
> -	if (of_address_to_resource(dev->of_node, 1, &res)) {
> -		dev_err(dev, "cannot find IO resource\n");
> -		return -ENOENT;
> -	}
> -
> -	info->base = devm_ioremap_resource(dev, &res);
> +	info->base = devm_platform_ioremap_resource(pdev, 1);
>  	if (IS_ERR(info->base))
>  		return PTR_ERR(info->base);
>  
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
