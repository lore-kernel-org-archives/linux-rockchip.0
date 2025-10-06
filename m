Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 550D5CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Oct 2025 16:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5n7yXsonHNnAHaocUFhnBG75p4/bF93EMUKdv0vqMtk=; b=gVlDU04CT08vI5
	TuS5LF8gMy/2+Xu/82O/X5gXu9246yhAQyVtK1HMqo9w3jRUcqh6ET64SEwXMpj7LOo+Ks4Z6FFZr
	gApUeff0HxLvmNEu8uBOyRoVhdJmg53IKtqtogMXcxe6DthUQwcsviRXzqfGTJABBIGoDayq5evQr
	leSTOhJ2KDlr8fsqtHdDC7VYKapH1eO80tVPfLxDqTEu3y/BNva1A/ZENNxeMl7pxA94JcKhr+ydC
	eliNdztv8aVOY/xXP0Iogpc4bTVlgfZQzyeGks73ObvrrX1qRjvPsMAT05q5XdLBiBH/n5RMX5VK+
	aaDVQ6dZMU8665pB+dXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5o0m-00000000OFn-3yvM;
	Mon, 06 Oct 2025 16:24:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5o0k-00000000OEu-2AmL;
	Mon, 06 Oct 2025 16:24:31 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 2FB52B0B;
	Mon,  6 Oct 2025 18:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759767775;
	bh=q4y+WjKg8QKovIhfsz5mhoBisvqugua5xV6TPvamwY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fh057Ycs0+XNzsIJ6pHqE414nAvgR66G3qCWmS7EA7zhO40hZJEuFaLo5c0Rr4BfH
	 U9RKela09E/rAZQHcrHEkaVsA61YVFYOw+BvAiB1vd78vCxJGt83ZO+ASRLhJy8/dT
	 n0tQUMjOVNc0lBsvNC2sB51BKvrxEBXhBaVpNEBY=
Date: Mon, 6 Oct 2025 19:24:20 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
Message-ID: <20251006162420.GI5944@pendragon.ideasonboard.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
 <4d337915-e3a9-46b7-a30b-ccb47ad33556@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d337915-e3a9-46b7-a30b-ccb47ad33556@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_092430_696393_A84C3AA5 
X-CRM114-Status: GOOD (  13.20  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Muhammed Efe Cetin <efectn@6tel.net>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Algea Cao <algea.cao@rock-chips.com>, Ondrej Jirman <megi@xff.cz>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Oct 06, 2025 at 06:06:21PM +0200, Andrew Lunn wrote:
> > +&gmac1 {
> > +	clock_in_out = "output";
> > +	phy-handle = <&rgmii_phy>;
> > +	phy-mode = "rgmii-id";
> > +	phy-supply = <&vcc_3v3>;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&gmac1_miim
> > +		     &gmac1_rx_bus2
> > +		     &gmac1_tx_bus2
> > +		     &gmac1_rgmii_clk
> > +		     &gmac1_rgmii_bus>;
> > +	tx_delay = <0x42>;
> 
> Nice to see phy-mode 'rgmii-id', but 0x42 is pretty high in comparison
> to other boards correctly using 'rgmii-id', and is asymmetric with no
> rx_delay value.
> 
> I cannot say this is wrong, it is just odd, not what i would expect.

I copied it blindly from the BSP. Dropping the property, I can still
ping the board, so I removed it in v2. There's more that will need to be
investigated there, as clock_in_out should likely be "input", but I
couldn't get that to work. I'd like to leave this to someone else as I'm
lacking time to fix it (and ethernet is also not my strongest
expertise). I could drop the gmac1 completely, but I think the starting
point is valuable.

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
