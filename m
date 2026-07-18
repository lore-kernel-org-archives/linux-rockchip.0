Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B605FC4450A
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 20:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPBG6glpIs1tNUIBxoH0EclBKkJzlGtRluiuC5m1LXg=; b=I+NzA2IfnbMe1/
	jrTP8zN1iu505lOR8BixeKJIgTdbjmbJOGe5SmAIC0bU+ICs0s4flb7LSqyfJnIc7vdsHHAzv6XZl
	4zGhWQWFKwSeNa+WHZwJ3K0KVy1ChDLSZWypNh5p1C6qRE+7LVOYraCT4ObGS0czwfXUTbyt8ILrA
	2pG7xo1HAbB5S4ZdOrsVzXAm5ebP7GA1dKlGHzqim9E6Zn3cw/EmU/DA7IeXIdLmgODY7Dje50jwE
	a0lvO8tilPkEexAaXFijgzNZF0a6P4wTI4GunCuqkJHblvitkaQETH8GYksLmR2JNCg9eV0iq7DDc
	7poxrIcmf/j6B408ZioQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlC79-00000004Wo9-11Jx;
	Sat, 18 Jul 2026 20:58:27 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlC76-00000004Wni-0TCN;
	Sat, 18 Jul 2026 20:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Pw0QjSmfdaB3HnkcT8LgeuXdKGUxBtNlYl3Sq69kVYQ=; b=vlevDmufoIZiJPBc5ej/sYoPze
	ifIMgLxyYKR1mBUkMMhaG0jnQqsZ2w+zS/IwxtppyRrm17KUr2bwhdCqcsgviqY/3e8yAAWWqelP5
	+ELVtCyH1ryVtkfb575Ury7lMUJ6wM+/OWXS29XY7lRrNakW4UU4cLjFN+Urn+V1YprM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wlC6x-00Cyvg-PO; Sat, 18 Jul 2026 22:58:15 +0200
Date: Sat, 18 Jul 2026 22:58:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Vicharak Vaaman board
Message-ID: <2a3e70fd-8b52-4612-958c-75b1aae5cc68@lunn.ch>
References: <20260718065900.755631-1-hrushirajg23@gmail.com>
 <20260718065900.755631-3-hrushirajg23@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260718065900.755631-3-hrushirajg23@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_135824_176360_7D83D084 
X-CRM114-Status: UNSURE (   7.75  )
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

> +&gmac {
> +	assigned-clocks = <&cru SCLK_RMII_SRC>;
> +	assigned-clock-parents = <&clkin_gmac>;
> +	clock_in_out = "input";
> +	phy-supply = <&vcc3v3_lan>;
> +	/* TX/RX delays tuned for the Vaaman board PCB trace lengths */
> +	phy-mode = "rgmii";

Please could you read:

https://elixir.bootlin.com/linux/v6.15/source/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L287

and then expand the comment to explain in detail what is going on
here.

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmii_pins>;
> +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 10000 50000>;
> +	tx_delay = <0x28>;
> +	rx_delay = <0x11>;
> +	status = "okay";
> +};

I don't see a phy-handle here?

  Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
