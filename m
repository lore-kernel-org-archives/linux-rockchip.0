Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 538CCC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 13:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rS1Cnp6/6z1n7Ov8dAnim5KNuC3njHXmcwgMi/nZ+pY=; b=YZfhbF0IBtX0hC
	ORts9zv0rJJvxYm4CxJ6DLC77tZPEjy54dFSvEV7R8OOBmfD7Ua0YJXItkEHgfE+JJV39E2RN7OzC
	xTHEle9IUbbTYKH5STcgun5NOg3Umjm1buMnXGVb4f2eD1gI+uNx3CgzgGH9wvV5egPFfRt6o5adH
	/ALizzzZMUMBiAnenMPtdhYY2m0Q5NGokCZivq3fiHZMLbjRxO99aaIKijw760zWodAUUWLhFqisY
	WpM8Ql+IgprXY6L3HFWpoM8Q7IpkeCUFbi5V/q+TBJyS70YX3ZkLiknN4JH1RZWiOWhZuWc0CQWsD
	d5FNs7B7o89DGrxvO2mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RLG-008p2j-0D;
	Fri, 10 Nov 2023 13:14:34 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RLC-008p0H-0Y
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Nov 2023 13:14:32 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5435336ab0bso3460841a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Nov 2023 05:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699622065; x=1700226865; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p9JHns6zyKkZ5RtdPvtlBA1z5tFdRVVt9Vp5AUAZ8X8=;
        b=ao9UGYNNTDc1Sp0UjUCk7dD+P2llGDVMvi+0c2pn8i+DflcnYEoFA11zlTXxrZfWgc
         1HQzuHmLsrsbIS/ZPRUD6PxAvLCBoBqJC/XBDPNceAdjelgSO9wLUfT6kUi40jXpOGB2
         ZlgJCAvsIOVwCaR1pxXI8dPkLcEvQVzBAp+az8ohu7pZuQ/zOcM9LdOMqMsFEyXh92bh
         eCsMbE6D46H/xvCMnmIKKo5SFRawHXDfBAkPdunXIdl8XVpWtcs1PtTY5N7P5ZCQu68K
         BwNDz8Djglv8fB3nmdxoEe8UL01OVk6EOx1KfKUFD0S8miMBu40Y86qRpAAFz7HVjwrl
         yT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699622065; x=1700226865;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p9JHns6zyKkZ5RtdPvtlBA1z5tFdRVVt9Vp5AUAZ8X8=;
        b=bdQZhUI7KcFtExN286JbVmEf7HiIncGNJ4d2rFHEIiZBV1NnMtP5CBh8UstYQxS6WP
         6mie0f6zFE1upupwah2nrD9Gt6Xm4YiDffBQ/AlqxHRfDkn0MKRurH2ebcAc7+cIeW50
         LzhaHtz20Cqvppnbb0IWs8hlee2WopNFK+IukEkV2L04PHDVzWJ8J40iwwCYaqpNzdiN
         tfOFjAJsppKxNttG8KYRfBZKzmJzItLERazY7Zv/8bMpfmCpA2rX7J6mb8vRW7yxNeyn
         FvZH23N4EPrOCm7UKhB8rmy19XDCh+DR8bunD+joMukZUWAEgtE1bHFxDFdwvIjjWAjU
         vcIw==
X-Gm-Message-State: AOJu0Yzs/MNHO2XUrildTYAfPv/yw+MFKpYrybVWtW/shyzpKA3fZNee
	iQfRimmlJR+ek5F31eBHHp/OPA==
X-Google-Smtp-Source: AGHT+IFHLIhkk5Fhis0pSnaEPm4kr+9yKb63zrJPfV3HV+9ueyhy789I+teQbGDTSDLBdCHJVblrcQ==
X-Received: by 2002:a17:907:7ea9:b0:9c6:10d4:d09f with SMTP id qb41-20020a1709077ea900b009c610d4d09fmr7961509ejc.63.1699622065013;
        Fri, 10 Nov 2023 05:14:25 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id n22-20020a170906841600b009b27d4153c0sm3938708ejx.178.2023.11.10.05.14.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 05:14:24 -0800 (PST)
Message-ID: <15be209c-753d-469b-a7c4-7403c7745a9f@linaro.org>
Date: Fri, 10 Nov 2023 14:14:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 4/4] arm64: dts: rockchip: add Powkiddy RK2023
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, daniel@ffwll.ch, airlied@gmail.com,
 sam@ravnborg.org, neil.armstrong@linaro.org, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231109215007.66826-1-macroalpha82@gmail.com>
 <20231109215007.66826-5-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231109215007.66826-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_051430_213843_500742A5 
X-CRM114-Status: GOOD (  18.61  )
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

On 09/11/2023 22:50, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RK2023. The Powkiddy RK2023 is a handheld
> gaming device with a 3.5 inch screen powered by the Rockchip RK3566
> SoC. The device is almost identical to the Anbernic RG353P except it
> lacks eMMC, a function button, a touch screen, no UART headers on the
> board, and the panel has slightly different timings.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3566-powkiddy-rk2023.dts   | 161 ++++++++++++++++++
>  2 files changed, 162 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index a18f33bf0c0e..f969618da352 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -78,6 +78,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rgb30.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-powkiddy-rk2023.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-radxa-cm3-io.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
> new file mode 100644
> index 000000000000..5740412f6b2b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
> @@ -0,0 +1,161 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566-anbernic-rg353x.dtsi"
> +
> +/ {
> +	model = "RK2023";
> +	compatible = "powkiddy,rk2023", "rockchip,rk3566";
> +
> +	aliases {
> +		mmc1 = &sdmmc0;
> +		mmc2 = &sdmmc1;
> +		mmc3 = &sdmmc2;
> +	};
> +
> +	battery: battery {
> +		compatible = "simple-battery";
> +		charge-full-design-microamp-hours = <3151000>;
> +		charge-term-current-microamp = <300000>;
> +		constant-charge-current-max-microamp = <2000000>;
> +		constant-charge-voltage-max-microvolt = <4250000>;
> +		factory-internal-resistance-micro-ohms = <117000>;
> +		voltage-max-design-microvolt = <4172000>;
> +		voltage-min-design-microvolt = <3400000>;
> +
> +		ocv-capacity-celsius = <20>;
> +		ocv-capacity-table-0 =  <4172000 100>, <4092000 95>, <4035000 90>, <3990000 85>,
> +					<3939000 80>, <3895000 75>, <3852000 70>, <3807000 65>,
> +					<3762000 60>, <3713000 55>, <3672000 50>, <3647000 45>,
> +					<3629000 40>, <3613000 35>, <3598000 30>, <3578000 25>,
> +					<3550000 20>, <3519000 15>, <3479000 10>, <3438000 5>,
> +					<3400000 0>;
> +	};
> +
> +	/* Channels reversed for headphones. */
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "rk817_int";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		simple-audio-card,mclk-fs = <256>;
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Internal Speakers";
> +		simple-audio-card,routing =
> +			"MICL", "Mic Jack",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Internal Speakers", "SPKO";
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rk817>;
> +		};
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +	};
> +
> +};
> +
> +/delete-node/ &adc_keys;
> +
> +&chosen {
> +	/delete-property/ stdout-path;
> +};

If you have to delete so many nodes and properties, this means your
common DTSI is not that common.

Common DTSI means there is shared hardware. If you take shared hardware
and put it into another board, pieces of the shared hardware do not
disappear.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
