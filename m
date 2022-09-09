Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9BF6ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 21:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1exeQo6nnU2fnqijODKomEcD2qEnx3Hp7khMrX7lDZI=; b=WmxvM5xOnWfbMP
	96Of6SSkeHP72zL/CIX5NE52ygywkKACpThn4Up54A7cdY1JYHT0X/3L39COmoxNrfA+q2hNwDwPp
	Y1zTGLfyVR4Z8GhDVJbkz6X1mA1QT1wu8OQ7eHnjiFSXvfuyT33JfZrx4ib8sB4TeDWTWyuKiCsCQ
	xJbjeGfXh2sNbMqUDYsJfXLg//Nkc+p8fDuAQP0oUrYglOSJmSQsdTmtW20iArAhb6iN/JTXiCoca
	8jfi14Mz4QAf+66aPe6MIQk024fxXAelmJqAyTTZ/YAyVBb3An1VQMz67yTbwPoBavuZAOmIT3AKM
	27rE/m3OQGaABMId6KZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWlwM-003EJ2-SW; Fri, 09 Sep 2022 21:53:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWlwJ-003EGW-FA; Fri, 09 Sep 2022 21:53:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWlwE-0008Pa-Qn; Fri, 09 Sep 2022 23:53:26 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add regulator suffix to BPI-R2-Pro
Date: Fri, 09 Sep 2022 23:53:26 +0200
Message-ID: <17097488.0ZKypZ73Fx@diego>
In-Reply-To: <20220906155503.10971-1-linux@fw-web.de>
References: <20220906155503.10971-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_145331_535682_1DE16014 
X-CRM114-Status: GOOD (  17.44  )
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

Am Dienstag, 6. September 2022, 17:55:03 CEST schrieb Frank Wunderlich:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add -regulator suffix to regulator names on Banana Pi R2 Pro board as
> discussed on Mailinglist
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

looks like my b4 thanks mail got lost, so manually:

applied for 6.1

Thanks
Heiko

> ---
> https://patchwork.kernel.org/project/linux-rockchip/patch/20220825193836.54262-6-linux@fw-web.de/
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index 7a8d55a898f5..432469697544 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -46,7 +46,7 @@ green_led: led-1 {
>  		};
>  	};
>  
> -	dc_12v: dc-12v {
> +	dc_12v: dc-12v-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "dc_12v";
>  		regulator-always-on;
> @@ -66,7 +66,7 @@ hdmi_con_in: endpoint {
>  		};
>  	};
>  
> -	vcc3v3_sys: vcc3v3-sys {
> +	vcc3v3_sys: vcc3v3-sys-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v3_sys";
>  		regulator-always-on;
> @@ -76,7 +76,7 @@ vcc3v3_sys: vcc3v3-sys {
>  		vin-supply = <&dc_12v>;
>  	};
>  
> -	vcc5v0_sys: vcc5v0-sys {
> +	vcc5v0_sys: vcc5v0-sys-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v0_sys";
>  		regulator-always-on;
> @@ -146,7 +146,7 @@ vcc3v3_ngff: vcc3v3-ngff-regulator {
>  		vin-supply = <&vcc3v3_pi6c_05>;
>  	};
>  
> -	vcc5v0_usb: vcc5v0_usb {
> +	vcc5v0_usb: vcc5v0_usb-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc5v0_usb";
>  		regulator-always-on;
> @@ -156,7 +156,7 @@ vcc5v0_usb: vcc5v0_usb {
>  		vin-supply = <&dc_12v>;
>  	};
>  
> -	vcc5v0_usb_host: vcc5v0-usb-host {
> +	vcc5v0_usb_host: vcc5v0-usb-host-regulator {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
>  		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
> @@ -168,7 +168,7 @@ vcc5v0_usb_host: vcc5v0-usb-host {
>  		vin-supply = <&vcc5v0_usb>;
>  	};
>  
> -	vcc5v0_usb_otg: vcc5v0-usb-otg {
> +	vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
>  		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
