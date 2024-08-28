Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34F44C636EA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 17:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24KbCxSHvwi7o9rntE8YPPCx2A9Vr0nkUZMey7EPGMI=; b=u3eg650Fb/IPI6
	gBSnYhyRYen/DkJjtZmAcXCAN11d1oaJsfBCCPQDr8xLYe7D5eoOsi0iQXan3GHHG7OBJeougiQ/B
	xH+cNusTIFherlE+C9a/u7PeM8EuY63IxpHPupR8gtEkcnNzQvIiJte66yQ7kK8pN+2D8kuaZLjSy
	APvVGwyfStwL5HAS8HzSEwpch74sjmefTusH8I2oq2QcxyaS2raxnj53rkbivQogXyc7waoV+mrAg
	fcL8DjvuZIENUkF3MDPKzfAXRpaNiGAZ7FkovtJ3UUDuCqL0Zo6+x2KxZ3w2WzUO0O8YvkeorxJl+
	jhKIlW2xuepPYpFN50/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjM6K-0000000GIJy-1ZhM;
	Wed, 28 Aug 2024 17:04:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjM6G-0000000GIIQ-02uM
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 17:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7wLxIBI36DqZPj/2Lz9zrAP/Rl3YWkPGVyVTGcvxwOk=; b=DVNc+esi/XSc+mrUCrOugjc3el
	HfBMBWou2rxgBzAD+cug8KYBGwqK/el/l/FBjWfvInTzm2OZYiQGnu92Y4fsezhUChvKcBy160D8X
	jpnunNxCoNeawrdbHKh5J34Vd5LUweMrMtP4H0k8BuSgq5iDNxEin8MWPiyYQTxbRJaUIDaCTZaDP
	1hvKef5RPnH50G8d4+LIzDr/ljymfdv9WyFJlDQqh6Kk38gjz5NAsRTg2eGduBq6rBf2M4UyVjl/D
	7RHyTvosY6QwvB0l2T6ezlC+ggfQT48wDK7brT3rIyfqW+udP+bKWU8YqzeNHwwlmI/fJPhKnvryS
	3FqN+rcw==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjM6D-0006nh-E3; Wed, 28 Aug 2024 19:04:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH v5 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
Date: Wed, 28 Aug 2024 19:06:02 +0200
Message-ID: <3060849.WAvfycf1tz@diego>
In-Reply-To: <20240826-friendlyelec-nanopc-t6-lts-v5-2-ba33edda7f17@linaro.org>
References: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org>
 <20240826-friendlyelec-nanopc-t6-lts-v5-2-ba33edda7f17@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_100452_432473_31000FFF 
X-CRM114-Status: GOOD (  24.25  )
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

Am Montag, 26. August 2024, 10:02:46 CEST schrieb Marcin Juszkiewicz:
> FriendlyELEC introduced a second version of NanoPC-T6 SBC.
> 
> Create common include file and separate DT files for each version of the
> board.
> 
> In the LTS version the miniPCIe slot got removed and USB 2.0 setup has
> changed. There are two external accessible ports and two ports on the
> internal header.
> 
> There is an on-board USB hub which provides:
> - one external connector (bottom one)
> - two internal ports on pin header
> - one port for m.2 E connector
> 
> The top USB 2.0 connector comes directly from the SoC.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

So as Diederik already mentioned, this definitly needs to be split up.
Simply because it's hard to read and make verify that nothing slipped in.

So please the move from dts to dtsi should be its own separate patch
and a second patch then can add the "lts" devicetree on top.


Heiko

> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 910 +--------------------
>  ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} |  16 -
>  4 files changed, 66 insertions(+), 922 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index fda1b980eb4b..0f982c741243 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -128,6 +128,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
> new file mode 100644
> index 000000000000..fc465957a00b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
> @@ -0,0 +1,61 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2023 Thomas McKahan
> + * Copyright (c) 2024 Linaro Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "rk3588-nanopc-t6.dtsi"
> +
> +/ {
> +	model = "FriendlyElec NanoPC-T6 LTS";
> +	compatible = "friendlyarm,nanopc-t6-lts", "rockchip,rk3588";
> +
> +	/* provide power for on-board USB 2.0 hub */
> +	vcc5v0_usb20_host: vcc5v0-usb20-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&usb20_host_pwren>;
> +		pinctrl-names = "default";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-name = "vcc5v0_usb20_host";
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +};
> +
> +&pinctrl {
> +	usb {
> +		usb20_host_pwren: usb20-host-pwren {
> +			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&u2phy1 {
> +	status = "okay";
> +};
> +
> +&u2phy1_otg {
> +	status = "okay";
> +};
> +
> +&u2phy2_host {
> +	phy-supply = <&vcc5v0_usb20_host>;
> +	status = "okay";
> +};
> +
> +&usbdp_phy1 {
> +	status = "okay";
> +};
> +
> +&usb_host1_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> index ad8e36a339dc..2a2dc77c71b1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> @@ -2,175 +2,19 @@
>  /*
>   * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>   * Copyright (c) 2023 Thomas McKahan
> + * Copyright (c) 2024 Linaro Ltd.
>   *
>   */
>  
>  /dts-v1/;
>  
> -#include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/pinctrl/rockchip.h>
> -#include <dt-bindings/usb/pd.h>
> -#include "rk3588.dtsi"
> +#include "rk3588-nanopc-t6.dtsi"
>  
>  / {
>  	model = "FriendlyElec NanoPC-T6";
>  	compatible = "friendlyarm,nanopc-t6", "rockchip,rk3588";
>  
> -	aliases {
> -		mmc0 = &sdhci;
> -		mmc1 = &sdmmc;
> -	};
> -
> -	chosen {
> -		stdout-path = "serial2:1500000n8";
> -	};
> -
> -	leds {
> -		compatible = "gpio-leds";
> -
> -		sys_led: led-0 {
> -			gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> -			label = "system-led";
> -			linux,default-trigger = "heartbeat";
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&sys_led_pin>;
> -		};
> -
> -		usr_led: led-1 {
> -			gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> -			label = "user-led";
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&usr_led_pin>;
> -		};
> -	};
> -
> -	sound {
> -		compatible = "simple-audio-card";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&hp_det>;
> -
> -		simple-audio-card,name = "realtek,rt5616-codec";
> -		simple-audio-card,format = "i2s";
> -		simple-audio-card,mclk-fs = <256>;
> -
> -		simple-audio-card,hp-det-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_LOW>;
> -		simple-audio-card,hp-pin-name = "Headphones";
> -
> -		simple-audio-card,widgets =
> -			"Headphone", "Headphones",
> -			"Microphone", "Microphone Jack";
> -		simple-audio-card,routing =
> -			"Headphones", "HPOL",
> -			"Headphones", "HPOR",
> -			"MIC1", "Microphone Jack",
> -			"Microphone Jack", "micbias1";
> -
> -		simple-audio-card,cpu {
> -			sound-dai = <&i2s0_8ch>;
> -		};
> -		simple-audio-card,codec {
> -			sound-dai = <&rt5616>;
> -		};
> -	};
> -
> -	vcc12v_dcin: vcc12v-dcin-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc12v_dcin";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <12000000>;
> -		regulator-max-microvolt = <12000000>;
> -	};
> -
> -	/* vcc5v0_sys powers peripherals */
> -	vcc5v0_sys: vcc5v0-sys-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc5v0_sys";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc12v_dcin>;
> -	};
> -
> -	/* vcc4v0_sys powers the RK806, RK860's */
> -	vcc4v0_sys: vcc4v0-sys-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc4v0_sys";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <4000000>;
> -		regulator-max-microvolt = <4000000>;
> -		vin-supply = <&vcc12v_dcin>;
> -	};
> -
> -	vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc-1v1-nldo-s3";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <1100000>;
> -		regulator-max-microvolt = <1100000>;
> -		vin-supply = <&vcc4v0_sys>;
> -	};
> -
> -	vcc_3v3_pcie20: vcc3v3-pcie20-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "vcc_3v3_pcie20";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc_3v3_s3>;
> -	};
> -
> -	vbus5v0_typec: vbus5v0-typec-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&typec5v_pwren>;
> -		regulator-name = "vbus5v0_typec";
> -		regulator-min-microvolt = <5000000>;
> -		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc5v0_sys>;
> -	};
> -
> -	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pcie_m2_1_pwren>;
> -		regulator-name = "vcc3v3_pcie2x1l0";
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc5v0_sys>;
> -	};
> -
> -	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpios = <&gpio2 RK_PC5 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pcie_m2_0_pwren>;
> -		regulator-name = "vcc3v3_pcie30";
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc5v0_sys>;
> -	};
> -
> -	vcc3v3_sd_s0: vcc3v3-sd-s0-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-low;
> -		gpio = <&gpio4 RK_PA5 GPIO_ACTIVE_LOW>;
> -		regulator-boot-on;
> -		regulator-max-microvolt = <3300000>;
> -		regulator-min-microvolt = <3300000>;
> -		regulator-name = "vcc3v3_sd_s0";
> -		vin-supply = <&vcc_3v3_s3>;
> -	};
> -
> +	/* provide power for minipcie slot */
>  	vdd_4g_3v3: vdd-4g-3v3-regulator {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
> @@ -184,762 +28,16 @@ vdd_4g_3v3: vdd-4g-3v3-regulator {
>  	};
>  };
>  
> -&combphy0_ps {
> -	status = "okay";
> -};
> -
> -&combphy1_ps {
> -	status = "okay";
> -};
> -
> -&combphy2_psu {
> -	status = "okay";
> -};
> -
> -&cpu_l0 {
> -	cpu-supply = <&vdd_cpu_lit_s0>;
> -};
> -
> -&cpu_l1 {
> -	cpu-supply = <&vdd_cpu_lit_s0>;
> -};
> -
> -&cpu_l2 {
> -	cpu-supply = <&vdd_cpu_lit_s0>;
> -};
> -
> -&cpu_l3 {
> -	cpu-supply = <&vdd_cpu_lit_s0>;
> -};
> -
> -&cpu_b0 {
> -	cpu-supply = <&vdd_cpu_big0_s0>;
> -};
> -
> -&cpu_b1 {
> -	cpu-supply = <&vdd_cpu_big0_s0>;
> -};
> -
> -&cpu_b2 {
> -	cpu-supply = <&vdd_cpu_big1_s0>;
> -};
> -
> -&cpu_b3 {
> -	cpu-supply = <&vdd_cpu_big1_s0>;
> -};
> -
> -&gpio0 {
> -	gpio-line-names = /* GPIO0 A0-A7 */
> -			  "", "", "", "",
> -			  "", "", "", "",
> -			  /* GPIO0 B0-B7 */
> -			  "", "", "", "",
> -			  "", "", "", "",
> -			  /* GPIO0 C0-C7 */
> -			  "", "", "", "",
> -			  "HEADER_10", "HEADER_08", "HEADER_32", "",
> -			  /* GPIO0 D0-D7 */
> -			  "", "", "", "",
> -			  "", "", "", "";
> -};
> -
> -&gpio1 {
> -	gpio-line-names = /* GPIO1 A0-A7 */
> -			  "HEADER_27", "HEADER_28", "", "",
> -			  "", "", "", "HEADER_15",
> -			  /* GPIO1 B0-B7 */
> -			  "HEADER_26", "HEADER_21", "HEADER_19", "HEADER_23",
> -			  "HEADER_24", "HEADER_22", "", "",
> -			  /* GPIO1 C0-C7 */
> -			  "", "", "", "",
> -			  "", "", "", "",
> -			  /* GPIO1 D0-D7 */
> -			  "", "", "", "",
> -			  "", "", "HEADER_05", "HEADER_03";
> -};
> -
> -&gpio2 {
> -	gpio-line-names = /* GPIO2 A0-A7 */
> -			  "", "", "", "",
> -			  "", "", "", "",
> -			  /* GPIO2 B0-B7 */
> -			  "", "", "", "",
> -			  "", "", "", "",
> -			  /* GPIO2 C0-C7 */
> -			  "", "CSI1_11", "CSI1_12", "",
> -			  "", "", "", "",
> -			  /* GPIO2 D0-D7 */
> -			  "", "", "", "",
> -			  "", "", "", "";
> -};
> -
> -&gpio3 {
> -	gpio-line-names = /* GPIO3 A0-A7 */
> -			  "HEADER_35", "HEADER_38", "HEADER_40", "HEADER_36",
> -			  "HEADER_37", "", "DSI0_12", "",
> -			  /* GPIO3 B0-B7 */
> -			  "HEADER_33", "DSI0_10", "HEADER_07", "HEADER_16",
> -			  "HEADER_18", "HEADER_29", "HEADER_31", "HEADER_12",
> -			  /* GPIO3 C0-C7 */
> -			  "DSI0_08", "DSI0_14", "HEADER_11", "HEADER_13",
> -			  "", "", "", "",
> -			  /* GPIO3 D0-D7 */
> -			  "", "", "", "",
> -			  "", "DSI1_10", "", "";
> -};
> -
> -&gpio4 {
> -	gpio-line-names = /* GPIO4 A0-A7 */
> -			  "DSI1_08", "DSI1_14", "", "DSI1_12",
> -			  "", "", "", "",
> -			  /* GPIO4 B0-B7 */
> -			  "", "", "", "",
> -			  "", "", "", "",
> -			  /* GPIO4 C0-C7 */
> -			  "", "", "", "",
> -			  "CSI0_11", "CSI0_12", "", "",
> -			  /* GPIO4 D0-D7 */
> -			  "", "", "", "",
> -			  "", "", "", "";
> -};
> -
> -&i2c0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c0m2_xfer>;
> -	status = "okay";
> -
> -	vdd_cpu_big0_s0: regulator@42 {
> -		compatible = "rockchip,rk8602";
> -		reg = <0x42>;
> -		fcs,suspend-voltage-selector = <1>;
> -		regulator-name = "vdd_cpu_big0_s0";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <550000>;
> -		regulator-max-microvolt = <1050000>;
> -		regulator-ramp-delay = <2300>;
> -		vin-supply = <&vcc4v0_sys>;
> -
> -		regulator-state-mem {
> -			regulator-off-in-suspend;
> -		};
> -	};
> -
> -	vdd_cpu_big1_s0: regulator@43 {
> -		compatible = "rockchip,rk8603", "rockchip,rk8602";
> -		reg = <0x43>;
> -		fcs,suspend-voltage-selector = <1>;
> -		regulator-name = "vdd_cpu_big1_s0";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <550000>;
> -		regulator-max-microvolt = <1050000>;
> -		regulator-ramp-delay = <2300>;
> -		vin-supply = <&vcc4v0_sys>;
> -
> -		regulator-state-mem {
> -			regulator-off-in-suspend;
> -		};
> -	};
> -};
> -
> -&i2c2 {
> -	status = "okay";
> -
> -	vdd_npu_s0: regulator@42 {
> -		compatible = "rockchip,rk8602";
> -		reg = <0x42>;
> -		rockchip,suspend-voltage-selector = <1>;
> -		regulator-name = "vdd_npu_s0";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <550000>;
> -		regulator-max-microvolt = <950000>;
> -		regulator-ramp-delay = <2300>;
> -		vin-supply = <&vcc4v0_sys>;
> -
> -		regulator-state-mem {
> -			regulator-off-in-suspend;
> -		};
> -	};
> -};
> -
> -&i2c6 {
> -	clock-frequency = <200000>;
> -	status = "okay";
> -
> -	fusb302: typec-portc@22 {
> -		compatible = "fcs,fusb302";
> -		reg = <0x22>;
> -		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
> -		pinctrl-0 = <&usbc0_int>;
> -		pinctrl-names = "default";
> -		vbus-supply = <&vbus5v0_typec>;
> -
> -		connector {
> -			compatible = "usb-c-connector";
> -			data-role = "dual";
> -			label = "USB-C";
> -			power-role = "dual";
> -			try-power-role = "sink";
> -			source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
> -			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> -			op-sink-microwatt = <1000000>;
> -		};
> -	};
> -
> -	hym8563: rtc@51 {
> -		compatible = "haoyu,hym8563";
> -		reg = <0x51>;
> -		#clock-cells = <0>;
> -		clock-output-names = "hym8563";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&hym8563_int>;
> -		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> -		wakeup-source;
> -	};
> -};
> -
> -&i2c7 {
> -	clock-frequency = <200000>;
> -	status = "okay";
> -
> -	rt5616: codec@1b {
> -		compatible = "realtek,rt5616";
> -		reg = <0x1b>;
> -		clocks = <&cru I2S0_8CH_MCLKOUT>;
> -		clock-names = "mclk";
> -		#sound-dai-cells = <0>;
> -		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
> -		assigned-clock-rates = <12288000>;
> -
> -		port {
> -			rt5616_p0_0: endpoint {
> -				remote-endpoint = <&i2s0_8ch_p0_0>;
> -			};
> -		};
> -	};
> -
> -	/* connected with MIPI-CSI1 */
> -};
> -
> -&i2c8 {
> -	pinctrl-0 = <&i2c8m2_xfer>;
> -};
> -
> -&i2s0_8ch {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2s0_lrck
> -		     &i2s0_mclk
> -		     &i2s0_sclk
> -		     &i2s0_sdi0
> -		     &i2s0_sdo0>;
> -	status = "okay";
> -
> -	i2s0_8ch_p0: port {
> -		i2s0_8ch_p0_0: endpoint {
> -			dai-format = "i2s";
> -			mclk-fs = <256>;
> -			remote-endpoint = <&rt5616_p0_0>;
> -		};
> -	};
> -};
> -
> -&pcie2x1l0 {
> -	reset-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
> -	vpcie3v3-supply = <&vcc_3v3_pcie20>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie2_0_rst>;
> -	status = "okay";
> -};
> -
> -&pcie2x1l1 {
> -	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
> -	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie2_1_rst>;
> -	status = "okay";
> -};
> -
> -&pcie2x1l2 {
> -	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
> -	vpcie3v3-supply = <&vcc_3v3_pcie20>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie2_2_rst>;
> -	status = "okay";
> -};
> -
> -&pcie30phy {
> -	status = "okay";
> -};
> -
> -&pcie3x4 {
> -	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> -	vpcie3v3-supply = <&vcc3v3_pcie30>;
> -	status = "okay";
> -};
> -
>  &pinctrl {
> -	gpio-leds {
> -		sys_led_pin: sys-led-pin {
> -			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		usr_led_pin: usr-led-pin {
> -			rockchip,pins = <2 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
> -	headphone {
> -		hp_det: hp-det {
> -			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
> -	hym8563 {
> -		hym8563_int: hym8563-int {
> -			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
> -	};
> -
> -	pcie {
> -		pcie2_0_rst: pcie2-0-rst {
> -			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		pcie2_1_rst: pcie2-1-rst {
> -			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		pcie2_2_rst: pcie2-2-rst {
> -			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		pcie_m2_0_pwren: pcie-m20-pwren {
> -			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		pcie_m2_1_pwren: pcie-m21-pwren {
> -			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
>  	usb {
>  		pin_4g_lte_pwren: 4g-lte-pwren {
>  			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
> -
> -		typec5v_pwren: typec5v-pwren {
> -			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> -		usbc0_int: usbc0-int {
> -			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
> -		};
>  	};
>  };
>  
> -&pwm1 {
> -	pinctrl-0 = <&pwm1m1_pins>;
> -	status = "okay";
> -};
> -
> -&saradc {
> -	vref-supply = <&avcc_1v8_s0>;
> -	status = "okay";
> -};
> -
> -&sdhci {
> -	bus-width = <8>;
> -	no-sdio;
> -	no-sd;
> -	non-removable;
> -	max-frequency = <200000000>;
> -	mmc-hs400-1_8v;
> -	mmc-hs400-enhanced-strobe;
> -	status = "okay";
> -};
> -
> -&sdmmc {
> -	bus-width = <4>;
> -	cap-mmc-highspeed;
> -	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> -	disable-wp;
> -	no-mmc;
> -	no-sdio;
> -	sd-uhs-sdr104;
> -	vmmc-supply = <&vcc3v3_sd_s0>;
> -	vqmmc-supply = <&vccio_sd_s0>;
> -	status = "okay";
> -};
> -
> -&spi2 {
> -	status = "okay";
> -	assigned-clocks = <&cru CLK_SPI2>;
> -	assigned-clock-rates = <200000000>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
> -	num-cs = <1>;
> -
> -	pmic@0 {
> -		compatible = "rockchip,rk806";
> -		spi-max-frequency = <1000000>;
> -		reg = <0x0>;
> -
> -		interrupt-parent = <&gpio0>;
> -		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> -
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
> -			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
> -
> -		system-power-controller;
> -
> -		vcc1-supply = <&vcc4v0_sys>;
> -		vcc2-supply = <&vcc4v0_sys>;
> -		vcc3-supply = <&vcc4v0_sys>;
> -		vcc4-supply = <&vcc4v0_sys>;
> -		vcc5-supply = <&vcc4v0_sys>;
> -		vcc6-supply = <&vcc4v0_sys>;
> -		vcc7-supply = <&vcc4v0_sys>;
> -		vcc8-supply = <&vcc4v0_sys>;
> -		vcc9-supply = <&vcc4v0_sys>;
> -		vcc10-supply = <&vcc4v0_sys>;
> -		vcc11-supply = <&vcc_2v0_pldo_s3>;
> -		vcc12-supply = <&vcc4v0_sys>;
> -		vcc13-supply = <&vcc_1v1_nldo_s3>;
> -		vcc14-supply = <&vcc_1v1_nldo_s3>;
> -		vcca-supply = <&vcc4v0_sys>;
> -
> -		gpio-controller;
> -		#gpio-cells = <2>;
> -
> -		rk806_dvs1_null: dvs1-null-pins {
> -			pins = "gpio_pwrctrl1";
> -			function = "pin_fun0";
> -		};
> -
> -		rk806_dvs2_null: dvs2-null-pins {
> -			pins = "gpio_pwrctrl2";
> -			function = "pin_fun0";
> -		};
> -
> -		rk806_dvs3_null: dvs3-null-pins {
> -			pins = "gpio_pwrctrl3";
> -			function = "pin_fun0";
> -		};
> -
> -		regulators {
> -			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
> -				regulator-boot-on;
> -				regulator-min-microvolt = <550000>;
> -				regulator-max-microvolt = <950000>;
> -				regulator-ramp-delay = <12500>;
> -				regulator-name = "vdd_gpu_s0";
> -				regulator-enable-ramp-delay = <400>;
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vdd_cpu_lit_s0: vdd_cpu_lit_mem_s0: dcdc-reg2 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <550000>;
> -				regulator-max-microvolt = <950000>;
> -				regulator-ramp-delay = <12500>;
> -				regulator-name = "vdd_cpu_lit_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vdd_log_s0: dcdc-reg3 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <675000>;
> -				regulator-max-microvolt = <750000>;
> -				regulator-ramp-delay = <12500>;
> -				regulator-name = "vdd_log_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -					regulator-suspend-microvolt = <750000>;
> -				};
> -			};
> -
> -			vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <550000>;
> -				regulator-max-microvolt = <950000>;
> -				regulator-init-microvolt = <750000>;
> -				regulator-ramp-delay = <12500>;
> -				regulator-name = "vdd_vdenc_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vdd_ddr_s0: dcdc-reg5 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <675000>;
> -				regulator-max-microvolt = <900000>;
> -				regulator-ramp-delay = <12500>;
> -				regulator-name = "vdd_ddr_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -					regulator-suspend-microvolt = <850000>;
> -				};
> -			};
> -
> -			vdd2_ddr_s3: dcdc-reg6 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-name = "vdd2_ddr_s3";
> -
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -				};
> -			};
> -
> -			vcc_2v0_pldo_s3: dcdc-reg7 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <2000000>;
> -				regulator-max-microvolt = <2000000>;
> -				regulator-ramp-delay = <12500>;
> -				regulator-name = "vdd_2v0_pldo_s3";
> -
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <2000000>;
> -				};
> -			};
> -
> -			vcc_3v3_s3: dcdc-reg8 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-name = "vcc_3v3_s3";
> -
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <3300000>;
> -				};
> -			};
> -
> -			vddq_ddr_s0: dcdc-reg9 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-name = "vddq_ddr_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc_1v8_s3: dcdc-reg10 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-name = "vcc_1v8_s3";
> -
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> -				};
> -			};
> -
> -			avcc_1v8_s0: pldo-reg1 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-name = "avcc_1v8_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc_1v8_s0: pldo-reg2 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-name = "vcc_1v8_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> -				};
> -			};
> -
> -			avdd_1v2_s0: pldo-reg3 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1200000>;
> -				regulator-max-microvolt = <1200000>;
> -				regulator-name = "avdd_1v2_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vcc_3v3_s0: pldo-reg4 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <3300000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-ramp-delay = <12500>;
> -				regulator-name = "vcc_3v3_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vccio_sd_s0: pldo-reg5 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-ramp-delay = <12500>;
> -				regulator-name = "vccio_sd_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			pldo6_s3: pldo-reg6 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-name = "pldo6_s3";
> -
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <1800000>;
> -				};
> -			};
> -
> -			vdd_0v75_s3: nldo-reg1 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <750000>;
> -				regulator-max-microvolt = <750000>;
> -				regulator-name = "vdd_0v75_s3";
> -
> -				regulator-state-mem {
> -					regulator-on-in-suspend;
> -					regulator-suspend-microvolt = <750000>;
> -				};
> -			};
> -
> -			vdd_ddr_pll_s0: nldo-reg2 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <850000>;
> -				regulator-max-microvolt = <850000>;
> -				regulator-name = "vdd_ddr_pll_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -					regulator-suspend-microvolt = <850000>;
> -				};
> -			};
> -
> -			avdd_0v75_s0: nldo-reg3 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <750000>;
> -				regulator-max-microvolt = <750000>;
> -				regulator-name = "avdd_0v75_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vdd_0v85_s0: nldo-reg4 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <850000>;
> -				regulator-max-microvolt = <850000>;
> -				regulator-name = "vdd_0v85_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -
> -			vdd_0v75_s0: nldo-reg5 {
> -				regulator-always-on;
> -				regulator-boot-on;
> -				regulator-min-microvolt = <750000>;
> -				regulator-max-microvolt = <750000>;
> -				regulator-name = "vdd_0v75_s0";
> -
> -				regulator-state-mem {
> -					regulator-off-in-suspend;
> -				};
> -			};
> -		};
> -	};
> -};
> -
> -&tsadc {
> -	status = "okay";
> -};
> -
> -&uart2 {
> -	pinctrl-0 = <&uart2m0_xfer>;
> -	status = "okay";
> -};
> -
> +/* USB 2.0 in minipcie slot */
>  &u2phy2_host {
>  	phy-supply = <&vdd_4g_3v3>;
>  	status = "okay";
>  };
> -
> -&u2phy3_host {
> -	status = "okay";
> -};
> -
> -&u2phy2 {
> -	status = "okay";
> -};
> -
> -&u2phy3 {
> -	status = "okay";
> -};
> -
> -&usb_host0_ehci {
> -	status = "okay";
> -};
> -
> -&usb_host0_ohci {
> -	status = "okay";
> -};
> -
> -&usb_host1_ehci {
> -	status = "okay";
> -};
> -
> -&usb_host1_ohci {
> -	status = "okay";
> -};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> similarity index 97%
> copy from arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> copy to arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index ad8e36a339dc..ce0db9b8b126 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -170,18 +170,6 @@ vcc3v3_sd_s0: vcc3v3-sd-s0-regulator {
>  		regulator-name = "vcc3v3_sd_s0";
>  		vin-supply = <&vcc_3v3_s3>;
>  	};
> -
> -	vdd_4g_3v3: vdd-4g-3v3-regulator {
> -		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pin_4g_lte_pwren>;
> -		regulator-name = "vdd_4g_3v3";
> -		regulator-min-microvolt = <3300000>;
> -		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc5v0_sys>;
> -	};
>  };
>  
>  &combphy0_ps {
> @@ -527,10 +515,6 @@ pcie_m2_1_pwren: pcie-m21-pwren {
>  	};
>  
>  	usb {
> -		pin_4g_lte_pwren: 4g-lte-pwren {
> -			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
>  		typec5v_pwren: typec5v-pwren {
>  			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
