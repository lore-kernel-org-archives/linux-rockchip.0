Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81307C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 10:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCrxkQDqUtPKKD3l3iqHWRDrIDthrix54YbjTSAPS7Y=; b=m7JhKNXc4MBW3S
	SHcpgP7ZDGBDnRXKsgfsbgqXyGBVNtvEaaAHSo6aDwD2DfxGYDt7QWllTx7kLkGyopwusJzKjBqFf
	4BgRKi+I8DGIwO2mBGQSq+9bPVvp7OkmetfAfksCcn60JWDNzaVJzf6mBQ0/mNAfNxxnWMP1cXds4
	D0zvC9zwLHyD9QaPTlUVnavmIGAeqIQRE/EmjcWI4XYtlT9C2wsmb9yNTlVY2Vyup1FHvagbxCaGL
	GTTDrC2x/qjp53ndq4yq2Q1FRJCYyeKopBpiB/I8HWoSZOLg+PAYRReZV8MCQouqingIgn7xvRFAy
	9bRvsWP1qDkAc0jglFSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTg3X-00000007Mh8-1uyo;
	Sat, 27 Jan 2024 10:36:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTg3T-00000007MgS-3zV6;
	Sat, 27 Jan 2024 10:36:57 +0000
Received: from i53875a60.versanet.de ([83.135.90.96] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rTg3E-00028i-Nq; Sat, 27 Jan 2024 11:36:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host regulator for
 Cool Pi CM5 EVB
Date: Sat, 27 Jan 2024 11:36:40 +0100
Message-ID: <2798389.3c9HiEOlIg@diego>
In-Reply-To: <20240127092034.887085-3-andyshrk@163.com>
References: <20240127092034.887085-1-andyshrk@163.com>
 <20240127092034.887085-3-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_023656_030229_0CEECA3A 
X-CRM114-Status: GOOD (  19.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andy,

Am Samstag, 27. Januar 2024, 10:20:33 CET schrieb Andy Yan:
> According to the schematic, this regulator is used both for USB30 and
> USB20, so give it a more appropriate name.

I don't have the schematics, so I'll need you to answer this, but what
is the regulator called _in_ the schematics?

I.e. we want regulators to really be named the same as in the schematic
so people can look up thing from the dts in the schematics and the other
way around too.


Thanks
Heiko


> Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB")
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
> index 1b5681fe0471..5f42f1065d73 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
> @@ -84,7 +84,7 @@ vcc3v3_lcd: vcc3v3-lcd-regulator {
>  		vin-supply = <&vcc3v3_sys>;
>  	};
>  
> -	vcc5v0_usb30_host: vcc5v0-usb30-host-regulator {
> +	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v0_host";
>  		regulator-boot-on;
> @@ -200,12 +200,12 @@ &u2phy3 {
>  };
>  
>  &u2phy2_host {
> -	phy-supply = <&vcc5v0_usb30_host>;
> +	phy-supply = <&vcc5v0_usb_host>;
>  	status = "okay";
>  };
>  
>  &u2phy3_host {
> -	phy-supply = <&vcc5v0_usb30_host>;
> +	phy-supply = <&vcc5v0_usb_host>;
>  	status = "okay";
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
