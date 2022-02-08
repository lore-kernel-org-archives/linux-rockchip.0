Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9438CC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 11:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2thcFPDd7nf3d4LEExm+3XADmGZ1vmtIgpb3rYOp+Kc=; b=eK/gu2HyTyaR7J
	uRkLj7WskEmXweKacqgH2y/+eHzikZF2cUUcR7wiA1HYZd++V149jmealYE0RR7OCEm96RL9wpRom
	ybds/BMOr4RrdI/3+Er5OB2mj5gPBgL+vtMjRRYwZoykKM2TloYRwWNiLqb5gHURla439MzWJn1vm
	obcsWMLw5ini511yd/TjmqwdRmqUTLx3UrYyc37SL0y8qD5/XPYyaGTUOQUV+HUXu6i5+63UoXnSF
	ckfU749og0hGJHvNvALxy7sK4oIOhFl93RwSs7wEqeyMRPloDdfPMMzny9QDPGKK9rUb9VyuUxkau
	R/KP1p7oVB1BMcgHQqvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHOs8-00DeMJ-Uf; Tue, 08 Feb 2022 11:41:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHOrx-00DeKH-FI; Tue, 08 Feb 2022 11:41:14 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHOrt-00014g-Pz; Tue, 08 Feb 2022 12:41:09 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 24/27] clk: rk3568: drop CLK_SET_RATE_PARENT from dclk_vop*
Date: Tue, 08 Feb 2022 12:41:08 +0100
Message-ID: <2260638.yNqFStFpQL@diego>
In-Reply-To: <20220131081042.GW23490@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <5329207.qDA9hNt6id@diego> <20220131081042.GW23490@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_034113_535540_0EE099E4 
X-CRM114-Status: GOOD (  33.35  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 31. Januar 2022, 09:10:42 CET schrieb Sascha Hauer:
> On Sat, Jan 29, 2022 at 06:48:13PM +0100, Heiko St=FCbner wrote:
> > Am Mittwoch, 26. Januar 2022, 15:55:46 CET schrieb Sascha Hauer:
> > > The pixel clocks dclk_vop[012] can be clocked from hpll, vpll, gpll or
> > > cpll. gpll and cpll also drive many other clocks, so changing the
> > > dclk_vop[012] clocks could change these other clocks as well. Drop
> > > CLK_SET_RATE_PARENT to fix that. With this change the VOP2 driver can
> > > only adjust the pixel clocks with the divider between the PLL and the
> > > dclk_vop[012] which means the user may have to adjust the PLL clock t=
o a
> > > suitable rate using the assigned-clock-rate device tree property.
> > > =

> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/clk/rockchip/clk-rk3568.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip=
/clk-rk3568.c
> > > index 9d889fc46811..7687c62d1fa8 100644
> > > --- a/drivers/clk/rockchip/clk-rk3568.c
> > > +++ b/drivers/clk/rockchip/clk-rk3568.c
> > > @@ -1044,13 +1044,13 @@ static struct rockchip_clk_branch rk3568_clk_=
branches[] __initdata =3D {
> > >  			RK3568_CLKGATE_CON(20), 8, GFLAGS),
> > >  	GATE(HCLK_VOP, "hclk_vop", "hclk_vo", 0,
> > >  			RK3568_CLKGATE_CON(20), 9, GFLAGS),
> > > -	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RA=
TE_PARENT | CLK_SET_RATE_NO_REPARENT,
> > > +	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RA=
TE_NO_REPARENT,
> > =

> > hmm, I'm wondering about the use of having CLK_SET_RATE_NO_REPARENT here
> > (and even adding it below).
> > =

> > Using SET_RATE_PARENT in the following patch for the hdmi-pll, should g=
ive
> > us at least a suitable rate for the hdmi output, so the vop using that
> > should already find a nice rate to use.
> > =

> > The normal system-PLLs don't normally don't change their rate at runtim=
e,
> > so I think we should liberate the dclks to select a PLL that best match=
es
> > their target rate - so drop the CLK_SET_RATE_NO_REPARENT as well.
> > =

> > That way the DCLKs can change to another PLL source if that provides
> > a rate nearer to their target.
> =

> The HDMI reference clock has the CLK_SET_RATE_PARENT flag set and we
> need that to program the HPLL clock to suitable rates for the HDMI
> output. Now any other display choosing HPLL as parent, because that
> provides the best rate in that point of time, hangs on a PLL which
> changes its rate whenever the resolution is changed on the HDMI output.

Ah, right ... the hpll is in the parent list, that changes things as you sa=
id.
I somehow only noticed the regular PLLs that normally have a constant
rate. So never mind ;-)


Heiko


> Changing parents on rate changes only works when all possible parents of
> all the children involved have a constant rate. IMO allowing reparenting
> on rate changes is a poorly chosen default because it's very unsafe. We
> should rather have a CLK_SET_RATE_ALLOW_REPARENT flag.
> =

> Sascha
> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
