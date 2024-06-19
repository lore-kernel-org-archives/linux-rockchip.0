Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 284BBC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 17:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2bHufh8GwA+9JU3tYYYH+Ri1vRoxbfotci3vU3y3LU=; b=ADB81vNDGVf6AM
	UMp5NWzEQyzMLxojKKrqlY3VWBFHJGVwsGRnlV0MZR8k7uCq+nig00mlar3UNXy71djXXaFOhlVny
	XZAPk3QkPDuKUWoYdoyfEXDHVFWvpwLSCWgdlMAtgp+x2v9HtRFJHYpgjkFDfnQU+bqKtzN1nYrZr
	e+pQRL4e233t5u4avT9Z7ImmE7TwmtC2Jp9D6rS6hLlJA5xGBKwRCyoMARCdYLC4tz27zpczYbbP0
	ryJv6V+OMbX4vJM5hPGoZVxbSC88GYNJSxlh3fYiV3DhzT+fGVcpwfE4HAiUG6z6cm3QaTpm7e+oG
	1Xgyq30LM0yLD1rwnPsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJyyN-00000002BgI-44in;
	Wed, 19 Jun 2024 17:19:51 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJyyK-00000002BfE-1RpK;
	Wed, 19 Jun 2024 17:19:50 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a6f51660223so151666b.0;
        Wed, 19 Jun 2024 10:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718817585; x=1719422385; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ukRvnNcVX5voue1fTgUH3KmAmzHRKYHvwwI9CKvpFMY=;
        b=CTJ6F0abKsnhLOgfePdt3hKyfS0LaKwgtpoqKOLJpnRHbsXpdM/ZSzyQXCoPPTFzpW
         FeKuOY7uhWngaP96bZ+4ETCrP+DspbbeQxW4vP/xJwh26N7skntEEM9WV5O08CXUVgU2
         UT9x/Lq76Kfhx+7gF68It30Zpw781kuIJRIkD7x8fXrmO3AkI/j6XZsscupUzHbpFwZl
         w54OPgt8Ji2cnpI9U/OrLmfXI12+ppllnlpM/1v9FZX/+TBPPAt3wOrXJNbsZ7VrpPKa
         //Dv5qFieZuzEOG6b2Y9tbRyGVO/6nR0gGMAsRUbir//cY6D8/RD6SiIGb9ueRpV87XC
         ExZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718817585; x=1719422385;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ukRvnNcVX5voue1fTgUH3KmAmzHRKYHvwwI9CKvpFMY=;
        b=O4nj6oe8humz4sCoR/ukZSUpFqXh6P3Q3hnW35MfjfL4v7GMFgXA0Y3dVZ+AsqOldX
         r0QvtA2XLJPHnCljXlY7ABYsKWD06x5ROjECopX28JPhG6JJ8GYQNLsTarQ2QPePXfvG
         3iGYg2den/D2Itr+3uDrlkfmOon4gsirEqv0C50xr/sGwrCJeJtIE3S4QKKbLl2s6LUb
         9BDQ3IybuzTPJhLV4Lwy76eyTRpcR9a5D4JnqKL6hQaIGC1/xNDCAsyFisuHSJzQXrxj
         4vQGPTKVaGuUb102gnQLAglH7Fd9v2qPInrTZ01t6r08+rzjPQ+bjTrjB2Pq3S0yxBqj
         YUlg==
X-Forwarded-Encrypted: i=1; AJvYcCVdEmk/8HJtl01ic+JcZq1nlt4Wzy+S7tbhVEYVfzQUS/aP3ge4Uxg7zMwcffLtOZboSB4WI+1XyjTJszXqOTGMbUOjeAp4NDi4xQRysEs3aw1EjmgAeRP/7an5VMErMySMdGjsjtQZd6E78X/ScyTPbn61MeBAorc=
X-Gm-Message-State: AOJu0YwlBas92o0O/Ooyl0By7Xrr5iaDz/7QdGtX323VL6bg8uGyQ/QB
	SeUJFsJpiNKVnD7l6FWuEeh7q+1Dq93lQyPaYhQuseV+e6wR6rA=
X-Google-Smtp-Source: AGHT+IFNzK6QeAtlQ+ZgmOEcPV0B9TECO0/iPeztr7u31qsK3JvkUB2iuN22u9S27LK6ks8S/XPQqQ==
X-Received: by 2002:a50:96cf:0:b0:57c:5874:4f5c with SMTP id 4fb4d7f45d1cf-57d07ea857fmr2350044a12.32.1718817582346;
        Wed, 19 Jun 2024 10:19:42 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:a583:e39c:f68e:e81f? ([2a02:810b:f40:4600:a583:e39c:f68e:e81f])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72da371sm8529513a12.24.2024.06.19.10.19.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 10:19:42 -0700 (PDT)
Message-ID: <052f2ea7-2ded-4d39-a513-3a47fee1bf02@gmail.com>
Date: Wed, 19 Jun 2024 19:19:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Add rkvdec2 Video Decoder on
 rk3588(s)
To: Jonas Karlman <jonas@kwiboo.se>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>,
 Andy Yan <andy.yan@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20240619150029.59730-1-detlev.casanova@collabora.com>
 <20240619150029.59730-5-detlev.casanova@collabora.com>
 <6e5ddd5c-340d-4474-a490-427a82db4a97@kwiboo.se>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <6e5ddd5c-340d-4474-a490-427a82db4a97@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_101948_432483_D59E5464 
