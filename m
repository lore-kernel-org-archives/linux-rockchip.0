Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7BF3E7718E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 11:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHGKntNKca4ohrNxrdhbn/B/jkXg4JzVhlLQeqDmttc=; b=nxgaPOxhTthfic
	4wKwVoEJxt/SURrzmjN3FFxMqQvX5uiz7CyM1xiqVUmPeh32guU8wUoqYDklZoG1KQdgz9WD/97s8
	yUtlX8UXd04806Ucxk1lz/b6YBSGi8lD2QEXtnxf/qmwgvwUfDt/J+aj9NgjREFV32ETMqVu+wBjb
	Jb1j3CUCJWu2m8aSmUyzCToaD8TtPR3/Vx+WuxRsfl6cMsM3zz+TW2Y3JNrRZGWWeR3UCJGEuv3FF
	L3OG0c8dt4XBw4wm373imximnLOaHbMQ+RBAJ7mtgii4sIId+/OpPAeNtRJqwh3hxqiqq6xN48YO3
	SBRUafqImOdo3g7dK/2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPgnn-00000009vCv-1qbn;
	Mon, 23 Dec 2024 11:40:47 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPghS-00000009unE-2Zlt
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 11:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: Cc: From:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1734953652;
 bh=1Y6AZTCRNbilAXGNOzgNNvlGl1mWwmQM2InoYcj43cg=;
 b=LVcKme0+U0Dhq4vBrlIhxV3eeTFurSUUsMLUESv68xNs/sV9U5kZWd7ARBTEfidCXZ6CexxE/
 M2xvcK7+cqmKxRMbItF60pMIVCSJPBRzLzPz0TLtUq0TOGmytflpO6pp1ZKn5YSGHAGrDOyIu39
 QG/rI1epPPp6QNdIUXoV68VRtoo+WFzPE48xsDFnKi49RRPgUZCvKsgPyq7mBYVRhQAepux+fcn
 z9xTpmxHmw2sJrs8vqIaoTHJtOhDoac6zxbFswmHqgUgxn7YsRJSlihi9ILe2Nv2W15de5Ek++R
 /ikk982LrWDataQ2dT4C8kMfycq6in0tkqKH59I09/OA==
Message-ID: <4554d472-afee-47aa-a1da-fedf883c3d56@kwiboo.se>
Date: Mon, 23 Dec 2024 12:34:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add BigTreeTech CB2 board
To: Ivan Sergeev <ivan8215145640@gmail.com>
References: <20241222203952.84217-2-ivan8215145640@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
In-Reply-To: <20241222203952.84217-2-ivan8215145640@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 67694ab2445b82250f09fcf9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_033414_740981_8F01C7BF 
X-CRM114-Status: GOOD (  24.12  )
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

Hi Ivan,

On 2024-12-22 21:39, Ivan Sergeev wrote:
> Add board file for RK3566 BigTreeTech CB2, which is a System on a Module
> and a SBC under a name BigTreeTech Pi 2 sharing the same hardware. The
> device tree is based on a device tree for Orange Pi 3B.

Because the CB2 and Pi 2 are two different boards, one a SoM and the
other a standalone board, this device tree should probably only target
one of them. For SoM board there is typically a .dtsi-file for the SoM
and a .dts-file for a SoM + base-board combo.

E.g. for CB1 and Pi there is:
- sun50i-h616-bigtreetech-cb1.dtsi
- sun50i-h616-bigtreetech-cb1-manta.dts
- sun50i-h616-bigtreetech-pi.dts

Similar split should probably happen for the CB2 and Pi 2.

> 
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3566-bigtreetech-cb2.dts   | 986 ++++++++++++++++++
>  2 files changed, 987 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 86cc418a2255..068cd33ea97b 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -111,6 +111,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lckfb-tspi.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-nanopi-r3s.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-bigtreetech-cb2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r66s.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts
> new file mode 100644
> index 000000000000..68ef1716f142
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts
> @@ -0,0 +1,986 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
> + *
> + */
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +	model = "Rockchip RK3566 BigTreeTech CB2";

This should probably match the marketing names, e.g. BigTreeTech Pi 2 and BigTreeTech CB2.

> +	compatible = "rockchip,rk3566-bigtreetech-cb2", "rockchip,rk3566";

