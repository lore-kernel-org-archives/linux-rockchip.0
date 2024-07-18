Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56CF8C3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 04:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UTBZ4NshVVk3Zp3yaTWJVv67je2izZTAkeXh81d+RAY=; b=lL54FHW+L/pt9pY3wRJ+RlpKAA
	lCSXF5d3Xex4lUjfT+xHAsoc0WQbqo6okm4t5/sDoLTLu9s59yefrDv6M3vDOU27x2AnUQ6C6uGYZ
	hg+coLEVvyDDsPvqH5dmg9uEAF1xX4+liGkT7brj5p0nIjPDjV4GL1oeGe8MlidofdAbpsNmgbUKe
	pGBAquotKldSvPRdXUP39X+egbUbOPe1HU3pUtjR0pptBltvg4wzdq9XMPOvIPn27OFk6Pe/IDdyk
	k1DqtZ++daFzYMh4GC2QYM6P7pisMX1ZZQ2Zn/TiouZ/nBA0WpAIBbrR3p2JuYfDKlRen7+6/9X4/
	6aWRg0jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUItz-0000000FkWu-3VHq;
	Thu, 18 Jul 2024 04:37:59 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUItd-0000000FkRt-1Iv6;
	Thu, 18 Jul 2024 04:37:38 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721277455;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nrCxOp3IGCnVPdUrZxg8jNlvDGY+1G8rh4drIgGqRa8=;
	b=Yl0uxddX3D9zcsJGPIuI807jFI+MlGmLiTz/r+T9OMG8AMx9gMN0Js2Zjh4xVpVI5ecNEt
	6OTT063ysiQef1FWEtbkJ1KK3kCQvW09l+f2bICoqxDZ+MQJJUlIHIyFDAOsCsmWERbw2s
	SVXquD9EhwfdfHZqQIe94gYP7RRMAu3LYo3e1HQnJNIYVRjGFvrpCIYJ7ddnhL1BLk0Uwp
	JjughxC8bT+CCgo5H4z4h7WEkU49mHa1OOGqovjP/vAUCPjcDapSCBAMXng2dCWNp6Wj67
	CPdvlJQGKHvs96xmmCNzJ4ginOya3Uv6MFUbOG0Otxm6UXwWTuZGgGv5b9sixQ==
Date: Thu, 18 Jul 2024 06:37:35 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kever Yang
 <kever.yang@rock-chips.com>, Collabora Kernel Mailing List
 <kernel@collabora.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Firefly JD4 baseboard
 with Core-PX30-JD4 SoM
In-Reply-To: <20240717-rockchip-px30-firefly-v2-3-06541a5a5946@collabora.com>
References: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
 <20240717-rockchip-px30-firefly-v2-3-06541a5a5946@collabora.com>
Message-ID: <6a19985040fb65d5c73178d4d3695a46@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_213737_683221_833794A1 
X-CRM114-Status: GOOD (  15.15  )
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

Hello Christopher,

On 2024-07-17 18:47, Christopher Obbard wrote:
> The Firefly MB-PX30-JD4 is a baseboard for the Core-PX30-JD4 SoM.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile             |   1 +
>  arch/arm64/boot/dts/rockchip/px30-firefly-jd4.dts | 178 
> ++++++++++++++++++++++
>  2 files changed, 179 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> b/arch/arm64/boot/dts/rockchip/Makefile
> index fda1b980eb4bc..24e1e5b606876 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-firefly-jd4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-ringneck-haikou.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4.dts
> b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4.dts
> new file mode 100644
> index 0000000000000..bb79a7eb9f028
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4.dts
> @@ -0,0 +1,178 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include "px30-firefly-jd4-core.dtsi"
> +
> +/ {
> +	model = "Firefly Core-PX30-JD4 with MB-JD4-PX30 baseboard";

Technically, it's s/with/on/

> +	compatible = "firefly,px30-mb-jd4", "firefly,px30-core-jd4", 
> "rockchip,px30";
> +
> +	aliases {
> +		ethernet0 = &gmac;
> +		mmc0 = &sdmmc;
> +		mmc1 = &sdio;
> +		mmc2 = &emmc;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:115200n8";
> +	};
> +
> +	dc_12v: dc-12v-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_12v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	adc-keys {
> +		compatible = "adc-keys";
> +		io-channels = <&saradc 2>;
> +		io-channel-names = "buttons";
> +		keyup-threshold-microvolt = <1500000>;
> +		poll-interval = <100>;
> +
> +		button-recovery {
> +			label = "Recovery";
> +			linux,code = <KEY_VENDOR>;
> +			press-threshold-microvolt = <18000>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&blue_led>, <&green_led>;
> +
> +		blue-led {
> +			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
> +			function = LED_FUNCTION_HEARTBEAT;
> +			gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> +			label = "px30-mb-jd4:blue:work";
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		green-led {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_POWER;
> +			gpios = <&gpio1 RK_PB4 GPIO_ACTIVE_HIGH>;
> +			label = "px30-mb-jd4:blue:diy";
> +			linux,default-trigger = "default-on";
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +
> +		/*
> +		 * On the module itself this is one of these (depending
> +		 * on the actual card populated):
> +		 * - SDIO_RESET_L_WL_REG_ON
> +		 * - PDN (power down when low)
> +		 */
> +		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>; /* GPIO3_A4 */
> +	};
> +
> +	vcc5v0_baseboard: vcc5v0-baseboard-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_baseboard";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +};
> +
> +&gmac {
> +	clock_in_out = "output";
> +	phy-supply = <&vcc_rmii>;
> +	snps,reset-gpio = <&gpio2 13 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 50000 50000>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	leds {
> +		blue_led: blue-led {
> +			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		green_led: green-led {
> +			rockchip,pins = <1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins =
> +				<0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	card-detect-delay = <800>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "okay";
> +};
> +
> +&sdio {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	keep-power-in-suspend;
> +	non-removable;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};
> +
> +&u2phy {
> +	status = "okay";
> +
> +	u2phy_host: host-port {
> +		status = "okay";
> +	};
> +
> +	u2phy_otg: otg-port {
> +		status = "okay";
> +	};
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart2m1_xfer>;
> +	status = "okay";
> +};
> +
> +&usb20_otg {
> +	status = "okay";
> +};
> +
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
