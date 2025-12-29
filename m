Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CC07E8FDB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 07:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHlGwlc9G6akHeGDNSMR/40Cj2y/adYNfpw2KV6xDyg=; b=nMUfyHSD3VRbPz
	Ji/hRCt7C5ZblQ5IjAb+wTzfSiZLG9juZxekIWwEGgXjBkgi8eKshKfdM6x/vpxfwGsLlcz8CkTWL
	eUNEbUzeyaCXtyEjUv3KCVvB+i2vD4APRsiKTzBwrhwxpHjl6tZSrMC3XktP8UkCUnQx+Oal6OXgs
	jlmP2cO+4vO86BgGfmAGKF0OrXAIHUwtlgOCtSSTz3Iq/sUa/CajojMPVytMl14PqiecnFxugb0Gu
	gKC5n+5lhUy//qnyBdL6LhWo9U5xos+tmubh2ZbMW00/V4mvYvAPdNlyYftOQjYgUDIv5wVJxhd/r
	Wor2WM2mqrEWjYO6/MKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va86b-00000003RxB-3h8B;
	Mon, 29 Dec 2025 07:55:53 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va86Y-00000003Rvd-2398
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 07:55:52 +0000
X-QQ-mid: zesmtpip2t1766994916t7ee7f656
X-QQ-Originating-IP: KN3kD2/XR8k/P3MfWGkrqW3OIzDVq6y+kcT0twBPoMw=
Received: from [IPV6:240f:10b:7440:1:3961:bf03 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 29 Dec 2025 15:55:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16543962298428795708
Message-ID: <A7ADEB12E25ED346+00048ee9-c4d6-442d-a02c-cefbdc6be353@radxa.com>
Date: Mon, 29 Dec 2025 16:55:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/3] arm64: dts: rockchip: Add Radxa CM3J
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, kever.yang@rock-chips.com,
 jonas@kwiboo.se, michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, dsimic@manjaro.org, alchark@gmail.com,
 pbrobinson@gmail.com, ziyao@disroot.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251229073840.25516-1-naoki@radxa.com>
 <20251229073840.25516-2-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251229073840.25516-2-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OJG2NVWVA7qwfLp6zw6S2X/HCMh8RQYej43v2HbJBwa/jpvW3mCNf3dz
	GUGrpZwPVteJBVis8Yx7UKkGgLM4M3OF6GWf3/UjsPJwebtprNo3lwQFGuobBYMFSiHXkng
	wUKDVmQ1gUu0VVWNCBgaT964CZtK7ci2q+fth/siyUzj/5vBX9a5n1jjahY8P7fH2gfcZ4K
	dQ0TBndbxEDdFTws9IsCV312o0bd/yI5nicHh2iRTtfB5Hyc/nzbgX8crYbmklkAxVCqlYm
	l8+CzqX8ca9EUgkwWCNq0RLFpl60jkxm1Khh6Ybyx9f2RYKNlN3ALNIuY8k+eN+x1mCf2eR
	vo3dHsmyqVyHf6AYILFoUEzfQ7Ge24qDrnfebDxA5RYcM7IJ9UQQAmpkHOYGu+TQ65QI61M
	TWZ/kxZDuTwFV/uZ2XeJ5uSDv8JRQXiRyhSNmY2Wn7zcMm1z+fV5DH0LDMze+r/GJCDo5+y
	hfiQMmVv9BOlLTL937HKDfvYjNZqOD4yKn+yp+2+5bnDbTKTdhzwjFP0TXWy2xIUKxp3ibO
	8lzdWiJbFcugoWlcYMoldD+JZT8G5Ioz3xnWqu7muXuwbNpFgjKxwoJ0ZI7vX2jgVpDH2oD
	Mrnq1g2Yas9ib8C8Rhstbjfw1Ms5ROUFjBtjN6A5OoCyBK0dlz7nTD+JPHPuTg8316m+Zd8
	9uVHujd7GuaYjmuvkM1XB/tR1rdGSNeNRRAdCEmPmS4pWPPPE5FZrTQs9Hy1EYEa5oqsh+1
	Jwr/Ma0fk9T8zqy6D1d3r420tMfpsPfrwpexopezUIeWnw6EPuCWLYk52VClQipNkDKGwXM
	bNMUUJdlJ43LXvtpIq1NHhlXPDwu3ebkGbQ2ICVNlhrSsY1+2fj9w5I66gJI5zR+TVMz6bD
	jsr6Qtk9NrwA1kK8rYmru2owWDvO2wQAiczT6hr/WvQc+hiJdQgc9wYwhC8GpC5z6RYBWQz
	DO+upyFpx74nFZJjJ9EOQh4KLCz8qsNheoG8A7XB4HabfYkEBbcMR6xNXfV5EpV+r0r0=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_235551_073961_83C113A8 
X-CRM114-Status: GOOD (  16.02  )
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

Hi all,

