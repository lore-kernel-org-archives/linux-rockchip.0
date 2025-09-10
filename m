Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B5BCCA0FED
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 12:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srq6A5rX4eqb0UDLoLHjh/9Cml9tuJ5di6Ow4H6hM4A=; b=oP8aKq8Bk6w88/
	sR3e8i8Os1vqCKbfNqeFT1oKoTfOkaCn2HVqu4Et1I1J9P7qeMC1kaDobwGjd/KAre7H6FlxcT0Mo
	6B7UKcyRxVUPICL6ZGu1xm27xAOhk11PDPzZqx/D4ezxgacxOHtIj9CL234D/1UUy2fqfvj3SuefB
	HyV35bEeQ4lrBQ3csK8AVWIFqN5k8phC7bTYaZUYydWONT4d8YbOi8J7UhivKDeFG3sD2JW8xBkCV
	gEw6UK6UnQEbXgu/qPYqf10QtYIcLPG9x1xRT+jpkwOX1axeKnLFTKn30QX3GAphj/+jBC1DhtswG
	kLJUFy5F13JFHM+LpFhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwJjv-0000000E34C-2epG;
	Wed, 10 Sep 2025 12:15:55 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwJjs-0000000E31h-3da6;
	Wed, 10 Sep 2025 12:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=0DyqbbA1ZUCcjEgFCs3V8UYrQ/Dy0tn2WnKs8noBz34=; b=ZTbMEACNtDoGeX4I1SHmnsNMrg
	iEm2zkz90efE9oFDeUhbiIsb5hdpZBnsmCw5qWDN+4pIp92zVImepYnA3diWOoYcqv6VnFTxUzxQN
	x771697TzZ/BCD2nZWvEzBoxS5fhuIqiYU/YjUsdePp4WM5GpGbe/RI/iZ0dWJh0nQb8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uwJjZ-007w5t-QA; Wed, 10 Sep 2025 14:15:33 +0200
Date: Wed, 10 Sep 2025 14:15:33 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Kaison <dkx@t-chip.com.cn>
Cc: Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Wayne Chou <zxf@t-chip.com.cn>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add devicetree for the
 ROC-RK3588-RT
Message-ID: <ec8a3649-3f8f-40b7-a534-041b3523efe4@lunn.ch>
References: <cover.1757322046.git.dkx@t-chip.com.cn>
 <42ae6d16ed9162582e7b03cbad661a7950c0db55.1757322046.git.dkx@t-chip.com.cn>
 <307a76a6-cc92-44a1-9ac0-97005bf51b4b@lunn.ch>
 <76B19AD42CA555FC+fff44db30522cf270802ec31912a9c19d29b2d39.camel@t-chip.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76B19AD42CA555FC+fff44db30522cf270802ec31912a9c19d29b2d39.camel@t-chip.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_051552_903995_6D035D51 
X-CRM114-Status: GOOD (  21.76  )
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

On Wed, Sep 10, 2025 at 10:55:22AM +0800, Kaison wrote:
> hi,
> I'm very sorry. Due to the default configuration of my email, I didn't
> receive your email normally. I have fixed this issue.
> 
> On Tue, 2025-09-09 at 14:31 +0200, Andrew Lunn wrote:
> > > - 2x Gigabit Ethernet, 1x 2.5G Ethernet
> > 
> > I actually only see the 2x 1G. Is the 2.5G not supported yet?
> The 2.5G Ethernet is based on the Realtek RTL8125 network controller of
> PCIe 2.0x1.

Ah, O.K. Maybe add a comment, because i was looking for something
integrated into the SoC, not a PCIe device.

> > > +&gmac0 {
> > > +	clock_in_out = "output";
> > > +	phy-handle = <&rgmii_phy0>;
> > > +	phy-mode = "rgmii-rxid";
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&gmac0_miim
> > > +		     &gmac0_tx_bus2
> > > +		     &gmac0_rx_bus2
> > > +		     &gmac0_rgmii_clk
> > > +		     &gmac0_rgmii_bus>;
> > > +	tx_delay = <0x47>;
> > 
> > What happened about my comment that "rgmii-rxid" is probably wrong?
> > 
> > If you think it is correct, you should reply with a
> > justification. Maybe PCB is very odd? In which case, a comment would
> > be good to explain who it is odd.
> The Ethernet part of the board is designed with reference to the
> rockchip evb1 board. 
> 
> link: 
> https://github.com/Firefly-rk-linux/docs/blob/rk3588/firefly-public/en/Common/GMAC/Rockchip_Developer_Guide_Linux_GMAC_RGMII_Delayline_EN.pdf
> 
> 
> The document describes the usage of the rgmii-rxid mode:
> 
> When the hardware enables the RX delay of the PHY. Need to turn off the
> RX delay of the GMAC, and the dts configuration mode becomes "rgmii-
> rxid".

Vendors get this wrong as well, and give you bad advice. Please look
at:

https://elixir.bootlin.com/linux/v6.16.5/source/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L264

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
