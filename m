Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C7DDCED61D
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gNSvkwncd+TVx8lLYbkFXZRg2WgtMGqxNlIAEdmWOQY=; b=zOtGpp2w/ZxHf+L4KlogAhMbBw
	P7r3QtVo6NgMsP4ZUiaY44W/UwXX7cpoHCCxHAUjSD5zlHvvv6o9JToenz2xJ0xNfH8wsOi0sDi7H
	2uaEMj8esAEcLOQdyaHtliULc8SOgc+WFIDj0YDtmh7J4tWWRTlk3+4Gk79wSjqpaqfKsN+VE7vW5
	mPlKt43XZgte4+ibF+ZnMdinCMXypghN1UzDi3fJeF+MDziPTi2ndSpoRIgo34hwLrLzjdZnIR/hy
	7v+P5KkqfSPvpNb6KTK2jLhU6wfjYEweNnW8416+uyvrqT8YzdXCIw19lG/SnF69QZaMrNLNDgL4X
	6pMoLOog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syRTS-00000008JVs-1g5e;
	Wed, 09 Oct 2024 07:51:10 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syRL8-00000008Hcw-430H;
	Wed, 09 Oct 2024 07:42:36 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459753;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iZkPBbRSepvAA/AJkm6TNe9b3MmJazsErRm3wcrYPlA=;
	b=iXPR7tY8UXX+GJ2VbkU4ERkSe/+4svjnd3dqAd/4GbfIi7VBCiR0jTjsNXtMtSnr/8FQuN
	SVFATgW9R5O/sSTAPaimvLh63TIz+0gOLfMCV+bssLkOHs1Iz5juRg4cfpxcQ7IfVJ1QYl
	tIG0/7G/oiGr6NcpoZ4iHY+MMHCRooCLrB1BGJWzs0IZ3dCtMeBzmAxmcY6AdA0TLyzBxn
	gbY+WRJjrr+5RnPCQz7hWTtQQ6Rkk6ZpAGRwoen3xYqfo70GXLNdJphX87bNi9YKdxQHx3
	BnBWKMc6kWVbekkYXzpeqiJSaWxw3+N75Kradm3tqIIpisH505hud61+FEgWhw==
Date: Wed, 09 Oct 2024 09:42:32 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Caesar
 Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v2 13/14] ARM: dts: rockchip: Fix the spi controller on
 rk3036
In-Reply-To: <20241008203940.2573684-14-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-14-heiko@sntech.de>
Message-ID: <fd4b7e8678e59a3911442227300879da@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_004235_259918_555B8557 
X-CRM114-Status: GOOD (  14.76  )
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

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> Compatible and clock names did not match the existing binding.
> So set the correct values and re-order+rename the clocks.
> 
> It looks like no rk3036 board did use the spi controller so far,
> so this was never detected on a running device yet.

Wow, that's quite surprising.

> Fixes: f629fcfab2cd ("ARM: dts: rockchip: support the spi for rk3036")
> Cc: Caesar Wang <wxt@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  It all matches with
what drivers/spi/spi-rockchip.c actually expects.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm/boot/dts/rockchip/rk3036.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 09371f07d7b4..63b9912be06a 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -553,11 +553,11 @@ i2c0: i2c@20072000 {
>  	};
> 
>  	spi: spi@20074000 {
> -		compatible = "rockchip,rockchip-spi";
> +		compatible = "rockchip,rk3036-spi";
>  		reg = <0x20074000 0x1000>;
>  		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&cru PCLK_SPI>, <&cru SCLK_SPI>;
> -		clock-names = "apb-pclk","spi_pclk";
> +		clocks = <&cru SCLK_SPI>, <&cru PCLK_SPI>;
> +		clock-names = "spiclk", "apb_pclk";
>  		dmas = <&pdma 8>, <&pdma 9>;
>  		dma-names = "tx", "rx";
>  		pinctrl-names = "default";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
