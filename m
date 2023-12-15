Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D4F1C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 18:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UGgCs45OjMq9Ctv9NOBY4uJCXDvNEr/QxlTVdWgpNPc=; b=wBHF0xDChC8vN8idMaoKJnhQxi
	Sbwbysst3jJyy6dRrzTy4XPSyxbzMtX4JQ2Lo5OtVif0WYTm/m7B0OLuJEeEegEUMrkkx5CB3CaO5
	pc+wn2OvQgjxpg/v4ZM6h+6fqqME05ys6qgsPzv+eMtH/Jbu8VjcTNUVWlfPplvWoF002oTgK+tuS
	u9LSANUom1t3F1lbqAEk6TdfRbv5ivisYLyJrUYC7vUOW+AN+w6UylIiigvBHPaUR7t/7O0INqOZY
	alaoTzrhoJDf5ZkHJp/eriFWRXDaMBAJg4FLYzYwhznbc+2W8GOp8PopqNfxEoxsnsXgafdIufHJN
	jvYdzRpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rECiU-004Db3-2t;
	Fri, 15 Dec 2023 18:15:18 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rECiQ-004DYP-2D;
	Fri, 15 Dec 2023 18:15:16 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702664105;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QLl4Jqx3rNltuypgViiDs8ZHnWVRymYQ4vUIm1Ri+jc=;
	b=rVzSaR7h/ndnUV1PAbLfm6mmGlhLYPeuIBzzmCITrHt1OKSDQgmHSBfIaPZuguLQApDil8
	1pZGts5VksBC8XnK7Bw2j3blncRF7AHvTadjSanvHA9Ag+ZUdPTEzq0902l6VD/tp0+jsu
	3mly5OXzlxb01B7SLVdbhLUsb8wK4wVBscs17JpXdqW+w9aIdnCk1cBLfXESJauaodJMxC
	utMsJQ1jnwQfaMN83+xLKymuPrER+oXc+XM7pV9C/ZyuJ0bigYvPIIX+CeH6AKzMLeVsiP
	q2bRXZNsmgqiO6+sBtwL9SZjHrF+jvSIl5CUs2Kz+xZNEEO0qr2M7/umkZoYaQ==
Date: Fri, 15 Dec 2023 19:15:05 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Stefan Nagy <stefan.nagy@ixypsilon.net>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Increase maximum frequency of SPI
 flash for ROCK Pi 4A/B/C
In-Reply-To: <20231215122848.59534-1-stefan.nagy@ixypsilon.net>
References: <20231215122848.59534-1-stefan.nagy@ixypsilon.net>
Message-ID: <33e632c38fa57053585c0016652ed8c8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_101515_208324_4F9BC3B8 
X-CRM114-Status: GOOD (  16.61  )
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

On 2023-12-15 13:28, Stefan Nagy wrote:
> The ROCK Pi 4A/B/C boards come with a 32 Mbit SPI NOR flash chip (XTX
> Technology Limited XT25F32) which has a maximum clock frequency of 108
> MHz. However, the Rockchip SPI controller driver limits the maximum
> SPI clock frequency to 50 MHz. Use this limit for spi-max-freq.
> 
> This patch has been tested on ROCK Pi 4A.
> 
> Signed-off-by: Stefan Nagy <stefan.nagy@ixypsilon.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> index d5df8939a..30e63e62a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> @@ -19,6 +19,6 @@ &spi1 {
>  	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		spi-max-frequency = <10000000>;
> +		spi-max-frequency = <50000000>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
> index bee6d7588..7122bf6c0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
> @@ -37,7 +37,7 @@ &spi1 {
>  	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		spi-max-frequency = <10000000>;
> +		spi-max-frequency = <50000000>;
>  	};
>  };
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
> index de2ebe4cb..8af75bc7c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
> @@ -49,7 +49,7 @@ &spi1 {
>  	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		spi-max-frequency = <10000000>;
> +		spi-max-frequency = <50000000>;
>  	};
>  };

It would be better to upstream these changes to the Linux kernel first, 
and then sync them back to U-Boot.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
