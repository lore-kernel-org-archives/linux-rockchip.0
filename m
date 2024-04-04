Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21901CD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 08:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Od97EmRQI1idP0g/MwOA5AOPKLP2EzVj6L0Jm2yd8Rg=; b=4Dcx42UP2zCQrX
	Oou0nF1241muqZFTiwXp3k5wC5ebrg9GNbioWinNCm9itTYnhwdGk2KcdXl3wh+wu0sWPn4RJls1a
	FlkbsLa3U2VSI4vBj7A6sZ4f307hP7TncalJelI9XuPOkgnXnuGjfu8jFea1AYXDwHkcCr/cOpqZY
	r5+RrcO8u4KHvdl1sXPkXQ+l0pY1zHNSr/McefOZdFc0vvQNMbNhWmAEJg8W/o3d7gLfSym342DCM
	mxT/a6W5wn1cyOPfKvW/iUnXwE76g8dHhHw6v5/AQ4VW31K7XyDo0cJ5xZyuLn7ojqkGKa/+XTpCj
	90Q7SxSaFwdogq1mqXig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsItb-00000001vzR-34oO;
	Thu, 04 Apr 2024 08:56:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsItX-00000001vxn-39a6;
	Thu, 04 Apr 2024 08:56:29 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rsItV-0008GZ-FH; Thu, 04 Apr 2024 10:56:25 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 David Jander <david@protonic.nl>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Protonic MECSBC device-tree
Date: Thu, 04 Apr 2024 10:56:24 +0200
Message-ID: <11120876.BaYr0rKQ5T@diego>
In-Reply-To: <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
References: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
 <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_015627_980654_611122E6 
X-CRM114-Status: GOOD (  19.76  )
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

Hi Sascha,

Am Donnerstag, 4. April 2024, 10:34:40 CEST schrieb Sascha Hauer:
> From: David Jander <david@protonic.nl>
> 
> MECSBC is a single board computer for blood analysis machines from
> RR-Mechatronics, designed and manufactured by Protonic Holland, based on
> the Rockchip RK3568 SoC.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile          |   1 +
>  arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 394 +++++++++++++++++++++++++
>  2 files changed, 395 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index f906a868b71ac..1152e0f6a25cb 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -104,6 +104,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts433.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-mecsbc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb

alphabetical sorting of entries please

>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
> new file mode 100644
> index 0000000000000..e50d135042ec7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
> @@ -0,0 +1,394 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include "rk3568.dtsi"
> +
> +/ {
> +	model = "Protonic MECSBC";
> +	compatible = "prt,mecsbc", "rockchip,rk3568";
> +
> +	aliases {
> +		mmc0 = &sdhci;
> +		mmc1 = &sdmmc0;
> +	};
> +
> +	chosen: chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	tas2562-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,name = "Speaker";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&tas2562>;
> +		};
> +	};
> +
> +	vdd_gpu: regulator-vdd-gpu {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm1 0 5000 PWM_POLARITY_INVERTED>;
> +		regulator-name = "vdd_gpu";
> +		regulator-min-microvolt = <915000>;
> +		regulator-max-microvolt = <1000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-settling-time-up-us = <250>;
> +		pwm-dutycycle-range = <0 100>; /* dutycycle inverted 0% => 0.915V */
> +	};
> +
> +	vdd_npu: regulator-vdd-npu {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 5000 PWM_POLARITY_INVERTED>;
> +		regulator-name = "vdd_npu";
> +		regulator-min-microvolt = <915000>;
> +		regulator-max-microvolt = <1000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-settling-time-up-us = <250>;
> +		pwm-dutycycle-range = <0 100>; /* dutycycle inverted 0% => 0.915V */
> +	};
> +
> +	p3v3: p3v3-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "p3v3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	p1v8: p1v8-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "p1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};

please sort alphabetical by node-name

