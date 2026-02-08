Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54CCAEF06EE
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Feb 2026 22:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnXmumuFW0171H1os4dBE1pvsfdbT87YXQ6C3Qt6/vQ=; b=If1kg8XE/68gW6
	6fZzdg8pe7wyx6m2XV2onS816HUd6IBD6QhU/4eH/omOy2jKhMtZn5UlhJTndbCsvcKH/C353G3MQ
	L4Tk7ekrcPwBxfiIRUCSH/Va8dwKeTMM6wck8L/t19Z8TKm6URK3X+eCFVjUC0DEitWSkOIHhTvCH
	36kJgFbV+xh8VwBTmqcrs/hRqSLZkJEo0oMs3QJpbT5E3B4GJ+NcnjSbmEiSqSV7M3ftPNrDwcUXs
	SKNy97CkM787kxppSqScSNuJ/MZwLmaOvPqhHw3XiXlnvAue0924En2023Xz/3RTmHFG8EECdhQp6
	tNhqbQ705yuB3jSqrSVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpD3h-0000000EVeC-2BZA;
	Sun, 08 Feb 2026 22:15:13 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpD3d-0000000EVdP-3C5v
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Feb 2026 22:15:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1770588908;
 bh=7dSjZHT2Dl4grmYJRUZgGDEO0U0HL5eO/bColsBuxcA=;
 b=fcXxGVyC47quyAk6Z8OSnJW0gPV2oJw+qvGrbjP5ZfWaGVh7yVBHdwt+Hy03IkEpGRoybKyUZ
 b6TFarIWyKtTT7xTpNOCe3xlaBiOSkKPnyRh4NJtBQ/bbUtwnxVrDB6C9k4h6kZd3S3T0TqSVXx
 ZpApDenFK/DxHdlbk6HJJAwTraYg7Xkn8aazk/MYScZHr0yJw6n8QXGzXSvm5XjoHiuLstKIxMz
 F2Losx/Ve9QIKWH39WACD/fCWMRe5AgE/z2M0+naWoTl/+9PNA6w8FLEMQREhwaOzwRYACb9B2k
 6cy03VvguoWYQd3vWVKwSHCSvAQCNgsfNccVC1rMykfA==
X-Forward-Email-ID: 69890ae4a6487c2810b18fa7
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d41492a9-bb59-4999-8497-e28d03d3a13f@kwiboo.se>
Date: Sun, 8 Feb 2026 23:14:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] ARM: dts: rockchip: Add Onion RV1103B Omega4
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Fabio Estevam <festevam@nabladev.com>
References: <20260207131803.2834749-1-festevam@gmail.com>
 <20260207131803.2834749-4-festevam@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260207131803.2834749-4-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_141510_039911_76C4FC7E 
X-CRM114-Status: GOOD (  21.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Fabio,

On 2/7/2026 2:18 PM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Onion Omega4 board is a board based on the RV1103B SoC that has:
> 
>  - 256 MB of RAM
>  - 256 MB of SPI-NAND
>  - Ethernet
>  - USB OTG
>  - Wifi
>  - SD card
>  - Camera connector
> 
> Add the initial support for this board so that it can fully boot into
> Linux with the root file system stored in the SPI NAND.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v1:
> - Removed memory node.
> - Added serial0 alias and used stdout-path = "serial0:115200n8";
> - Added color, function and pinctrl entries to the LED node.
> - Used bootph-pre-ram and bootph-some-ram.
> 
>  arch/arm/boot/dts/rockchip/Makefile           |   1 +
>  arch/arm/boot/dts/rockchip/rv1103b-omega4.dts | 106 ++++++++++++++++++
>  2 files changed, 107 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
> 
> diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
> index 716f5540e438..d8cd5df138cc 100644
> --- a/arch/arm/boot/dts/rockchip/Makefile
> +++ b/arch/arm/boot/dts/rockchip/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += \
> +	rv1103b-omega4.dtb \
>  	rv1108-elgin-r1.dtb \
>  	rv1108-evb.dtb \
>  	rv1109-relfor-saib.dtb \
> diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
> new file mode 100644
> index 000000000000..bcfc9b321dd6
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
> @@ -0,0 +1,106 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2025 plan44.ch/luz
> + * Copyright (c) 2025 Onion Corporation
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include "rv1103b.dtsi"
> +
> +/ {
> +	model = "Onion RV1103 Omega4 Board";
> +	compatible = "onion,rv1103b-omega4", "rockchip,rv1103b";

Am I correct in that this is the Omega-4 Evaluation Board (EVB) [1] and
that the Omega-4 is a System-on-Module?

The model should probably not mention the RV1103, as this is a RV1103B
board. I also think this probably should be split up into a SOM dtsi and
a board dts similar to how other Rockchip SOM boards are handled, e.g.

	model = "Onion Omega-4 Evaluation Board";
	compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";

and split into rv1103b-omega4.dtsi and rv1103b-omega4-evb.dts or similar?

[1] https://documentation.onioniot.com/omega4/getting-started/

Regards,
Jonas

> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0	{
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&led_pin>;
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_BLUE>;
> +			label = "sys";
> +			default-state = "on";
> +		};
> +	};
> +};
> +
> +&fspi0 {
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "spi-nand";
> +		reg = <0>;
> +		bootph-pre-ram;
> +		bootph-some-ram;
> +		spi-max-frequency = <75000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "env";
> +				reg = <0x00000000 0x00040000>;
> +			};
> +
> +			partition@40000 {
> +				label = "idblock";
> +				reg = <0x00040000 0x00100000>;
> +				read-only;
> +			};
> +
> +			partition@140000 {
> +				label = "uboot";
> +				reg = <0x00140000 0x00100000>;
> +				read-only;
> +			};
> +
> +			partition@240000 {
> +				label = "boot";
> +				reg = <0x00240000 0x00800000>;
> +			};
> +
> +			partition@a40000 {
> +				label = "ubi";
> +				reg = <0x00a40000 0x0f5c0000>;
> +			};
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0m0_xfer_pins>;
> +	bootph-all;
> +	status = "okay";
> +};
> +
> +&wdt {
> +	bootph-all;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	leds {
> +		led_pin: led-pin {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
