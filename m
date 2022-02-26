Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA314C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 03:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgrtvCYolU1xPNGqswLYmRkY5vB4wDuym9unLFk6e5A=; b=m1zkAv5jlhd0k5
	WTBJO/tWwsrHq/VxIXTpIFrzGuiFIdmn+su4AyzwzZ2gBrIJhasteeo1bWsVyaUIqShh4CWYIpgsQ
	9sJRp7k6gJ692IASBEg5IDZroHfBlKbySS3pYaFaKahSxhljXEf/AsXhLFMXsTfb1A9NlCf82b8oT
	DXXyn5KLfI/ntnoBlhRNvKdH0ouweR1x9yOfXOwiAvRI0dKxuj0U7uMfILOwZtebwnFfRRcnSlGjU
	D8u5hxzwloOnl9IC9qAPHqDfk+vYfioJ8/apko0B3Nb8gb+7BmXaPRTRUxZxAXpgeTNvE1keAERVX
	rHDsoTzGh6bz8fDllTHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNo9N-007RQt-4U; Sat, 26 Feb 2022 03:53:41 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNo9A-007RQ9-V2; Sat, 26 Feb 2022 03:53:30 +0000
Received: by mail-pf1-x42c.google.com with SMTP id x18so6374035pfh.5;
 Fri, 25 Feb 2022 19:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vJmoCt6l702zpcMF64cddlKfCVb4EMIMMz/PF9SlUG0=;
 b=jVbB7NM5qmaOAyGc/b7uX3CtlGWoI6RhUY2eJe2pKkJhedqWaACnlCfHV5/nEjsf0g
 dTnsOUyKXoh89JNQHcW/t6o03+C4cKjx7V4Stlld+NHbQc6wRQ0nWjLdtB2WidG3TJYS
 kA/SlN8Ow8Cx28NW/nsnPQCQRrM0Z3zb5FjYgDKBfZx2JT+M7FwEW7koFwomTbGh17Bs
 /G8BVVpJbWarh1POxvjcXuSP0/Cjm1YIfb8+W6vXRCdEZgrSneXWXCiqXqMPcub8JlvF
 hZkdWeJg98+YgFZBp6QbFwhmn/9AYJyOOzg1k/DtTnRLoVVBbRzNocUDmqz/v5l81bDq
 qy+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vJmoCt6l702zpcMF64cddlKfCVb4EMIMMz/PF9SlUG0=;
 b=5HLQZgfuYKjvRk8SZGNF6OQ9YJAPVwa1gZVFqU/EX6luQL7K/z45zP7XTbSN/C/VF1
 617I9F3byuQ3epAlOCBEplfIyabCr0pVkxlTb8yQ89BfXl4+vz1275UgB6NHgV7ixJc/
 lFbVzrRTZEl8wK1hHVOQ0oYaNynIQIYKNoYekExqZDkRvDxX4Xsx8dk0rPK3Bsp5aW5p
 JVl/4jpgMLVT96CpctIccDpkR/I00wAim+ZDQ8ljaXjfFCuBhESrQFKUj6/N58Vj/4Tj
 0EYRlz6YmMmmmWmJY/8F+nQF8+Cq48cHLSd+bTRZEfkKNgJtY+ty2J+NC8E1JxAUoJyf
 lb5Q==
X-Gm-Message-State: AOAM531fMRfNY54TVImTGK2fe/iuhL5aOEhGfUfQu5oYmblZes4DVdD9
 jfIAtqczydi5cRL+1/7bYpc=
X-Google-Smtp-Source: ABdhPJzNJbV7BZADQSVXKQ0yTFfhIadVZyM8Qtug8xM9f55ABR9jKWBNka5tLL6pqlT9iQPmr9K7gg==
X-Received: by 2002:a63:7709:0:b0:36c:8c3c:1199 with SMTP id
 s9-20020a637709000000b0036c8c3c1199mr8843528pgc.580.1645847606929; 
 Fri, 25 Feb 2022 19:53:26 -0800 (PST)
Received: from localhost ([2601:647:5800:24b1:f66d:4ff:fe3c:3ceb])
 by smtp.gmail.com with ESMTPSA id
 q10-20020a65524a000000b00372e458e87esm3785214pgp.67.2022.02.25.19.53.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 19:53:26 -0800 (PST)
Date: Fri, 25 Feb 2022 19:53:23 -0800
From: Brian Norris <computersforpeace@gmail.com>
To: Julian Pidancet <julian@pidancet.net>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, mj8263788@gmail.com,
 robin.murphy@arm.com
Subject: Re: [PATCH v2] rockchip: rk3328: add support for FriendlyARM NanoPi
 NEO3
Message-ID: <YhmkM+Z6cVEkhik6@localhost>
References: <20220123161919.1024653-1-julian@pidancet.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220123161919.1024653-1-julian@pidancet.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_195329_043111_3944B3E0 
X-CRM114-Status: GOOD (  18.54  )
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

Hi,

On Sun, Jan 23, 2022 at 05:19:19PM +0100, Julian Pidancet wrote:
> This patch adds support for FriendlyARM NanoPi NEO3
> 
> Soc:      RockChip RK3328
> RAM:      1GB/2GB DDR4
> LAN:      10/100/1000M Ethernet with unique MAC
> USB Host: 1x USB3.0 Type A and 2x USB2.0 on 2.54mm pin header
> MicroSD:  x 1 for system boot and storage
> LED:      Power LED x 1, System LED x 1
> Key:      User Button x 1
> Fan:      2 Pin JST ZH 1.5mm Connector for 5V Fan
> GPIO:     26 pin-header, include I2C, UART, SPI, I2S, GPIO
> Power:    5V/1A, via Type-C or GPIO
> 
> Signed-off-by: Julian Pidancet <julian@pidancet.net>

> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-neo3.dtb

Alphabetical order; neo3 goes before r2s.

>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
> new file mode 100644
> index 000000000..1eb7fd5f7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
> @@ -0,0 +1,396 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 David Bauer <mail@david-bauer.net>
> + * Copyright (c) 2022 Julian Pidancet <julian@pidancet.net>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/gpio/gpio.h>

Alphabetical order? So this goes before ../input.

> +#include "rk3328.dtsi"
> +
> +/ {
> +	model = "FriendlyElec NanoPi NEO3";
> +	compatible = "friendlyarm,nanopi-neo3", "rockchip,rk3328";
> +
> +	aliases {
> +		led-boot = &stat_led;
> +		led-failsafe = &stat_led;
> +		led-running = &stat_led;
> +		led-upgrade = &stat_led;

I'm pretty sure all these led-* aliases are OpenWRT extensions and
probably shouldn't be included in upstream device trees.

> +	};
...
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-0 = <&stat_led_pin>;
> +		pinctrl-names = "default";
> +
> +		stat_led: led-0 {
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-neo4:green:stat";

This property is deprecated in favor of "color" and "function". For
function, maybe LED_FUNCTION_STATUS? See
Documentation/devicetree/bindings/leds/common.yaml.

> +		};
> +	};

...

> +&usbdrd_dwc3 {
> +	dr_mode = "host";
> +	status = "okay";
> +
> +	usb-eth@2 {
> +		compatible = "realtek,rtl8153";
> +		reg = <2>;
> +
> +		realtek,led-data = <0x87>;

This compatible and property are all downstream OpenWRT; they don't
exist upstream. So you should drop them if you're trying to get this DTS
merged upstream.

You might also be able to head off some similar issues by running
through the schema checks. See:

Documentation/devicetree/writing-schema.rst
and
make dtbs_check

Brian

> +	};
> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
