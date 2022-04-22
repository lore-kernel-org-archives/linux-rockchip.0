Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82ACAC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJTjZZGEwCC1DoUrh5D1XGXI1MzPNPUCLnjjZz4NcKI=; b=Xr9OggP4z5rNe5
	gzvYHCmMqP6vCojJlAAd6rGudIEDLaVap+kmhR4eOWZU2XUVKK7XhrJ8rmCCa4Oiv1zPFiQrUMRTA
	FqKW3sCf/bQtsK4Sp7mB0+D2REmPDX/S0rpAEYsw/9cCTUNtASKlgYzA0jiPLUPfpxvbF1/cFXsP2
	/wsB4d5MAzlOg7RbU73v+iBTe5YSlyOseySo9j1uQxaPHQoRv/4k4ZTDNbL6FWe5fVyWxNBatxiqP
	w34CF6IMfC82KICYdaqdVX3AyWdEIknUK7Sah2DfPBJ9oSHbzieHrXAsCRajWImR/saLf05+Tor3z
	2qHEqxE/OAAJ0t6OQdaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhxJa-001qRM-0S; Fri, 22 Apr 2022 17:43:30 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhxJG-001qHr-1L
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 17:43:11 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 v12-20020a9d7d0c000000b006054b51c3d4so5963078otn.8
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Apr 2022 10:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rg2t3QjS7swC7CCiD53ULPLxJwbqove3OB++0DlUPOM=;
 b=rnQZnBYynxzLCkaXTaGnxFQL4AnOzdgbt+/LyfgIxZnFmh2kLZYF489V/PStkDRRk3
 ELRQRo2dmDDnWjViR5NBAGniSK4SV30vYUAREBVPT6rixhn6Z3ZxjCE/ypI+r3c/OLsA
 itQ9wujwDjGfB1gINksmSU1Tlr2sG/OrryEuBTWr6eXsBIhtqzCUbmsidLdh8bRPOwof
 XQpDV7bqra0eFhoTtXIxH4P8sIxHFHeIb3VM/lpdH5riMPJtJhIsjdxC4AArPIXk/6qu
 PS4OyA8Cf62F9JoCLsK87DJnBamhrR2x9P0X6xsk+zwqA0MuLmLM0LbG6ENlECOzYXTf
 whuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rg2t3QjS7swC7CCiD53ULPLxJwbqove3OB++0DlUPOM=;
 b=CEiACgD0Tdsde7bSEnhn2VSKU3IJHVX/8HXtqGvZAmsGtawfQTdSHqXkXJpbHqXmgh
 im7gMEKA1d9LhjfOLjGDX15Av22wKJe4U+o3xCpD7+dBbrpAMQKkUkjePfN8ryVNo2t2
 B7CFraLV7G4yM8ur2SuyIGfXKIJow4+orF0D8EWDJ+eLZYPI1+SMDO3YMjMaPC8NUvtn
 L8XRDeHd9UErZ4ht5HcspQLmgh4qxSNuO9PTpT6hMPGunD+NlrDs25bF2pN56oKpgX4e
 mMvvZOK8o4qg049y73pQWuMjRfMSy/KTUkimACRwehyZR48UESNVuhnLCr2yRC1ayFQB
 NeAw==
X-Gm-Message-State: AOAM531X5rWurT15gykEke0OoMW9aLd2SayExGFxtOTtq3ilWUJQ4ucK
 I+6U7KWo2zvI1qwRTxE5J0ydPw==
X-Google-Smtp-Source: ABdhPJzrJ9MT6DuHvfnHQFUTPgYGuhuBV0Pg3wovOt7szDKz5NOAaGD5S8Ep8UHUxc+wv1y5bNPlxg==
X-Received: by 2002:a05:6830:440a:b0:605:87ec:9b23 with SMTP id
 q10-20020a056830440a00b0060587ec9b23mr1505671otv.151.1650649388208; 
 Fri, 22 Apr 2022 10:43:08 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68]) by smtp.gmail.com with ESMTPSA id
 z5-20020a4a8085000000b0033a2f400b17sm1033343oof.25.2022.04.22.10.43.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Apr 2022 10:43:07 -0700 (PDT)
Date: Fri, 22 Apr 2022 14:43:01 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Alex Bee <knaerzche@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add vdec support for RK3328
Message-ID: <YmLpJQwdcSPHgZag@eze-laptop>
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-4-chris.obbard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422133803.989256-4-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_104310_116396_87267D5D 
X-CRM114-Status: GOOD (  18.03  )
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

On Fri, Apr 22, 2022 at 02:38:03PM +0100, Christopher Obbard wrote:
> The RK3328 has an vdec device with dedicated iommu.
> Describe the device and required power-domains in the
> devicetree.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 25 +++++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index f8ef149fedad..390e1e4a8fc9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -306,6 +306,10 @@ power-domain@RK3328_PD_HEVC {
>  			};
>  			power-domain@RK3328_PD_VIDEO {
>  				reg = <RK3328_PD_VIDEO>;
> +				clocks = <&cru ACLK_RKVDEC>,
> +					 <&cru HCLK_RKVDEC>,
> +					 <&cru SCLK_VDEC_CABAC>,
> +					 <&cru SCLK_VDEC_CORE>;
>  				#power-domain-cells = <0>;
>  			};
>  			power-domain@RK3328_PD_VPU {
> @@ -660,6 +664,25 @@ vpu_mmu: iommu@ff350800 {
>  		power-domains = <&power RK3328_PD_VPU>;
>  	};
>  
> +	vdec: video-codec@ff360000 {
> +		compatible = "rockchip,rk3328-vdec", "rockchip,rk3399-vdec";
> +		reg = <0x0 0xff360000 0x0 0x400>;
> +		interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>,
> +			 <&cru SCLK_VDEC_CABAC>, <&cru SCLK_VDEC_CORE>;
> +		clock-names = "axi", "ahb", "cabac", "core";
> +		assigned-clocks = <&cru ACLK_RKVDEC>, <&cru SCLK_VDEC_CABAC>,
> +				  <&cru SCLK_VDEC_CORE>;
> +		assigned-clock-rates = <400000000>, <400000000>, <300000000>;
> +		resets = <&cru SRST_VDEC_A>, <&cru SRST_VDEC_H>,
> +			 <&cru SRST_VDEC_CABAC>, <&cru SRST_VDEC_CORE>,
> +			 <&cru SRST_VDEC_NIU_A>, <&cru SRST_VDEC_NIU_H>;
> +		reset-names = "video_a", "video_h", "video_cabac", "video_core",
> +			"niu_a", "niu_h";
> +		iommus = <&vdec_mmu>;
> +		power-domains = <&power RK3328_PD_VIDEO>;
> +	};
> +
>  	vdec_mmu: iommu@ff360480 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x0 0xff360480 0x0 0x40>, <0x0 0xff3604c0 0x0 0x40>;
> @@ -667,7 +690,7 @@ vdec_mmu: iommu@ff360480 {
>  		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
>  		clock-names = "aclk", "iface";
>  		#iommu-cells = <0>;
> -		status = "disabled";
> +		power-domains = <&power RK3328_PD_VIDEO>;
>  	};
>  
>  	vop: vop@ff370000 {
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
