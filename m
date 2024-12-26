Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D581E7718B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 02:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTS3Bf0xk0zSmCAX/u1LiIRSg1gLHnrrfsXPzuJUf60=; b=MggJMFS9kVbO4/
	EHFiDR+lwXkZlCZzT8iwwNCaopaVlkgrL5x6u7sDyi5H2gygEoddp6NPrr6QOQ7UBOAPQ/6HHltNG
	PciokT+IED5pvtecXw/2+aQPgS9aGK9iS0dmk6b8bjma4DIpIV18SI8SL0MABIlf07rWDJ4WQb9Fq
	WpL2tcFDmHm4J73NpCZvbWM+Ke+FTf/xzHy0nqP/aQGoL7GdWJ+IgNE70jhyxpRioDzAh3S8AH7XP
	wsMSMvh0WMjvyx6atmMvamh54vVWPN0PMZ0shLwgTuoHG8yv9D50VVJWvkzy17HEAAhki3wIk8PsF
	lQv/365yG+bqWLnrqMyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQdFy-0000000EwaQ-1qxo;
	Thu, 26 Dec 2024 02:05:46 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQdFu-0000000EwZ6-1neY
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 02:05:44 +0000
X-QQ-mid: bizesmtpip2t1735178714t1ddvek
X-QQ-Originating-IP: W8NDm68YDhWKrNJIMBySrGD7mcRrxWaf9Ksz7358q0o=
Received: from [IPV6:240f:10b:7440:1:d8d9:4d7d ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 26 Dec 2024 10:05:01 +0800 (CST)
X-QQ-SSF: 0001000000000000000000000000000
X-QQ-GoodBg: 2
X-BIZMAIL-ID: 14642408557470798551
Message-ID: <A82BFC0736ECD270+b1606264-b1ae-4dac-8717-e1c6b5820e52@radxa.com>
Date: Thu, 26 Dec 2024 11:05:00 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa E52C
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
 andyshrk@163.com, dmt.yashin@gmail.com, liujianfeng1994@gmail.com,
 tim@feathertop.org, marcin.juszkiewicz@linaro.org,
 michael.riesch@wolfvision.net, alchark@gmail.com, jbx6244@gmail.com,
 kever.yang@rock-chips.com, jing@jing.rocks, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241223015318.1999-1-naoki@radxa.com>
 <20241223015318.1999-3-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <20241223015318.1999-3-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NvI6pndVF7YIQ+qP+Zy0K7sywVNvDO3QeWSLZsIVtDYywZcVhF2JYAPA
	LQ8HXn2eJ7KBNpJMapoWK6DmhP+XZ2ImDJf5NZHIhFcr+Adqqo0VTHRzeaCnI4QGX0sLYF4
	HU3u7jYH75j3UvHlU+XK3epGWy7IzKY7pgg77chm2XKZNox+rvfhxo3eErJZDk9DpPdDyT5
	mw4MlfvdmheMtTJen0WQnufHvtBuXySs39qSqVTGSZEolPZ1I3mtVORRu760XxHYdO1cemN
	+efN5z0ja5Ny50badPQBFAMfGxv7iwZlzrP34xA2CvyI4q6YmLE/Z8Xf1BqMGcBqbyPwk/5
	2vSpB7tRhiol1nGXDM1FosUXm/1ww6eD/IEEJA20xP0Of/q1wRKyh77oAC4mvHUyPoyIXv/
	79Csuxbsj6fpMojNf3SVeCuK4lzIW+V7T+0b45lz+63UzMxp7kplu3Gw1zEQMnPYgxsFpWx
	oVEbjraCh2JBXy5YKOQhPUhHGNjtDuFeb72lzli9QWEslp3/pL9mcZsvK6J7yxEldgWl0cl
	nUf/UZJT1/bLGsrAJFMc2MEUijjuYPjhxizQAsRQXZ+k7Q4klaS5p1HqvOFMOR/Y0N4LWCY
	N80ZMxzZslAywmvKjbIVuTB/WJfXHznTnjYDyfmG3vnruNQRkKfSJJhTflr1BEYq8ldSrSl
	dVNDh3s4r0aUMogsF6xm2iDI99Y8G9H2cktuhGJZgDMix2pfvxarHXpZy0VVPWVE+YDbp7U
	fjI4iPJgb95RKo6aY+rfb6Tzsm5MOQCnC3n5kWsy2A/CK3ONCi7FoTxFfeAQsAt9VnsAekg
	N81v4HoYz1Oeq5ojN9R7vsz9zAYVHjwJDuB525eVjgYdVzRc1YvUpsdBerxDfCTqchqw4OX
	dJ46mUdCcRMQ8j9cLMlWOHYFbB2O8klo7Odi/V3ejIPFUzuWlsKufBIwKQdMFr0XWgLZ+zO
	r6JTEczeRadEYlGmOUdndeY11v8v1pMjI5NKoUgSQRJ4vMJE8kfOAuv8W+LnR8pVQyg0=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_180543_027126_F1603C3A 
X-CRM114-Status: GOOD (  16.10  )
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

Hi,

On 12/23/24 10:53, FUKAUMI Naoki wrote:
> Radxa E52C is a compact network computer[1] based on the Rockchip
> RK3582 SoC:
> 
> - Dual Cortex-A76 and quad Cortex-A55 CPU
> - 5TOPS NPU
> - 2GB/4GB/8GB LPDDR4 RAM
> - 16GB/32GB/64GB on-board eMMC
> - microSD card slot
> - USB 3.0 Type-A HOST port
> - USB Type-C debug port
> - USB Type-C power port (5V only)
> - 2x 2.5GbE ports
> 
> [1] https://radxa.com/products/network-computer/e52c
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Generalize node names
> - Add "rockchip,rk3588s" to compatible
> - Add RTC
> - Trivial changes
> ---
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 738 ++++++++++++++++++
>   2 files changed, 739 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index cac3f39af82a..e6e71e8f5519 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -157,6 +157,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-sige7.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-w3.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-evb.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> new file mode 100644
> index 000000000000..c4f97f275677
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> @@ -0,0 +1,738 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Radxa Computer (Shenzhen) Co., Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include "rk3588s.dtsi"
> +
> +/ {
> +	model = "Radxa E52C";
> +	compatible = "radxa,e52c", "rockchip,rk3582", "rockchip,rk3588s";
> +
> +	aliases {
> +		mmc0 = &sdhci;
> +		mmc1 = &sdmmc;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	keys-0 {
> +		compatible = "adc-keys";
> +		io-channels = <&saradc 0>;
> +		io-channel-names = "buttons";
> +		keyup-threshold-microvolt = <18000>;
> +		poll-interval = <100>;
> +
> +		key-0 {

This needs to be "^button-". I'll fix it in v3.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> +			label = "Maskrom";
> +			linux,code = <KEY_VENDOR>;
> +			press-threshold-microvolt = <0>;
> +		};
> +	};
> +
> +	keys-1 {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&btn_0>;
> +
> +		button-0 {
> +			label = "User";
> +			gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
> +			linux,code = <BTN_0>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	leds-0 {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&led_0>;
> +
> +		led-0 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	leds-1 {
> +		compatible = "pwm-leds";
> +
> +		led-1 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_LAN;
> +			linux,default-trigger = "r8169-4-4100:00:link";
> +			pwms = <&pwm14 0 1000000 PWM_POLARITY_INVERTED>;
> +			max-brightness = <255>;
> +		};
> +
> +		led-2 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_WAN;
> +			linux,default-trigger = "r8169-3-3100:00:link";
> +			pwms = <&pwm11 0 1000000 PWM_POLARITY_INVERTED>;
> +			max-brightness = <255>;
> +		};
> +	};
> +
> +	vcc_1v1_nldo_s3: regulator-1v1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_1v1_nldo_s3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1100000>;
> +		regulator-max-microvolt = <1100000>;
> +		vin-supply = <&vcc_sysin>;
> +	};
> +
> +	vcc_3v3_pmu: regulator-3v3-0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_pmu";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3_s3>;
> +	};
> +
> +	vcc_3v3_s0: regulator-3v3-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3_s3>;
> +	};
> +
> +	vcca: regulator-4v0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcca";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <4000000>;
> +		regulator-max-microvolt = <4000000>;
> +		vin-supply = <&vcc_sysin>;
> +	};
> +
> +	vcc5v0_usb_otg0: regulator-5v0-0 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_otg_pwren_h>;
> +		regulator-name = "vcc5v0_usb_otg0";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc_sysin>;
> +	};
> +
> +	vcc_5v0: regulator-5v0-1 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc_5v0_pwren_h>;
> +		regulator-name = "vcc_5v0";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc_sysin>;
> +	};
> +
> +	vcc_sysin: regulator-5v0-2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sysin";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +};
> +
> +&combphy0_ps {
> +	status = "okay";
> +};
> +
> +&combphy2_psu {
> +	status = "okay";
> +};
> +
> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_big0_s0>;
> +};
> +
> +&cpu_b2 {
> +	cpu-supply = <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_b3 {
> +	cpu-supply = <&vdd_cpu_big1_s0>;
> +};
> +
> +&cpu_l0 {
> +	cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l1 {
> +	cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply = <&vdd_cpu_lit_s0>;
> +};
> +
> +&i2c0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0m2_xfer>;
> +	status = "okay";
> +
> +	vdd_cpu_big0_s0: regulator@42 {
> +		compatible = "rockchip,rk8602";
> +		reg = <0x42>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_cpu_big0_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <550000>;
> +		regulator-max-microvolt = <1050000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_cpu_big1_s0: regulator@43 {
> +		compatible = "rockchip,rk8603", "rockchip,rk8602";
> +		reg = <0x43>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_cpu_big1_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <550000>;
> +		regulator-max-microvolt = <1050000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	eeprom@50 {
> +		compatible = "belling,bl24c16a", "atmel,24c16";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +		vcc-supply = <&vcc_3v3_pmu>;
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +
> +	vdd_npu_s0: regulator@42 {
> +		compatible = "rockchip,rk8602";
> +		reg = <0x42>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_npu_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <550000>;
> +		regulator-max-microvolt = <950000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c5m2_xfer>;
> +	status = "okay";
> +
> +	rtc@51 {
> +		compatible = "haoyu,hym8563";
> +		reg = <0x51>;
> +		#clock-cells = <0>;
> +		clock-output-names = "rtcic_32kout";
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&rtc_int_l>;
> +		wakeup-source;
> +	};
> +};
> +
> +&pcie2x1l1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie20x1_1_perstn_m1>;
> +	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&vcc_3v3_s3>;
> +	status = "okay";
> +};
> +
> +&pcie2x1l2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
> +	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&vcc_3v3_s3>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	keys {
> +		btn_0: button-0 {
> +			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	leds {
> +		led_0: led-0 {
> +			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pcie {
> +		pcie20x1_1_perstn_m1: pcie-0 {
> +			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie20x1_2_perstn_m0: pcie-1 {
> +			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	regulators {
> +		vcc_5v0_pwren_h: regulator-5v0-1 {
> +			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	rtc {
> +		rtc_int_l: rtc-0 {
> +			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		usb_otg_pwren_h: regulator-5v0-0 {
> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&pwm11 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm11m1_pins>;
> +	status = "okay";
> +};
> +
> +&pwm14 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm14m1_pins>;
> +	status = "okay";
> +};
> +
> +&saradc {
> +	vref-supply = <&vcca_1v8_s0>;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	cap-mmc-highspeed;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	vmmc-supply = <&vcc_3v3_s0>;
> +	vqmmc-supply = <&vcc_1v8_s3>;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	no-sdio;
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc_3v3_s3>;
> +	vqmmc-supply = <&vccio_sd_s0>;
> +	status = "okay";
> +};
> +
> +&spi2 {
> +	status = "okay";
> +	assigned-clocks = <&cru CLK_SPI2>;
> +	assigned-clock-rates = <200000000>;
> +	num-cs = <1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
> +
> +	pmic@0 {
> +		compatible = "rockchip,rk806";
> +		reg = <0>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
> +			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
> +		spi-max-frequency = <1000000>;
> +		system-power-controller;
> +
> +		vcc1-supply = <&vcc_sysin>;
> +		vcc2-supply = <&vcc_sysin>;
> +		vcc3-supply = <&vcc_sysin>;
> +		vcc4-supply = <&vcc_sysin>;
> +		vcc5-supply = <&vcc_sysin>;
> +		vcc6-supply = <&vcc_sysin>;
> +		vcc7-supply = <&vcc_sysin>;
> +		vcc8-supply = <&vcc_sysin>;
> +		vcc9-supply = <&vcc_sysin>;
> +		vcc10-supply = <&vcc_sysin>;
> +		vcc11-supply = <&vcc_2v0_pldo_s3>;
> +		vcc12-supply = <&vcc_sysin>;
> +		vcc13-supply = <&vcc_1v1_nldo_s3>;
> +		vcc14-supply = <&vcc_1v1_nldo_s3>;
> +		vcca-supply = <&vcca>;
> +
> +		rk806_dvs1_null: dvs1-null-pins {
> +			pins = "gpio_pwrctrl1";
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
> +			vdd_gpu_s0: dcdc-reg1 {
> +				regulator-name = "vdd_gpu_s0";
> +				regulator-boot-on;
> +				regulator-min-microvolt = <550000>;
> +				regulator-max-microvolt = <950000>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-enable-ramp-delay = <400>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_cpu_lit_s0: dcdc-reg2 {
> +				regulator-name = "vdd_cpu_lit_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <550000>;
> +				regulator-max-microvolt = <950000>;
> +				regulator-ramp-delay = <12500>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_logic_s0: dcdc-reg3 {
> +				regulator-name = "vdd_logic_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <675000>;
> +				regulator-max-microvolt = <750000>;
> +				regulator-ramp-delay = <12500>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <750000>;
> +				};
> +			};
> +
> +			vdd_vdenc_s0: dcdc-reg4 {
> +				regulator-name = "vdd_vdenc_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <550000>;
> +				regulator-max-microvolt = <950000>;
> +				regulator-ramp-delay = <12500>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_ddr_s0: dcdc-reg5 {
> +				regulator-name = "vdd_ddr_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <675000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-ramp-delay = <12500>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +					regulator-suspend-microvolt = <850000>;
> +				};
> +			};
> +
> +			vdd2_ddr_s3: dcdc-reg6 {
> +				regulator-name = "vdd2_ddr_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_2v0_pldo_s3: dcdc-reg7 {
> +				regulator-name = "vcc_2v0_pldo_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <2000000>;
> +				regulator-max-microvolt = <2000000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <2000000>;
> +				};
> +			};
> +
> +			vcc_3v3_s3: dcdc-reg8 {
> +				regulator-name = "vcc_3v3_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vddq_ddr_s0: dcdc-reg9 {
> +				regulator-name = "vddq_ddr_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8_s3: dcdc-reg10 {
> +				regulator-name = "vcc_1v8_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc_1v8_s0: pldo-reg1 {
> +				regulator-name = "vcc_1v8_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcca_1v8_s0: pldo-reg2 {
> +				regulator-name = "vcca_1v8_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vdda_1v2_s0: pldo-reg3 {
> +				regulator-name = "vdda_1v2_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcca_3v3_s0: pldo-reg4 {
> +				regulator-name = "vcca_3v3_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vccio_sd_s0: pldo-reg5 {
> +				regulator-name = "vccio_sd_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			pldo6_s3: pldo-reg6 {
> +				regulator-name = "pldo6_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vdd_0v75_s3: nldo-reg1 {
> +				regulator-name = "vdd_0v75_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <750000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <750000>;
> +				};
> +			};
> +
> +			vdda_ddr_pll_s0: nldo-reg2 {
> +				regulator-name = "vdda_ddr_pll_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <850000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <850000>;
> +				};
> +			};
> +
> +			vdda_0v75_s0: nldo-reg3 {
> +				regulator-name = "vdda_0v75_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <750000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <750000>;
> +				};
> +			};
> +
> +			vdda_0v85_s0: nldo-reg4 {
> +				regulator-name = "vdda_0v85_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <850000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_0v75_s0: nldo-reg5 {
> +				regulator-name = "vdd_0v75_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <750000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&tsadc {
> +	status = "okay";
> +};
> +
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	phy-supply = <&vcc5v0_usb_otg0>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-0 = <&uart2m0_xfer>;
> +	status = "okay";
> +};
> +
> +&usb_host0_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usbdp_phy0 {
> +	status = "okay";
> +};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
