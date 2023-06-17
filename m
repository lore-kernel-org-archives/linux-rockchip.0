Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5A49EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 07:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhmVvDBIamp/I9z32q2NwEvDBd6z8uaYlLBo2Nmc1b4=; b=qGaYdhlPwI3C2U
	v2WT2OthfyZuo1HIUYbdNE6KavcjKoTfC7r/H88ktqhOV467rJLLRF0VXdYlDGheSpiTioqzF7Hn+
	1pcjZGooYtSYWzJ9Oi4eGpUiAZsn+lky33uFbxZCBdu4mt31G9OGyjsgh7yZ+YFiH3XMDNgnV9L8K
	y3lmqt6KoH+xYGoOOd4fmrWWv5mOjbTG6RUqW3fZbChFBtni5dTcUvX9505gdL2yg5rORwpcAZHwX
	xegB0EIoYVFRr2VzKYICQ9JjIrqYsSrogBpcBK6EfJBfpFDxLMhYNqclBq/yebRQrbV8PEKgXGGsQ
	5/WVcuQoGPdbd4bZh9ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQkA-0031zC-2X;
	Sat, 17 Jun 2023 07:53:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQk7-0031y7-03;
	Sat, 17 Jun 2023 07:53:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C0CE360302;
	Sat, 17 Jun 2023 07:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39D31C433C0;
	Sat, 17 Jun 2023 07:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686988385;
	bh=GZRlxUYuf0/qqgrn2Edu3dZ/2sUV+4rnRlV447fmC+k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Mxknj0vdmui/igHfRlkmdruoxih4nJkoovQZkLRKj3o8732j2SxHYLNUV2jA2VKr1
	 QHhhFNwZqVVYrK3EkuRpNLSaMk+IkXaUyFu3L91F++aRqgv0OFmIyvBXSG1tgD9A9R
	 H6HfQWplhPfpK9POp+geruNhPvsyfTZ9fBRpzvQw7uLx0z9HH7w7lGXuvWKuIxk0/Q
	 xNWNCkLV5pRVeAZgwg9VguIGupt/GRKrRzepbekSup9QgfB58cHVomaTfYqpWFam02
	 S6njhSdBWUiSjI1bL04KFTbrh6EiE8ebo8LV0wQaGl7PG5iqt31RjjP0anw0ThpuRc
	 0uLoid6RPgkAw==
Message-ID: <b62a188d-fa47-2f7f-7c99-90e5f729c227@kernel.org>
Date: Sat, 17 Jun 2023 09:52:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add dts for Firefly Station P2
 aka rk3568-roc-pc
Content-Language: en-US
To: Furkan Kardame <f.kardame@manjaro.org>, pgwipeout@gmail.com
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230616211020.55755-1-f.kardame@manjaro.org>
 <20230616211020.55755-3-f.kardame@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230616211020.55755-3-f.kardame@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_005307_156218_7462244D 
X-CRM114-Status: GOOD (  17.19  )
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

On 16/06/2023 23:10, Furkan Kardame wrote:
> Add dts for Firefly Station P2.
> Working IO:
> * eMMC
> * HDMI
> * LAN
> * LED
> * SD Card
> * UART
> * USB2
> * USB3
> 
> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../arm64/boot/dts/rockchip/rk3568-roc-pc.dts | 689 ++++++++++++++++++
>  2 files changed, 690 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 2d585bbb8..2085b00f3 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -90,6 +90,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> new file mode 100644
> index 000000000..5946ad3ea
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> @@ -0,0 +1,689 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3568.dtsi"
> +
> +/ {
> +	model = "Firefly Station P2";
> +	compatible = "firefly,rk3568-roc-pc", "rockchip,rk3568";
> +
> +	aliases {
> +		ethernet0 = &gmac0;
> +		ethernet1 = &gmac1;
> +		mmc0 = &sdmmc0;
> +		mmc1 = &sdhci;
> +	};
> +
> +	chosen: chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +> +	dc_12v: dc-12v {

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
So at least regulator prefix or suffix.

> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_12v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	gmac0_clkin: external-gmac0-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "gmac0_clkin";
> +		#clock-cells = <0>;
> +	};
> +
> +	gmac1_clkin: external-gmac1-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "gmac1_clkin";
> +		#clock-cells = <0>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-user {
> +			label = "user-led";
> +			default-state = "on";
> +			gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&user_led_enable_h>;
> +			retain-state-suspended;
> +		};
> +	};
> +
> +	hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +			remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		status = "okay";

Why do you need it?

> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk809 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		reset-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	pcie30_avdd0v9: pcie30-avdd0v9 {

Same naming problem.

> +		compatible = "regulator-fixed";
> +		regulator-name = "pcie30_avdd0v9";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	pcie30_avdd1v8: pcie30-avdd1v8 {

Ditto

> +		compatible = "regulator-fixed";
> +		regulator-name = "pcie30_avdd1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys {

Ditto

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	vcc3v3_pcie: gpio-regulator {

Oh, suffix appeared.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_pcie";
> +		enable-active-high;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc3v3_pcie_en_pin>;
> +		gpio = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us = <5000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {

And gone.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	vcc5v0_usb: vcc5v0-usb {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +

...

> +
> +			vdda0v9_pmu: LDO_REG3 {
> +				regulator-name = "vdda0v9_pmu";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +					};

Fix indentation.

> +			};
> +
> +			vccio_acodec: LDO_REG4 {
> +				regulator-name = "vccio_acodec";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +

> +
> +	pcie {
> +		pcie_reset_pin: pcie-reset-pin {
> +			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +		vcc3v3_pcie_en_pin: vcc3v3-pcie-en-pin {
> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int: pmic_int {

No underscores in node names.

Are you sure this does not cause `make dtsb_check` warnings?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