On 12/29/25 16:38, FUKAUMI Naoki wrote:
> The Radxa CM3J is a feature rich industrial compute module based on
> the Rockchip RK3568J SoC. [1]
> 
> Specification:
> - Quad-core Cortex-A55 CPU
> - Mali-G52 2EE GPU
> - 1TOPS NPU
> - Up to 8GB LPDDR4x RAM
> - Up to 32GB eMMC (optional)
> - 16MB SPI flash (optional)
> - Wi-Fi 5 / BT 5.0 with external antenna connector
> - Gigabit Ethernet PHY
> - RK809 PMIC
> - Green (power) LED
> 
> [1] https://dl.radxa.com/cm3j/docs/hw/radxa_cm3j_schematic_v1.2_20250115.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   .../boot/dts/rockchip/rk3568-radxa-cm3j.dtsi  | 570 ++++++++++++++++++
>   arch/arm64/configs/linux.radxa.config         |   1 +
>   2 files changed, 571 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j.dtsi
>   create mode 120000 arch/arm64/configs/linux.radxa.config
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j.dtsi
> new file mode 100644
> index 000000000000..c503e876bcfd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3j.dtsi
> @@ -0,0 +1,570 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2025 Radxa Computer (Shenzhen) Co., Ltd.
> + */
> +
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3568.dtsi"
> +
> +/ {
> +	aliases {
> +		mmc0 = &sdhci;
> +		mmc2 = &sdmmc2;
> +	};
> +
> +	gmac1_clkin: clock-125m {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "gmac1_clkin";
> +		#clock-cells = <0>;
> +	};
> +
> +	leds-0 {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_POWER;
> +			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&gpio0_b4_led>;
> +		};
> +	};
> +
> +	vcc3v3_sys: regulator-3v3-0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc5v>;
> +	};
> +
> +	vcc_3v3_1: regulator-3v3-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_1";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk809 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_reg_on_h_gpio3_d4>;
> +		reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&gmac1 {
> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
> +	clock_in_out = "input";
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii-id";
> +	phy-supply = <&vcc_3v3_1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		     &gmac1m1_clkinout
> +		     &gmac1m1_rx_bus2
> +		     &gmac1m1_tx_bus2
> +		     &gmac1m1_rgmii_clk
> +		     &gmac1m1_rgmii_bus>;
> +};

During a cold boot, it does not work in U-Boot:

=> setenv ipaddr 192.168.0.99
=> ping 192.168.0.1
ethernet@fe010000 Waiting for PHY auto negotiation to complete....... done
Using ethernet@fe010000 device

ARP Retry count exceeded; starting again
ping failed; host 192.168.0.1 is not alive

However, it works fine in Linux, and also in U-Boot after a warm reboot.

> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	avdd-0v9-supply = <&vdda0v9_image>;
> +	avdd-1v8-supply = <&vcca1v8_image>;
> +};
> +
> +&hdmi_in {
> +	hdmi_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi>;
> +	};
> +};
> +
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";
> +		reg = <0x20>;
> +		#clock-cells = <1>;
> +		clock-output-names = "rk809-clkout1", "rk809-clkout2";
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;
> +		system-power-controller;
> +		vcc1-supply = <&vcc3v3_sys>;
> +		vcc2-supply = <&vcc3v3_sys>;
> +		vcc3-supply = <&vcc3v3_sys>;
> +		vcc4-supply = <&vcc3v3_sys>;
> +		vcc5-supply = <&vcc3v3_sys>;
> +		vcc6-supply = <&vcc3v3_sys>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc3v3_sys>;
> +		wakeup-source;
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {
> +				regulator-name = "vdd_logic";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-initial-mode = <0x2>;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_gpu: DCDC_REG2 {
> +				regulator-name = "vdd_gpu";
> +				regulator-initial-mode = <0x2>;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-name = "vcc_ddr";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-initial-mode = <0x2>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vdd_npu: DCDC_REG4 {
> +				regulator-name = "vdd_npu";
> +				regulator-initial-mode = <0x2>;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			dc1v8: vccio_flash: vcc_1v8: DCDC_REG5 {

It's labeled as '+1.8v' in the schematic. Do you have any other 
suggestions for the name?

> +				regulator-name = "vcc_1v8";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdda0v9_image: LDO_REG1 {
> +				regulator-name = "vdda0v9_image";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdda_0v9: LDO_REG2 {
> +				regulator-name = "vdda_0v9";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
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
> +				};
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
> +			vccio_sd: LDO_REG5 {
> +				regulator-name = "vccio_sd";
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
> +			vcc3v3_pmu: LDO_REG6 {
> +				regulator-name = "vcc3v3_pmu";
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
> +			vcca_1v8: LDO_REG7 {
> +				regulator-name = "vcca_1v8";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcca1v8_pmu: LDO_REG8 {
> +				regulator-name = "vcca1v8_pmu";
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
> +			vcca1v8_image: LDO_REG9 {
> +				regulator-name = "vcca1v8_image";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			dc3v3: vcc_3v3: SWITCH_REG1 {

It's labeled as '+3.3v' in the schematic. Do you have any other 
suggestions for the name?

> +				regulator-name = "vcc_3v3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sd: SWITCH_REG2 {
> +				regulator-name = "vcc3v3_sd";
> +				regulator-always-on;
> +				regulator-boot-on;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu: regulator@40 {
> +		compatible = "silergy,syr827";
> +		reg = <0x40>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_cpu";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1390000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&dc5v>;
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +
> +	eeprom@50 {
> +		compatible = "belling,bl24c16a", "atmel,24c16";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +		read-only;
> +		vcc-supply = <&gpio_vref>;
> +	};
> +};
> +
> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@0 {
> +		compatible = "ethernet-phy-id001c.c916";
> +		reg = <0x0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gmac1_rstn_gpio3_b0>; // GPIO4_C3
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio4 RK_PC3 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&pinctrl {
> +	bluetooth {
> +		bt_reg_on_h_gpio4_b2: bt-reg-on-h-gpio4-b2 {
> +			rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_wake_host_h_gpio4_b4: bt-wake-host-h-gpio4-b4 {
> +			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		host_wake_bt_h_gpio4_b5: host-wake-bt-h-gpio4-b5 {
> +			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	ethernet {
> +		gmac1_rstn_gpio3_b0: gmac1-rstn-gpio3-b0 {
> +			rockchip,pins = <4 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	leds {
> +		gpio0_b4_led: gpio0-b4-led {
> +			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pcie {
> +		pcie20_clkreqnm2: pcie20_clkreqnm2 {
> +			rockchip,pins = <1 RK_PB0 4 &pcfg_pull_none>;
> +		};
> +
> +		pcie_nrst: pcie-nrst {
> +			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	wifi {
> +		wifi_reg_on_h_gpio3_d4: wifi-reg-on-h-gpio3-d4 {
> +			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wifi_wake_host_h_gpio3_d5: wifi-wake-host-h-gpio3-d5 {
> +			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +};
> +
> +&pcie2x1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie20_clkreqnm2 &pcie_nrst>;
> +	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
> +	supports-clkreq;
> +};
> +
> +&pmu_io_domains {
> +	pmuio1-supply = <&vcc3v3_pmu>;
> +	pmuio2-supply = <&vcc_3v3>;
> +	vccio1-supply = <&vccio_acodec>;
> +	vccio2-supply = <&vccio_flash>;
> +	vccio3-supply = <&vccio_sd>;
> +	vccio4-supply = <&vcc_1v8>;
> +	vccio5-supply = <&vcc_3v3>;
> +	vccio6-supply = <&vcc_1v8>;
> +	vccio7-supply = <&vcc_3v3>;
> +	status = "okay";
> +};
> +
> +&saradc {
> +	vref-supply = <&vcca_1v8>;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;
> +	max-frequency = <200000000>;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
> +	vmmc-supply = <&vcc_3v3>;
> +	vqmmc-supply = <&vccio_flash>;
> +	status = "okay";
> +};
> +
> +&sdmmc2 {
> +	#address-cells = <1>;
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	disable-wp;
> +	keep-power-in-suspend;
> +	max-frequency = <200000000>;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	no-mmc;
> +	no-sd;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_clk &sdmmc2m0_cmd>;
> +	sd-uhs-sdr104;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	wifi@1 {
> +		compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
> +		reg = <1>;
> +#if 0
> +		// brcmfmac: brcmf_sdio_bus_rxctl: resumed on timeout
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <RK_PD5 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +#endif

It doesn't work if interrupt is enabled. Any ideas?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_wake_host_h_gpio3_d5>;
> +	};
> +};
> +
> +&sfc {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <104000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		vcc-supply = <&vccio_flash>;
> +	};
> +};
> +
> +&tsadc {
> +	rockchip,hw-tshut-mode = <1>;
> +	rockchip,hw-tshut-polarity = <0>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&uart8 {
> +	dma-names = "tx", "rx";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart8m0_xfer &uart8m0_ctsn &uart8m0_rtsn>;
> +	uart-has-rtscts;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm4345c5";
> +		clocks = <&rk809 1>;
> +		clock-names = "lpo";
> +		device-wakeup-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
> +		max-speed = <1500000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_reg_on_h_gpio4_b2
> +			     &bt_wake_host_h_gpio4_b4
> +			     &host_wake_bt_h_gpio4_b5>;
> +		shutdown-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
> +		vbat-supply = <&vcc_3v3_1>;
> +		vddio-supply = <&vcc_1v8>;
> +	};
> +};
> +
> +&usb_host0_xhci {
> +	extcon = <&usb2phy0>;
> +	maximum-speed = "high-speed";
> +	phys = <&usb2phy0_otg>;
> +	phy-names = "usb2-phy";
> +};
> +
> +&vop {
> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> +	status = "okay";
> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
> +		remote-endpoint = <&hdmi_in_vp0>;
> +	};
> +};
> diff --git a/arch/arm64/configs/linux.radxa.config b/arch/arm64/configs/linux.radxa.config
> new file mode 120000
> index 000000000000..8af66a0e7a96
> --- /dev/null
> +++ b/arch/arm64/configs/linux.radxa.config
> @@ -0,0 +1 @@
> +/home/radxa/linux.radxa.config
> \ No newline at end of file


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
