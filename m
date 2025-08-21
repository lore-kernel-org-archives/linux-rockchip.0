Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3575ACA0EEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 19:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lC+kBpmf4AdrHmE0owtGF3rz2fY3cbBz+O8QeKUG44k=; b=OctZbQmbLcL2wM
	P+koyFFmtTOuTQt967gbcjc2UTEJTeMWinnWhbG6IFX6oaucW1sTMw5hZSFlcU1PsC/+5LrkvWLyr
	YgnWUH1lwSlMOmvBZF5FmDS91QOazF8Bk278m8gc7ajeTembaB26yo4ImDk4kTM+UJE69oxHwE+hY
	oSPAp0sQgFbolvmMmdKy0VQ784vp0BaiZmy9DeHLQ8PILtkezcije+/tOip8oaNUCLD5dxpenDa2R
	3OdVAd+LqKLOQQ7itT41oB0UKrzQzIlcH0eAxm8EqBcdhQyFZtLN629AEsQiv+rBXrsLjHJe7mpwn
	CZVvyqmJecm3hd1tHZHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upAhf-00000000EHq-173p;
	Thu, 21 Aug 2025 19:12:03 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5HO-0000000H2qR-46HI;
	Thu, 21 Aug 2025 13:24:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=cpXaZMqjSZbAgdwg8mSDEftWCWDwoNsLUW2Eef19G38=; b=aXqgfhv8eg6zEIGtl21VggWx5Z
	us+jnh526lU0meVen16i2u0Nzg/J148die1WZMebLepoq/W05DUw4lXttx+AGOaW8OdafpUnqUSbc
	HFDoJYaEKkD83dETjzus75JXBkQZ1ol9ale5AOPta2u1D6wSsw9cPgyojjEWL6Wbyh5U=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1up5H1-005SGu-S5; Thu, 21 Aug 2025 15:24:11 +0200
Date: Thu, 21 Aug 2025 15:24:11 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Hsun Lai <i@chainsx.cn>
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: add DTs for 100ASK DShanPi
 A1
Message-ID: <40b212df-2a55-48d5-8479-07c2de7b7cd6@lunn.ch>
References: <20250821110942.172150-1-i@chainsx.cn>
 <20250821110942.172150-3-i@chainsx.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821110942.172150-3-i@chainsx.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_062435_018152_BC4BD999 
X-CRM114-Status: UNSURE (   6.51  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, sfr@canb.auug.org.au, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> +&gmac0 {
> +	phy-mode = "rgmii-id";
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&eth0m0_miim
> +		     &eth0m0_tx_bus2
> +		     &eth0m0_rx_bus2
> +		     &eth0m0_rgmii_clk
> +		     &eth0m0_rgmii_bus>;
> +	status = "okay";
> +};
> +
> +&gmac1 {
> +	phy-mode = "rgmii-id";
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&eth1m0_miim
> +		     &eth1m0_tx_bus2
> +		     &eth1m0_rx_bus2
> +		     &eth1m0_rgmii_clk
> +		     &eth1m0_rgmii_bus
> +		     &ethm0_clk1_25m_out>;
> +	status = "okay";
> +};

> +&mdio0 {
> +	rgmii_phy0: phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;
> +		clocks = <&cru REFCLKO25M_GMAC0_OUT>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gmac0_rst>;
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&mdio1 {
> +	rgmii_phy1: phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;
> +		clocks = <&cru REFCLKO25M_GMAC1_OUT>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gmac1_rst>;
> +		reset-assert-us = <20000>;
> +		reset-deassert-us = <100000>;
> +		reset-gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
> +	};
> +};

For these nodes only:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
