Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E52FC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 15:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFn7+nf1irjyIJ10JcXhQoO3mDu3uMBM2k1bShFHlro=; b=DubK8n8MwsIrUt
	4QP1fQc99I1CUrbt8nbiM7dxgr4WFpgN2TCJNdWe0kgKt7oL2Ax9hhAKdSrAnsMZM3lSY7++G9QN9
	CgFEIzEXopK3IvIEyuIZ45bxZ5lkBf9HrqMFsQ49HTL4TVh+lfuhd+uwiaIAegiDroth939qdG/6F
	ifUUIaHgh+p5H2SaSGMLK5+hC4HB1SB3mg7pnBbTasf+SlSEuB/2rcwERTYjcc6J7wifv3sJKIUHu
	XEaSZuMuMZSvV4uegnN4u25ed28QlK6OgfrdXCDciXe+7jmW/bCVDS0MLepkaVbCIaP9JE9VBJYkJ
	EElr0ft/of2MNkOzoagg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAj5-00000009irl-3ehh;
	Mon, 04 Mar 2024 15:59:39 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAio-00000009inb-2ToQ;
	Mon, 04 Mar 2024 15:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=OZDRvBSgigE3tIIRQWQZVjWXgyULo9fdLqfBNvEOG6M=; b=hlSnIHJ33T4N1L0DxCC6/w/s4f
	62mSEpeXgZv6wiqeTM44HTVB3uxFMJr+o2xSHmn7BhthrPAh6JNy9aizVCoyzm65HZvv0GMr7fc7A
	I0rrBdlOAIu4SMuksKExDTrcivolIGRYLNKzc9OuTM9hQ0AuJ0caSbqo83ZW+urXI7XQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rhAj4-009L9G-H1; Mon, 04 Mar 2024 16:59:38 +0100
Date: Mon, 4 Mar 2024 16:59:38 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
Message-ID: <b614dd49-7dbe-452e-b3b5-cb014b30f0f8@lunn.ch>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
 <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
 <27139798.WhXITi6ROJ@bagend>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27139798.WhXITi6ROJ@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_075923_010737_6C11B37E 
X-CRM114-Status: GOOD (  34.46  )
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

On Mon, Mar 04, 2024 at 04:32:03PM +0100, Diederik de Haas wrote:
> On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
> > > > Andrew already pointed out when I posted the patch introducing the gmac0
> > > > node that rgmii-id would be the preferred way to setup things. Back
> > > > then this didn't happen because this change broke reception of network
> > > > packets. However this only happend because I didn't have the right phy
> > > > driver loaded.
> > > 
> > > It could be that the PHY is strapped to not use its internal RX delay.
> > > And the PHY has some weird default TX delay, so having the driver
> > > put some sensible values in is probably better.
> > 
> > It could also be the bootloader putting odd values into the PHY.
> > 
> > Anyway, it will work better with the correct PHY, and enable WoL
> > support.
> 
> Not sure if this is the right place or way, but here we go...
> 
> A few days ago on #debian-kernel@OFTC:
> [28.02 16:35] <ukleinek> u-boot should be out of the game
> [28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A and B 
> (rk3566) I had massive packet loss and tracked it down to a change in u-boot
> [28.02 16:37] <ukleinek> diederik: sounds like the Linux network driver on 
> that machine could do something better
> [28.02 16:38] <diederik> yeah, probably
> 
> I reported this about a month ago to Jonas Karlman as I bisected the problem 
> to a change in u-boot:
> 
> > diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
> > 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
> > commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
> > Author: Jonas Karlman <jonas@kwiboo.se>
> > Date:   Sun Oct 1 19:17:21 2023 +0000
> > 
> >     configs: rockchip: Enable ethernet driver on RK356x boards
> >     
> >     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x boards that
> >     have an enabled gmac node.
> 
> I just checked and both Quartz64 Model A and B have `phy-mode = "rgmii";` and 
> set `tx_delay` and `rx_delay` to some (other) values.
> Without knowing nor understanding the details, this seem very much related?

If you don't have a specific Linux PHY driver, you are at the mercies
of how the bootloader, or strapping set up the PHY. So it is always
best to use the correct PHY driver. The Linux PHY driver should assume
nothing and setup the hardware from scratch, removing anything odd the
bootloader did. However, the fall back generic PHY driver has no chip
specific knowledge, so it cannot undo whatever the bootloader did.

So, in an ideal world, we don't care about what the bootloader did,
just use the correct MAC and PHY driver and it should work. And if it
does not work, it is a Linux bug, which needs to be found and fixed.

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
