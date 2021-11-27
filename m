Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5410C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Nov 2021 15:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yOLVOIUD9A055ZrTBetl1bG3hq5McMJGQNSv7bz0i9E=; b=2oK4nfKINeYIvWPusSsUXlLYuw
	0h2k4J1SSV4VJXKoS0iiWXXJEeqEfacmCy24rPtdJvM2TPPXyQUns8lsTUwjFL9N37asfna9Lha2L
	wUyWbHyzBFvdkls9+2r42ne0YB1Bg7soeZReMemcSmm6LNO+KhZFqXnWgqVF3FNO+LvR1phMSngsu
	CZydiUxOBEDuLyOlSKmoub+ynJFKOZq5i8llqEEVtApTsqfPnZTm01f/+VyqV6BoLiTtsWxTNYR/h
	W5RFUTL4a0YvtYegCWvGnMjYAlrb3vSkwAhCjFgYdn+4E+34tVekRWZgwdOvzSYXlmyJvq8COxEzd
	uS1udAsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqzdy-00DuTH-So; Sat, 27 Nov 2021 15:29:38 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqzdw-00DuSu-A9; Sat, 27 Nov 2021 15:29:37 +0000
Received: by mail-ed1-x52b.google.com with SMTP id r11so51538653edd.9;
 Sat, 27 Nov 2021 07:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uZa3lGg5TVVsYTVzd3SjTqIXOm+Tj/rVIJizF1jMhDo=;
 b=Gfb1s3RJtTBdXYydL0Bj53WQBhKrUqbf+DTcezy4bxbvNBf5o0gytuMO7gefd6w8Wy
 B8H/cQ3hsXH7XFzj1HU4QD5cn2xJP4fAW7DI2J+yTCRdh6q1d0AkT8XnFI5H8uKvDlya
 jgNuWOyX9yU47p4snDazNbcOVHa4tYwTEEe+nBN3navZwwKLGkS17E8pIGqKBAN8qwwm
 v385C7AHMe7RA1kt7ibJ1yaFFXRsycmO7rkKSQdBIoe6Wo5wACTdODJlMPXF+clfW2mh
 zjiw5+J2JNVUFXqWOkm0yHQZzHlNudZejbY8f5eKXvARObtmSyJSIw1peMHCWsBYABtL
 Vxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uZa3lGg5TVVsYTVzd3SjTqIXOm+Tj/rVIJizF1jMhDo=;
 b=Hpr4guUmIBr9HEif44Hpn1EyxKj632qopxTS5nbOtmkT4pPq9WkoI+bxFpnHiXZclI
 0rc1zkpjdK6s0nbMiYdSGUISrsTGyAgX+J5KiGiyX9I8klebHDRHxjdFCFuaAg1t6DAT
 2CbTj85K0zzwK9xCqdFPaxOpQDQaE/3wD2RECFb0clHtRfZy6fmg2PJxUjNrWrfs4wip
 x0fPIYesBJA2RWMV9I/1prd/UZLpRJiGq0WgsCz5YfTFznOvptnrxnpb1cbEqjbPVUwT
 Dfwd1EHyDRo/i9CTP9o7pxeWJs8zdhQaQ61JdBFxhHcm5+PYnNS1zVEaeTHr08JZQty6
 Rhqw==
X-Gm-Message-State: AOAM531Ckd9D8lywKhMFaBPJ/eISh3Akm5VmyWloxv6Ybk7PAs/A7KMy
 hjTOgUULI9GZmTm2YX1iWLVlHjSH5N0=
X-Google-Smtp-Source: ABdhPJy21OW5YxatYCV4Gr34x0UNkM8gcFS2g3sPwsA5IPwmtOmFhwH92iC6nVLR2mpGPjuB2MKtJg==
X-Received: by 2002:a17:907:868f:: with SMTP id
 qa15mr47300758ejc.187.1638026974377; 
 Sat, 27 Nov 2021 07:29:34 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 h10sm5826804edj.1.2021.11.27.07.29.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 27 Nov 2021 07:29:34 -0800 (PST)
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add spi1 pins on Quartz64 A
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
 <20211127141910.12649-4-frattaroli.nicolas@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <acbd0e0a-b194-7b17-148d-49fdd348077e@gmail.com>
Date: Sat, 27 Nov 2021 16:29:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211127141910.12649-4-frattaroli.nicolas@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211127_072936_408696_2A652194 
X-CRM114-Status: GOOD (  19.86  )
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



On 11/27/21 3:19 PM, Nicolas Frattaroli wrote:
> The Quartz64 Model A has the SPI pins broken out on its pin
> header. The actual pins being used though are not the m0
> variant, but the m1 variant, which also lacks the cs1 pin.
> 
> This commit overrides pinctrl-0 accordingly for this board.
> 
> spi1 is intentionally left disabled, as anyone wishing to add
> SPI devices needs to edit the dts anyway, and the pins are more
> useful as GPIOs for the rest of the users.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 4d4b2a301b1a..166399b7f13f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -509,6 +509,11 @@ &spdif {
>  	status = "okay";
>  };
>  
> +&spi1 {

> +	pinctrl-names = "default";

With the removal off pinctrl-1 the pinctrl-names property is already
correctly defined.

+	spi1: spi@fe620000 {
+		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
+		reg = <0x0 0xfe620000 0x0 0x1000>;
+		interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru CLK_SPI1>, <&cru PCLK_SPI1>;
+		clock-names = "spiclk", "apb_pclk";
+		dmas = <&dmac0 22>, <&dmac0 23>;
+		dma-names = "tx", "rx";
+		pinctrl-names = "default";
+		pinctrl-0 = <&spi1m0_cs0 &spi1m0_cs1 &spi1m0_pins>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};

> +	pinctrl-0 = <&spi1m1_cs0 &spi1m1_pins>;
> +};
> +
>  &tsadc {
>  	/* tshut mode 0:CRU 1:GPIO */
>  	rockchip,hw-tshut-mode = <1>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
