Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07134C32774
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKGFbdsMoyn/3+1ZR/uKCA9pdqPovTl0YkwdoObmEZg=; b=XvGw23mb4bchdD
	Pu+XJ5ppc/X83pIoMrMOl3zo/rS692adJ24f7yDt8wPGQeTAJJG+23jyBGxoC5tiCga/v0uhz5+ob
	/+Vvr0e8YuIxuL8UtGVtENg94pTQ18Y3MW7g95XR+4/1PMJCHrz9BoxavbQYYSLZq/Dkvl61DZea+
	KKI3cL9eHu9QcnfggPyFsFoCUqIX5bYp6kEFzNC/Ps4ZtAyluWiM92rFtyXn6DzBm37+n7KvASY6L
	Km/Cg5Y55EqZrHETEQwfbA6+lZE1jXHQ9ZWa4MmgrRrF13IP3jUCIk9R+Yxmt6zq94/nptCHDi0KR
	SYBR1rcWHSH9ApZvj/9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT2U-005scb-CW; Tue, 23 Aug 2022 12:29:50 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQSyx-005ql7-9J
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:26:13 +0000
Received: by mail-lj1-x233.google.com with SMTP id x25so13331363ljm.5
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 05:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=WNYNLsddiMbX+zX1q/G9e2PsmV/Wq/uCqEJWUrlSkFs=;
        b=P7fh/uLfCBEbkha+axE1BmCW758bAHnMirsct1lHmxeWy9lL/DxSctYZfRZyPcw9sd
         E1NdasDjlQYH3BiW45xy/ziFvgNHapC0n7ZBRAqDXTV91GybLYH7ABYpGSts31izda+z
         ayXR3+PD549ANK09UqPKpmmIUbHoCrKcqd0IyiSprNlCZYBEe28Nb5zzt9erS8Sqsqmv
         F8iaeF1BrE7ASuTAZw3OZ/QU4d6Z1WLvKPq0e1ckEteHBifaRXp6b5P9e2BUTgaKi6TX
         Vw3j/je7TI/cF8JLBh8dLUueMHpXNEdAV2Ci4/M46R8AAcwWgsyx3R3p5cdDYqOtxzhi
         P70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=WNYNLsddiMbX+zX1q/G9e2PsmV/Wq/uCqEJWUrlSkFs=;
        b=YiuTtRaMGmmj9l/Tx0WgXQrujj1kW1Lvj3pTnART1X29B3u/lnUsYjL0CP5lm587Oq
         Lsz/mWjNfUqP3QnZilbx+ZZISRE0on+Om5jVbiXWyup6vwDGLpb9Cp4RuyLkaoioMXvH
         ORFjeER9nOQfu4n4GnvrlRImP3Au2fZyORxc3WCLJtDtqluiuRk6rHPkBfwzSNR/fbzs
         DQ36m1yeZIRg8j/8p0GMMncZKH9VqDigmCT2L8k6+xGVCO81wwanA79Hx6evqLntHeVG
         ISCKPmENTKjrczdwXQhAav3Rr/+w4Pn9ICt0tuxHSZ42WkntFfU+yBll4lwm6x5lKR9q
         1vKA==
X-Gm-Message-State: ACgBeo06/OAovx32BJ2pYjMDV/yXZiT95r5RxkcL0vgg5Kr8IQO62TRN
	OWmqAc+jOtPhmMqsjDN2aly+vg==
X-Google-Smtp-Source: AA6agR4wIidcqZ4fYcmvnyCAoXGxiWkAwjYJSbW09dhwZ85C4pf/pohNRsmc0Px7uR7V0qEv3tGTJg==
X-Received: by 2002:a2e:9ec3:0:b0:261:c893:679c with SMTP id h3-20020a2e9ec3000000b00261c893679cmr3669835ljk.378.1661257569107;
        Tue, 23 Aug 2022 05:26:09 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id v24-20020ac258f8000000b0048b0062a14fsm1239695lfo.144.2022.08.23.05.26.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:26:08 -0700 (PDT)
Message-ID: <273e27e6-4def-2424-b838-de217f10e4a3@linaro.org>
Date: Tue, 23 Aug 2022 15:26:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, pgwipeout@gmail.com,
 cphealy@gmail.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220819222520.3069-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_052611_437978_A16F5712 
X-CRM114-Status: GOOD (  25.24  )
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

