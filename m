Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD05C55175
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 15:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=serzZJ1iTAF/9xeh+TU5ngca2MmEtDKxgMWCKHP03V4=; b=RUdM+3mQUSks2Y
	FWjQbkitZRueV5iH2PfKgvo5NWO6LM/G5mBLgEBiKUvMapvVZ56QPYqJXPLMEaFtbGqnHQ0bJtWgs
	a8+NDA/Jl8x18i279IztHYO/9WQW/8BgQVPAS6iuoZO2/wxKrtpsNJHaDkiY42VPLbJ1a+5evEtc6
	IPEnXi1vgAD42yusZwbvKSA5xUVgJnuSvBCzsmQx3tXxywhbo3WJuYK8yHFPfNxC5xJkEzHrOHU0g
	+QQnuiG7/Ar+yeaas1RTIXmz55L+YMrX45hMryp7l7O069LdnbE/En9tshJG97vpKWCrs7R2popZz
	MbFZpQNkc4ctKFase54A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqXym-0000000FmpR-1KSo;
	Sun, 02 Aug 2026 15:19:56 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqXyk-0000000Fmox-09eN;
	Sun, 02 Aug 2026 15:19:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Z0iZTbjCu+gfJgRQt1mMeYmu8eVDQV+4fRYL8uwZYK4=; b=u/0i0lfybCTJSYExtr1Uw0vxtn
	Nx7C6sUcYSujLOoYXNwABTyDo1VUA5n7QDbPAnLqCRLrVGi6SQzBP2DhJAZBVAlmf7yVG7FUFcfgJ
	jevye1Vhb3DEE4iNL7RwlkajiQRndE69KmejwyJaSEYkBs56K0bBbitBBzCNhsqTUkrc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wqXyT-00FaSJ-CD; Sun, 02 Aug 2026 17:19:37 +0200
Date: Sun, 2 Aug 2026 17:19:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 05/10] arm64: dts: rockchip: rk3568: add XPCS and
 fixed-clock nodes
Message-ID: <4106e359-aec0-4f38-b74f-e9757a48eebb@lunn.ch>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-7-coiaprant@gmail.com>
 <2847036.GUH7pLUipS@diego>
 <CALj3r0gqvFZPb2SKRMPwf9chCx076rwCnXEoOMFch_V-fOKV6w@mail.gmail.com>
 <0e9d16df-7332-446b-9321-ce3de3111ffa@lunn.ch>
 <CALj3r0guMmNRN4EBbKz7stPNMSqkLBvms643YXBEDMzqHHM=FA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0guMmNRN4EBbKz7stPNMSqkLBvms643YXBEDMzqHHM=FA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_081954_097672_44C62774 
X-CRM114-Status: GOOD (  21.70  )
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

On Sun, Aug 02, 2026 at 11:28:12AM +0800, Coia Prant wrote:
> Hi Andrew,
> 
> Thanks for the detailed questions. I've looked into the clock tree
> more carefully.
> 
> > Do you have documentation for these Combo PHYs?
> 
> Yes, the information is available in the Rockchip RK3568 TRM
> (Technical Reference Manual).
> The relevant clock tree details are also mentioned in upstream
> discussions and patches.
> 
> > Can these clocks be enabled/disabled?
> 
> The 100 MHz input clock to the Combo PHY is a prerequisite for its operation.
> It is generated by the SoC's internal PPLL and fed to the PHY through
> a fixed divider.
> It is not a gate that can be individually enabled or disabled by
> software; it is part of the
> PHY's fundamental operating conditions.
> 
> > And how is the Combo PHY fed with a clock? Does it have an external oscillator/crystal?
> 
> The Combo PHY is fed by an internal 100 MHz clock derived from the PPLL.
> Specifically, the PPLL runs at 200 MHz, and this is divided by 2 to provide the
>  100 MHz clock input to the Combo PHY.
> So, it does not use an external oscillator or crystal for its main
> reference clock;
> it's generated internally by the SoC.
> 
> To summarize:
> - The 125 MHz clocks (xpcs_gmac0_clk / xpcs_gmac1_clk) are outputs
> from the Combo PHY.
> - The Combo PHY itself is clocked by an internal 100 MHz clock from the PPLL.
> - This is all internal to the SoC and does not involve a board-level oscillator.
> 
> I hope this clarifies the clock architecture.

So what is the purpose of the fixed-clock DT nodes?

If you want to describe the hardware, is the PPLL in DT? Should you
then add a fixed divider to give 100MHz? And then a fixed multiplier
to give 125MHz?

   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