> +};
> +
> +&combphy0 {
> +	status = "okay";
> +};
> +
> +&combphy1 {
> +	status = "okay";
> +};
> +
> +&combphy2 {
> +	status = "okay";
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
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii";
> +	clock_in_out = "output";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		     &gmac1m1_tx_bus2
> +		     &gmac1m1_rx_bus2
> +		     &gmac1m1_rgmii_clk
> +		     &gmac1m1_clkinout
> +		     &gmac1m1_rgmii_bus>;
> +	status = "okay";
> +	tx_delay = <0x30>;
> +	rx_delay = <0x10>;
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	vdd_cpu: regulator@60 {
> +		compatible = "fcs,fan53555";
> +		reg = <0x60>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_cpu";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1150000>;
> +		regulator-ramp-delay = <2300>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2m0_xfer>;
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c3m0_xfer>;
> +	status = "okay";
> +
> +	tas2562: tas2562@4c {
> +		compatible = "ti,tas2562";
> +		reg = <0x4c>;
> +		#sound-dai-cells = <0>;
> +		shutdown-gpios = <&gpio1 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		interrupt-parent = <&gpio1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_tas2562>;
> +		interrupts = <RK_PD1 IRQ_TYPE_LEVEL_LOW>;
> +		ti,imon-slot-no = <0>;
> +	};
> +};
> +
> +&i2c5 {
> +	status = "okay";
> +
> +	tmp1075n@48 {
> +		compatible = "ti,tmp1075";
> +		reg = <0x48>;
> +	};
> +
> +	pcf8563: rtc@51 {
> +		compatible = "nxp,pcf85363";
> +		reg = <0x51>;
> +		#clock-cells = <0>;
> +		clock-output-names = "rtcic_32kout";
> +	};
> +};
> +
> +&i2s1_8ch {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;
> +	rockchip,trcm-sync-tx-only;
> +	status = "okay";
> +};
> +
> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@2 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x2>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&eth_phy1_rst>;
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&pcie2x1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie20m1_pins>;
> +	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +};
> +
> +&pcie30phy {
> +	status = "okay";
> +};
> +
> +&pcie3x2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie30x2m1_pins>;
> +	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&p3v3>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	ethernet {
> +		eth_phy1_rst: eth_phy1_rst {
> +			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	tas2562 {
> +		pinctrl_tas2562: tas2562 {
> +			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	pmuio1-supply = <&p3v3>;
> +	pmuio2-supply = <&p3v3>;
> +	vccio1-supply = <&p1v8>;
> +	vccio2-supply = <&p1v8>;
> +	vccio3-supply = <&p3v3>;
> +	vccio4-supply = <&p1v8>;
> +	vccio5-supply = <&p3v3>;
> +	vccio6-supply = <&p1v8>;
> +	vccio7-supply = <&p3v3>;
> +	status = "okay";
> +};
> +
> +&saradc {
> +	vref-supply = <&p1v8>;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	max-frequency = <200000000>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
> +	vmmc-supply = <&p3v3>;
> +	vqmmc-supply = <&p1v8>;
> +	mmc-hs200-1_8v;
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +	status = "okay";
> +};
> +
> +&sdmmc0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +	sd-uhs-sdr50;
> +	vmmc-supply = <&p3v3>;
> +	vqmmc-supply = <&p3v3>;
> +	status = "okay";
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
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};
> +
> +&usb_host0_xhci {
> +	extcon = <&usb2phy0>;
> +	status = "okay";
> +	dr_mode = "host";

please sort properties alphabetical, with
compatible at the top and status last.


> +};
> +
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};
> +
> +&usb_host1_xhci {
> +	status = "okay";
> +};
> +
> +&usb2phy0 {
> +	status = "okay";
> +};
> +
> +&usb2phy0_host {
> +	status = "okay";
> +};
> +
> +&usb2phy0_otg {
> +	status = "okay";
> +};
> +
> +&usb2phy1 {
> +	status = "okay";
> +};
> +
> +&usb2phy1_host {
> +	status = "okay";
> +};
> +
> +&usb2phy1_otg {
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm1m0_pins>;
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm2m0_pins>;
> +};

please sort phandles "&pwm2" alphabetical and status comes last


> +
> +&gpu_opp_table {
> +	compatible = "operating-points-v2";
> +
> +	opp-200000000 {
> +		opp-hz = /bits/ 64 <200000000>;
> +		opp-microvolt = <915000>;
> +	};
> +
> +	opp-300000000 {
> +		opp-hz = /bits/ 64 <300000000>;
> +		opp-microvolt = <915000>;
> +	};
> +
> +	opp-400000000 {
> +		opp-hz = /bits/ 64 <400000000>;
> +		opp-microvolt = <915000>;
> +	};
> +
> +	opp-600000000 {
> +		opp-hz = /bits/ 64 <600000000>;
> +		opp-microvolt = <920000>;
> +	};
> +
> +	opp-700000000 {
> +		opp-hz = /bits/ 64 <700000000>;
> +		opp-microvolt = <950000>;
> +	};
> +
> +	opp-800000000 {
> +		opp-hz = /bits/ 64 <800000000>;
> +		opp-microvolt = <1000000>;
> +	};
> +};

a comment would be nice, why the OPPs get changed


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
