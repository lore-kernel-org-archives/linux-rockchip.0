Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57CA7C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhYW1RHEtt4/LrHCZ+WNsZ7mPaoudTx/uQGVuui7IKs=; b=QskZAwIseqDkb6
	HXwaphsuH8aWQhWGxQQZL6zzNNn8uJTHWJomhfcs5vLTeq4B4QvMFgxCT3KtpsU90N+sYhIWwL8+m
	KxCMhlxW4EBh7wvZJYeJedodh722Dw2n96u54/sOREI6oatgi8QPr1HOSLnh9g76gwOfhWyz02Du1
	lY0MEkiYVXZCUu+pjrZFy89Y0x0+Rk+3NvBZE9OycdHLktbvykDGN9roF38W7aWw/pOO0QCcA4Jr4
	q+iuYmzg0ta5zGF0uyFHyh0rVilTyalvk9hAO1ZMbEkvB3tXu/sAyhzFTI/WJ9jeUGIntmSYqfsWe
	nzrTTcTyifZ7WKG4OHsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhxJ2-001qDp-5w; Fri, 22 Apr 2022 17:42:56 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhxIz-001qBg-1N
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 17:42:54 +0000
Received: by mail-oi1-x233.google.com with SMTP id w194so9786255oiw.11
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Apr 2022 10:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Nr2dHmWfiNPPrGPgPCaM1uOSlB4d/YNPDX461LAtgB8=;
 b=LQaiOYQpAliM0d9+oDbPUjhZcr5YhYhYhJjLJzQqcDyc3/r8G4CoKBR2Cg0QE9I7mO
 hat8Tg2yJPa7jo2Sv3+uwgiDIurI6pYh+1T0R8uTYc61ttH5Z6o4owOliAOaq0ciUHgi
 JdLhFCcTci5eC3s/5LdfXhf9MbKvxiLYbPKp+hG1ba3wAhkXTQzjbQ/7Odq510IYNURx
 iRK91dpBbsCeyt/zDj1BdElOESE/FxrK4eb4VDideQKoF57bf3Oh/DxzTUhkZ+1Y+OA2
 AwErendhnh45Do8iHSD1YX6TDpnEQSO0Ec8o79h+Xm8nGlZRQRsKKIdkcFXCBcCIgxOy
 eB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Nr2dHmWfiNPPrGPgPCaM1uOSlB4d/YNPDX461LAtgB8=;
 b=VKHMxBoRJ6CAL/5CIq8nY+TB20pNSxJaGTvQmZ9S1x62xvkuQ7F71IGwHErCkgvoWm
 DSvJZHzjHkwZi4PLIeidA+KJbNFQkdXKvN9UCX6K0+Xly1DoE0LlrarNcbQAKGAZ02a4
 RZPzT6ez1V0b72xi7hGupOycVhgLvIVDXXP7Hnd33x3MRdCOqRCp/HONKi91J4RSHrRA
 oHdFlhOv7+P2WD14zhufJiCdiiDRg+VnKM1HCsQPnRkLLbQULvkB2Rf5iSzTSW66DrwH
 EIMGgH4JAdszz/VAhIL8HeyT4qNBSbnq7zQyoLPgyVyLlHqpQKQphAt7XjIv/17Qebo4
 K41g==
X-Gm-Message-State: AOAM533b/WLjmCRO/tP9aeNOGmuR+tOtcDCtuPjKPO2SbqonXmwfasUf
 freyy9JpSzvwJULtAAMWQPq0Rw==
X-Google-Smtp-Source: ABdhPJwiTQjcOmeurwc6R+Gx9T5404cqLZmOEizI5ZBPUFKo8ZFoHVx4xFsOsrLwiWUvW9+vx5hOUw==
X-Received: by 2002:a05:6808:17a3:b0:324:fcbf:3142 with SMTP id
 bg35-20020a05680817a300b00324fcbf3142mr523793oib.5.1650649370137; 
 Fri, 22 Apr 2022 10:42:50 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68]) by smtp.gmail.com with ESMTPSA id
 q11-20020a05683033cb00b005e686fd52d6sm965139ott.17.2022.04.22.10.42.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Apr 2022 10:42:48 -0700 (PDT)
Date: Fri, 22 Apr 2022 14:42:43 -0300
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
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Rename vdec_mmu node for RK3328
Message-ID: <YmLpE+AfZ4UYmn9O@eze-laptop>
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-3-chris.obbard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422133803.989256-3-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_104253_292090_6A97B247 
X-CRM114-Status: GOOD (  17.56  )
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

On Fri, Apr 22, 2022 at 02:38:02PM +0100, Christopher Obbard wrote:
> All other rockchip devices which have vdec nodes do not
> have an rk prefix. Remove the prefix from the (currently
> unused) rkvdec_mmu node for consistency with other
> devices.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index b822533dc7f1..f8ef149fedad 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -660,7 +660,7 @@ vpu_mmu: iommu@ff350800 {
>  		power-domains = <&power RK3328_PD_VPU>;
>  	};
>  
> -	rkvdec_mmu: iommu@ff360480 {
> +	vdec_mmu: iommu@ff360480 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x0 0xff360480 0x0 0x40>, <0x0 0xff3604c0 0x0 0x40>;
>  		interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
