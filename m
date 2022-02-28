Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B05FEC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 09:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsWtUcEUKcJ6sEbjCAilpoWa9pj4dwiPTs4wPxwp+1Y=; b=2ONrwMNQIBHDCt
	wQCuQXTBoI0S4wYZQnV55MsqZ2JftxLBpaojsktOWY+DH5y9myQ7URuIVosBU+12ZkmOsC9rP5xkd
	CBOCpDbv3StotF7dGN7iikByqYgZVW4pLA4BXeahwV+dnj3vvjjE1ycOCAl2J4oPCciGR91QgsbhC
	TJR9vk+RPGEd0f5Ps0XwP/5RpDJb3zDfbCYTho+PQs7IND5OhxMIH5G2IvK9aP5mvvFXABBYZX6Gn
	fnsn+HmRoDb5Pzv67H+qmiZUZbEl4Xtg4OjqLUr4Fr5IAoZDiOr46NZFCxsHmMjXUw9mkQEGfKL4A
	oQShtUQ6eGO6UlmrOZTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOcP4-00BGmg-9l; Mon, 28 Feb 2022 09:33:14 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOcOp-00BGhN-Va; Mon, 28 Feb 2022 09:33:01 +0000
Received: by mail-ej1-x62f.google.com with SMTP id gb39so23518692ejc.1;
 Mon, 28 Feb 2022 01:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=CLX9p46LTKB/Eq3eNvJoQTNYHBrAzPGjbvot9brS2qA=;
 b=mSjmrvh595YDAVZMgNjYK7iY9jJsf6ffteY5LNQ7hkjPy8URdKSh/qC0gfCqmJ1my1
 Qpi25Q25zJe+wBpMWjGFKTVrbWF4JlOaa7Y7EQUzQF2NKs8guyjP5sa73inWcL2rPKgL
 Z4Mc/DuqqWuniGLKhle7vMI0AJPo+4gPPnauSdIChzhacanwS0ZKPzxodvbMVU2uN65q
 pvEyoL1aghlRdEgJYh1S6JnW3PpAoxj/hcpIx2oaIspTFDPQuhKgCL5yYcBD2tnTOdyZ
 NAbWn9L8+oM/g+Bhim9dLNKblHtOvHd5kVm+hHX4E3zlglPs6P2PmGVpDp10Umy20wMP
 cgrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=CLX9p46LTKB/Eq3eNvJoQTNYHBrAzPGjbvot9brS2qA=;
 b=h7WgGeUp3MzuzQ0IOWEGEIc6S4y4jo9PjoZjU8reekUsaV2MzQKHS/7ALnSIKXrJi6
 C2RWmGSrQ3u24+3vbAPqinnEPTYCYAKsqEeV1Qj3+A/yRXEDDQHM2UMO/Rv9l3sumIvQ
 Fhs7vL4GSIcn1qh45ZvQTR4FIVCObmy3D3JJ0vwKX+ifJi3O/hkGJ+/RbwmK8PLa8lXR
 3GgJa3mVATIogA+2iBTOvUb3auZYVQhx5pt4epGODEQartm8OgHKoODb9J6jj3HSgAp/
 EHFKCIF8Skc7kR3j+iIPT/sOAJ0bYdP443dwo5neMHAEvPfXhUHL6k2j6dRL2KCuWl6n
 R8Qw==
X-Gm-Message-State: AOAM533KwwsNYfo5KyS2SrMGg+q/KN0khmWCG4Bpvq8W6NHQ8VgYbKK8
 tJncyITegXG4/N8X8EpEb1o=
X-Google-Smtp-Source: ABdhPJyGNPCf5gF83CrzPwGUn65KVEOklQP88mDv1lM7Oxdsd9c3Gvs+2/MhV9t3bc5Qjjfaeyy8Vw==
X-Received: by 2002:a17:906:6b8e:b0:6ce:9879:ff88 with SMTP id
 l14-20020a1709066b8e00b006ce9879ff88mr14387553ejr.147.1646040778557; 
 Mon, 28 Feb 2022 01:32:58 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 n24-20020a509358000000b00410bedd9eb4sm5932397eda.88.2022.02.28.01.32.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 01:32:58 -0800 (PST)
Message-ID: <14a29a3f-c886-89b0-e453-1e8bee469536@gmail.com>
Date: Mon, 28 Feb 2022 10:32:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add sata nodes to rk356x
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>,
 "devicetree @ vger . kernel . org Damien Le Moal"
 <damien.lemoal@opensource.wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-4-linux@fw-web.de>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220227182800.275572-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_013300_067524_FD8040B8 
X-CRM114-Status: GOOD (  17.85  )
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

Hi Frank,

On 2/27/22 19:28, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> RK356x supports up to 3 sata controllers which were compatible with the
> existing snps,dwc-ahci binding.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes in v3:
>   - fix combphy error by moving sata0 to rk3568.dtsi
>   - remove clock-names and interrupt-names
> changes in v2:
>   - added sata0 + 1, but have only tested sata2
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 14 +++++++++++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 26 ++++++++++++++++++++++++
>  2 files changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 5b0f528d6818..2a2f65899d47 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -8,6 +8,19 @@
>  / {
>  	compatible = "rockchip,rk3568";
>  
> +	sata0: sata@fc000000 {

> +		compatible = "snps,dwc-ahci";

		compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";

Compatible strings must be SoC orientated.
By using a fall back string the driver doesn't have to be changed for
every new SoC.
Add binding in extra patch.

> +		reg = <0 0xfc000000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA0>, <&cru CLK_SATA0_PMALIVE>,
> +			 <&cru CLK_SATA0_RXOOB>;
> +		interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +		phys = <&combphy0 PHY_TYPE_SATA>;
> +		phy-names = "sata-phy";
> +		ports-implemented = <0x1>;
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		status = "disabled";
> +	};
> +
>  	pipe_phy_grf0: syscon@fdc70000 {
>  		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
>  		reg = <0x0 0xfdc70000 0x0 0x1000>;
> @@ -114,3 +127,4 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 7cdef800cb3c..484c5ace718a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -230,6 +230,32 @@ scmi_shmem: sram@0 {
>  		};
>  	};
>  
> +	sata1: sata@fc400000 {

> +		compatible = "snps,dwc-ahci";

dito

> +		reg = <0 0xfc400000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA1>, <&cru CLK_SATA1_PMALIVE>,
> +			 <&cru CLK_SATA1_RXOOB>;
> +		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
> +		phys = <&combphy1 PHY_TYPE_SATA>;
> +		phy-names = "sata-phy";
> +		ports-implemented = <0x1>;
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		status = "disabled";
> +	};
> +
> +	sata2: sata@fc800000 {

> +		compatible = "snps,dwc-ahci";

dito

> +		reg = <0 0xfc800000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA2>, <&cru CLK_SATA2_PMALIVE>,
> +			 <&cru CLK_SATA2_RXOOB>;
> +		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +		phys = <&combphy2 PHY_TYPE_SATA>;
> +		phy-names = "sata-phy";
> +		ports-implemented = <0x1>;
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		status = "disabled";
> +	};
> +
>  	gic: interrupt-controller@fd400000 {
>  		compatible = "arm,gic-v3";
>  		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