X-CRM114-Status: GOOD (  20.55  )
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


Am 19.06.24 um 17:28 schrieb Jonas Karlman:
> Hi Detlev,
>
> On 2024-06-19 16:57, Detlev Casanova wrote:
>> Add the rkvdec2 Video Decoder to the RK3588s devicetree.
>>
>> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 50 +++++++++++++++++++++++
>>   1 file changed, 50 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> index 6ac5ac8b48ab..7690632f57f1 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
>> @@ -2596,6 +2596,16 @@ system_sram2: sram@ff001000 {
>>   		ranges = <0x0 0x0 0xff001000 0xef000>;
>>   		#address-cells = <1>;
>>   		#size-cells = <1>;
>> +
>> +		vdec0_sram: rkvdec-sram@0 {
>> +			reg = <0x0 0x78000>;
>> +			pool;
>> +		};
>> +
>> +		vdec1_sram: rkvdec-sram@1 {
>> +			reg = <0x78000 0x77000>;
>> +			pool;
>> +		};
>>   	};
>>   
>>   	pinctrl: pinctrl {
>> @@ -2665,6 +2675,46 @@ gpio4: gpio@fec50000 {
>>   			#interrupt-cells = <2>;
>>   		};
>>   	};
>> +
>> +	vdec0: video-decoder@fdc38100 {
>> +		compatible = "rockchip,rk3588-vdec";
>> +		reg = <0x0 0xfdc38100 0x0 0x500>;
>> +		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
>> +		clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru CLK_RKVDEC0_CA>,
>> +			 <&cru CLK_RKVDEC0_CORE>, <&cru CLK_RKVDEC0_HEVC_CA>;
>> +		clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
>> +		assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
>> +				  <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
>> +		assigned-clock-rates = <800000000>, <600000000>,
>> +				       <600000000>, <1000000000>;
>> +		resets = <&cru SRST_A_RKVDEC0>, <&cru SRST_H_RKVDEC0>, <&cru SRST_RKVDEC0_CA>,
>> +			 <&cru SRST_RKVDEC0_CORE>, <&cru SRST_RKVDEC0_HEVC_CA>;
>> +		reset-names = "rst_axi", "rst_ahb", "rst_cabac",
>> +			      "rst_core", "rst_hevc_cabac";
>> +		power-domains = <&power RK3588_PD_RKVDEC0>;
>> +		sram = <&vdec0_sram>;
>> +		status = "okay";
>> +	};
>> +
>> +	vdec1: video-decoder@fdc40100 {
>> +		compatible = "rockchip,rk3588-vdec";
>> +		reg = <0x0 0xfdc40100 0x0 0x500>;
>> +		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH 0>;
>> +		clocks = <&cru ACLK_RKVDEC1>, <&cru HCLK_RKVDEC1>, <&cru CLK_RKVDEC1_CA>,
>> +			 <&cru CLK_RKVDEC1_CORE>, <&cru CLK_RKVDEC1_HEVC_CA>;
>> +		clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
>> +		assigned-clocks = <&cru ACLK_RKVDEC1>, <&cru CLK_RKVDEC1_CORE>,
>> +				  <&cru CLK_RKVDEC1_CA>, <&cru CLK_RKVDEC1_HEVC_CA>;
>> +		assigned-clock-rates = <800000000>, <600000000>,
>> +				       <600000000>, <1000000000>;
>> +		resets = <&cru SRST_A_RKVDEC1>, <&cru SRST_H_RKVDEC1>, <&cru SRST_RKVDEC1_CA>,
>> +			 <&cru SRST_RKVDEC1_CORE>, <&cru SRST_RKVDEC1_HEVC_CA>;
>> +		reset-names = "rst_axi", "rst_ahb", "rst_cabac",
>> +			      "rst_core", "rst_hevc_cabac";
>> +		power-domains = <&power RK3588_PD_RKVDEC1>;
>> +		sram = <&vdec1_sram>;
>> +		status = "okay";
>> +	};
> This is still missing the iommus, please add the iommus, they should be
> supported/same as the one used for e.g. VOP2:
>
>    compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
>
> The VOP2 MMUs does have one extra mmu_cfg_mode flag in AUTO_GATING,
> compared to the VDPU381 MMUs, however only the AV1D MMU should be
> special on RK3588.
>
> Please add the iommus :-)
When looking add the vendor DT/iommu driver I'm seeing serval quirks
applied for vdec's iommus. Since it's rightly frowned upon adding such
boolean-quirk-properties to upstream devicetrees, we'd at least need
additional (fallback-) compatibles, even if it works with the iommu driver
as is (what I doubt, but haven't tested). We need to be able to apply those
quirks later without changing the devicetree (as usual) and I'm sure RK
devs haven't added these quirks for the personal amusement. If Detlev says
iommu is out of scope for this series (which is valid), I'd say it's fine
to leave them out for now (as no binding exists) and the HW works
(obviously) fine without them.

> Regards,
> Jonas
>
>>   };
>>   
>>   #include "rk3588s-pinctrl.dtsi"

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
