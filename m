Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B295C4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 12:53:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5B1FE6108E
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 12:53:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5B1FE6108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AoeIT8iQ/VWdfguxQppSbl7l7lC/mYCGBeAHKsRgmGQ=; b=LB4UNy7HHvJPbHeLRWt6R6qCcc
	fFfJfV0osZtC4NZg7bAhsEFUxx5W6NU2016U69DMj1ZDGoxkaQDB9sSNeiYXmFNw6NT9BnWFkTiGJ
	cji/ad4TTdZr49egVq8eY77tbNJEtCnHTknSfEP92xA2Z0wn6zSV4VammOrEyYgDtihThkmn1Nhfs
	X1NOCDGwA2m0ljf4pjc1UASgL5NmvKdL6Gvw2GfvnOy+NCA40+rZqgdoqM6NesQePoMQaOWCEvE6k
	Y6XgLltmsxAIHAsw8qdBHfwGwBOMcRJeMVX2Ljo5ybs3uL8tKejisx1KuskNAEPpiy9NpuAEywYFV
	Nuewmkew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw2Nl-00AgmP-50; Wed, 23 Jun 2021 12:53:29 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw2Ni-00Aglb-RR; Wed, 23 Jun 2021 12:53:28 +0000
Received: by mail-ej1-x630.google.com with SMTP id bu12so3969634ejb.0;
 Wed, 23 Jun 2021 05:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AoXX4SX7rV+WFRuHMMsSXZsHaxT12D2qXpCC8mveCBs=;
 b=bc+fJMq0Nexc4x+TzqlhSZ91XKaf2VqAOdF1oK+kLmTwkV6yJ6tip+JSiZOKXnewXq
 kv0xPhCnZa5Ysf83zcnmzM+14SEIpePLzNMVfqYLQ5GrCYe2Fo1x0EiOC/ryM3VCJT3x
 JR11HX8L23w9EW8/m37LWYCssXg0X3A05jan4LArGwaNZeeqbq4tLKWiZXBG00GREk/Z
 4JK8mtZ0O/VhirYb7MIPuiHQRLYJCpbcdp8hH9oDt/ks65hUztqi/kMF/bM97ktKdTen
 yqg6oSf+WtpkBkzSXzZr9RSHaFNQHJjennWtgZ42H0dup6ZQSSQnaeTTACo4TJFICMBl
 aK5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AoXX4SX7rV+WFRuHMMsSXZsHaxT12D2qXpCC8mveCBs=;
 b=bF1YYbtqjrddliHFYT6Q+HYdk8ROMgCZzGXSzSjQ7Vy0dMW6BCTxFV725mMt02hKSv
 g1wzqUOhRZk7r4GmxUm+h0eG5X1ZCB97zS1Hnc/3YfGGzVMfITTMXYQZLVIuqkIU1RcX
 CG4f2ZynXh9DOpsCtY/OX02yC2mT87UO8KbRhi9nRn4VspTzBPp2GWNFOzloLKijDCUx
 Htl4wo2uowl3MpDz9jjPjdpxUmdNeGeQSA4J1QbbHQYf9jRZynDNPXJGRxWeywSH+N44
 +R4+SkaknvKxK6fFjvxXJmh7OS8FnvbUP7mg4YUFoXLm3Lo4uLbfwUzUMuuUycssVUnk
 yv+w==
X-Gm-Message-State: AOAM531arln6s22KwtRFFWrjlxyyiPyk0nFbrsBN7gYdZz7hyVKghrHC
 agi1c1sRXZqh4nawb8Z1eao=
X-Google-Smtp-Source: ABdhPJx+iMhYgPNTj4qUhJF40jNYvuXqAcXmr1VTDM8EkTlVRQUuL1iTiitmPKM+lsoudUPfaH/kKw==
X-Received: by 2002:a17:906:841:: with SMTP id
 f1mr6680570ejd.308.1624452804700; 
 Wed, 23 Jun 2021 05:53:24 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 b10sm13449981edx.4.2021.06.23.05.53.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Jun 2021 05:53:24 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Add sdmmc_ext for RK3328
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210623120001.164920-1-knaerzche@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c30377a1-90aa-d79e-a60a-5bc1a8e18c44@gmail.com>
Date: Wed, 23 Jun 2021 14:53:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210623120001.164920-1-knaerzche@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_055326_947219_ECA28F3A 
X-CRM114-Status: GOOD (  19.95  )
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

Hi Alex,

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

On 6/23/21 2:00 PM, Alex Bee wrote:
> RK3328 SoC has a fourth mmc controller called SDMMC_EXT. Some
> boards have sdio wifi connected to it. In order to use it
> one would have to add the pinctrls from sdmmc0ext group which
> is done on board level.
> 
> While at that also add the reset controls for the other mmc
> controllers.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index da84be6f4715..c13fa2f3f4cd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -858,6 +858,8 @@ sdmmc: mmc@ff500000 {
>  		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>  		fifo-depth = <0x100>;
>  		max-frequency = <150000000>;
> +		resets = <&cru SRST_MMC0>;
> +		reset-names = "reset";
>  		status = "disabled";
>  	};
>  
> @@ -870,6 +872,8 @@ sdio: mmc@ff510000 {
>  		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>  		fifo-depth = <0x100>;
>  		max-frequency = <150000000>;
> +		resets = <&cru SRST_SDIO>;
> +		reset-names = "reset";
>  		status = "disabled";
>  	};
>  
> @@ -882,6 +886,8 @@ emmc: mmc@ff520000 {
>  		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>  		fifo-depth = <0x100>;
>  		max-frequency = <150000000>;
> +		resets = <&cru SRST_EMMC>;
> +		reset-names = "reset";
>  		status = "disabled";
>  	};
>  
> @@ -980,6 +986,20 @@ usb_host0_ohci: usb@ff5d0000 {
>  		status = "disabled";
>  	};
>  

> +	sdmmc_ext: dwmmc@ff5f0000 {

/arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: dwmmc@ff5f0000:
$nodename:0: 'dwmmc@ff5f0000' does not match '^mmc(@.*)?$'

> +		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg = <0x0 0xff5f0000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_SDMMC_EXT>, <&cru SCLK_SDMMC_EXT>,
> +			 <&cru SCLK_SDMMC_EXT_DRV>, <&cru SCLK_SDMMC_EXT_SAMPLE>;
> +		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +		fifo-depth = <0x100>;
> +		max-frequency = <150000000>;
> +		resets = <&cru SRST_SDMMCEXT>;
> +		reset-names = "reset";
> +		status = "disabled";
> +	};
> +
>  	usbdrd3: usb@ff600000 {
>  		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
>  		reg = <0x0 0xff600000 0x0 0x100000>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
