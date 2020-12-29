Return-Path: <SRS0=9ixw=GB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BE8CC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Dec 2020 15:26:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C181C207BD
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Dec 2020 15:26:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C181C207BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XGcPqURD/jEcgH6wKX/Egajp/RtCCxBlVGFObks4ys4=; b=W5NSSJQ8nGkR8yAKVX6OwCv0q
	5QiiZDAnxV8bG23mEl2T+uAmU4ZWOXxNasq64wpxw74csBwMLMZeX7qydll20K18HT2FDn7hdu4hr
	0b0Ax+/NTXGuQdAHg6qUzRxruAPcj2HLjvcQUwydng4Tdb5SAdN1sLv298KzJ5gvYOOgNqzn2A70w
	h7+Pblb+zWuxbwT6AznVYaZk/3Pvp8By86QBN31GEtznjtGFmRNz5Lmu2Dp1fqrdCHEEWS/pyQiKy
	i8/auzRsaw56GDdJyI8ScQOG003wCJGqsBOkcJxSFU405MtAk17Db/6OTtfog6ThaJ5TNOV8mbGmM
	5DX4njn2A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kuGsw-0006qx-T1; Tue, 29 Dec 2020 15:26:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kuGso-0006n3-Gx; Tue, 29 Dec 2020 15:26:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28E081FB;
 Tue, 29 Dec 2020 07:25:55 -0800 (PST)
Received: from [10.57.36.118] (unknown [10.57.36.118])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CE4C3F6CF;
 Tue, 29 Dec 2020 07:25:53 -0800 (PST)
Subject: Re: [PATCH resend] rockchip: rk3328: Add support for FriendlyARM
 NanoPi NEO3
To: Marty Jones <mj8263788@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20201228152836.02795e09.mj8263788@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <71bf9c69-0fa3-91ec-03d1-358ea7363982@arm.com>
Date: Tue, 29 Dec 2020 15:25:48 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201228152836.02795e09.mj8263788@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201229_102558_748401_53470A91 
X-CRM114-Status: GOOD (  24.71  )
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
Cc: linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-12-28 20:28, Marty Jones wrote:
>  From 7fc1fbf4d223ddf911f04adc756e41683cbd2948 Mon Sep 17 00:00:00 2001
> From: Marty Jones <mj8263788@gmail.com>
> Date: Mon, 28 Dec 2020 13:01:28 -0500
> Subject: [PATCH] rockchip: rk3328: add support for FriendlyARM NanoPi NEO3
> 
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
> Signed-off-by: Marty Jones <mj8263788@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>   .../boot/dts/rockchip/rk3328-nanopi-neo3.dts  | 35 +++++++++++++++++++
>   2 files changed, 36 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 1ab55a124a87..e2d8dcac7592 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-neo3.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
> new file mode 100644
> index 000000000000..b62b169bdb2e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-neo3.dts
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Marty Jones <mj8263788@gmail.com>
> + */
> +
> +/dts-v1/;
> +#include "rk3328-nanopi-r2s.dts"
> +
> +/ {
> +	model = "FriendlyElec NanoPi NEO3";
> +	compatible = "friendlyarm,nanopi-neo3", "rockchip,rk3328";
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
> +		pinctrl-names = "default";

No need to restate the compatible and pinctrl-names properties that 
don't need overriding from the base include. The pinctrl should only 
claim the one entry it actually needs though - for NEO3 those other two 
pins are on the user expansion header, so we don't want to needlessly 
get in the way of users doing whatever they want with them.

> +		lan_led: led-0 {
> +			gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-neo3:green:lan";
> +			status = "disabled";
> +		};

It doesn't make much sense to do all this redefinition for something 
that doesn't even exist - easier to just use the /delete-node/ operator 
instead.

> +		sys_led: led-1 {
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-neo3:green:sys";

According to the schematic this should probably be named either "status" 
or "stat".

> +		};
> +
> +		wan_led: led-2 {
> +			gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_HIGH>;
> +			label = "nanopi-neo3:green:wan";
> +			status = "disabled";
> +		};

As above, this one doesn't exist either. TBH it might make the most 
sense to convert the base DTS to be the NEO3 one and the R2S the 
differences on top of that, especially since the latter may have future 
USB-ethernet-related additions as well. Personally I reckon they're 
still fundamentally close enough to get away with defining one in terms 
of the other for now rather than splitting out a common DTSI, but that's 
always there as the most thorough and bullet-proof option (and 
downstream does hint at there being more variants to come...)

Thanks,
Robin.

> +	};
> +};
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
