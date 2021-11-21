Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91005C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Nov 2021 08:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs7odaJG0gj16JIWDFtOMSs+izq2PK4OG/X7a7n+R2w=; b=B3WRPB77foc4rx
	z+p9h7UtUxjpEJ+BqwewzymlIaUeQ/edxaKA7c3ZdEVz8q423tQ/pJmeJ74EQaFHypWwKD0/xFrvD
	snPBuxqqq97tWwm4i4G0He5W6Ba1YQRTuQB/rCqJXbrcNLK5Xekh5WLq76svDkf1GQDIYPiL9MUUd
	z8xmMvKiKd6i9MlFSc+zJE9doNIbiW+3IhrKda1XHlIhyS4LRE+TRR3kqwXuNuyaQ1wkmyM4SXwP2
	pewHkxYZfRu2XGVmgeaj6Iio8TjDh330LSfxgqEvw8aPi+UE35y7ICjOA72tByeHSsvhO39M0nfM6
	wUjGRbgCcjGllzKuqg+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moid9-00DO2P-3t; Sun, 21 Nov 2021 08:55:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moicv-00DNzE-4P; Sun, 21 Nov 2021 08:55:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 689BA60231;
 Sun, 21 Nov 2021 08:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637484907;
 bh=BSrNBk1+xTVdjY/KH9HeiQ19aqGKk4qtpYXlS/s+Bi0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tatESt2cVzf7HD/KkoxWzf6u8sn0XI27B+PpnyEvnlG5TRXVuC3dZOd3am3b8I+C0
 5G3PaGYVPSDNLTfsws9MbU7DSfDXQec8L3S1EMA9SYP602lbQgq6TdNKLPv8gTEa5W
 h4DCKpMJQ69txcLZBiZHHTb+zpZ7YZa6TMBeXJeGSrQo2O1ejc+DSL0yiwmEZ0s+V+
 WCx5dJPVXpxqkVOL46x0LUbKwTPT8WRQ0p3QZIEzDFCrXuB3380URRWhZ3jicWE4qv
 oOo20/GIDVTxQJ1xkqHyCxvtvXYImCo1uJ/UQjPqhwKjtnE9Iw3RWmw+ZHfm4kZCJx
 gaXkZ8rHGV2lw==
Date: Sun, 21 Nov 2021 16:55:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: Rob Herring <robh+dt@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, ~okias/devicetree@lists.sr.ht,
 phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/3] arm64: dts: make dts use gpio-fan matrix instead
 of array
Message-ID: <20211121085457.GN31998@dragon>
References: <20211029114948.41841-1-david@ixit.cz>
 <20211029114948.41841-2-david@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211029114948.41841-2-david@ixit.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_005509_237468_7629CB27 
X-CRM114-Status: GOOD (  16.16  )
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

On Fri, Oct 29, 2021 at 01:49:45PM +0200, David Heidelberg wrote:
> No functional changes.
> 
> Adjust to comply with dt-schema requirements
> and make possible to validate values.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 9 +++++----
>  arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts     | 2 +-

You may want to split it per platform, so that corresponding platform
maintainer can pick them up.

Shawn

>  arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi     | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts    | 5 +++--
>  4 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> index 86bdc0baf032..fbbcacf24f2e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
> @@ -52,10 +52,11 @@ gpio_fan: gpio-fan {
>  		gpios = <&gpio GPIODV_14 GPIO_ACTIVE_HIGH
>  			 &gpio GPIODV_15 GPIO_ACTIVE_HIGH>;
>  		/* Dummy RPM values since fan is optional */
> -		gpio-fan,speed-map = <0 0
> -				      1 1
> -				      2 2
> -				      3 3>;
> +		gpio-fan,speed-map =
> +				<0 0>,
> +				<1 1>,
> +				<2 2>,
> +				<3 3>;
>  		#cooling-cells = <2>;
>  	};
>  
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> index a3b9d615a3b4..e34045d10a12 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
> @@ -39,7 +39,7 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
>  
>  	fan: gpio-fan {
>  		compatible = "gpio-fan";
> -		gpio-fan,speed-map = <0 0 8600 1>;
> +		gpio-fan,speed-map = <0 0>, <8600 1>;
>  		gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
>  		#cooling-cells = <2>;
>  		pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index 46b0f97a0b1c..4af535866d1f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -44,7 +44,7 @@ dc_12v: dc-12v {
>  	fan0: gpio-fan {
>  		#cooling-cells = <2>;
>  		compatible = "gpio-fan";
> -		gpio-fan,speed-map = <0 0 3000 1>;
> +		gpio-fan,speed-map = <0 0>, <3000 1>;
>  		gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
>  		status = "okay";
>  	};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 4d4b2a301b1a..8af3763daaba 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -30,8 +30,9 @@ gmac1_clkin: external-gmac1-clock {
>  	fan: gpio_fan {
>  		compatible = "gpio-fan";
>  		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
> -		gpio-fan,speed-map = <0    0
> -				      4500 1>;
> +		gpio-fan,speed-map =
> +				<   0 0>,
> +				<4500 1>;
>  		#cooling-cells = <2>;
>  	};
>  
> -- 
> 2.33.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
