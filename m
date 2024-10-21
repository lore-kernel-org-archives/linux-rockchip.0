Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6FB2D15DB3
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grFtHYLzshgw4rc7Sm55Sthq5Uc33ugxx52cY0DCqmY=; b=iGGCCbjhCFLu1H
	fJFwozOOw7BGOzJqzMiFcYYyKTstI9RuRejlB8qw76PMCaGZtFW5yMchhR3SO02D5ftNVncwD0suj
	+F4BPRrzhblheeoalczbD/Mv9pJTEhgJP/ugh9xf34+T0gIbPWLpJdLNh5u8LkVwqVaadYvcTqe/h
	rz96Cx+AYoc4LYm4HqZ97f4kRqZSTgFuhqa0P3/Pb/FpwgVXd7bxcOUnuwLa+v8E6z0GZFieD+TWv
	xDCCuAxJxrKupSM1mmWV4MN1wlcpTp6MCdMxpQGhyouV9Ezs8ktaaDPuQwhqq+pEj1CTfCImjfJpI
	gSOd5Vbs1npzja0REo4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uYe-00000007pfC-3OUk;
	Mon, 21 Oct 2024 15:43:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uWW-00000007p8d-2Mil
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 15:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=96gLXc9Hx0FDzjcOv+j8RYEqjcjATm6YSc1g2w0qomk=; b=S4EJJq7RR9NqTZFs7l05kzJ5ak
	YNImyIycZbiUTX3JGd05Le4aSJEn9FnEDvGyyehK8hSBXLJlK2C248DnBvCklXLm9LpVYKFxnZ5N4
	HIgrM9LctJOa2NhpmsRXu2Tl8eOm/ikWZZHJP1Y60GZtoky+EX6vcoWkxEyQg+v0I7yyUXeyZ9E7k
	oksmo1/he3Mgtyq8pX92rUAhCod6a8h3kri1jaw8bswIPnSlbmD3Da9+0SRh3zIspNQi+dmck6l+e
	AUJUK4DVUfH8Pa9zCzosB0m6AHL0k+7fYWU1E4DHHF7bQfge0n0AYkRzJ/4lQijc0EkBSBzU5RiAY
	ukIc0Y5Q==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uWS-0005gS-Ce; Mon, 21 Oct 2024 17:40:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: amadeus@jmu.edu.cn, kever.yang@rock-chips.com, jonas@kwiboo.se,
 linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: make PCIe3 (M.2 M key) work for
 Radxa ROCK 3A
Date: Mon, 21 Oct 2024 17:40:44 +0200
Message-ID: <10551175.nUPlyArG6x@diego>
In-Reply-To: <20240916014039.1918-2-naoki@radxa.com>
References: <20240916014039.1918-1-naoki@radxa.com>
 <20240916014039.1918-2-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084048_640993_12ECB7B6 
X-CRM114-Status: GOOD (  22.73  )
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

Hi,

Am Montag, 16. September 2024, 03:40:39 CEST schrieb FUKAUMI Naoki:
> on Radxa ROCK 3A, GPIO0_D4 is used to enable both pi6c PCIe clock
> generator and "vcc3v3_pcie" regulator (PCIe3 M.2 M key connector).

So now I've gone ahead and looked up a rock 3a schematics.

By the way, the Radxa site is broken. On
https://wiki.radxa.com/Rock3/hardware
the v1.3 schematics link only leads to a not-found page.


> since pi6c needs to be enabled before using PCIe3, GPIO0_D4 need to be
> controlled by "vcc3v3_pi6c_03" regulator. then, make "vcc3v3_pi6c_03"
> vin-supply for "vcc3v3_pcie30x1".

You're hacking around the thing here.

That gpio0-d4 controls two separate regulators.
- the one creating VCC3V3_PCIE30X1
- the one creating VCC3V3_PI6C_03

Both are directly supplied from VCC5V0_SYS .

So please don't create artificial hierarchies where none exist.

Instead you could go with just having multiple phandles, like for example
the vcc5v0_usb* set of regulators on the rock 5 itx:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts#n182


> also, "pcie30_avdd0v9" and "pcie30_avdd1v8" are unused. remove them.
> 
> Fixes: 0522cd811220 ("arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v3:
> - fix pinctrl just for reset pin as GPIO
> Changes in v2:
> - split patches for PCIe2 and PCIe3
> - change regulator name from "vcc3v3_pcie" to "vcc3v3_pcie30x1"
> - add comment for vin-supply of "vcc3v3_pcie30x1" regulator
> - remove unused "pcie30_avdd0v9" and "pcie30_avdd1v8"
> - fix pinctrl node name to overwrite rk3568-pinctrl.dtsi
> ---
>  .../boot/dts/rockchip/rk3568-rock-3a.dts      | 45 +++++++------------
>  1 file changed, 15 insertions(+), 30 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index f94cbddf0f0c2..6b3f3ee7f22c7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -86,29 +86,13 @@ vcc12v_dcin: vcc12v-dcin-regulator {
>  		regulator-boot-on;
>  	};
>  
> -	pcie30_avdd0v9: pcie30-avdd0v9-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "pcie30_avdd0v9";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <900000>;
> -		regulator-max-microvolt = <900000>;
> -		vin-supply = <&vcc3v3_sys>;
> -	};
> -
> -	pcie30_avdd1v8: pcie30-avdd1v8-regulator {
> -		compatible = "regulator-fixed";
> -		regulator-name = "pcie30_avdd1v8";
> -		regulator-always-on;
> -		regulator-boot-on;
> -		regulator-min-microvolt = <1800000>;
> -		regulator-max-microvolt = <1800000>;
> -		vin-supply = <&vcc3v3_sys>;
> -	};
> -

This change looks correct, but please make this a separate patch.
One of the pmic regulators provides these voltage inputs to the soc
side of the pcie controller.


>  	/* pi6c pcie clock generator */
>  	vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
>  		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_pwren_h>;
>  		regulator-name = "vcc3v3_pi6c_03";
>  		regulator-always-on;
>  		regulator-boot-on;
> @@ -117,16 +101,13 @@ vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
>  		vin-supply = <&vcc5v0_sys>;
>  	};
>  
> -	vcc3v3_pcie: vcc3v3-pcie-regulator {
> +	/* actually fed by vcc5v0_sys, dependent on pi6c clock generator */
> +	vcc3v3_pcie30x1: vcc3v3-pcie30x1-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pcie_enable_h>;
> -		regulator-name = "vcc3v3_pcie";
> +		regulator-name = "vcc3v3_pcie30x1";
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc5v0_sys>;
> +		vin-supply = <&vcc3v3_pi6c_03>;
>  	};
>  
>  	vcc3v3_sys: vcc3v3-sys-regulator {
> @@ -615,9 +596,9 @@ &pcie30phy {
>  
>  &pcie3x2 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie30x2m1_pins>;
> +	pinctrl-0 = <&pcie30x2_perstn_m1>;

you're again mixing in pinctrl changes into a patch about the
regulator hirarchy. Please don't do that.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
