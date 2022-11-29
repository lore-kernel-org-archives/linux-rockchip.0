Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E44A4C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/CqijCsZd5oT4HfyKuL6m76NEpKtD12RWSCyKpxR70=; b=og8wBaBtR7M3qB
	Ylw27NV8DhYv3yG4spPZxT0zA2JPMj5s2AASi5NT2e22kXfRu4abKIGIF85LMyalLgqD3ZJvmj3Gw
	VeJMYvx8XLMnDGJlyImil1HE+h4BRT6xkKf3/wB4dxhkFQIyH0/Uc1z2r1hB3xx0V8jRiDv1Ah52B
	6DNhZaGl542iDS7/Ldshu8yGsVyhNisOGW0U7+0zxgEDHaWJMZae+ytx7zdwaK84SF2XF0/7jK6M/
	seKLHzYI6PPHKKSyaHWpPtuDUWsb23lE0BJhwIKYmmrOWWD6wnWN89ytnp4ZZ4PYkd7mqJA/rUTcV
	nega7K0gV0LUZGWqelDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvRE-0076oB-4G; Tue, 29 Nov 2022 07:53:56 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvRA-0076kb-0r
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:53:54 +0000
Received: by mail-lf1-x12a.google.com with SMTP id c1so21201719lfi.7
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KQybg/xOF6FhEZDOaOULtUoNETXBOqOsgADe67aMXLE=;
        b=UpbOptFUEiLzsBoX8bI44BnQ76xUx3UuYWpuBhe2dKYIm8oMJrJ/xo8z6OMkxu7HiD
         OvzjZz2VrPxTDDDoyXxH5Yl8g6ipP6FDTuMvUUHcw3kNZw/PXMkfkDHSoo9mHUZXHoFP
         OylNm8ch6ZPui25H3KaxDEbXIUB24DvWKgRfUErBMelTv7k9FW04Y94QUc5mnA7ZUqF1
         gT0fdh+4Y7hpPPuFcr7yMwL/xt/8DRCZSeCBAxS4VQHMFisHMlhpqe4FF21uFnLtOtkL
         nfVfeqCHBzarhnbV7gzabyklUaYZk+XkEIYLgiyQQCwZTUUthwmcSImZ7tVZvU0Jg2kv
         IoKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KQybg/xOF6FhEZDOaOULtUoNETXBOqOsgADe67aMXLE=;
        b=aeSxy+ZResZiVPlVU/qicfY/fd0f5oyTc9pxsc4JIE/MkbD/daL3PQUDvXFt8V/jjH
         S+nLKyz6kehF5jpsKVdzgUCkn9ayFdAUdT7kE+F63g8kuPy13d+9Wpn9sjfGfSN1OC0I
         uJzJXZEEHL9Pz6F8xkuzEEOZVemCTvk82hYRItxkOqnqBHLId0OgIHpY0mbdx6gn2Mni
         rf1HInRf+QTDBSOgyLuV4nwjaTuMkfbc0ec/C9Ury34aR5Uk4le3R0BZRhPVLp97FuCW
         Ag9zWnxiFwcNquwH/b3eQ/7NArvSoQPOgTkJzjV2hoa3KrQkvunT0rWGDS5W3HlXi3sD
         0Z+A==
X-Gm-Message-State: ANoB5pn8dBziC3NNglDyYk25fpy1G/TRQUjKNdEdjnIoKw1SVbvPCfcy
	E6vmD4ljn6hVL7cd9d4OsDhQGxG+cJ2iM/FM
X-Google-Smtp-Source: AA0mqf5dJhrQO41ryq6m1BJXGW5hy/Q5lxwkYtSEPrZdima5tVcNCUG7xlI2pcPStT+BfOlClvCVYA==
X-Received: by 2002:ac2:5dd9:0:b0:4b4:e433:477b with SMTP id x25-20020ac25dd9000000b004b4e433477bmr11060037lfq.541.1669708430322;
        Mon, 28 Nov 2022 23:53:50 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o25-20020ac25e39000000b004979ec19380sm2097789lfg.285.2022.11.28.23.53.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 23:53:49 -0800 (PST)
Message-ID: <893717a9-14f0-1aa4-bf33-e5630cb0e769@linaro.org>
Date: Tue, 29 Nov 2022 08:53:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3328: Add Orange Pi R1 Plus
Content-Language: en-US
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20221129064042.17806-1-amadeus@jmu.edu.cn>
 <20221129064042.17806-2-amadeus@jmu.edu.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221129064042.17806-2-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235352_172795_F0D76626 
X-CRM114-Status: GOOD (  19.04  )
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

On 29/11/2022 07:40, Chukun Pan wrote:
> Orange Pi R1 Plus is a Rockchip RK3328 based SBC by Xunlong.
> 
> This device is similar to the NanoPi R2S, and has a 16MB
> SPI NOR (mx25l12805d). The reset button is changed to
> directly reset the power supply, another detail is that
> both network ports have independent MAC addresses.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3328-orangepi-r1-plus.dts  | 373 ++++++++++++++++++
>  2 files changed, 374 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 0a76a2ebb5f6..27e00f4f3c86 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -15,6 +15,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> new file mode 100644
> index 000000000000..daa4da0bd5e4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> @@ -0,0 +1,373 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Based on rk3328-nanopi-r2s.dts, which is:
> + *   Copyright (c) 2020 David Bauer <mail@david-bauer.net>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include "rk3328.dtsi"
> +
> +/ {
> +	model = "Xunlong Orange Pi R1 Plus";
> +	compatible = "xunlong,orangepi-r1-plus", "rockchip,rk3328";
> +
> +	aliases {
> +		ethernet1 = &rtl8153;
> +		mmc0 = &sdmmc;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	gmac_clk: gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "gmac_clkin";
> +		#clock-cells = <0>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-0 = <&lan_led_pin>, <&sys_led_pin>, <&wan_led_pin>;
> +		pinctrl-names = "default";
> +
> +		led-0 {
> +			function = LED_FUNCTION_LAN;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led-1 {
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_RED>;
> +			gpios = <&gpio3 RK_PC5 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		led-2 {
> +			function = LED_FUNCTION_WAN;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	vcc_sd: sdmmc-regulator {
> +		compatible = "regulator-fixed";
> +		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
> +		pinctrl-0 = <&sdmmc0m1_pin>;
> +		pinctrl-names = "default";
> +		regulator-name = "vcc_sd";
> +		regulator-boot-on;
> +		vin-supply = <&vcc_io>;
> +	};
> +
> +	vcc_sys: vcc-sys {

Use consistent prefix/suffix, so -regulator.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	vdd_5v_lan: vdd-5v-lan {

Dutto

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&lan_vdd_pin>;
> +		pinctrl-names = "default";
> +		regulator-name = "vdd_5v_lan";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc_sys>;
> +	};
> +};
> +


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
