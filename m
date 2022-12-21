Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E3AC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNZTAvlvD/4Pqx440B32gRC5Pgmb/f3GCxCQZ7R/WaM=; b=PdSDxNodIDWghE
	inf+BZA5GWJ6GFHtPYzZe+ELKIrkjg7LeByfmjlZrAODSyNvHT24UXGZCW4R8g0sLfEIKH/tZCRjE
	NOjSn69Imb4HWxcHF9W51Y4I6yxKNZ+e0kYCNDz4lTuWuP5B8UT/QRtSwwcgvEFjorqjleWCLOuKk
	wY5uZ1jtV4zCXVWq33s7+Oz4mWMm9AQYsLylgrZvVsiX88VO6lhvEiPfcSIxneZmXrAnlrzMAgw/k
	Gfhm5KrLyMtfLt1fTM12Rlf6EHm1ffesLyjUyTf0tORIswbsiXgdDwCql6zeQ40Y7E45Vg5k3Eqbg
	nI/U8HFpM9DTK+wToogQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7uOG-00C6wR-Uq; Wed, 21 Dec 2022 08:23:53 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7uGP-00C20y-32
	for linux-rockchip@lists.infradead.org; Wed, 21 Dec 2022 08:15:48 +0000
Received: by mail-lf1-x129.google.com with SMTP id m29so22128916lfo.11
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Dec 2022 00:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tKVTpYZFPEDtKyLcWavwNidP1gFKsOiP+G6edw3PI9g=;
        b=vahFHpUDyrqgLEJM7LTlfQSXUee1o2TfjthdfLdgytrvn/mWRZMStW/eUl9K3VhG/2
         rW3a3BSINNKDlG/kDJ8ERk/Wwdz9KyGmrY9X6HSmHYegm248/3wlGApZXmAvfc8YIZG9
         UfqpRQNEJQfmABHy1YGf03fdsExb1o6N9UkKHLEsaEiZekXs28Pp500Rg94id2g/3Eed
         sbWPy7FZRXBMEaVGXZm9n48vANpoT0GV+Gz24KYiw/igkpF3IyVK4SlSzZy07NKKVDWG
         6pGB3/BFGoBm4h80lujRgi8J3yVVmqVojDmQwW68IKfqhbF3o8fpM12d1bdNyqO9c6pT
         zRAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tKVTpYZFPEDtKyLcWavwNidP1gFKsOiP+G6edw3PI9g=;
        b=p3fez1pMyB8e9gTycgJuS+/m/gPkQB8Z6O6WWzXFT4fZG+wE7s1e2Xey1DQJwq3LCn
         /NLUDUb/38DngtFMKtrfMrUDju8KnBikckPzdzHFi+9R6GzZfN0eGuIVDBpvPvIa8rDy
         dYmoS2inBxeISz6t8nyuzUQGFKsbTMzcZZuUEw5tifDHGRh0aTtR5XAV65sUuZv41QVA
         0bf3bMxuOmdBg/OX4Q6hg7ykhnWff+O+9kqTgCeNTy3p0bsojNNjtDVvUn+VCI/xQGNm
         jb2Gv3JtfLCIuBzO3/m7FRwkngsDmVmJM/bsLILI92rQEGn5kL3pCej+tbfzVvpY2O9n
         mUlw==
X-Gm-Message-State: AFqh2kr9INxXSdr7SthhAa6BNvs50Jd2feV/DT9fZVGeQm9yo3S6S6Z8
	IG+2Hq0cklx3m7bYhdMmU84ngg==
X-Google-Smtp-Source: AMrXdXtXrEk0IuAOycHdERvZxfkVj6P/rVqGYvaomI4T69wVYQdjoSNcMjMry1fmRVNsDStpQx2K9g==
X-Received: by 2002:a19:c20d:0:b0:4b5:b18b:8966 with SMTP id l13-20020a19c20d000000b004b5b18b8966mr185160lfc.49.1671610541679;
        Wed, 21 Dec 2022 00:15:41 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o9-20020a05651205c900b00497aa190523sm1767100lfo.248.2022.12.21.00.15.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 00:15:41 -0800 (PST)
Message-ID: <88357291-3cdd-8d5a-fdec-38bd081a4235@linaro.org>
Date: Wed, 21 Dec 2022 09:15:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 1/2] arm64: dts: rockchip: Add EmbedFire LubanCat 1
Content-Language: en-US
To: Yuteng Zhong <zonyitoo@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 DHDAXCW <lasstp5011@gmail.com>
References: <Y6KdvAlWLMG4whJh@VM-66-53-centos>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6KdvAlWLMG4whJh@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_001545_334256_376F6F8C 
X-CRM114-Status: GOOD (  20.58  )
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

On 21/12/2022 06:46, Yuteng Zhong wrote:
> from: DHDAXCW <lasstp5011@gmail.com>
> 
> LubanCat 1 is a Rockchip RK3566 SBC based
> is developed by EmbedFire Electronics Co., Ltd.
> Mini Linux Card Type Cheap Computer Development Board
> 
> It has the following characteristics:
> - MicroSD card slot, onboard eMMC flash memory
> - 1GbE Realtek RTL8211F Ethernet Transceiver
> - 1 USB Type-C port (power and USB2.0 OTG)
> - 1 USB 3.0 Host port
> - 3 USB 2.0 Host ports
> - 1 HDMI
> - 1 infrared receiver
> - 1 MIPI DSI
> - 1 MIPI CSI
> - 1 x 4-section headphone jack
> - Mini PCIe socket (USB or PCIe)
> - 1 SIM Card slot
> - 1 SYS LED and 1 PWR LED
> - 40-pin GPIO expansion header
> 
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
> ---
> 
> Changed in V2:
>   - Remove RNG node
> Changed in V3:
>   - Sent E-mail with a wrong attachment
> Changed in V4:
>   - Modify all node names
> 
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3566-lubancat-1.dts   | 598 ++++++++++++++++++
>  2 files changed, 599 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 0a76a2ebb5f6..e52bda04d45a 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-blade.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-model-a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> new file mode 100644
> index 000000000000..443fcfabbd16
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> @@ -0,0 +1,598 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> +* Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> +*/
> +
> +/dts-v1/;
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +	model = "EmbedFire LubanCat 1";
> +	compatible = "embedfire,lubancat-1", "rockchip,rk3566";
> +
> +	aliases {
> +		ethernet0 = &gmac1;
> +		mmc0 = &sdmmc0;
> +		mmc1 = &sdhci;
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
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +
> +		sys_led: sys-led {
> +			label = "sys_led";
> +			linux,default-trigger = "heartbeat";
> +			default-state = "on";
> +			gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sys_led_pin>;
> +		};
> +	};
> +
> +	usb_5v: usb-5v-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_5v";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&usb_5v>;
> +	};
> +
> +	vcc3v3_sys: vcc3v3-sys {

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc3v3_pcie: vcc3v3-pcie-regulator {


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
