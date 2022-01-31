Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4079C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jan 2022 08:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRdjxiGEV9YuNyV/8tnJWdvily7FhDwymf8zk+f4dXI=; b=VSzWWzvCT3RTHz
	9/MOmS1nOr2eeKRz+nG1/R+bqUe/tDzFhgqZu850jy4cAq0AoX3/67cT9MJ/Fe4su7C8oiobqETO7
	NYrB1ysGaKdO6px8XeHQGG35a67JyAtTob9G2mAfmHMOfJ8pW6xJ2cXW02nWLJTzf+0DxR1/PWrQP
	M71rJ3OYqBhmrN9JgnfUn0Lp0DDFcFnxy+azdkqgdon64SqbH9oFPm5WVOLUzpvVIdxqQqsiDF9Ux
	GRZT04V2B4ut5Iw+vaaIm7LSz4rByL+UmV7oGIPrNgIFhex7iPv8IYgw59fgvJbcSSOkosw/mFz/F
	0UMcnZ44jBJUPGBuMgKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERmf-008RoU-Vb; Mon, 31 Jan 2022 08:11:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERly-008RWP-ML
 for linux-rockchip@lists.infradead.org; Mon, 31 Jan 2022 08:10:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nERlt-0000AP-LD; Mon, 31 Jan 2022 09:10:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nERlq-00088n-LZ; Mon, 31 Jan 2022 09:10:42 +0100
Date: Mon, 31 Jan 2022 09:10:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 24/27] clk: rk3568: drop CLK_SET_RATE_PARENT from dclk_vop*
Message-ID: <20220131081042.GW23490@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-25-s.hauer@pengutronix.de>
 <5329207.qDA9hNt6id@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5329207.qDA9hNt6id@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:44:20 up 51 days, 16:29, 51 users,  load average: 0.03, 0.05, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_001050_777490_B0CDDA99 
X-CRM114-Status: GOOD (  34.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Jan 29, 2022 at 06:48:13PM +0100, Heiko St=FCbner wrote:
> Am Mittwoch, 26. Januar 2022, 15:55:46 CET schrieb Sascha Hauer:
> > The pixel clocks dclk_vop[012] can be clocked from hpll, vpll, gpll or
> > cpll. gpll and cpll also drive many other clocks, so changing the
> > dclk_vop[012] clocks could change these other clocks as well. Drop
> > CLK_SET_RATE_PARENT to fix that. With this change the VOP2 driver can
> > only adjust the pixel clocks with the divider between the PLL and the
> > dclk_vop[012] which means the user may have to adjust the PLL clock to a
> > suitable rate using the assigned-clock-rate device tree property.
> > =

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/clk/rockchip/clk-rk3568.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/c=
lk-rk3568.c
> > index 9d889fc46811..7687c62d1fa8 100644
> > --- a/drivers/clk/rockchip/clk-rk3568.c
> > +++ b/drivers/clk/rockchip/clk-rk3568.c
> > @@ -1044,13 +1044,13 @@ static struct rockchip_clk_branch rk3568_clk_br=
anches[] __initdata =3D {
> >  			RK3568_CLKGATE_CON(20), 8, GFLAGS),
> >  	GATE(HCLK_VOP, "hclk_vop", "hclk_vo", 0,
> >  			RK3568_CLKGATE_CON(20), 9, GFLAGS),
> > -	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE=
_PARENT | CLK_SET_RATE_NO_REPARENT,
> > +	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE=
_NO_REPARENT,
> =

> hmm, I'm wondering about the use of having CLK_SET_RATE_NO_REPARENT here
> (and even adding it below).
> =

> Using SET_RATE_PARENT in the following patch for the hdmi-pll, should give
> us at least a suitable rate for the hdmi output, so the vop using that
> should already find a nice rate to use.
> =

> The normal system-PLLs don't normally don't change their rate at runtime,
> so I think we should liberate the dclks to select a PLL that best matches
> their target rate - so drop the CLK_SET_RATE_NO_REPARENT as well.
> =

> That way the DCLKs can change to another PLL source if that provides
> a rate nearer to their target.

The HDMI reference clock has the CLK_SET_RATE_PARENT flag set and we
need that to program the HPLL clock to suitable rates for the HDMI
output. Now any other display choosing HPLL as parent, because that
provides the best rate in that point of time, hangs on a PLL which
changes its rate whenever the resolution is changed on the HDMI output.

Changing parents on rate changes only works when all possible parents of
all the children involved have a constant rate. IMO allowing reparenting
on rate changes is a poorly chosen default because it's very unsafe. We
should rather have a CLK_SET_RATE_ALLOW_REPARENT flag.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
