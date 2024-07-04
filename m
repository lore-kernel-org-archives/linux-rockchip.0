Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15B5EC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 19:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CzEPq+SRbd0CZejQKkPqJfxRP4Jwq9aAts/ifV4Duw=; b=igguQVOr2R6FTe
	9m3ZxtGg36cN+vUnLqJWO/BQ+5kWFfR1oOiNoZpKIzsXzpJAko3V77TlnOVgBCxfT1UzUOEpvk1KE
	C48eku9FgGGLhx0V+RHKandf9dqQPdAYkreEe/c5M9lbJSmh0C0ddWmZOrbqIq9znGLAH5aZ+apgT
	C+6DXFxkcw+12zOKUXCoCF8vdoEQ5jkIepsOmgUyjYJxlUCb1SN6B3eLWaSR9b5SPGMCDPZjFVgw7
	uqy+oUvNagf55+Kq+LQKzcooYDwx8HOl6Jrlf+1cVTnwf+AyHY/I6tbZILBrSMyeO5dTL6hoPLvUZ
	mepVi9JfckZNFNWTlm5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPRsZ-0000000EF4I-26ZI;
	Thu, 04 Jul 2024 19:12:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPRsK-0000000EEz3-3Ntr;
	Thu, 04 Jul 2024 19:12:13 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPRsJ-0005zp-Ho; Thu, 04 Jul 2024 21:12:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v2 7/9] arm64: dts: rockchip: use generic Ethernet PHY reset
 bindings for Lunzn Fastrhino R68S
Date: Thu, 04 Jul 2024 21:12:10 +0200
Message-ID: <2210411.C4sosBPzcN@diego>
In-Reply-To: <20240630150010.55729-8-amadeus@jmu.edu.cn>
References: <20240630150010.55729-1-amadeus@jmu.edu.cn>
 <20240630150010.55729-8-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_121212_880736_E98EB3A9 
X-CRM114-Status: GOOD (  17.31  )
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

Am Sonntag, 30. Juni 2024, 17:00:08 CEST schrieb Chukun Pan:
> Replace the deprecated snps,reset-xxx bindings to the generic Ethernet
> PHY reset GPIO bindings. Also updates the delays based on the vendor
> recommendations.
> 
> Fixes: b9f8ca655d80 ("arm64: dts: rockchip: Add Lunzn Fastrhino R68S")
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  .../boot/dts/rockchip/rk3568-fastrhino-r68s.dts    | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
> index ce2a5e1ccefc..02d966d218fd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
> @@ -39,10 +39,6 @@ &gmac0_tx_bus2
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> -	snps,reset-gpio = <&gpio1 RK_PB0 GPIO_ACTIVE_LOW>;
> -	snps,reset-active-low;
> -	/* Reset time is 15ms, 50ms for rtl8211f */
> -	snps,reset-delays-us = <0 15000 50000>;
>  	tx_delay = <0x3c>;
>  	rx_delay = <0x2f>;
>  	status = "okay";
> @@ -61,10 +57,6 @@ &gmac1m1_tx_bus2
>  		     &gmac1m1_rx_bus2
>  		     &gmac1m1_rgmii_clk
>  		     &gmac1m1_rgmii_bus>;
> -	snps,reset-gpio = <&gpio1 RK_PB1 GPIO_ACTIVE_LOW>;
> -	snps,reset-active-low;
> -	/* Reset time is 15ms, 50ms for rtl8211f */
> -	snps,reset-delays-us = <0 15000 50000>;
>  	tx_delay = <0x4f>;
>  	rx_delay = <0x26>;
>  	status = "okay";
> @@ -76,6 +68,9 @@ rgmii_phy0: ethernet-phy@1 {
>  		reg = <0x1>;
>  		pinctrl-0 = <&eth_phy0_reset_pin>;
>  		pinctrl-names = "default";
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;

what's the reason behind the changed timings?

The original comment stated,
	/* Reset time is 15ms, 50ms for rtl8211f */
so that timing change needs an explanation please :-)

Thanks
Heiko

> +		reset-gpios = <&gpio1 RK_PB0 GPIO_ACTIVE_LOW>;
>  	};
>  };
>  
> @@ -85,6 +80,9 @@ rgmii_phy1: ethernet-phy@1 {
>  		reg = <0x1>;
>  		pinctrl-0 = <&eth_phy1_reset_pin>;
>  		pinctrl-names = "default";
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio1 RK_PB1 GPIO_ACTIVE_LOW>;
>  	};
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
