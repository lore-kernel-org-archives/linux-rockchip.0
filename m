From: hl <hl@rock-chips.com>
Subject: Re: [RFC PATCH 2/4] clk: rockchip: rk3399: add ddrc clock support
Date: Thu, 2 Jun 2016 09:32:42 +0800
Message-ID: <574F8CBA.2040203@rock-chips.com>
References: <1464773739-18152-1-git-send-email-hl@rock-chips.com>
 <1464773739-18152-3-git-send-email-hl@rock-chips.com>
 <CAD=FV=UQoWe7DcPe3sZrocXLmX4JNpBBF1rr+-+T_q3FttihEQ@mail.gmail.com>
 <7336973.nHpy8GhqcO@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <7336973.nHpy8GhqcO@diego>
Sender: linux-clk-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Doug Anderson <dianders@chromium.org>
Cc: David Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>, Derek Basehore <dbasehore@chromium.org>, Stephen Boyd <sboyd@codeaurora.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Kyungmin Park <kyungmin.park@samsung.com>, myungjoo.ham@samsung.com, linux-clk <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, =?UTF-8?B?5aea5pm65oOF?= <mark.yao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug&Heiko,

On 2016=E5=B9=B406=E6=9C=8801=E6=97=A5 23:46, Heiko St=C3=BCbner wrote:
> Am Mittwoch, 1. Juni 2016, 08:24:48 schrieb Doug Anderson:
>> Lin Huang,
>>
>> On Wed, Jun 1, 2016 at 2:35 AM, Lin Huang <hl@rock-chips.com> wrote:
>>> add ddrc clock setting, so we can do ddr frequency
>>> scaling on rk3399 platform in future.
>>>
>>> Signed-off-by: Lin Huang <hl@rock-chips.com>
>>> ---
>>>
>>>   drivers/clk/rockchip/clk-rk3399.c      | 16 ++++++++++++++++
>>>   include/dt-bindings/clock/rk3399-cru.h |  1 +
>>>   2 files changed, 17 insertions(+)
>>>
>>> diff --git a/drivers/clk/rockchip/clk-rk3399.c
>>> b/drivers/clk/rockchip/clk-rk3399.c index f1d8e44..749ea59 100644
>>> --- a/drivers/clk/rockchip/clk-rk3399.c
>>> +++ b/drivers/clk/rockchip/clk-rk3399.c
>>> @@ -118,6 +118,10 @@ PNAME(mux_armclkb_p)                          =
     =3D
>>> { "clk_core_b_lpll_src",>
>>>                                                      "clk_core_b_bp=
ll_src",
>>>                                                      "clk_core_b_dp=
ll_src",
>>>                                                      "clk_core_b_gp=
ll_src"
>>>                                                      };
>>>
>>> +PNAME(mux_ddrclk_p)                            =3D { "clk_ddrc_lpl=
l_src",
>>> +                                                   "clk_ddrc_bpll_=
src",
>>> +                                                   "clk_ddrc_dpll_=
src",
>>> +                                                   "clk_ddrc_gpll_=
src" };
>>>
>>>   PNAME(mux_aclk_cci_p)                          =3D { "cpll_aclk_c=
ci_src",
>>>  =20
>>>                                                      "gpll_aclk_cci=
_src",
>>>                                                      "npll_aclk_cci=
_src",
>>>
>>> @@ -1377,6 +1381,18 @@ static struct rockchip_clk_branch
>>> rk3399_clk_branches[] __initdata =3D {>
>>>          COMPOSITE_NOMUX(0, "clk_test", "clk_test_pre", CLK_IGNORE_=
UNUSED,
>>>         =20
>>>                          RK3368_CLKSEL_CON(58), 0, 5, DFLAGS,
>>>                          RK3368_CLKGATE_CON(13), 11, GFLAGS),
>>>
>>> +
>>> +       /* ddrc */
>>> +       GATE(0, "clk_ddrc_lpll_src", "lpll", CLK_IGNORE_UNUSED,
>>> +            RK3399_CLKGATE_CON(3), 0, GFLAGS),
>>> +       GATE(0, "clk_ddrc_bpll_src", "bpll", CLK_IGNORE_UNUSED,
>>> +            RK3399_CLKGATE_CON(3), 1, GFLAGS),
>>> +       GATE(0, "clk_ddrc_dpll_src", "dpll", CLK_IGNORE_UNUSED,
>>> +            RK3399_CLKGATE_CON(3), 2, GFLAGS),
>>> +       GATE(0, "clk_ddrc_gpll_src", "gpll", CLK_IGNORE_UNUSED,
>>> +            RK3399_CLKGATE_CON(3), 3, GFLAGS),
>>> +       COMPOSITE_DDRC(SCLK_DDRCLK, "clk_ddrc", mux_ddrclk_p,
>>> CLK_IGNORE_UNUSED, +                      RK3399_CLKSEL_CON(6), 4, =
2,
>>> MFLAGS, 0, 3, DFLAGS),
>> It seems slightly unfortunate that we need CLK_IGNORE_UNUSED on thes=
e.
>> Only one of these will ever be used at once and it would be awfully
>> nice if the others could get gated, right?
>>
>> ...presumably this is needed because we might not have an actual
>> driver for DDR Freq and we definitely want to make sure that clk_ddr=
c
>> is enabled in that case.  I guess what we really want is something
>> like CLK_ENABLE_HAND_OFF eventually, but until then I think you migh=
t
>> get slightly better behavior by getting rid of all of these
>> CLK_IGNORE_UNUSED and setting "clk_ddrc" as a critical clock, either
>> using the table in this file or the new flag.
> My current feeling is that staying with the homegrown solution for cr=
itical
> clocks might be preferable until the clk-handoff mechanism lands as w=
ell, as
> our critical clocks fall into both categories and I'd like to not tou=
ch
> everything twice.
>
> The clock above should be controlled by the dcf, so falls into the ha=
ndoff
> category (critical until a driver picks up the clock).
>
> Also mixing both new and old approach might get confusing.
>
> But I'm definitly open to counter-arguments :-)
     I will remove CLK_IGNORE_UNUSED flag  and set
     "clk_ddrc"  as critical clock in next version. Besides, i think we=
=20
should also
     set "clk_ddrc_dpll_src" as critical clock, since we always use dpl=
l=20
as ddr clock source,
     and it should always on.
>
>>>   };
>>>  =20
>>>   static struct rockchip_clk_branch rk3399_clk_pmu_branches[] __ini=
tdata =3D
>>>   {
>>>
>>> diff --git a/include/dt-bindings/clock/rk3399-cru.h
>>> b/include/dt-bindings/clock/rk3399-cru.h index 50a44cf..8a0f0442 10=
0644
>>> --- a/include/dt-bindings/clock/rk3399-cru.h
>>> +++ b/include/dt-bindings/clock/rk3399-cru.h
>>> @@ -131,6 +131,7 @@
>>>
>>>   #define SCLK_DPHY_RX0_CFG              165
>>>   #define SCLK_RMII_SRC                  166
>>>   #define SCLK_PCIEPHY_REF100M           167
>>>
>>> +#define SCLK_DDRCLK                    168
>> Almost certainly you'll want to create a separate patch for the
>> dt-bindings change since it will need to land in a different tree so
>> it can be pulled into both Heiko's clock topic branch and dts64 topi=
c
>> branch.
> correct.
     will fix next version, thanks.
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
>

--=20
Lin Huang


