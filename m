From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/3] Revert "clk: rockchip: mark noc and some special clk
 as critical on rk3288"
Date: Wed, 10 Apr 2019 08:34:16 -0700
Message-ID: <CAD=FV=WXWnYDzGUyyz--JBY6QBcYNEorgAqUAesnctXJqptSBw@mail.gmail.com>
References: <20190409204707.150347-1-dianders@chromium.org>
 <20190409204707.150347-2-dianders@chromium.org> <b7093a17-b30c-cdec-b02c-c6bc5a8d08c9@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <b7093a17-b30c-cdec-b02c-c6bc5a8d08c9@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: "elaine.zhang" <zhangqing@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Caesar Wang <caesar.wang@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Apr 9, 2019 at 11:23 PM elaine.zhang <zhangqing@rock-chips.com> wro=
te:
>
> hi,
>
> =E5=9C=A8 2019/4/10 =E4=B8=8A=E5=8D=884:47, Douglas Anderson =E5=86=99=E9=
=81=93:
> > This reverts commit 55bb6a633c33caf68ab470907ecf945289cb733d.
> >
> > The clocks that were enabled by that patch are pretty questionable.
> > Specifically looking at what has been shipping on rk3288-veyron
> > Chromebooks almost all of these clocks are safely turned off and cause
> > no apparent problems.  If some boards need these clocks turned on for
> > some reason then it seems like we should figure out how to do that at
> > a board level.
> >
> > NOTE: turning these clocks off doesn't seem to do a whole lot in terms
> > of power savings (checking the power on the logic rail).  It appears
> > to save maybe 1-2mW.  ...but still it seems like we should turn the
> > clocks off if they aren't needed.
> >
> > Digging into the clocks here to describe why they shouldn't need to be
> > left on:
> >
> > atclk: No documentation about this clock other than that it goes to
> > the CPU.  CPU functions fine without it on.
> >
> > jtag: Presumably this clock is only needed if you're debugging with
> > JTAG.  It doesn't seem like it makes sense to waste power for every
> > rk3288 user.  Perhaps this could be turned on with a CONFIG option?
> >
> > pclk_dbg, pclk_core_niu: On veyron Chromebooks we turn these two
> > clocks on only during kernel panics in order to access some coresight
> > registers.  Since nothing in the upstream kernel does this we should
> > be able to leave them off safely.
> >
> > hsicphy12m_xin12m: There is no indication of why this clock would need
> > to be turned on for boards that don't use HSIC.
> >
> > pclk_ddrupctl[0-1], pclk_publ0[0-1]: On veyron Chromebooks we turn
> > these 4 clocks on only when doing DDR transitions and they are off
> > otherwise.  I see no reason why they'd need to be on in the upstream
> > kernel which doesn't support DDRFreq.
> >
> > pmu_hclk_otg0: A "chip design defect" is mentioned in the original
> > patch but no details.  This clock has always been gated in shipping
> > veyron Chromebooks so presumably this chip defect doesn't affect all
> > boards.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >   drivers/clk/rockchip/clk-rk3288.c | 14 ++++----------
> >   1 file changed, 4 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/c=
lk-rk3288.c
> > index 5a67b7869960..06287810474e 100644
> > --- a/drivers/clk/rockchip/clk-rk3288.c
> > +++ b/drivers/clk/rockchip/clk-rk3288.c
> > @@ -313,13 +313,13 @@ static struct rockchip_clk_branch rk3288_clk_bran=
ches[] __initdata =3D {
> >       COMPOSITE_NOMUX(0, "aclk_core_mp", "armclk", CLK_IGNORE_UNUSED,
> >                       RK3288_CLKSEL_CON(0), 4, 4, DFLAGS | CLK_DIVIDER_=
READ_ONLY,
> >                       RK3288_CLKGATE_CON(12), 6, GFLAGS),
> > -     COMPOSITE_NOMUX(0, "atclk", "armclk", CLK_IGNORE_UNUSED,
> > +     COMPOSITE_NOMUX(0, "atclk", "armclk", 0,
> >                       RK3288_CLKSEL_CON(37), 4, 5, DFLAGS | CLK_DIVIDER=
_READ_ONLY,
> >                       RK3288_CLKGATE_CON(12), 7, GFLAGS),
> >       COMPOSITE_NOMUX(0, "pclk_dbg_pre", "armclk", CLK_IGNORE_UNUSED,
> >                       RK3288_CLKSEL_CON(37), 9, 5, DFLAGS | CLK_DIVIDER=
_READ_ONLY,
> >                       RK3288_CLKGATE_CON(12), 8, GFLAGS),
> > -     GATE(0, "pclk_dbg", "pclk_dbg_pre", CLK_IGNORE_UNUSED,
> > +     GATE(0, "pclk_dbg", "pclk_dbg_pre", 0,
> >                       RK3288_CLKGATE_CON(12), 9, GFLAGS),
> >       GATE(0, "cs_dbg", "pclk_dbg_pre", CLK_IGNORE_UNUSED,
> >                       RK3288_CLKGATE_CON(12), 10, GFLAGS),
> > @@ -647,7 +647,7 @@ static struct rockchip_clk_branch rk3288_clk_branch=
es[] __initdata =3D {
> >       INVERTER(SCLK_HSADC, "sclk_hsadc", "sclk_hsadc_out",
> >                       RK3288_CLKSEL_CON(22), 7, IFLAGS),
> >
> > -     GATE(0, "jtag", "ext_jtag", CLK_IGNORE_UNUSED,
> > +     GATE(0, "jtag", "ext_jtag", 0,
> >                       RK3288_CLKGATE_CON(4), 14, GFLAGS),
> CLK_IGNORE_UNUSED:
> Whether to close the unused clk after clk init complete. not affect
> there own enable/disable.
> JTAG is not have device node, when need jtag to debug, may be the system
> is crashed, there is no way to turn on this clk.

As I mentioned in the commit message this seems like the kind of thing
that should be controlled by a CONFIG_ option.  It's a debug option
that's fine to have on all the time but consumes resources so some
people might want to turn it off.


> >       COMPOSITE_NODIV(SCLK_USBPHY480M_SRC, "usbphy480m_src", mux_usbphy=
480m_p, 0,
> > @@ -656,7 +656,7 @@ static struct rockchip_clk_branch rk3288_clk_branch=
es[] __initdata =3D {
> >       COMPOSITE_NODIV(SCLK_HSICPHY480M, "sclk_hsicphy480m", mux_hsicphy=
480m_p, 0,
> >                       RK3288_CLKSEL_CON(29), 0, 2, MFLAGS,
> >                       RK3288_CLKGATE_CON(3), 6, GFLAGS),
> > -     GATE(0, "hsicphy12m_xin12m", "xin12m", CLK_IGNORE_UNUSED,
> > +     GATE(0, "hsicphy12m_xin12m", "xin12m", 0,
> >                       RK3288_CLKGATE_CON(13), 9, GFLAGS),
> >       DIV(0, "hsicphy12m_usbphy", "sclk_hsicphy480m", 0,
> >                       RK3288_CLKSEL_CON(11), 8, 6, DFLAGS),
> > @@ -837,12 +837,6 @@ static const char *const rk3288_critical_clocks[] =
__initconst =3D {
> >       "pclk_alive_niu",
> >       "pclk_pd_pmu",
> >       "pclk_pmu_niu",
> > -     "pclk_core_niu",
> > -     "pclk_ddrupctl0",
> > -     "pclk_publ0",
> > -     "pclk_ddrupctl1",
> > -     "pclk_publ1",
> These clks needed enable, device node not use this clk, so we mark it as
> critical.

What breaks if you don't enable these clocks?  As far as I can tell
these clocks only need to be enabled while touching memory controller
registers (deep suspend/resume and DDRFreq transitions).  On
Chromebooks everything works fine with these clocks only turned on
when needed.


> > -     "pmu_hclk_otg0",
> It's a soc bug, pmu_hclk_otg0 must always on.

So you said in your previous commit message.  However we've shipped
lots and lots of Chromebooks with this clock off.  Can you explain
what is broken?  Is this only needed for gadget mode (which we don't
use), for instance?


-Doug
