Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66B91CED618
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZoWdga5nFCxsapcu0R+6Q3po22k6+YlV4SNN3+JDQgA=; b=EhA/9EpRyeeedEd4O5m2wi159c
	4GWjrPB/2b1iaL7yQ6/9SUfxvKirGG/lWTG5Zgf/0Sp3ivNVk/uCHwZwUKqNlUUQrFeKxKpj1WMNw
	GKK0v4EApZorFCaieDflz0RChcNtO1IF10sHq2qAyysMHV7V4DUNEoks9Y2h6vnjqPNsJxUzF5bMm
	8M6U9WOjjvOnevIvzTF1yd3UQxNdHSra86uKaBvybr/BZJZdRXJcgktfO+cy/u/balpBylVdKqA04
	YTI/eXdrG9bGEkd/9KtCrTHTm8+Bm2gHU5f9L4jU887+6cXg53gvsFWKlZkQvFnZ6wvwBi5lC18gp
	G5cUr7BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syR0D-00000008D0e-0woy;
	Wed, 09 Oct 2024 07:20:57 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syQyq-00000008CnF-1jkk;
	Wed, 09 Oct 2024 07:19:33 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728458370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vq2LQakHupliHJ2gUTGDwZanhNGh8YhnFZHow8lZa2M=;
	b=S1glFR5ee1zNLWcC3D27TXWG7B16P1OKncIDe4ADX4pZ8Kyhzcbzhf5f2jyYYMQD7YSj2v
	Z2OZ+oB9Kx2uBTRYmY2L7QWig91dt5VF/klXaye0hwm3s6IDsUoRREmptd0v4pQUPLR8k3
	cN4fMzdF7IvEYjGa3/Qw5QPjtRhdPwrcdxeeuI8ZyvPX48hXVD7x28Xs07bDHAASm+0Ixt
	Z0OXJNEH42guHDEmhRnKWSkuAsKlN0E4BWBuTpv03mlC3C7Xyel4jqfWLDf8JM9sKotYsV
	lByCrQ+aZb0VmZv08nzWhivf7RlH1OuVJjABpTUfEwaWCsNtSkRJDqZluQpO/w==
Date: Wed, 09 Oct 2024 09:19:30 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Andy Yan
 <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 07/14] arm64: dts: rockchip: Fix LED triggers on
 rk3308-roc-cc
In-Reply-To: <20241008203940.2573684-8-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-8-heiko@sntech.de>
Message-ID: <4964eb8c49c1ad6620f965d479a7d37b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_001932_639677_5D860981 
X-CRM114-Status: GOOD (  14.90  )
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
> There are two LEDs on the board, power and user events.
> Currently both are assigned undocumented IR(-remote)
> triggers that are probably only part of the vendor-kernel.
> 
> To make dtbs check happier, assign the power-led to a generic
> default-on trigger and the user led to the documented rc-feedback
> trigger that should mostly match its current usage.
> 
> Fixes: 4403e1237be3 ("arm64: dts: rockchip: Add devicetree for board
> roc-rk3308-cc")
> Cc: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking rather meh to me, but I guess that's as good as it gets.
Thanks for the patch.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> index 9232357f4fec..d9e191ad1d77 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> @@ -36,14 +36,14 @@ leds {
> 
>  		power_led: led-0 {
>  			label = "firefly:red:power";
> -			linux,default-trigger = "ir-power-click";
> +			linux,default-trigger = "default-on";
>  			default-state = "on";
>  			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
>  		};
> 
>  		user_led: led-1 {
>  			label = "firefly:blue:user";
> -			linux,default-trigger = "ir-user-click";
> +			linux,default-trigger = "rc-feedback";
>  			default-state = "off";
>  			gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_HIGH>;
>  		};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
