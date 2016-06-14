From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] clk: rockchip: add flag CLK_SET_RATE_PARENT for
 dclk_vop0_div on RK3399
Date: Tue, 14 Jun 2016 09:04:43 -0700
Message-ID: <CAD=FV=Vk9Lb8DD7dWD7eW_xhMFFwh1o=XKx38wObTOmmi94CGw@mail.gmail.com>
References: <1465724928-14611-1-git-send-email-zhengxing@rock-chips.com> <2376423.L1zs1HaIGm@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2376423.L1zs1HaIGm@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Xing Zheng <zhengxing@rock-chips.com>, elaine zhang <elaine.zhang@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Yakir Yang <ykk@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Mon, Jun 13, 2016 at 3:46 PM, Heiko St=C3=BCbner <heiko@sntech.de> w=
rote:
> Am Sonntag, 12. Juni 2016, 17:48:48 schrieb Xing Zheng:
>> The functions and features VOP0 more complete than VOP1's, we need t=
o
>> use it dclk_vop0_div operate VPLLI, and let VOP0 as the default prim=
ary
>> screen.
>>
>> Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
>> ---
>>
>>  drivers/clk/rockchip/clk-rk3399.c |    2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/clk/rockchip/clk-rk3399.c
>> b/drivers/clk/rockchip/clk-rk3399.c index 7ecb12c3..6affa75 100644
>> --- a/drivers/clk/rockchip/clk-rk3399.c
>> +++ b/drivers/clk/rockchip/clk-rk3399.c
>> @@ -1157,7 +1157,7 @@ static struct rockchip_clk_branch
>> rk3399_clk_branches[] __initdata =3D { GATE(HCLK_VOP0_NOC, "hclk_vop=
0_noc",
>> "hclk_vop0_pre", CLK_IGNORE_UNUSED, RK3399_CLKGATE_CON(28), 0, GFLAG=
S),
>>
>> -     COMPOSITE(DCLK_VOP0_DIV, "dclk_vop0_div", mux_pll_src_vpll_cpl=
l_gpll_p, 0,
>> +     COMPOSITE(DCLK_VOP0_DIV, "dclk_vop0_div", mux_pll_src_vpll_cpl=
l_gpll_p,
>> CLK_SET_RATE_PARENT, RK3399_CLKSEL_CON(49), 8, 2, MFLAGS, 0, 8, DFLA=
GS,
>>                       RK3399_CLKGATE_CON(10), 12, GFLAGS),
>
> The vpll is a possible source for multiple clocks (cci, aclk_vop0, dc=
lk_vop0,
> clk_vop0_pwm, aclk_vop1, dclk_vop1, clk_vop1_pwm), so allowing one cl=
ock to
> hog the rate setting, might influence the other consumers of the vpll=
 as well.

Ah, right.  I think this gets back to your series:

  8993791 [RFC,1/3] clk: fix inconsistent use of req_rate
  8993801 [RFC,2/3] clk: adjust clocks to their requested rate after
parent changes
  8993811 [RFC,3/3] clk: rockchip: make rk3399 vop dclks keep their
rate on parent rate changes

Did you ever have any more ideas about that?  I think the last thing
in that series was a comment from me on patch #2/3.  If we can't come
up with a general CCF solution for this problem, perhaps we need to
register for notifications for all the relevant clocks that might
change?

-Doug
