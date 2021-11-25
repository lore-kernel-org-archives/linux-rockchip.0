Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 289A3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Nov 2021 19:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C0u46JA4mbtWoclmArGrTVTB2q4twDfaEz6tg9AZbOQ=; b=X764Zg21AycceUTF5QeeaDcZZi
	98vUsAvmjuygV30obwcHdHqyc2UruWrkAzZE4SCsFRK0piH3dKXNmqn2LDw2gsT73lp/A4WqvriuE
	wi5jF8HAxTweCdw6A6zGn45XrQ4A1iFZ7vdPOKB4j1y/9s4DOPLh+LwWFDlfYBpfxN1cm1spWc8V1
	fGHyrdslBGcVOMEnV3DhDmUj8bptZouWNWOjv8bizMCawcZ/1kngHaKo7FZHV/y1LKV6LKIalmzNc
	0lRmbJYyQWx5PE32GDDb2p1czb7AufLiLTkak5MXAGD9KaFiEe52kkP6yIFKtuG+t4exEFjn29Z5P
	1rKpGzVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqK5g-008Vwj-9E; Thu, 25 Nov 2021 19:07:28 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqK5d-008VwH-9L; Thu, 25 Nov 2021 19:07:26 +0000
Received: by mail-ed1-x531.google.com with SMTP id v1so29408597edx.2;
 Thu, 25 Nov 2021 11:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8RETl6EZ/q+KZQKZQu0x6dpqQFHJLgaukB+KnrSsVWE=;
 b=gAPMEiTgu4btwGQ8d7RmgT8TGL3bXGeUy0Lx6GU06BEZ0uzPUfsZKeAYyskjgsKY2n
 J6w44kxfSf7g2wg2vuuvtZ1hrIcKiNMNRcD3Qzpn2ygOAvPQZTltx8lhRncgam/DzmyI
 z19LfOAV5nAsE9SQ5/2Uz/ufwYKpGsmKiKv+pHVt+w9rJviqfCDgcnqfV9Nloecry+H/
 FxBp4nS8f/iTg5qJgVOpLT6RBSRXgwEjeT3fiWLu2QwLkTZAWMC+iQ9XadAmwPkj2ICc
 +Ml+7CwNFhUVdrv527GDQQ/cE3zqmJ2EiVbwtFYOrOi6/+04yJ7JPves8T94CkHHZZjI
 oWcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8RETl6EZ/q+KZQKZQu0x6dpqQFHJLgaukB+KnrSsVWE=;
 b=O3pYjTznoXRnuNY4x/ji4qPCBWaSPC5Xi+TBq+7+YPb2gK8E5XRb92q4f8/Ou+NYsJ
 iPWUuU3eWmdlXmf0/Or7zNP056kIgGY/S80Jhl1TUEIO7JK9kyWzf7tTqAJYfDIFjNp7
 vVMbv/Eh/No33k1aZOuUG127z7f9in1svf86AXrqBOXo2WI5kRoLykNKnfzMzNXgSN2R
 miRKO8KmaCnv6Pd53NnBoqazWHoA/gj3nhYDUUnHiozdZW3neUV9BslBNeI4kJpyvcEP
 6JW/yZJFRojoAgU4iHFzV0muItOnN9keCWg7bbwlJpDd9EZufB5wkH5yKLsr57CTTJl0
 xUuQ==
X-Gm-Message-State: AOAM530GmwfKvMTOWcX5n7ZHxPfSKH9y+4xn4ejXwqOAJeu8by7HHE6o
 AAblrAmIZxubfFwb6glc2Wk=
X-Google-Smtp-Source: ABdhPJzdR4fS3FSUgtdtqASK6+b1zMem6EG63SPfkBRBIsZFX7+F/U/i1bney2lGJqz6OmegdjV52A==
X-Received: by 2002:a05:6402:34d1:: with SMTP id
 w17mr41913845edc.229.1637867242903; 
 Thu, 25 Nov 2021 11:07:22 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 b11sm2893032edz.50.2021.11.25.11.07.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Nov 2021 11:07:22 -0800 (PST)
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rk356x: Add HDMI audio nodes
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211125100836.423808-1-frattaroli.nicolas@gmail.com>
 <20211125100836.423808-2-frattaroli.nicolas@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <08774d87-97e0-6afa-2816-bf78949e4e68@gmail.com>
Date: Thu, 25 Nov 2021 20:07:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211125100836.423808-2-frattaroli.nicolas@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_110725_387556_5B881E80 
X-CRM114-Status: GOOD (  18.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Nicolas,

Some comments...

On 11/25/21 11:08 AM, Nicolas Frattaroli wrote:
> This adds the i2s0 node and an hdmi-sound sound device to the
> rk356x device tree. On the rk356[68], the i2s0 controller is
> connected to HDMI audio.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 32 ++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 3c09cf6d4c37..ad4053402eef 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -614,6 +614,21 @@ hdmi_in_vp2: endpoint@2 {
>  		};
>  	};
>  

> +	hdmi_sound: hdmi-sound {

Some DT sort rules:

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

> +		compatible = "simple-audio-card";

simple-audio-card,name = "HDMI";

> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;

> +		simple-audio-card,name = "hdmi-sound";

Exceptions:
Sort simple-audio-card,name above other simple-audio-card properties.

Shouldn't we standardize to SPDIF, HDMI and Analog similar to rk3318/rk3328?
Make a shorter label without spaces or special chars, so that chars
don't get removed?
See "aplay -l" screen print.

Maybe rename to "HDMI"?

> +		status = "disabled";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s0_8ch>;
> +		};

Add empty line between nodes.

Not sure if Heiko cares, but when alphabetical sort I get this:
simple-audio-card,codec
simple-audio-card,cpu

> +		simple-audio-card,codec {
> +			sound-dai = <&hdmi>;
> +		};
> +	};
> +
>  	qos_gpu: qos@fe128000 {
>  		compatible = "rockchip,rk3568-qos", "syscon";
>  		reg = <0x0 0xfe128000 0x0 0x20>;
> @@ -789,6 +804,23 @@ spdif: spdif@fe460000 {
>  		status = "disabled";
>  	};
>  
> +	i2s0_8ch: i2s@fe400000 {
> +		compatible = "rockchip,rk3568-i2s-tdm";
> +		reg = <0x0 0xfe400000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> +		assigned-clocks = <&cru CLK_I2S0_8CH_TX_SRC>, <&cru CLK_I2S0_8CH_RX_SRC>;
> +		assigned-clock-rates = <1188000000>, <1188000000>;
> +		clocks = <&cru MCLK_I2S0_8CH_TX>, <&cru MCLK_I2S0_8CH_RX>, <&cru HCLK_I2S0_8CH>;
> +		clock-names = "mclk_tx", "mclk_rx", "hclk";
> +		dmas = <&dmac1 0>;
> +		dma-names = "tx";
> +		resets = <&cru SRST_M_I2S0_8CH_TX>, <&cru SRST_M_I2S0_8CH_RX>;
> +		reset-names = "tx-m", "rx-m";
> +		rockchip,grf = <&grf>;
> +		#sound-dai-cells = <0>;
> +		status = "disabled";
> +	};
> +
>  	i2s1_8ch: i2s@fe410000 {
>  		compatible = "rockchip,rk3568-i2s-tdm";
>  		reg = <0x0 0xfe410000 0x0 0x1000>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
