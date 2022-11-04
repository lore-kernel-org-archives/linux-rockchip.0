Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E20EC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 13:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSRE616i5Q7VosNidKJzFHRHZaZXySYrpVU9+ClGVdc=; b=3LpkFF+O8rxHJq
	3ib7F6trFZ9KtAh3lkN6qfeA7d9Mj2/aaQ+s/z3lXHXopPyLZr2laAC+FWqOTDyZ9wpOyx2VuuSgL
	Oagc5dV3RA0UB7Xe8/l6Yn/Wh2Vd/+ac7hJAKWMHWQmc0djXsGxhSK5zsyKkavEOaI1CsYm6Vd7WV
	klKmBysbFBYSHCiZCfGHN/SdOzRu7dh7g3fg6i66oGmOw9bHAtRpKUlnDJF0jJ+CVmXT0RNcxuCcy
	wsgXURLsccv06RtBxUBJKZfkeR0ZzeL9xOCYBpY0KK53jG60YiLk43DPpOaviL/gZg6FlHdLCKJOB
	3YjGLI86h7MbpM/DJLFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwYi-003bwy-CI; Fri, 04 Nov 2022 13:16:32 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqwYR-003br6-Qg
	for linux-rockchip@lists.infradead.org; Fri, 04 Nov 2022 13:16:22 +0000
Received: by mail-qt1-x82c.google.com with SMTP id h21so2985020qtu.2
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Nov 2022 06:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=swCK906swy0qXOHHAN4yLu1KSDM5U68ysH+cYzSB4XQ=;
        b=jdnPlWki31khGRraYGKAj5o4g52voOS8ZkcIrr1FloZuDIdEfK9DnzmuVfmR+pLK+K
         Exhp+Nw6eudjRX1LrvnLhCFeeW/JeAlwAti641ez3+R7pzf3fSepSLV+z/9vxX+EOy8P
         lLV9H0tOhOI8htWpVSh4VkK1J82zEVBmqUaV70QNRVVoqv+yDIQI9B57IRBtiCah5YHY
         BgEY9juC9Ku3wu3p263YJylK84OSrg73ZO07hSRi1PuaxVKLzQBUQxrAyjn+DNtc6emQ
         yGuGeW0XNqrKvMneiHm3ciNhrkdgPlSmZtJPa8OsrBtYVeq6c8mLp8Ke9pPdSwcXN8na
         naLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=swCK906swy0qXOHHAN4yLu1KSDM5U68ysH+cYzSB4XQ=;
        b=Pz0xGoYs47DtvWIFypx5XeqmEV/PAfsH38qbzAcZZSyyMoDftzbegdFQ68W9PfBqcR
         yaZNiWL+0WKpSWGPyjIP0OXGthECzD98h85628ucaFTnBQnvJ0s8JdAJmAvwcJwIJevq
         4pzG48WjyGWAHiyJFMsty2WGijYtzq7Elp15OUA+m0XgOIWlW0M4/kfgiL3bJj0t5vuk
         IQqgfJLGMR75ssAk96lg45vnHhw35GjNcvNVRqH2R4+dS69tf7UoK5j333PMA2WEG2F7
         sIdERiDdSyAL3RFC/AyTm/wTovBsU1VyyI0KWOcBENxkNbZfM24AHGP/iCrpZggk4oxb
         4ezQ==
X-Gm-Message-State: ACrzQf1n72827wPz9vgIu1a+erCkuxW3yBIdx4sPLmHOQmmkUnxOHZC5
	4nPjkiltm30Az089GXAc1kBr1g==
X-Google-Smtp-Source: AMsMyM7p+8ADBIl8fNgqxxqnEoZuU1TUxFCX0+Q4syI78RjCSrl+J63rGzdWOaOKWSVYKm0TgmhXUA==
X-Received: by 2002:a05:622a:170d:b0:3a5:e6b:641d with SMTP id h13-20020a05622a170d00b003a50e6b641dmr29041622qtk.449.1667567772429;
        Fri, 04 Nov 2022 06:16:12 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id bi11-20020a05620a318b00b006eeca296c00sm2809998qkb.104.2022.11.04.06.16.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:16:12 -0700 (PDT)
