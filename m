Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 123C7C001DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Aug 2023 06:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHwddkXd5RC/9j/N1AZAQ8HMNWv3EQ18h+sYz5QG8z8=; b=psruNPRSITHui+
	C+5ifyOU6tpKmaCWVbhrtu39MHhC+v2NVTOf42FVLYqJRzbhdNqNUzjMV/SxrIJQhdlseRYy4pEE1
	nxB4YtZ2Tn5trK/ueqE7h5+Lwo3GTg0iH+bpIwg0mFE/6ZNZ9m9/KPetTflPpCkqvQq1K4YlCtIzQ
	CxeEfQn6jSywkKugUxsCd/L1uFn2Y8PpzO4Dxg0xGHyfoMGlPhjQDjz6B/1iKRmRzlC641all6N55
	fd+5wGho5knDq7+XTXjzymQNIngXIh2rjLahYCqoNCAxUxFxoNJ5UJuod+FoKxZyElYWwNd4aohu6
	D0GFPW2/HEUqqC9BuU2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qStyz-00GI4V-0q;
	Mon, 07 Aug 2023 06:44:49 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qStyu-00GI29-1j
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Aug 2023 06:44:48 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-52229f084beso5982608a12.2
        for <linux-rockchip@lists.infradead.org>; Sun, 06 Aug 2023 23:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691390682; x=1691995482;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CsE+UpOUHmKaqjHziY3NmrSsTfnHSTxPovJy7K4Mpf8=;
        b=n1VGgexqgM1lNfrL/Rwt1Aq8pKg3veLzUNo24j7pwV0nD/atomIB6hm6l8/0OBUsxV
         Et40VQApfdB+rdG1zbxCoZwye74pD0XVION/953MHTc34tqfj2Zf0aSGxBZhydf36Z/x
         mjHoZUAURW9Lgk9KcC0eW500+IVwZtSTKXpG37abw50fZYUGfOWgQMSzcD7Z5prMCTB1
         VCxMnQRa47bfCsjxGrD8Qf04KkTKBcVdLGY79x4Mp0lPv0ObxYkPwX2ZUbqrJKemNOYq
         iF+kTrcDg157ncCl6MSItDUo6hanRL0LYYb+YD0LItNg/s79RmprFJlz8cs1679mfhnt
         jIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691390682; x=1691995482;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CsE+UpOUHmKaqjHziY3NmrSsTfnHSTxPovJy7K4Mpf8=;
        b=VZUO7BQP8CcoF8+ExUCokvjMXwz7Yx2TEjZfXEhyNdgaRNQbqkaWHhx5XEZvNbqN4z
         xYkiu1w0V5oXzGRfnmTHxyPsly/12C3opf2/1+csKQJBMYRN8MACbP7M8o+vto68cAB4
         B+KBljOREX8NWYToSC7+fNZisxXYqmSJRayE/TMuvHF1S1ZYgQK4+IOAiR7Tvxv27agx
         fCyxVe8p8rzwtZqFVk/1LknX6ShIFQvEdCAG5ABO8ZAMRHb6iUGgxC4CqyT7aoNtYHdR
         4wq2Ju4bjbGvLhvEHw5nrMey/1ndM0c9cKi+0oCBMFftbEPmDpR9OZUBYK8cvNSTYESU
         2sAg==
X-Gm-Message-State: AOJu0YyjFgoeTgx65vY0C3N5nx6tGC9+bMlGZL3AONRWRm+UZ29g8dqn
	DY42iMBzPi2yJ5jOgD4osPtzxw==
X-Google-Smtp-Source: AGHT+IFP3puQAi4LfOT+Zy8k2V4n2XLpOsBht2NQ8oMJDltREW9hsqeRCFAL5zGOz+xSo9MV3SOmWA==
X-Received: by 2002:a17:906:1011:b0:99b:f820:5d0e with SMTP id 17-20020a170906101100b0099bf8205d0emr8287990ejm.25.1691390682402;
        Sun, 06 Aug 2023 23:44:42 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id lh7-20020a170906f8c700b00977ca5de275sm4863560ejb.13.2023.08.06.23.44.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Aug 2023 23:44:41 -0700 (PDT)
Message-ID: <f49a803f-9ff4-794e-265b-a98e3711cca8@linaro.org>
Date: Mon, 7 Aug 2023 08:44:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add NanoPC T6
Content-Language: en-US
To: Thomas McKahan <tmckahan@singleboardsolutions.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
 <20230802051441.3106-3-tmckahan@singleboardsolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230802051441.3106-3-tmckahan@singleboardsolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230806_234444_576318_577A1058 
X-CRM114-Status: GOOD (  19.63  )
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

