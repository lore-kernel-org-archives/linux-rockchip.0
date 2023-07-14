Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA24EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 15:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUr6LHesljh9sGrXS9XLLiwAkWW/i4El6bMW+Q+kjSI=; b=fuWr7KBBZ9zdG8
	8Ft8dpLaS6pl6USOtwpgc/FNacACdFXzg7g+5gIYYunIULSHAzxxPoyUuDctcdvAukVNlLMn9O5kR
	MM8FBB0wK8Do1asD7GBrfM2jM2AK+eWGOUt6D9s4cMm4JVpOwlId7rdvdUzfK5BVIx0WRwmrd1ywu
	WMF4VPJ/NMZ2jhGfLn6tblyo5tXp1ZHuztVD3jyrLKmIXWUPoCFuQtkwPIMbTpoNSnX72YBSuHwn6
	qpQXmhaiF0shgyr+HudL+R+syHpMUvzMjpsMMtZLAzFSHOlGTiReoCKcoVJzoko94AFcg4fFkJ3mc
	6DSbEv5aOBuwtkWBrmrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKKzo-006Yky-25;
	Fri, 14 Jul 2023 15:46:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKKzl-006YkX-1a
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jul 2023 15:46:15 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qKKzd-0004O4-Gx; Fri, 14 Jul 2023 17:46:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, michael.riesch@wolfvision.net,
 Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3a: make ethernet work
Date: Fri, 14 Jul 2023 17:46:04 +0200
Message-ID: <25008843.6Emhk5qWAg@phil>
In-Reply-To: <20230714063027.74489-1-naoki@radxa.com>
References: <20230714063027.74489-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_084613_534988_8DEAAE5A 
X-CRM114-Status: GOOD (  19.73  )
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

Am Freitag, 14. Juli 2023, 08:30:27 CEST schrieb FUKAUMI Naoki:
> ethernet on Radxa ROCK 3A is not working by following error:
> 
>  rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
>  rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)
> 
> to fix this problem, align related properties with vendor kernel
>  https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> 
> Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

There also is a second patch in the mix adding the gmac1_clkin
ef9f4b4a5020 ("arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC")

And this patch does the exact opposite as the original nodes.
Can someone please mention board versions? Or did the gmac1 never
really work in the first place?


Thanks
Heiko

> ---
>  .../boot/dts/rockchip/rk3568-rock-3a.dts      | 32 ++++++-------------
>  1 file changed, 10 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 917f5b2b8aab..f9381ab9629b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -32,13 +32,6 @@ hdmi_con_in: endpoint {
>  		};
>  	};
>  
> -	gmac1_clkin: external-gmac1-clock {
> -		compatible = "fixed-clock";
> -		clock-frequency = <125000000>;
> -		clock-output-names = "gmac1_clkin";
> -		#clock-cells = <0>;
> -	};
> -
>  	leds {
>  		compatible = "gpio-leds";
>  
> @@ -256,18 +249,24 @@ &cpu3 {
>  
>  &gmac1 {
>  	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> -	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
> -	clock_in_out = "input";
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
> +	assigned-clock-rates = <0>, <125000000>;
> +	clock_in_out = "output";
>  	phy-handle = <&rgmii_phy1>;
> -	phy-mode = "rgmii-id";
> +	phy-mode = "rgmii";
>  	phy-supply = <&vcc_3v3>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&gmac1m1_miim
>  		     &gmac1m1_tx_bus2
>  		     &gmac1m1_rx_bus2
>  		     &gmac1m1_rgmii_clk
> -		     &gmac1m1_clkinout
>  		     &gmac1m1_rgmii_bus>;
> +	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	/* Reset time is 20ms, 100ms for rtl8211f */
> +	snps,reset-delays-us = <0 20000 100000>;
> +	tx_delay = <0x42>;
> +	rx_delay = <0x28>;
>  	status = "okay";
>  };
>  
> @@ -588,11 +587,6 @@ &mdio1 {
>  	rgmii_phy1: ethernet-phy@0 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
>  		reg = <0x0>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&eth_phy_rst>;
> -		reset-assert-us = <20000>;
> -		reset-deassert-us = <100000>;
> -		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>  	};
>  };
>  
> @@ -630,12 +624,6 @@ vcc_mipi_en: vcc_mipi_en {
>  		};
>  	};
>  
> -	ethernet {
> -		eth_phy_rst: eth_phy_rst {
> -			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
>  	hym8563 {
>  		hym8563_int: hym8563-int {
>  			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
