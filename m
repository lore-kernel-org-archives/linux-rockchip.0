From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH v2 4/9] clk: rockchip: add new clock type and controller
 for rk3036
Date: Wed, 30 Sep 2015 17:51:56 -0700
Message-ID: <20151001005156.GA19319@codeaurora.org>
References: <1442478540-15068-1-git-send-email-zhengxing@rock-chips.com>
 <2850967.rjRj3AZerS@diego>
 <20150922231900.GL23081@codeaurora.org>
 <4123121.bNYOPIrL2s@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4123121.bNYOPIrL2s@diego>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Xing Zheng <zhengxing@rock-chips.com>, linux-rockchip@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 10/01, Heiko St=FCbner wrote:
> Hi Stephen,
>=20
> Am Dienstag, 22. September 2015, 16:19:00 schrieb Stephen Boyd:
> > On 09/23, Heiko St=FCbner wrote:
> > > Am Dienstag, 22. September 2015, 15:41:25 schrieb Stephen Boyd:
> > > > On 09/17, Xing Zheng wrote:
> > > > > +{
> > > > > +	struct rockchip_clk_pll *pll =3D to_rockchip_clk_pll(hw);
> > > > > +	const struct rockchip_pll_rate_table *rate;
> > > > > +	unsigned int fbdiv, postdiv1, refdiv, postdiv2, dsmpd, frac=
;
> > > > > +	unsigned long drate;
> > > > > +	u32 pllcon;
> > > > > +
> > > > > +	if (!(pll->flags & ROCKCHIP_PLL_SYNC_RATE))
> > > > > +		return;
> > > >=20
> > > > I don't understand what this one does though. This check isn't =
in
> > > > the set rate ops.
> > >=20
> > > And it shouldn't be :-)
> > >=20
> > > The issue this whole thing is trying to solve is aligning the pll=
 settings
> > > which what we have in the rate table, not what the bootloader set=
=2E
> > >=20
> > > For example the bootloader could set up a pll at 594MHz with one =
set of
> > > parameters and after some time - when you don't want to exchange
> > > bootloaders on shipping devices anymore - it comes to light that =
a
> > > different set of parameters for the same frequency produces for e=
xample a
> > > more stable hdmi signal [I think that was the main reason for the=
 initial
> > > change].
> > >=20
> > > So we're not changing the frequency x -> y, which could be easily=
 done
> > > [and is done already] via assigned-rates, but instead
> > >=20
> > > 	x {params a,b,c} -> x {params d,e,f}
> > >=20
> > > so the rate itself stays the same, only the frequency generation =
is
> > > adapted.
> > Ok. It would be nice if this sort of information was made into a
> > comment and put in the code. Or at least the commit text for the
> > change.
> >=20
> > And is there any reason that we need to get the parent clock and
> > parent rate to align the PLL settings?
> > It would be nice if we
> > avoided using clk_* APIs in here, by extracting the pll set rate
> > code into another function that we can call from init to make the
> > values the same without all the fallback to old rates, etc.
>=20
> I guess you want Xing Zheng to change his pll code somewhat like the
> following, right? While starting off as proof-of-concept, that change
> below actually does work quite nicely on rk3288 boards.
>=20
> ---------------- 8< --------------------
> From: Heiko Stuebner <heiko@sntech.de>
> Subject: [PATCH] clk: rockchip: don't use clk_ APIs in the pll init-c=
allback
>=20
> Separate the update of pll registers from the actual set_rate functio=
n
> so that the init callback does not need to access clk-API functions.
>=20
> As we now have separated the getting and setting of the pll parameter=
s
> we can also directly use these new functions in other places too.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Yep, it looks much better this way.

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