On 20/08/2022 01:25, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Anbernic RG353P and RG503 are both RK3566 based handheld gaming devices
> from Anbernic.
> 
> Both devices have:
>  - 2 SDMMC slots.
>  - A Realtek rtl8821cs WiFi/Bluetooth adapter.
>  - A mini HDMI port.
>  - A USB C host port and a USB C otg port (currently only working as
>    device).
>  - Multiple GPIO buttons and a single ADC button.
>  - Dual analog joysticks controlled via a GPIO mux.
>  - A headphone jack with amplified stereo speakers via a SGM4865 amp.
>  - A PWM based vibrator for force feedback.
> 
> The RG353P has:
>  - 2GB LPDDR4 RAM.
>  - A 32GB eMMC.
>  - A 3.5 inch 640x480 4-lane DSI panel of unknown origin with an i2c
>    controlled touchscreen (touchscreen is a Hynitron CST340).
> 
> The RG503 has:
>  - 1GB LPDDR4 RAM.
>  - A 5 inch 960x544 AMOLED 2-lane DSI/DBI panel manufactured by Samsung
>    with part number ams495qa04. Data for this panel is provided via the
>    DSI interface, however commands are sent via a 9-bit 3-wire SPI
>    interface. The MISO pin of SPI3 of the SOC is wired to the input of
>    the panel, so it must be bitbanged.
> 
> This devicetree enables the following hardware:
>  - HDMI (plus audio).
>  - Analog audio, including speakers.
>  - All buttons.
>  - All SDMMC/eMMC/SDIO controllers.
>  - The ADC joysticks (note a pending patch is required to use them).
>  - WiFi/Bluetooth (note out of tree drivers are required).
>  - The PWM based vibrator motor.
> 
> The following hardware is not enabled:
>  - The display panels (drivers are being written and there are issues
>    with the upstream DSI and VOP2 subsystems).
>  - Battery (driver pending).
>  - Touchscreen on the RG353P (note the i2c2 bus is enabled for it).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 103 +++
>  .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
>  .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 821 ++++++++++++++++++
>  4 files changed, 1019 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index ef79a672804a..1402274a78a0 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -57,6 +57,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> new file mode 100644
> index 000000000000..f9333ed1ecc7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -0,0 +1,103 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566-anbernic-rgxx3.dtsi"
> +
> +/ {
> +	model = "RG353P";
> +	compatible = "anbernic,rg353p", "rockchip,rk3566";
> +
> +	aliases {
> +		mmc0 = &sdhci;
> +		mmc1 = &sdmmc0;
> +		mmc2 = &sdmmc1;
> +		mmc3 = &sdmmc2;
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		power-supply = <&vcc_sys>;
> +		pwms = <&pwm4 0 25000 0>;
> +	};
> +};
> +
> +&gpio_keys_control {
> +	button-5 {
> +		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> +		label = "DPAD-LEFT";
> +		linux,code = <BTN_DPAD_RIGHT>;
> +	};
> +
> +	button-6 {
> +		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> +		label = "DPAD-RIGHT";
> +		linux,code = <BTN_DPAD_LEFT>;
> +	};
> +
> +	button-9 {
> +		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> +		label = "TR";
> +		linux,code = <BTN_TR2>;
> +	};
> +
> +	button-10 {
> +		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> +		label = "TR2";
> +		linux,code = <BTN_TR>;
> +	};
> +
> +	button-14 {
> +		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> +		label = "WEST";
> +		linux,code = <BTN_WEST>;
> +	};
> +
> +	button-15 {
> +		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
> +		label = "EAST";
> +		linux,code = <BTN_EAST>;
> +	};
> +};
> +
> +&i2c0 {
> +	/* This hardware is physically present but unused. */
> +	cw2015@62 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "cellwise,cw2015";
> +		reg = <0x62>;
> +		status = "disabled";
> +	};
> +};
> +
> +&i2c2 {
> +	pintctrl-names = "default";
> +	pinctrl-0 = <&i2c2m1_xfer>;
> +	status = "okay";
> +};
> +

(...)

> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	rk817: pmic@20 {
> +		compatible = "rockchip,rk817";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> +		clock-names = "mclk";
> +		clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> +		#clock-cells = <1>;
> +		#sound-dai-cells = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc_sys>;
> +		vcc2-supply = <&vcc_sys>;
> +		vcc3-supply = <&vcc_sys>;
> +		vcc4-supply = <&vcc_sys>;
> +		vcc5-supply = <&vcc_sys>;
> +		vcc6-supply = <&vcc_sys>;
> +		vcc7-supply = <&vcc_sys>;
> +		vcc8-supply = <&vcc_sys>;
> +		vcc9-supply = <&dcdc_boost>;
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {

I commented here and there was no feedback, so please implement the change.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
