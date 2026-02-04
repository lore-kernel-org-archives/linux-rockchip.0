Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13AB2EA7948
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 22:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aw8Y+Twv5r85cE8fi5DpNTrfTWJNCJCv2YHSv1i5mc8=; b=dGtpfFBtKN5pNV
	U/03JHmpphKEk6p0rYgZG6/3gxsbC4MZ+mk36nR5m3iDu3oAYgcBn0kVaCMA5OBg0cGQ2MFjfwUQs
	MkvqEldGLUQKKCFy267Xdyqf7lpPpx3lT2hYPGpenKJsHcdsWQhX5nxzlLw3hZZ3nze++8NFgpGhe
	/AfL0O5QXw3ZNQq/uIVHKqfmgw3Vx6gqIgUA3+zzXSEpzlew+8Z8JLhtemo21lD6gONudDWwT4pJu
	JBaOfaknjJiqkTWOjblS3zkofbUeJuk/4VbhWLVmjx4pbvMxwKaWSIB2N8ysNEQOP1lmXFP1ZXE6Q
	F8K+N16F2avwf2APnG7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnlKa-000000098KN-0ZyE;
	Wed, 04 Feb 2026 22:26:40 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnlKU-000000098Jv-3dSG;
	Wed, 04 Feb 2026 22:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YBb76XbTs10K5UGRcrXyjymL5gOXGKQMYpuyBZHPFXk=; b=jOu0LD/BkldhAJq+u9wKjguWef
	ZFm0IBCkNyDdOBVt1B85H0vb/6JVrJokFjjKGrVtPS/tf0atzMvL338oM4gQxhlDjOYN4k5YSa9it
	qxkGwKlGFdcYmCQob7xbVtFvLgf+peJ7cXRsXHKfNckjQJ4PJcyCFhfeiHsaM9HXVPdWMXwLEoldk
	E7wl/EHPCIf274H7XC+Iz6Po0crHg96G/2YPm0m8wIsEfidXx2p/ewWAFyEKxZmbmzySZ/fizE2eC
	/7jxc8HtUx2VLYG0C/wBm8mJKrGoNVUl1mcZDBVYXwGFtNrrmdqzGAkR2pFUxEJEpaUVoee6VHk2J
	ZlsAPnUA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56420)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vnlKN-000000006kE-07W2;
	Wed, 04 Feb 2026 22:26:27 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vnlKI-000000005kv-0AB7;
	Wed, 04 Feb 2026 22:26:22 +0000
Date: Wed, 4 Feb 2026 22:26:21 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 5/6] net: stmmac: rk: use rk_encode_wm16() for
 clock selection
Message-ID: <aYPHjS0wrtXlRb1a@shell.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYy6-00000007hp9-1AJM@rmk-PC.armlinux.org.uk>
 <20297648.sWSEgdgrri@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20297648.sWSEgdgrri@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_142634_908327_0E0F4FB5 
X-CRM114-Status: GOOD (  26.30  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 04, 2026 at 11:03:51PM +0100, Heiko St=FCbner wrote:
> Am Mittwoch, 4. Februar 2026, 10:14:38 Mitteleurop=E4ische Normalzeit sch=
rieb Russell King (Oracle):
> > Use rk_encode_wm16() for RMII clock gating control, and also for the
> > io_clksel bit used to select the transmit clock between CRU-derived
> > and IO-derived clock sources.
> > =

> > Both of these were configured via the "set_clock_selection" method in
> > the SoC specific operations, but there is no requirement to change the
> > io_clksel except when enabling clocks.
> > =

> > It is also possible that we don't need to ungate the RMII clock if we
> > are operating in RGMII mode, but this commit makes no change there.
> > =

> > Split up the configuration of these as separate functions, and remove
> > the set_clock_selection() method. Since these clocking bits are in the
> > same register that we call the "speed" register, move the logic for
> > writing that register into rk_write_speed_grf_reg().
> > =

> > Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> > ---
> >  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 174 ++++++++----------
> >  1 file changed, 75 insertions(+), 99 deletions(-)
> > =

> > diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/n=
et/ethernet/stmicro/stmmac/dwmac-rk.c
> > index 4099cbc5d0de..ed9adac70f0a 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > @@ -27,8 +27,17 @@
> >  struct rk_priv_data;
> >  =

> >  struct rk_clock_fields {
> > +	/* io_clksel_cru_mask - io_clksel bit in clock GRF register which,
> > +	 * when set, selects the tx clock from CRU.
> > +	 */
> > +	u16 io_clksel_cru_mask;
> > +	/* io_clksel_io_mask - io_clksel bit in clock GRF register which,
> > +	 * when set, selects the tx clock from IO.
> > +	 */
> =

> nit: comment stile does not seem to follow the kernel coding style
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/process/coding-style.rst#n622

netdev has historically had this style which is separate from the rest
of the kernel. The file already uses this comment style, so it is
entirely correct to keep to the style which already exists in this
file, rather than mixing styles and turning it into a mess.

> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Heiko Stuebner <heiko@sntech.de> #px30,rk3328,rk3568,rk3588

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