On 02/08/2023 07:14, Thomas McKahan wrote:
> Add the NanoPC T6, a single board computer from FriendlyElec based on
> the RK3588.
> 
> Initial device tree supports debug UART, SD, eMMC, PCIe 3, PMIC,
> and 40 pin GPIO assignments.
> 
> Signed-off-by: Thomas McKahan <tmckahan@singleboardsolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 845 ++++++++++++++++++
>  2 files changed, 846 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 1ebbb3e9c2f9..e7728007fd1b 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -100,6 +100,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> new file mode 100644
> index 000000000000..2362da2c53d9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> @@ -0,0 +1,845 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2023 Thomas McKahan
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/usb/pd.h>
> +#include "rk3588.dtsi"
> +
> +/ {
> +	model = "FriendlyElec NanoPC-T6";
> +	compatible = "friendlyarm,nanopc-t6", "rockchip,rk3588";
> +
> +	aliases {
> +		mmc0 = &sdhci;
> +		mmc1 = &sdmmc;
> +		serial2 = &uart2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	sound {
> +		status = "okay";

Was it disabled anywhere? Anyway, compatible is always the first property.


> +		compatible = "simple-audio-card";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hp_det>;
> +
> +		simple-audio-card,name = "realtek,rt5616-codec";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,hp-det-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_LOW>;
> +		simple-audio-card,hp-pin-name = "Headphones";
> +
> +		simple-audio-card,widgets =
> +			"Headphone", "Headphones",
> +			"Microphone", "Microphone Jack";
> +		simple-audio-card,routing =
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"MIC1", "Microphone Jack",
> +			"Microphone Jack", "micbias1";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s0_8ch>;
> +		};
> +		simple-audio-card,codec {
> +			sound-dai = <&rt5616>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		sys_led: led-0 {
> +			gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> +			label = "system-led";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sys_led_pin>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		usr_led: led-1 {
> +			gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +			label = "user-led";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&usr_led_pin>;
> +		};
> +	};
> +
> +	vcc12v_dcin: vcc12v-dcin-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc12v_dcin";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	/* vcc5v0_sys powers peripherals */
> +	vcc5v0_sys: vcc5v0-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	/* vcc4v0_sys powers the RK806, RK860's */
> +	vcc4v0_sys: vcc4v0-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc4v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <4000000>;
> +		regulator-max-microvolt = <4000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc-1v1-nldo-s3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1100000>;
> +		regulator-max-microvolt = <1100000>;
> +		vin-supply = <&vcc4v0_sys>;
> +	};
> +
> +	vbus5v0_typec: vbus5v0-typec {

What happened with -regulator suffix?

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&typec5v_pwren>;
> +		regulator-name = "vbus5v0_typec";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc3v3_pcie30: vcc3v3-pcie30 {

What happened with -regulator suffix?


...

> +		};
> +

Drop stray blank line.

> +	};
> +
> +	hym8563: hym8563@51 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


> +		compatible = "haoyu,hym8563";
> +		reg = <0x51>;
> +		#clock-cells = <0>;
> +		clock-output-names = "hym8563";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hym8563_int>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> +		wakeup-source;
> +	};
> +
> +};
> +
> +&i2c7 {
> +	clock-frequency = <200000>;
> +	status = "okay";
> +
> +	rt5616: codec@1b {
> +		compatible = "realtek,rt5616";
> +		reg = <0x1b>;
> +		clocks = <&cru I2S0_8CH_MCLKOUT>;
> +		clock-names = "mclk";
> +		#sound-dai-cells = <0>;
> +		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
> +		assigned-clock-rates = <12288000>;
> +
> +		port {
> +			rt5616_p0_0: endpoint {
> +				remote-endpoint = <&i2s0_8ch_p0_0>;
> +			};
> +		};
> +	};
> +
> +	/* connected with MIPI-CSI1 */
> +};
> +
> +&i2c8 {
> +	pinctrl-0 = <&i2c8m2_xfer>;
> +};
> +
> +&i2s0_8ch {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s0_lrck
> +				 &i2s0_mclk
> +				 &i2s0_sclk
> +				 &i2s0_sdi0
> +				 &i2s0_sdo0>;

Odd alignment.

> +	status = "okay";
> +
> +	i2s0_8ch_p0: port {
> +		i2s0_8ch_p0_0: endpoint {
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +			remote-endpoint = <&rt5616_p0_0>;
> +		};
> +	};
> +};
> +
> +&pcie30phy {
> +	status = "okay";
> +};
> +

...

> +&spi2 {
> +	status = "okay";
> +	assigned-clocks = <&cru CLK_SPI2>;
> +	assigned-clock-rates = <200000000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
> +	num-cs = <1>;
> +
> +	pmic@0 {
> +		compatible = "rockchip,rk806";
> +		spi-max-frequency = <1000000>;
> +		reg = <0x0>;
> +
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
> +			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
> +
> +		vcc1-supply = <&vcc4v0_sys>;
> +		vcc2-supply = <&vcc4v0_sys>;
> +		vcc3-supply = <&vcc4v0_sys>;
> +		vcc4-supply = <&vcc4v0_sys>;
> +		vcc5-supply = <&vcc4v0_sys>;
> +		vcc6-supply = <&vcc4v0_sys>;
> +		vcc7-supply = <&vcc4v0_sys>;
> +		vcc8-supply = <&vcc4v0_sys>;
> +		vcc9-supply = <&vcc4v0_sys>;
> +		vcc10-supply = <&vcc4v0_sys>;
> +		vcc11-supply = <&vcc_2v0_pldo_s3>;
> +		vcc12-supply = <&vcc4v0_sys>;
> +		vcc13-supply = <&vcc_1v1_nldo_s3>;
> +		vcc14-supply = <&vcc_1v1_nldo_s3>;
> +		vcca-supply = <&vcc4v0_sys>;
> +
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		rk806_dvs1_null: dvs1-null-pins {
> +			pins = "gpio_pwrctrl2";
> +			function = "pin_fun0";
> +		};
> +
> +		rk806_dvs2_null: dvs2-null-pins {
> +			pins = "gpio_pwrctrl2";
> +			function = "pin_fun0";
> +		};
> +
> +		rk806_dvs3_null: dvs3-null-pins {
> +			pins = "gpio_pwrctrl3";
> +			function = "pin_fun0";
> +		};
> +
> +		regulators {
> +			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
> +				regulator-boot-on;

Boolean properties are not first, but last. regulator-name is the first
one. This odd style...

> +				regulator-min-microvolt = <550000>;
> +				regulator-max-microvolt = <950000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-name = "vdd_gpu_s0";
> +				regulator-enable-ramp-delay = <400>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
