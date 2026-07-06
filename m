Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 825F1C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 21:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGk6GUGnvy/U5jXevbfRK+rWzobnu+56HPv7ynTZqHI=; b=JLiZC+YBRo0qSF
	NbPlyyZv4I4syI0epGxnq0I/zxsZNSBfqI7VfWnsCCMW3qPNY/RIaW2PWzeDu5lQB5jj8A7tBZE8r
	NriqI3m1MV60A6ajgH/PoJ+GtwZGLw5NvGtMJnRYuhkyxsoxQZsQMjJIkvNCVm6ecGF2B3f5p78qV
	fpfiZzLTI602msyqFOT3xpwDL9IVdv1hy/8lQvlxwDeJbI2MK1wiMV4SMvMKoQnd5BRx9uoSNRlKF
	JewggTzmo9FCshw7JYKMEC7gXnmTpgnSP5I3fe1FiBnH+r6JJGvdj3BCNwncop7elwX8UkJlMFPSl
	67PW9zDaApv1AQUgy0Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgqxA-0000000DeLY-08qz;
	Mon, 06 Jul 2026 21:34:13 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgqx7-0000000DeJf-37j4;
	Mon, 06 Jul 2026 21:34:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=KGGKkAUXMo3mYXdgw//fbeNQbfmfA+U4ZlbWmELp4Rs=; b=BStsEw0mWdGD6P77NeD7XTo5E+
	tMLKRALNTsZjY+dYVGg+pUrA/xfylJQwIVxCtBV/v+NcdUnwcNNlhSbm8OfUZETKQzhumFXLFeL9M
	/Z+KfqBRJ9XLn7S7jLF2bA2KfbOz8TusckpW/R1qO6zjBNRWMOh+FwMlA7SXymDOCs6s=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wgqwy-00B4Ax-OS; Mon, 06 Jul 2026 23:34:00 +0200
Date: Mon, 6 Jul 2026 23:34:00 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Pufan Jin <2254650260@qq.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add EmbedFire LubanCat 4 board
Message-ID: <647b653e-d602-46d3-bbc1-0d3fa132696e@lunn.ch>
References: <20260705135014.1004166-1-2254650260@qq.com>
 <tencent_6D311DC5F405B157049538DD5B080082A10A@qq.com>
 <1ac2d0f4-e027-4633-9d34-2709cb3e43ec@lunn.ch>
 <tencent_BF5741F8151925AFF7A3026460204C2B3108@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_BF5741F8151925AFF7A3026460204C2B3108@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_143409_778615_026EF8E3 
X-CRM114-Status: GOOD (  17.30  )
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

On Tue, Jul 07, 2026 at 05:20:35AM +0800, Pufan Jin wrote:
> On Sun, Jul 05, 2026 at 05:11:58PM +0200, Andrew Lunn wrote:
> > > +	/* The board has 1.5ns delays on RX lines; TX delay is provided by the MAC. */
> >
> > That is pretty unusual. How is this RX delay done?
> 
> You're right to question this, and I apologise -- the comment was
> inaccurate. I re-checked the board schematic and both TXC and RXC
> have ~2ns of trace delay added on the PCB (annotated as
> "TXC / RXC : delays 2ns" next to the RGMII bus).

O.K. So both having delays on the PCB is what i would call "somewhat
unusual", vs "pretty unusual" for a single delay.

> Since the PCB already provides the required clock skew on both
> directions, for v2 I will switch to:
> 
>     phy-mode = "rgmii";
> 
> and drop both the tx_delay property and the misleading comment.

Please correct the comment. One issue we have is that many boards use
"rgmii" and are broken. You have a board which uses "rgmii" and it is
in fact correct. It is good to explain why it is correct, otherwise
people could think it is just another broken board.

       Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
