Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A7CDC19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 14:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2hEQUtEetvQpDegC5uhE9F3iOTVr/skGC8OpQ/dhys=; b=Ho3Fh10YnFr0aP
	vuIDihoEIx3ZxXkVwwna7UZDpHfvTCJG1CCTpx85i225URyFg2CYPZopWgQTkn6Pt8WtWGe+4YSDM
	dLPvPKXzqNfpRH5vZ0rb8fSxzYqI5au1+nT5D2TtSmfCL/WaIkt1x5e6skJGYHZEfaXiKdE3x0I/8
	c9cO/keXqgbr/OppFMSf/RDIj2yay81fv3P5+RaxOnvhs6H8ZRNspZRaLH1UWDLHn0uKm95URVkQV
	lp9fvHn4OYACrAJsLm9HSw+apMDVU+Qf8Y1cr0XAxYQ8dYX+9+svlgxtr3nTtZq8Hu/CWoXkC54Bc
	omQ0ZR0wmYwvWitKPkkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqYI6-0000000EPD1-2goo;
	Fri, 07 Mar 2025 14:03:06 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqYI4-0000000EPCc-0uqX;
	Fri, 07 Mar 2025 14:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=nB1Ff94gX6hUEiR4vaLcBQczfcyrPErlm6RF/exj1rY=; b=YC2hEVy4NZANVuitqKYVpsTfLw
	Vq53fYjnsZ/1ipxexmYUW+xwwvwoTr6C2S4WvrqLu/Wx/vj7Bfejk8gxeXpGpMi9v41K7xmJNq4KH
	294pI4i61HdG3JE6B7pDvyY8tUpME3f5/uDtjCZDQwO1PVRguDqOkUFJoi5SAEEV5xbI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tqYHs-0039gt-1L; Fri, 07 Mar 2025 15:02:52 +0100
Date: Fri, 7 Mar 2025 15:02:52 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add GMAC nodes for RK3528
Message-ID: <f6c6aeb5-bdec-4283-87c8-e870f59008c8@lunn.ch>
References: <20250306221402.1704196-1-jonas@kwiboo.se>
 <20250306221402.1704196-4-jonas@kwiboo.se>
 <a827e7e9-882a-40c6-9f2c-03d8181dff88@lunn.ch>
 <003d3726-680a-4e91-89cd-d127bc3b5609@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <003d3726-680a-4e91-89cd-d127bc3b5609@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_060304_254850_824AD926 
X-CRM114-Status: GOOD (  10.42  )
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

So this is a bit more complicated than i first guessed...

> 	phy-mode = "rmii";
> 	clock_in_out = "input";

Probably will not get passed the DT maintainers. The clocking needs
investigating.

> 	phy-handle = <&rmii0_phy>;
> 
> 	mdio0: mdio {
> 		compatible = "snps,dwmac-mdio";
> 		#address-cells = <0x1>;
> 		#size-cells = <0x0>;
> 
> 		rmii0_phy: ethernet-phy@2 {
> 			compatible = "ethernet-phy-id0044.1400", "ethernet-phy-ieee802.3-c22";
> 			reg = <2>;
> 			clocks = <&cru CLK_MACPHY>;
> 			resets = <&cru SRST_MACPHY>;

Using the ID suggests there might be a chicken/egg with the reset and
clock. The ID registers cannot be read from the PHY?

> 			phy-is-integrated;

This suggests the possibility exists to route the RMII interface to the
outside world:

  phy-is-integrated:
    $ref: /schemas/types.yaml#/definitions/flag
    description:
      If set, indicates that the PHY is integrated into the same
      physical package as the Ethernet MAC. If needed, muxers
      should be configured to ensure the integrated PHY is
      used. The absence of this property indicates the muxers
      should be configured so that the external PHY is used.

Given these issues, i suggest you keep with the DT as you have it
now. Adding the PHY node will require access to hardware and some
investigations.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
