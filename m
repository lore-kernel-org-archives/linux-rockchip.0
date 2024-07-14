Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB4A5C3DA42
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jul 2024 15:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bW8pyj7YkB7ROeCXswezxdpJohp1wl5FWWy9kCtbFlM=; b=nv7biV+k3dTHhKDC5ZYceYL+o+
	kQkOgcwNyUO0OtyWcIxja197PhhdgD2e01d6eAS2ONdsT+43Yig6z9K8mbFFEwVNjPyfhqrCX5Kmj
	J4Rx2FH/9++2QncC9B6XRbuDS8XeglwIiCX8u6eIGcCwTdsSkPGdqWlgQyA49FjCVuSiqzX36ci1z
	Phr9fp3x7eVdzBd5hR0pq5HbXeirbZTil1fRtSV9tTr2ScDMrkKw13LxsaWu2b0kCe0DZ7eCP0k9e
	rPrAZNI28SrH+q1fUU9edZ5djLKwh232rbaHocdV/NDBRZb4JvQj20mtSL8kl+7S+jDfXvNQD/u2D
	ghgTJb3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sT19B-00000004hVO-210M;
	Sun, 14 Jul 2024 15:28:21 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sT18q-00000004hRO-0z6F;
	Sun, 14 Jul 2024 15:28:02 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720970876;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RrGlfZzPcSRAUygBGMYkLIt0m/ChR5ThprkV292+01o=;
	b=ohxR0iTrnCtwVMgJNXN/Lo6MZy5ZpzffjpBXmB+wmZcAYIuLMoGvg97sXRlesPkzb5KAa6
	SNHguz5VP0vsaMAlU/EbPOkYv3YX2LCsjtAUZYk9xJdfZPUYPdSXCh1WOicia10ZIF8Egs
	58GVb1tPPz6oAH6LTb64pdpYRYlLvHMrSnryeR3EcsxFxw3KWwXFCXNMSvECxgz3n6MNGo
	1rqwcxChzRgeSh2aKzxbOKsi/bJhOVmSD30ceJ8MZSRpa68H1QN9J2R5h31BK3GlRopNEN
	9wE1jNgUOwiTZQOYFifj1UO1whqdXzD5lXVbaN7JyBl7mU/n2v61J97f+53siw==
Date: Sun, 14 Jul 2024 17:27:54 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add support for rk3588 GenBook
In-Reply-To: <20240714112851.1048184-2-andyshrk@163.com>
References: <20240714112851.1048184-1-andyshrk@163.com>
 <20240714112851.1048184-2-andyshrk@163.com>
Message-ID: <983cfe67f4d83ea96ffc37ec2dde00aa@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240714_082800_914530_F8946EFB 
X-CRM114-Status: GOOD (  19.23  )
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

Hello Andy,

Please see a few comments below.

On 2024-07-14 13:28, Andy Yan wrote:
> Cool Pi GenBook works as a mother board connect with CM5 [0].

s/mother board/carrier board/
s/CM5/GenM5/

> Specification:
> - Rockchip RK3588
> - LPDDR5X 8/32 GB
> - eMMC 64 GB
> - HDMI Type A out x 1
> - USB 3.0 Host x 1
> - USB-C 3.0 with DisplayPort AltMode
> - PCIE M.2 E Key for RTL8852BE Wireless connection
> - PCIE M.2 M Key for NVME connection
> - eDP panel with 1920x1080
> 
> This patch add basic support to bringup eMMC/USB HOST/WiFi
> and can also drive a HDMI output with out of tree hdmi patches.
> 
> [0] 
> https://www.crowdsupply.com/shenzhen-tianmao-technology-co-ltd/genbook-rk3588
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3588-coolpi-genbook.dts    | 296 ++++++++++++++++++
>  2 files changed, 297 insertions(+)
>  create mode 100644 
> arch/arm64/boot/dts/rockchip/rk3588-coolpi-genbook.dts

It would be better to split this into two files: a dtsi for the GenM5 
system
on module, and a dts for the GenBook carrier board.  That way, the 
dts(i) files
would describe the actual hardware better.

> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> b/arch/arm64/boot/dts/rockchip/Makefile
> index 8fa469db400c..0fad54939bbd 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -122,6 +122,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=
> rk3568-wolfvision-pf5-display-vz.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-sige7.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-evb.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-genbook.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-genbook.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-genbook.dts
> new file mode 100644
> index 000000000000..28357c6f05fb
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-genbook.dts
> @@ -0,0 +1,296 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/leds/common.h>
> +#include "rk3588-coolpi-cm5.dtsi"
> +
> +/ {
> +	model = "RK3588 CoolPi GenBook";
> +	compatible = "coolpi,genbook", "coolpi,pi-cm5", "rockchip,rk3588";
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		enable-gpios = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bl_en>;
> +		power-supply = <&vcc12v_dcin>;
> +		pwms = <&pwm6 0 25000 0>;
> +	};
> +
> +	leds: leds {
> +		compatible = "gpio-leds";
> +
> +		heartbeat_led: led-0 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio1 RK_PB0 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		wlan_led: led-1 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			function = LED_FUNCTION_WLAN;
> +			gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		charging_red: led-2 {
> +			function = LED_FUNCTION_CHARGING;
> +			color = <LED_COLOR_ID_RED>;
> +			gpios = <&gpio3 RK_PD2 GPIO_ACTIVE_HIGH>;
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
> +	vcc_sys: vcc-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <7000000>;
> +		regulator-max-microvolt = <7000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <7000000>;
> +		regulator-max-microvolt = <7000000>;
> +		vin-supply = <&vcc_sys>;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc3v3_lcd: vcc3v3-lcd-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_lcd";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lcdpwr_en>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vcc5v0_usb: vcc5v0-usb-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_usb";
> +		regulator-boot-on;
> +		regulator-always-on;
> +		enable-active-high;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_pwren>;
> +		vin-supply = <&vcc_sys>;
> +	};
> +
> +	vcc5v0_usb_host0: vcc5v0_usb30_host: vcc5v0-usb-host-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_host";
> +		regulator-boot-on;
> +		regulator-always-on;
> +		enable-active-high;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio1 RK_PA7 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_host_pwren>;
> +		vin-supply = <&vcc5v0_usb>;
> +	};
> +};
> +
> +&gmac0 {
> +	status = "disabled";
> +};
> +
> +/* M.2 E-Key */
> +&pcie2x1l0 {
> +	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&vcc3v3_sys>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreq &pcie_wake &pcie_rst &wifi_pwron 
> &bt_pwron>;
> +	status = "okay";
> +};
> +
> +&pcie2x1l2 {
> +	status = "disabled";
> +};
> +
> +&pcie30phy {
> +	status = "okay";
> +};
> +
> +/* M.2 M-Key ssd */
> +&pcie3x4 {
> +	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&vcc3v3_sys>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	lcd {
> +		lcdpwr_en: lcdpwr-en {
> +			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		bl_en: bl-en {
> +			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		usb_pwren: usb-pwren {
> +			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		usb_otg_pwren: usb-otg-pwren {
> +			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		usb_host_pwren: usb-host-pwren {
> +			rockchip,pins = <1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	wifi {
> +		bt_pwron: bt-pwron {
> +			rockchip,pins = <3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		pcie_clkreq: pcie-clkreq {
> +			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		pcie_rst: pcie-rst {
> +			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		wifi_pwron: wifi-pwron {
> +			rockchip,pins = <3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		pcie_wake: pcie-wake {
> +			rockchip,pins = <4 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};
> +
> +&pwm6 {
> +	pinctrl-0 = <&pwm6m1_pins>;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	status = "disabled";
> +};
> +
> +&sfc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&fspim2_pins>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0x0>;
> +		spi-max-frequency = <100000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +	};
> +};
> +
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	status = "okay";
> +};
> +
> +&usbdp_phy0 {
> +	status = "okay";
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
> +&u2phy2 {
> +	status = "okay";
> +};
> +
> +&u2phy3 {
> +	status = "okay";
> +};
> +
> +&u2phy2_host {
> +	phy-supply = <&vcc5v0_usb_host0>;
> +	status = "okay";
> +};
> +
> +&u2phy3_host {
> +	phy-supply = <&vcc5v0_usb>;
> +	status = "okay";
> +};
> +
> +&usbdp_phy1 {
> +	status = "okay";
> +};
> +
> +/* For Keypad */
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};
> +
> +/* Type C port */
> +&usb_host0_xhci {
> +	dr_mode = "peripheral";
> +	maximum-speed = "high-speed";
> +	status = "okay";
> +};
> +
> +/* connected to a HUB for camera and BT */
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};
> +
> +/* USB A out */
> +&usb_host1_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
