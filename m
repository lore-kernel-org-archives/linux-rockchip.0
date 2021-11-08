Return-Path: <SRS0=7z7M=P3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 11:09:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76C6661352
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 11:09:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 76C6661352
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWixnhhggJoAgAMmgYIzJDyYpJt1n0QHnieG4Kii/cI=; b=NJx3rCLJC9oR/5
	cUTDG8gyo7/Dv1KVA5ojd44l5MnAKrT+zdEyKxcfh5uf6Cafa+gC9jRf5cJG2rePmRrg+FhDJXMNf
	QfcBNZ8LWuFhs+WaHXlCc2SMFvli1XCYtX+JqRCmKQnw/8HjwvxVm+b3Ow3PlFYQMOClNboLmNQmq
	MZBA1cg7E6X17lHp5J/qegteu2Ft/htWs6u+axrlwnowMo6dzuhJx7In9CV0tjaE05f2Z3/ETEocq
	X40HyrCLExI7tf+UC94+94B4hbWMknsF/8Xd4Gg5YWn40ONKtGPmyhmNiHIBI+2z4pt0Uyb66T65L
	n/3KdnVcwi3EWgyJ37nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk2Wg-00GEgZ-6Z; Mon, 08 Nov 2021 11:09:22 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk2WS-00GEe3-Vg; Mon, 08 Nov 2021 11:09:10 +0000
Received: (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 8348424000F;
 Mon,  8 Nov 2021 11:09:05 +0000 (UTC)
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
Subject: Re: [PATCH v1 12/19] pinctrl: armada-37xx: Switch to use
 devm_kasprintf_strarray()
In-Reply-To: <20211105124242.27288-12-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-12-andriy.shevchenko@linux.intel.com>
Date: Mon, 08 Nov 2021 12:09:05 +0100
Message-ID: <87tugmsy3y.fsf@BL-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_030909_186345_B9200369 
X-CRM114-Status: GOOD (  17.58  )
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

> Since we have a generic helper, switch the module to use it.
>
> As a side effect, add check for the memory allocation failures and
> cleanup it either in error case or when driver is unloading.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Thanks,

Gregory

> ---
>  drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> index f48745c43419..08cad14042e2 100644
> --- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> +++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
> @@ -23,6 +23,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/slab.h>
> +#include <linux/string_helpers.h>
>  
>  #include "../pinctrl-utils.h"
>  
> @@ -951,6 +952,7 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
>  	struct pinctrl_desc *ctrldesc = &info->pctl;
>  	struct pinctrl_pin_desc *pindesc, *pdesc;
>  	struct device *dev = &pdev->dev;
> +	char **pin_names;
>  	int pin, ret;
>  
>  	info->groups = pin_data->groups;
> @@ -969,11 +971,14 @@ static int armada_37xx_pinctrl_register(struct platform_device *pdev,
>  	ctrldesc->pins = pindesc;
>  	ctrldesc->npins = pin_data->nr_pins;
>  
> +	pin_names = devm_kasprintf_strarray(dev, pin_data->name, pin_data->nr_pins);
> +	if (IS_ERR(pin_names))
> +		return PTR_ERR(pin_names);
> +
>  	pdesc = pindesc;
>  	for (pin = 0; pin < pin_data->nr_pins; pin++) {
>  		pdesc->number = pin;
> -		pdesc->name = kasprintf(GFP_KERNEL, "%s-%d",
> -					pin_data->name, pin);
> +		pdesc->name = pin_names[pin];
>  		pdesc++;
>  	}
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
