Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE87C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 21:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c30U0VLpM51FWEpS5Y46K+8YnpvpfZHWW42zetLDPaY=; b=xbae8nrqPxGSzd
	lSwPRbsSdcCSzJDPizEsYmR0xqzmGHrI7lWNNf1RSXtSmX9k8TMjZPi01mHf8MMhPUzDtuXvMy5Va
	U+Grdp7ZxD1HFbreUCwEo0LGQr2zPrbJI7STa2Q418Yea3SzTD4K5pyI/ptqTm1Hps89jOw45ZvFR
	i2XYjPb+LRjZ425ezaj/wmd+drEgj8+91RBaQkARDWTxiH9Q9L1HcOMDfZMoDnWhD3XZyPPBOCmrd
	HqW6hDI+65xmLgQJBxXFHAG6VPj14ybCz9OmFkZv8sfa5FXBQjjasLnbyLF+NCUIHbWzYKOUfmNy0
	3Dwo7x1RdYPs8LpuzZbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfOea-00000005V0n-0oCe;
	Thu, 02 Jul 2026 21:09:00 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfOeX-00000005V0L-2gS0;
	Thu, 02 Jul 2026 21:08:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=VsU0GKlpFen3bVJtWCMmvE5FPpCnuu0a3JfblASDukw=; b=3OJXP7RLiMfKVDA9EBfQIOFHkz
	jS/DJTx6LqCN2l432ngygfgLUogxS7Ko1t035kcDafAQgVRcrTXxsv8/Z5vN/Y7zJTzR8E/QpKu97
	TmgJVzbEJRMnj1IUGzHOvI9XtaDfydCTx5U3ThojEtVLFGoMwAI2um+GdUeLI1Pnzqlw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wfOeM-00ARGv-DY; Thu, 02 Jul 2026 23:08:46 +0200
Date: Thu, 2 Jul 2026 23:08:46 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: Add devicetree for the
 Graperain G3568 v2
Message-ID: <fb1b5c32-9dfb-43b9-85a3-2adff2bc4a66@lunn.ch>
References: <20260702204628.2407308-2-coiaprant@gmail.com>
 <20260702204628.2407308-5-coiaprant@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702204628.2407308-5-coiaprant@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_140857_682086_DA4BB407 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
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

> +&gmac0 {
> +	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> +	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
> +	assigned-clock-rates = <0>, <125000000>;
> +	clock_in_out = "output";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac0_miim
> +		     &gmac0_tx_bus2
> +		     &gmac0_rx_bus2
> +		     &gmac0_rgmii_clk
> +		     &gmac0_rgmii_bus>;
> +	phy-handle = <&rgmii_phy0>;
> +	phy-mode = "rgmii-id";
> +	status = "okay";
> +};
> +
> +&gmac1 {
> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
> +	assigned-clock-rates = <0>, <125000000>;
> +	clock_in_out = "output";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1m1_miim
> +		     &gmac1m1_tx_bus2
> +		     &gmac1m1_rx_bus2
> +		     &gmac1m1_rgmii_clk
> +		     &gmac1m1_rgmii_bus>;
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii-id";
> +	status = "okay";
> +};

> +&mdio0 {
> +	rgmii_phy0: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_LOW>;
> +
> +		leds {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			led@1 {
> +				reg = <1>;
> +				color = <LED_COLOR_ID_GREEN>;
> +				function = LED_FUNCTION_LAN;
> +				default-state = "keep";
> +			};
> +
> +			led@2 {
> +				reg = <2>;
> +				color = <LED_COLOR_ID_AMBER>;
> +				function = LED_FUNCTION_LAN;
> +				default-state = "keep";
> +			};
> +		};
> +	};
> +};
> +
> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio2 RK_PD1 GPIO_ACTIVE_LOW>;
> +
> +		leds {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			led@1 {
> +				reg = <1>;
> +				color = <LED_COLOR_ID_GREEN>;
> +				function = LED_FUNCTION_LAN;
> +				default-state = "keep";
> +			};
> +
> +			led@2 {
> +				reg = <2>;
> +				color = <LED_COLOR_ID_AMBER>;
> +				function = LED_FUNCTION_LAN;
> +				default-state = "keep";
> +			};
> +		};
> +	};
> +};

For these nodes only:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
