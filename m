From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH v2 4/9] clk: rockchip: add new clock type and controller
 for rk3036
Date: Tue, 22 Sep 2015 16:19:00 -0700
Message-ID: <20150922231900.GL23081@codeaurora.org>
References: <1442478540-15068-1-git-send-email-zhengxing@rock-chips.com>
 <1442478540-15068-5-git-send-email-zhengxing@rock-chips.com>
 <20150922224125.GK23081@codeaurora.org>
 <2850967.rjRj3AZerS@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2850967.rjRj3AZerS@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Xing Zheng <zhengxing@rock-chips.com>, linux-rockchip@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 09/23, Heiko St=FCbner wrote:
> Hi Stephen,
>=20
> Am Dienstag, 22. September 2015, 15:41:25 schrieb Stephen Boyd:
> > On 09/17, Xing Zheng wrote:
> > > +
> > > +static void rockchip_rk3036_pll_init(struct clk_hw *hw)
> >=20
> > init ops are "discouraged". Could we do this through assigned
> > rates instead?
>=20
> really? According to Mike that was a valid use-case when we looked fo=
r an=20
> initial place for that on the rk3288 :-) .

A comment in clk.c indicates init ops are discouraged. Maybe this
is a valid use-case on other platforms so it was allowed, but
pretty much every time we see a new init op we have to think
about it and justify it. Hooray!

>=20
>=20
> > > +{
> > > +	struct rockchip_clk_pll *pll =3D to_rockchip_clk_pll(hw);
> > > +	const struct rockchip_pll_rate_table *rate;
> > > +	unsigned int fbdiv, postdiv1, refdiv, postdiv2, dsmpd, frac;
> > > +	unsigned long drate;
> > > +	u32 pllcon;
> > > +
> > > +	if (!(pll->flags & ROCKCHIP_PLL_SYNC_RATE))
> > > +		return;
> >=20
> > I don't understand what this one does though. This check isn't in
> > the set rate ops.
>=20
> And it shouldn't be :-)
>=20
> The issue this whole thing is trying to solve is aligning the pll set=
tings=20
> which what we have in the rate table, not what the bootloader set.
>=20
> For example the bootloader could set up a pll at 594MHz with one set =
of=20
> parameters and after some time - when you don't want to exchange boot=
loaders=20
> on shipping devices anymore - it comes to light that a different set =
of=20
> parameters for the same frequency produces for example a more stable =
hdmi=20
> signal [I think that was the main reason for the initial change].
>=20
> So we're not changing the frequency x -> y, which could be easily don=
e [and is=20
> done already] via assigned-rates, but instead
> 	x {params a,b,c} -> x {params d,e,f}
> so the rate itself stays the same, only the frequency generation is a=
dapted.

Ok. It would be nice if this sort of information was made into a
comment and put in the code. Or at least the commit text for the
change.

And is there any reason that we need to get the parent clock and
parent rate to align the PLL settings? It would be nice if we
avoided using clk_* APIs in here, by extracting the pll set rate
code into another function that we can call from init to make the
values the same without all the fallback to old rates, etc.

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
