Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74A30C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Nov 2022 08:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stz02IxvEX6Vd4zB3WfXrJQJ2udmv5Uam4xngcHrYos=; b=aaALiNcB+IvEO5
	LRnmgbYmzu9jcIU07gdUEOn9zJnBzoen1ekkDiDKnPvfaQWkDlblYDk/Vt494kNRdkI5WY33WLfah
	8+SJNuGtsuvUVe7FbG4blrma33NJcek5hDG0Dodt6P2WwBtwbv9gGRAUzEvVASYn2mbrQVDI8qk5s
	gFKgwJ0HhTkh3Qg2x6b1M3T1S4hvZKsv4RRnz4Zen5ySxgfBW8CZBI+cWBPXmwXmikgNV0yE3Dkm1
	sHEO97RbIe/6WX3jeRzLUTzMqo/aw1SG4n1OWZSV2nYaFEUZy+QUoU13mnppZYkbFWBuZdA/BkUon
	ySfcFR6Ued0iTPQm2DHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouV7x-00Gw1z-81; Mon, 14 Nov 2022 08:47:37 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouV7u-00GvzR-QK
	for linux-rockchip@lists.infradead.org; Mon, 14 Nov 2022 08:47:36 +0000
Received: by mail-lj1-x22d.google.com with SMTP id d20so12192105ljc.12
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Nov 2022 00:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k91EaasDqzf3M0hclk+HOgqxB1/9a3hKPkC8Mb7Jsz4=;
        b=hrReG26IsAMZsEqRhDQsQBx08ryyZf+HwjMn4SKJod+yPvdoVJdQXyFpCfB70I/57l
         ZaUihBH4gmegaNhtKiGEH8daaMC1xf0V6joWEeK5b6QWrPZG1sLyHU/lPKCu0EdGlq7s
         PeRvnG9k6ihY8epsSz4SswwkF2x4WEv6F7dR5BjV0jPjc9SvW4CGIEe75Z7fnqLgoP7w
         vEB0hpFUIWLqliX6vzvrjnrzL8i+D4Q1tszVknzGhZiJVSyKFs50GccKuiAIshySgA+y
         iKXr88TdSEGo6KFl7GxUtQJUxmCnWIAmihKBvvDvRnCW1ZmKWDI20tC+5C86sS9+DCrU
         +a/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k91EaasDqzf3M0hclk+HOgqxB1/9a3hKPkC8Mb7Jsz4=;
        b=lfETn0vjPqiteTxTPGOUAOvvALCdPmxxjXgvbmkOiJJDzDA9kuAxSW9kjRQqMWsH6P
         d1Tpk8T10yCSqK5v6Oe2fdvu1okUOkLnWMNwRObT/7L6+F+1uX1JHGWlFjjcxa0oIsjL
         gEPHjas1EvBXAu7ZQnxUjAQ9TuIpgIAPROsCNEXKbUjhgVjKiJuRm/hjF59Wvmg18Y0c
         kpBvJbiVPuGjvaTSBzfqHvtyda5R4g7Uv/rz1FO9oEuNKBS724agY1ZqFKCWQBvzVX+U
         3fGpkZNOfklPSapBR7nI/LH+AEQJ6DUh/qIU/WFB0UEtNPyLMvzA97QRE5C/bhNt0hiV
         QwxA==
X-Gm-Message-State: ANoB5pnUzqZfI/ERxTqlHPKxc9aK5sBGQDsnta7LzSclBBukQ6uCh+NR
	kSZaWx2w8C76a/zD1sVOa5bBig==
X-Google-Smtp-Source: AA0mqf7REd8RQNZERPsnfhg0u7qbW4FY+JeeTm1lJQdoB6KrFHIHNxu05lgvKLyciUACCd9BVrOa+w==
X-Received: by 2002:a2e:9812:0:b0:26d:eaeb:cfb8 with SMTP id a18-20020a2e9812000000b0026deaebcfb8mr3618458ljj.226.1668415653004;
        Mon, 14 Nov 2022 00:47:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j6-20020a056512344600b004978e51b691sm1730554lfr.266.2022.11.14.00.47.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:47:32 -0800 (PST)
Message-ID: <88ab9c26-4727-f3f5-64e6-904e5ec38434@linaro.org>
Date: Mon, 14 Nov 2022 09:47:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 4/5] arm64: dts: rockchip: Add Odroid Go Super
Content-Language: en-US
To: Maya Matuszczyk <maccraft123mc@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?B?Sm/Do28gSCAuIFNwaWVz?= <jhlspies@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221112143411.517906-1-maccraft123mc@gmail.com>
 <20221112143411.517906-5-maccraft123mc@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221112143411.517906-5-maccraft123mc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_004734_890681_F16F9238 
X-CRM114-Status: GOOD (  17.81  )
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

On 12/11/2022 15:34, Maya Matuszczyk wrote:
> This device is another revision of Odroid Go Advance, with added two
> volume buttons, a second analog stick and a bigger screen that isn't yet
> supported in the Mainline Kernel.
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3326-odroid-go3.dts   | 161 ++++++++++++++++++
>  2 files changed, 162 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 12446f531d29..142c83d2e5aa 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go2-v11.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-odroid-go3.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
> new file mode 100644
> index 000000000000..4b6c896d8abd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
> @@ -0,0 +1,161 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Hardkernel Co., Ltd
> + * Copyright (c) 2020 Theobroma Systems Design und Consulting GmbH
> + * Copyright (c) 2022 Maya Matuszczyk <maccraft123mc@gmail.com>
> + */
> +
> +/dts-v1/;
> +#include "rk3326-odroid-go.dtsi"
> +
> +/ {
> +	model = "ODROID-GO Super";
> +	compatible = "hardkernel,rk3326-odroid-go3", "rockchip,rk3326";
> +
> +	joystick_mux_controller: mux-controller {
> +		status = "okay";

Why adding status? Also, it's not a first property...

> +		compatible = "gpio-mux";
> +		pinctrl = <&mux_en_pins>;
> +		#mux-control-cells = <0>;
> +
> +		mux-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>,
> +			    <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	joystick_mux: adc-mux {
> +		status = "okay";

Why status? Is it a node override?

> +		compatible = "io-channel-mux";
> +		io-channels = <&saradc 1>;
> +		io-channel-names = "parent

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
