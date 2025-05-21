Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA9A5C54ED0
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 16:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWag+yACqZOFD8/s/DXrRj3Ho3FWommncry3uRXnp0I=; b=DepS4FgJluy04q
	k3zCNh8MZWBaQcNTqlnAbMeBeu60MMVjLuHqyI2dBmKy8fNqsuGmdrZ3FefOcLP+S/Gg0nJCpReAz
	nlN5t4L8C6v2VATJXOniDt0v32/NN+rUizJ2xWV6qB9jDVeQbKefWpRd1CGNR53EJbIJRsVVgvSsY
	Y8izIvqUq4uUwiETcLfXRJmvBJKbXdicZ2uY07eW82HBY3J7mFEOwbK4+F8cx1bGzf3Ot8pDXDJLw
	IQVgd9E+AQV1+YTl2lpHxfBJpL3VE8eQg491ggvi9CXSBsRJAoMvNtaghxaYRDWSNoX2T8vaxVZts
	OBmpoZ7gzH0Usoc32g6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHmIg-0000000GSra-0wmZ;
	Wed, 21 May 2025 16:28:14 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHmGT-0000000GSTE-4C06;
	Wed, 21 May 2025 16:25:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=3g+CVDtzdZuER6lgO4bsBUK1VAcbEEFUD1kAdD51SmY=; b=0QceTirrCVNAGS9NMWkA8dWXud
	0Ijic96VpnfzbUaQU8WJs5bQ73IwhTxqB43HicBwXfhvTmqdOadYRKNSzRumKnoBPVDo/7llJYeqz
	dGI/DJAJ00kGGqHhjvBCjIK6VuSsPV/jCXtT+Pftb7iM+fYbYKWek5nWH7/IqjQB+Qds=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uHmGM-00DKBr-7Y; Wed, 21 May 2025 18:25:50 +0200
Date: Wed, 21 May 2025 18:25:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: support Ethernet Switch
 adapter for RK3588 Jaguar
Message-ID: <657a085c-4214-4096-8a68-047d57a40d60@lunn.ch>
References: <20250521-jaguar-mezz-eth-switch-v1-0-9b5c48ebb867@cherry.de>
 <20250521-jaguar-mezz-eth-switch-v1-2-9b5c48ebb867@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250521-jaguar-mezz-eth-switch-v1-2-9b5c48ebb867@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_092558_037814_0E2BB5A7 
X-CRM114-Status: GOOD (  11.29  )
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

> +&gmac1 {
> +	clock_in_out = "output";
> +	phy-mode = "rgmii";

Does the PCB have extra long clock lines to implement the 2ns delays?

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac1_rx_bus2
> +		     &gmac1_tx_bus2
> +		     &gmac1_rgmii_clk
> +		     &gmac1_rgmii_bus
> +		     &eth1_pins>;
> +	rx_delay = <0x30>;
> +	tx_delay = <0x30>;

Since this has a switch on the other end, its a bit more complicated
with RGMII delays. Normally, the MAC does nothing and passed rgmii-id
to the PHY, and the PHY then does the delays. However, here you don't
have a PHY. So you have the MAC add the delays. This looks O.K. I
would prefer that the driver used the standardized
rx-internal-delay-ps & tx-internal-delay-ps rather than these vendor
properties. But that is probably out of scope for this patchset.

> +			port@5 {
> +				reg = <5>;
> +				ethernet = <&gmac1>;
> +				label = "CPU";
> +				phy-mode = "rgmii";

Again, this probably should be rgmii-id to correctly describe the PCB,
but i don't know if the switch takes any notice of it.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
