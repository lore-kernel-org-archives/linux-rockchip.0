Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10901C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 14:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmHfgDfIlOPhcu1MQ790GaXTrXgtSt0KGUuu7X69xMo=; b=T/K8cQkIFDqzy4
	6wvH3G8EnAI+KK5trplrir6FVa93FpJWdeKP39dSnp7FCXDQoTa7u/17JzmQP9fRQ4Y69ztnB8Bcu
	oHVsYfF50ALP1czsviT3ZY0PQvogfQl4IdGsnWLu69VGw/2Q5pWPXSLWinwrBnk0GvpcULdjWYufP
	g9j3y8qmbDC9Uf2/O2b9NWqiRV7v90ZxcNTCpsyNpzujwvChNK7cxszxwG51szAUfOYUyCYl8+ZRO
	7Y6FulOMgcnij9OvH23Rpk+khrv0V1M33V6x5UINdf2hpPMvMC8VbLQ1Fcw4A089wK//AGKdDSzId
	m3oSsP1bS4w6jcMSvz8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCMA-0000000DyHG-013T;
	Fri, 28 Jun 2024 14:13:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCM0-0000000DyFm-1UBh;
	Fri, 28 Jun 2024 14:13:33 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sNCLy-0007nT-U2; Fri, 28 Jun 2024 16:13:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: use generic Ethernet PHY reset bindings
 for Lunzn Fastrhino R68S
Date: Fri, 28 Jun 2024 16:13:30 +0200
Message-ID: <10487566.nUPlyArG6x@diego>
In-Reply-To: <20240628140104.551760-4-amadeus@jmu.edu.cn>
References: <20240628140104.551760-1-amadeus@jmu.edu.cn>
 <20240628140104.551760-4-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_071332_428709_414F4851 
X-CRM114-Status: GOOD (  17.51  )
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

Am Freitag, 28. Juni 2024, 16:01:03 CEST schrieb Chukun Pan:
> Replace the deprecated snps,reset-xxx bindings to the generic Ethernet PHY
> reset GPIO bindings. Also fixed the PHY address and reset GPIOs (does not
> match the corresponding pinctrl). Since we use rgmii-id as the phy mode,
> remove the useless tx_delay and rx_delay.

Please split this commit into multiple ones.

When need to "list" changes in your commit message, it is often a good
indicator for needing to split a change.


> Fixes: b9f8ca655d80 ("arm64: dts: rockchip: Add Lunzn Fastrhino R68S")
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  .../dts/rockchip/rk3568-fastrhino-r68s.dts    | 26 +++++++------------
>  1 file changed, 10 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
> index a3339186e89c..d27eb37b5b35 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r68s.dts
> @@ -39,12 +39,6 @@ &gmac0_tx_bus2
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> -	snps,reset-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
> -	snps,reset-active-low;
> -	/* Reset time is 15ms, 50ms for rtl8211f */
> -	snps,reset-delays-us = <0 15000 50000>;
> -	tx_delay = <0x3c>;
> -	rx_delay = <0x2f>;
>  	status = "okay";
>  };
>  
> @@ -61,30 +55,30 @@ &gmac1m1_tx_bus2
>  		     &gmac1m1_rx_bus2
>  		     &gmac1m1_rgmii_clk
>  		     &gmac1m1_rgmii_bus>;
> -	snps,reset-gpio = <&gpio0 RK_PB1 GPIO_ACTIVE_LOW>;
> -	snps,reset-active-low;
> -	/* Reset time is 15ms, 50ms for rtl8211f */
> -	snps,reset-delays-us = <0 15000 50000>;
> -	tx_delay = <0x4f>;
> -	rx_delay = <0x26>;
>  	status = "okay";
>  };
>  
>  &mdio0 {
> -	rgmii_phy0: ethernet-phy@0 {
> +	rgmii_phy0: ethernet-phy@1 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
> -		reg = <0>;
> +		reg = <0x1>;
>  		pinctrl-0 = <&eth_phy0_reset_pin>;
>  		pinctrl-names = "default";
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio1 RK_PB0 GPIO_ACTIVE_LOW>;
>  	};
>  };
>  
>  &mdio1 {
> -	rgmii_phy1: ethernet-phy@0 {
> +	rgmii_phy1: ethernet-phy@1 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
> -		reg = <0>;
> +		reg = <0x1>;
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