Message-ID: <39c3f8ff-0349-0b13-e83f-e933680d1264@linaro.org>
Date: Fri, 4 Nov 2022 09:16:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add dts for rockchip rk3566 box
 demo board
Content-Language: en-US
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Cc: krzysztof.kozlowski+dt@linaro.org, pgwipeout@gmail.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
References: <20221104123804.484109-1-andyshrk@163.com>
 <20221104123838.484205-1-andyshrk@163.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104123838.484205-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_061616_009382_C70D6432 
X-CRM114-Status: GOOD (  19.20  )
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

On 04/11/2022 08:38, Andy Yan wrote:
> This is a rk3566 tv box  evaluation demo board.
> 
> Specification:
> - Rockchip RK3566
> - DDR4 4GB
> - TF sd scard slot
> - eMMC
> - AP6398S for WiFi + BT
> - Gigabit ethernet
> - HDMI out
> - USB HOST 2.0 x 2
> - USB 3.0 x 1
> - USB OTG 2.0  x 1
> - 12V DC Power supply
> 
> Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3566-box-demo.dts     | 509 ++++++++++++++++++
>  2 files changed, 510 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 50942086490d..832613143030 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -72,6 +72,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> new file mode 100644
> index 000000000000..6a6b6851a357
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> @@ -0,0 +1,509 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/*
> + * Author: Piotr Oniszczuk piotr.oniszczuk@gmail.com
> + * Based on Quartz64 DT by: Peter Geis pgwipeout@gmail.com
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +	model = "Rockchip RK3566 BOX DEMO V10 Board";
> +	compatible = "rockchip,rk3566-box-demo-v10", "rockchip,rk3566";
> +
> +	aliases {
> +		ethernet0 = &gmac1;
> +		mmc0 = &sdmmc0;
> +		mmc1 = &sdmmc1;
> +		mmc2 = &sdhci;
> +	};
> +
> +	chosen: chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	gmac1_clkin: external-gmac1-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "gmac1_clkin";
> +		#clock-cells = <0>;
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
> +	ir-receiver {
> +		compatible = "gpio-ir-receiver";
> +		gpios = <&gpio4 RK_PC3 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&ir_int>;
> +		linux,rc-map-name = "rc-beelink-gs1";
> +		status = "okay";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led_work: led-0 {
> +			gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
> +			function = LED_FUNCTION_HEARTBEAT;
> +			color = <LED_COLOR_ID_BLUE>;
> +			linux,default-trigger = "heartbeat";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&led_work_en>;
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		status = "okay";
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&pmucru CLK_RTC_32K>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h &wifi_32k>;
> +		reset-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	spdif_dit: spdif-dit {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	spdif_sound: spdif-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "SPDIF";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&spdif>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&spdif_dit>;
> +		};
> +	};
> +
> +	dc_12v: dc_12v {

No underscores in node names. Generic node names, so at least with
regulator suffix or prefix.

> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_12v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {

Same here and in other places.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&dc_12v>;
> +	};
> +
> +	vcc_3v3: vcc_3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vcc5v0_usb_host: vcc5v0-usb-host {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_usb_host_en>;
> +		regulator-name = "vcc5v0_usb_host";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc5v0_usb2_otg: vcc5v0-usb2-otg {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_usb2_otg_en>;
> +		regulator-name = "vcc5v0_usb_otg";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcca_1v8: vcca_1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcca_1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vdda_0v9: vdda_0v9 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdda_0v9";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	vdd_fixed: vdd-fixed {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_fixed";
> +		regulator-min-microvolt = <950000>;
> +		regulator-max-microvolt = <950000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vdd_cpu: vdd-cpu {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm0 0 5000 1>;
> +		regulator-name = "vdd_cpu";
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1200000>;
> +		regulator-init-microvolt = <950000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-settling-time-up-us = <250>;
> +		pwm-supply = <&vcc5v0_sys>;
> +		status = "okay";

Why only this is ok?

> +	};
> +
> +	vdd_logic: vdd-logic {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm1 0 5000 1>;
> +		regulator-name = "vdd_logic";
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1100000>;
> +		regulator-init-microvolt = <950000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-settling-time-up-us = <250>;
> +		pwm-supply = <&vcc5v0_sys>;
> +		status = "okay";

Drop.

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
> +	assigned-clock-parents =  <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
> +	phy-mode = "rgmii";
> +	clock_in_out = "input";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		    &gmac1m1_tx_bus2
> +		    &gmac1m1_rx_bus2
> +		    &gmac1m1_rgmii_clk
> +		    &gmac1m1_rgmii_bus
> +		    &gmac1m1_clkinout>;
> +	snps,reset-gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	/* Reset time is 20ms, 100ms for rtl8211f */
> +	snps,reset-delays-us = <0 20000 100000>;
> +
> +	tx_delay = <0x4f>;
> +	rx_delay = <0x2d>;
> +	phy-handle = <&rgmii_phy1>;
> +	status = "okay";
> +};
> +
> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;
> +	};
> +};
> +
> +&hdmi {
> +	assigned-clocks = <&cru CLK_HDMI_CEC>;
> +	assigned-clock-rates = <32768>;
> +	avdd-0v9-supply = <&vdda_0v9>;
> +	avdd-1v8-supply = <&vcca_1v8>;
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
> +&gpu {
> +	status = "okay";
> +};
> +
> +&i2s0_8ch {
> +	status = "okay";
> +};
> +
> +&i2s1_8ch {
> +	rockchip,trcm-sync-tx-only;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	bt {
> +		bt_enable_h: bt-enable-h {
> +			rockchip,pins = <2 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_host_wake_l: bt-host-wake-l {
> +			rockchip,pins = <2 RK_PC0 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		bt_wake_l: bt-wake-l {
> +			rockchip,pins = <2 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wifi_32k: wifi-32k {
> +			rockchip,pins = <0 RK_PB0 2 &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		vcc5v0_usb_host_en: vcc5v0_usb_host_en {

No underscores in node names.

> +			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_usb2_otg_en: vcc5v0_usb2_otg_en {
> +			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +	};
> +
> +	ir {
> +		ir_int: ir-int {
> +			rockchip,pins = <4 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	led {
> +		led_work_en: led_work_en {
> +			rockchip,pins = <0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +

No need for blank line.

> +	};
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs200-1_8v;
> +	non-removable;
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
> +	vmmc-supply = <&vcc_3v3>;
> +	status = "okay";
> +};
> +
> +&sdmmc1 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
> +	vmmc-supply = <&vcc_3v3>;
> +	vqmmc-supply = <&vcca_1v8>;
> +	status = "okay";
> +};
> +
> +&spdif {
> +	status = "okay";
> +};
> +
> +&spi1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi1m1_cs0 &spi1m1_pins>;
> +};
> +
> +&tsadc {
> +	/* tshut mode 0:CRU 1:GPIO */
> +	rockchip,hw-tshut-mode = <1>;
> +	/* tshut polarity 0:LOW 1:HIGH */
> +	rockchip,hw-tshut-polarity = <0>;
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn>;
> +	status = "okay";
> +	uart-has-rtscts;
> +
> +	bluetooth {
> +		compatible = "brcm,bcm43438-bt";
> +		clocks = <&pmucru CLK_RTC_32K>;
> +		clock-names = "ext_clock";
> +		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
> +		vbat-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vcca_1v8>;
> +	};
> +};
> +
> +&uart2 {
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
> +
> +&vpu {
> +	status = "okay";
> +};
> +
> +&vdpu_mmu {
> +	status = "okay";
> +};
> +
> +&usb2phy0_host {
> +	phy-supply = <&vcc5v0_usb_host>;
> +	status = "okay";
> +};
> +
> +&usb2phy0_otg {
> +	vbus-supply = <&vcc5v0_usb2_otg>;
> +	status = "okay";
> +};
> +
> +&usb2phy1_host {
> +	phy-supply = <&vcc5v0_usb_host>;
> +	status = "okay";
> +};
> +
> +&usb2phy1_otg {
> +	phy-supply = <&vcc5v0_usb_host>;
> +	status = "okay";
> +};
> +
> +&usb2phy1 {
> +	status = "okay";
> +};
> +
> +

Only one blank line

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