Should probably be something like:

- bigtreetech,cb2, rockchip,rk3566
- bigtreetech,cb2-manta, bigtreetech,cb2, rockchip,rk3566
- bigtreetech,pi2, rockchip,rk3566

The compatibles must also be added, in a separate preceding commit, to
Documentation/devicetree/bindings/arm/rockchip.yaml

> +
> +	aliases {
> +		ethernet0 = &gmac1;
> +		mmc0 = &sdhci;
> +		mmc1 = &sdmmc0;
> +	};
> +
> +	chosen: chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	fan: pwm-fan {
> +		compatible = "pwm-fan";
> +		#cooling-cells = <2>;
> +		pwms = <&pwm7 0 50000 0>;
> +		cooling-levels = <0 50 100 150 200 255>;
> +		rockchip,temp-trips = <
> +			50000   1
> +			55000   2
> +			60000   3
> +			65000   4
> +			70000   5
> +		>;

This is a vendor kernel property, please drop.

> +	};
> +
> +	hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
> +	leds: leds {
> +		compatible = "gpio-leds";
> +
> +		led@0 {

Led node names is typically led-0, led-1 or similar.

> +			gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_HIGH>;
> +			label = "power_led";

Suggest you add the function and color prop and drop this label prop.

> +			linux,default-trigger = "default-on";
> +			pinctrl-names = "default";
> +			pinctrl-0 =<&blue_led>;
> +		};
> +
> +		led@1 {

Same here.

> +			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
> +			label = "status_led";

Same here.

> +			linux,default-trigger = "heartbeat";
> +			pinctrl-names = "default";
> +			pinctrl-0 =<&leds_gpio>;

The name leds_gpio suggest it is multiple, please rename the symbol to
closer match schematic, label printed on board, color or function.

> +		};
> +	};
> +
> +	rk809-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,name = "Analog RK809";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rk809>;
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk809 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		post-power-on-delay-ms = <200>;
> +		reset-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	vcc12v_dcin: vcc12v-dcin-regulator {

Fixed regulator nodes should be regulator-, e.g. regulator-12v0-dcin.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc12v_dcin";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	vcc_5v: vcc-5v-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_5v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vbus: vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vbus";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	vcc3v3_pcie: vcc3v3-pcie-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_pcie";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;

Please use gpios prop.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_drv>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;

Suggest you place all regulator- props togheter.

> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vbus>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vbus>;
> +	};
> +
> +	vcc5v0_usb: vcc5v0-usb {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vbus>;
> +	};
> +
> +	vcc_sd: vcc-sd {
> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "vcc_sd";
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;

Same here.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en>;
> +		regulator-name = "vcc5v0_host3";
> +		regulator-always-on;

Missing regulator-min/max-microvolt.

> +	};
> +
> +	vcc5v0_otg: vcc5v0-otg-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;

Same here.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_otg_en>;
> +		regulator-name = "vcc5v0_otg3";
> +		regulator-always-on;

Missing regulator-min/max-microvolt.

> +	};
> +
> +	vcc5v0_usb2t: vcc5v0-usb2t-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;

Same here.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_usb2t_en>;
> +		regulator-name = "vcc5v0_usb2t";
> +		regulator-always-on;

Same here.

> +	};
> +
> +	vcc5v0_usb2b: vcc5v0-usb2b-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;

Same here.

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_usb2b_en>;
> +		regulator-name = "vcc5v0_usb2b";
> +		regulator-always-on;

Same here.

> +	};
> +
> +	ext_cam_clk: ext-cam-clk {
> +		status = "okay";
> +		compatible = "fixed-clock";
> +		clock-frequency = <25000000>;
> +		clock-output-names = "ext_cam_clk";
> +		#clock-cells = <0>;
> +	};
> +
> +	can_mcp2515_osc: can-mcp2515-osc {
> +		compatible = "fixed-clock";
> +		clock-frequency = <8000000>;
> +		#clock-cells = <0>;
> +	};
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
> +	assigned-clock-rates = <0>, <125000000>;
> +	clock_in_out = "input";
> +	phy-mode = "rgmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m0_miim
> +		     &gmac1m0_tx_bus2
> +		     &gmac1m0_rx_bus2
> +		     &gmac1m0_rgmii_clk
> +		     &gmac1m0_clkinout
> +		     &gmac1m0_rgmii_bus>;
> +
> +	snps,reset-gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	/* Reset time is 20ms, 100ms for rtl8211f */
> +	//snps,reset-delays-us = <0 20000 100000>;
> +	snps,reset-delays-us = <0 50000 200000>;

