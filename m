From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/3] Revert "clk: rockchip: mark noc and some special clk
 as critical on rk3288"
Date: Fri, 12 Apr 2019 08:41:18 -0700
Message-ID: <CAD=FV=V8OdOCd819i51WnBSo=C=Y7dqBtH1gTpZiVhnNWn4OJg@mail.gmail.com>
References: <20190409204707.150347-1-dianders@chromium.org>
 <1491b5f1-e9f9-5718-76e5-0a49814ed76d@rock-chips.com> <CAD=FV=Ue3C3gMWx9hnQr=+LU77xdemLbsWozFZoCuQAACjiCUg@mail.gmail.com>
 <1820193.6uR021mFLB@diego> <1f61e93d-c1d9-4438-de0e-d65c7eb248bf@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1f61e93d-c1d9-4438-de0e-d65c7eb248bf@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: "elaine.zhang" <zhangqing@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Caesar Wang <caesar.wang@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Apr 11, 2019 at 6:43 PM elaine.zhang <zhangqing@rock-chips.com> wro=
te:
> >>> -     "pmu_hclk_otg0",
> >>>
> >>> It's a soc bug, pmu_hclk_otg0 must always on.
> >>>
> >>> So you said in your previous commit message.  However we've shipped
> >>> lots and lots of Chromebooks with this clock off.  Can you explain
> >>> what is broken?  Is this only needed for gadget mode (which we don't
> >>> use), for instance?
> >>>
> >>> test case:
> >>>
> >>> recovery test,  < 1 hour , system crash.
> >>>
> >>> log:
> >>>
> >>> [  127.569629] I[0:      swapper/0:    0] GOTGCTL        @0xFFFFFF800=
0B80000 : 0x00400010
> >>> [  127.569644] I[0:      swapper/0:    0] GOTGINT        @0xFFFFFF800=
0B80004 : 0x00400010
> >>> [  127.569659] I[0:      swapper/0:    0] GAHBCFG        @0xFFFFFF800=
0B80008 : 0x00400010
> >>> [  127.569673] I[0:      swapper/0:    0] GUSBCFG        @0xFFFFFF800=
0B8000C : 0x00400010
> >>> [  127.569688] I[0:      swapper/0:    0] GRSTCTL        @0xFFFFFF800=
0B80010 : 0x00400010
> >>> [  127.569702] I[0:      swapper/0:    0] GINTSTS        @0xFFFFFF800=
0B80014 : 0x00400010
> >>> [  127.569718] I[0:      swapper/0:    0] GINTMSK        @0xFFFFFF800=
0B80018 : 0x00400010
> >>> [  127.569733] I[0:      swapper/0:    0] GRXSTSR        @0xFFFFFF800=
0B8001C : 0x00400010
> >>> [  127.569748] I[0:      swapper/0:    0] GRXFSIZ        @0xFFFFFF800=
0B80024 : 0x00400010
> >> I don't know what a "recovery test" is and I don't understand your log=
s.
> >>
> >> Can you explain we do not run into this on Chromebooks?
> >>
> >>
> >>> reason:
> >>>
> >>> USB OTG controller supports turning off most logic power, and then on=
ly one PMU module is left. This clock cannot be turned off, which is simila=
r to the always on module in USB OTG.
> >> Can't you just add a patch to the dwc2 driver to have it grab this
> >> clock?  I assume this clock doesn't need to be turned on unless you're
> >> using the OTG contoller in a certain way?
> > So far we don't really know where the clock in question is sitting
> > in the clock hirarchy. For example the kernel got a new interconnect
> > framework recently, so handling non-device clocks in a device may haunt
> > us later on.
> >
> > @Elaine: could you elaborate what pmu_hclk_otg0 actually is for please?
>
> Doug:
>
> Recovry test: Regular factory tests, including restart, adb debugging,
> clear data/factory Settings, and clear cache.
> I'm not clear whether the test was added by chromebooks.
>
> Heiko:
>
> pmu_hclk_otg0=EF=BC=9A pmu ahb clock
>
> Function: Clock to pmu module when hibernation and/or ADP is
> enabled.Must be greater than or equal to 30 MHz.

Does this mean we can enable hibernation in dwc2 once we turn this
clock on?  I think right now hibernation doesn't work for dwc2 on
rk3288.  Not that I know a ton about dwc2's hibernation modes, but
I've certainly bumped up against it when enabling power down modes.
In fact I'm planning to post some patches soon...  I'll CC you.


> If the SOC design does not support hibernation/ADP function, only have
> hclk_otg, this clk can be switched according to the usage of otg.
> If the SOC design support hibernation/ADP, has two clocks, hclk_otg and
> pmu_hclk_otg0.
> Hclk_otg belongs to the closed part of otg logic, which can be switched
> according to the use of otg.
>
> pmu_hclk_otg0 belongs to the always on part.
>
> As for whether pmu_hclk_otg0 can be turned off when otg is not in use,
> we have not tested. IC suggest make pmu_hclk_otg0 always on.

OK.  I'm fine with this clock staying as a critical clock for now.

I'll send out a v2 shortly.

-Doug