The snps,reset- props is deprecated, please use reset- props in the
Ethernet PHY node.

Also use of 20ms, 100ms should work for rtl8211f.

> +	tx_delay = <0x30>;
> +	rx_delay = <0x10>;

Please try using phy-mode = "rgmii-id" and drop these two props.

> +	phy-handle = <&rgmii_phy0>;
> +	status = "okay";
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	avdd-0v9-supply = <&vdda0v9_image>;
> +	avdd-1v8-supply = <&vcca1v8_image>;
> +	status = "okay";
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
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	vdd_cpu: tsc4525@1c {

Node name should be regulator@1c

> +		compatible = "tcs,tcs452x";

This should probably be tcs,tcs4525 for mainline.

> +		reg = <0x1c>;
> +		vin-supply = <&vcc5v0_sys>;
> +		regulator-compatible = "fan53555-reg";

This is not used in mainline, please drop.

> +		regulator-name = "vdd_cpu";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1390000>;
> +		regulator-init-microvolt = <900000>;

This is not used in mainline, please drop.

> +		regulator-initial-mode = <1>;
> +		regulator-ramp-delay = <2300>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +
> +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> +		#clock-cells = <1>;
> +		clock-names = "mclk";
> +		clocks = <&cru I2S1_MCLKOUT_TX>;
> +		pinctrl-names = "default", "pmic-sleep",
> +				"pmic-power-off", "pmic-reset";
> +		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
> +		pinctrl-1 = <&soc_slppin_slp>, <&rk817_slppin_slp>;
> +		pinctrl-2 = <&soc_slppin_gpio>, <&rk817_slppin_pwrdn>;
> +		pinctrl-3 = <&soc_slppin_gpio>, <&rk817_slppin_rst>;
> +		#sound-dai-cells = <0>;
> +
> +		rockchip,system-power-controller;

Please use system-power-controller prop.

> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc3v3_sys>;
> +		vcc2-supply = <&vcc3v3_sys>;
> +		vcc3-supply = <&vcc3v3_sys>;
> +		vcc4-supply = <&vcc3v3_sys>;
> +		vcc5-supply = <&vcc3v3_sys>;
> +		vcc6-supply = <&vcc3v3_sys>;
> +		vcc7-supply = <&vcc3v3_sys>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc3v3_sys>;
> +
> +		pinctrl_rk8xx: pinctrl_rk8xx {

This node does not exist in mainline.

> +			gpio-controller;
> +			#gpio-cells = <2>;
> +
> +			rk817_slppin_null: rk817_slppin_null {
> +				pins = "gpio_slp";
> +				function = "pin_fun0";
> +			};
> +
> +			rk817_slppin_slp: rk817_slppin_slp {
> +				pins = "gpio_slp";
> +				function = "pin_fun1";
> +			};
> +
> +			rk817_slppin_pwrdn: rk817_slppin_pwrdn {
> +				pins = "gpio_slp";
> +				function = "pin_fun2";
> +			};
> +
> +			rk817_slppin_rst: rk817_slppin_rst {
> +				pins = "gpio_slp";
> +				function = "pin_fun3";
> +			};
> +		};
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-init-microvolt = <900000>;

This prop does not exist in mainline, please drop from all.

> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_logic";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_gpu: DCDC_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-init-microvolt = <900000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_gpu";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vcc_ddr";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vdd_npu: DCDC_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-init-microvolt = <900000>;
> +				regulator-ramp-delay = <6001>;
> +				regulator-initial-mode = <0x2>;
> +				regulator-name = "vdd_npu";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdda0v9_image: LDO_REG1 {
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-name = "vdda0v9_image";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdda_0v9: LDO_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-name = "vdda_0v9";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdda0v9_pmu: LDO_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-name = "vdda0v9_pmu";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <900000>;
> +				};
> +			};
> +
> +			vccio_acodec: LDO_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-name = "vccio_acodec";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vccio_sd: LDO_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vccio_sd";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_pmu: LDO_REG6 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-name = "vcc3v3_pmu";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3300000>;
> +				};
> +			};
> +
> +			vcca_1v8: LDO_REG7 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcca_1v8";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcca1v8_pmu: LDO_REG8 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcca1v8_pmu";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcca1v8_image: LDO_REG9 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcca1v8_image";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: DCDC_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc_1v8";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v3: SWITCH_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc_3v3";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_sd: SWITCH_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc3v3_sd";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +
> +		codec {
> +			mic-in-differential;

Should possible be rockchip,mic-in-differential, if there is a
microphone that uses differential output, probably not if the microphone
is routed to the headphone jack.

> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	pinctrl-0 = <&i2c2m1_xfer>;
> +};
> +
> +&i2c3 {
> +	status = "okay";
> +
> +	tft_tp: ns2009@48 {
> +		compatible = "ti,tsc2007";
> +		reg = <0x48>;
> +		status = "okay";
> +		ti,x-plate-ohms = <660>;
> +		ti,rt-thr = <3000>;
> +		ti,fuzzx = <32>;
> +		ti,fuzzy = <16>;
> +		i2c,ignore-nak = <1>;
> +	};
> +};
> +
> +&i2s0_8ch {
> +	status = "okay";
> +};
> +
> +&i2s1_8ch {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s1m0_sclktx
> +		     &i2s1m0_lrcktx
> +		     &i2s1m0_sdi0
> +		     &i2s1m0_sdo0>;
> +	rockchip,trcm-sync-tx-only;
> +	status = "okay";
> +};
> +
> +&spi1 {
> +	pinctrl-0 = <&spi1m1_cs0 &spi1m1_pins>;
> +
> +	can_mcp2515: can-mcp2515@0 {
> +		status = "disabled";
> +		compatible = "microchip,mcp2515";
> +		reg = <0x00>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +		spi-max-frequency = <10000000>;
> +		clocks = <&can_mcp2515_osc>;
> +		vdd-supply = <&vcc3v3_sys>;
> +		xceiver-supply = <&vcc3v3_sys>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&mcp2515_int_pin>;
> +	};
> +};
> +
> +&spi3 {
> +	pinctrl-0 = <&spi3m1_cs0 &spi3m1_pins>;
> +};
> +
> +&mdio1 {
> +	rgmii_phy0: phy@0 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x0>;

reset- nodes should be added here.

> +	};
> +};
> +
> +&pcie2x1 {
> +	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_reset_h>;
> +	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	wireless-bluetooth {
> +		uart1_gpios: uart1-gpios {
> +			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	sd {
> +		sdmmc0_pwr_h: sdmmc0-pwr-h {
> +			rockchip,pins =
> +			        <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	mxc6655xa {
> +		mxc6655xa_irq_gpio: mxc6655xa_irq_gpio {
> +			rockchip,pins = <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int: pmic_int {
> +			rockchip,pins =
> +				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		soc_slppin_gpio: soc_slppin_gpio {
> +			rockchip,pins =
> +				<0 RK_PA2 RK_FUNC_GPIO &pcfg_output_low>;
> +		};
> +
> +		soc_slppin_slp: soc_slppin_slp {
> +			rockchip,pins =
> +				<0 RK_PA2 1 &pcfg_pull_none>;
> +		};
> +
> +		soc_slppin_rst: soc_slppin_rst {
> +			rockchip,pins =
> +				<0 RK_PA2 2 &pcfg_pull_none>;
> +		};
> +	};
> +
> +	touch {
> +		touch_gpio: touch-gpio {
> +			rockchip,pins =
> +				<0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
> +				<0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wifi_host_wake: wifi-host-wake-l {
> +			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +
> +	usb {
> +		vcc5v0_host_en: vcc5v0-host-en {
> +			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_otg_en: vcc5v0-otg-en {
> +			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_usb2t_en: vcc5v0_usb2t-en {
> +			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_usb2b_en: vcc5v0-usb2b-en {
> +			rockchip,pins = <4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	work-led {
> +		leds_gpio: leds-gpio {
> +			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		blue_led: led-blue {
> +			rockchip,pins = <4 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	headphone {
> +		hp_det: hp-det {
> +			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +
> +	pcie {
> +		pcie_drv: pcie-drv {
> +			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie_reset_h: pcie-reset-h {
> +			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	edp {
> +	        edp_hpd: edp-hpd {
> +	                rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +	        };
> +
> +	        bl_en: bl-en {
> +	                rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_output_high>;
> +	        };
> +	};
> +
> +	bt {
> +		bt_enable: bt-enable-h {
> +			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		bt_host_wake: bt-host-wake-l {
> +			rockchip,pins = <2 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		bt_wake: bt-wake-l {
> +			rockchip,pins = <2 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	mcp2515_int_pin {
> +		mcp2515_int_pin: mcp2515_in_pin {
> +			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +        status = "okay";
> +        pmuio1-supply = <&vcc3v3_pmu>;
> +        pmuio2-supply = <&vcc3v3_pmu>;
> +        vccio1-supply = <&vcc_3v3>;
> +	vccio2-supply = <&vcc_1v8>;
> +        vccio3-supply = <&vccio_sd>;
> +        vccio4-supply = <&vcc_1v8>;
> +        vccio5-supply = <&vcc_3v3>;
> +        vccio6-supply = <&vcc_3v3>;
> +        vccio7-supply = <&vcc_3v3>;
> +};
> +
> +&pwm0 {
> +	pinctrl-0 = <&pwm0m1_pins>;
> +};
> +
> +&pwm7 {
> +	status = "disabled";
> +};
> +
> +&pwm12 {
> +	pinctrl-0 = <&pwm12m1_pins>;
> +};
> +
> +&pwm13 {
> +	pinctrl-0 = <&pwm13m1_pins>;
> +};
> +
> +&pwm14 {
> +	pinctrl-0 = <&pwm14m1_pins>;
> +};
> +
> +&pwm15 {
> +	pinctrl-0 = <&pwm15m1_pins>;
> +};
> +
> +&saradc {
> +	status = "okay";
> +	vref-supply = <&vcca_1v8>;
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	max-frequency = <200000000>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
> +	status = "okay";
> +};
> +
> +&sdmmc0 {
> +	max-frequency = <150000000>;
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	sd-uhs-sdr104;

UHS104 may cause issue on mainline due to race with IO-domain driver
duing boot, suggest you drop this prop.

Also build your DTS with something like:

  make CHECK_DTBS=y rockchip/rk3566-bigtreetech-cb2.dtb

Will list some issues/warning that needs to be solved.

Also use something like following to list recipient to send a v2 to:

  scripts/get_maintainer.pl arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dts

Regards,
Jonas

> +	vmmc-supply = <&vcc_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +	status = "okay";
> +};
> +
> +&sdmmc1 {
> +	max-frequency = <150000000>;
> +	bus-width = <4>;
> +	disable-wp;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +	rockchip,default-sample-phase = <90>;
> +
> +	sdio-wifi@1 {
> +		compatible = "brcm,bcm4329-fmac";
> +		reg = <0x1>;
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <9 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_host_wake>;
> +		brcm,drive-strength = <10>;
> +	};
> +};
> +
> +&sfc {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +};
> +
> +&tsadc {
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
> +	uart-has-rtscts;
> +	dma-names = "tx\0rx";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm4345c5";
> +		clocks = <&rk809 1>;
> +		clock-names = "lpo";
> +		device-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> +		//pinctrl-names = "default";
> +		//pinctrl-0 = <&bt_host_wake &bt_wake &bt_enable>;
> +		vbat-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcca1v8_pmu>;
> +	};
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&uart5 {
> +	pinctrl-0 = <&uart5m1_xfer>;
> +};
> +
> +&uart7 {
> +	pinctrl-0 = <&uart7m2_xfer>;
> +};
> +
> +&usb2phy0 {
> +	status = "okay";
> +};
> +
> +&usb2phy0_host {
> +	phy-supply = <&vcc5v0_host &vcc5v0_otg>;
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
> +	phy-supply = <&vcc5v0_usb2t &vcc5v0_usb2b>;
> +};
> +
> +&usb2phy1_otg {
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
> +	dr_mode = "host";
> +	extcon = <&usb2phy0>;
> +	status = "okay";
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


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
