From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [RFC PATCH 2/3] clk: adjust clocks to their requested rate after
 parent changes
Date: Wed, 6 Jul 2016 16:01:42 -0700
Message-ID: <CAD=FV=WAZ125yjG0rAEodSL3LLdBAEx24k+uWYbYYqNCpnYByQ@mail.gmail.com>
References: <1462206982-10444-1-git-send-email-heiko@sntech.de>
 <1462206982-10444-3-git-send-email-heiko@sntech.de>
 <577B6162.3020609@rock-chips.com>
 <1601887.i7XxTCUQZu@phil> <577C6152.4010702@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <577C6152.4010702-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-clk <linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Jul 5, 2016 at 6:39 PM, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> OK, Regardless of the VPLL and vop.
> The current software of clock, there are some problems.
> e.p:
> [GPLL]
>        ------ [div] ----- aclk_perilp
> If I set GPLL 1200M use "assigned-clock-rate".My be the default div of
> aclk_perilp is 2, GPLL default freq is 600M.
> If I set GPLL first,the aclk_perilp freq will changed as
> 300M->600M->300M.But aclk_perilp 600M is a unsafety.It will make the system
> crash.
> Aclk_perilp is sizeoff at 300M.It not allowed over frequency.
>
> So if I init the PLL freq use "assigned-clock-rate", I need to list it's
> child clk, make sure it's child clk div is enough,make sure the child clk
> freq is below the  sizeoff freq.
>
> Do you have a better idea for this problem?

As I understand it, this is a problem that the CCF has had for a long
time.  I'll probably get shot if our firmware guy ever reads this, but
I could suggest that one sane way to "solve" this is to say that
firmware should prepare the clock tree in such a way that the kernel
doesn't happen to run into this issue.  Honestly I think that's why
we've never happened to run into this before.  ...but even I think
that's pretty ugly.

Another very ugly (and non-landable) way to solve this is to do this
in device tree:

* Set GPLL to something known slow, like 300M
* Set aclk_perilp to 300M / 4 = 75M
* Set GPLL to 1200M
* Poof, aclk_perilp is now magically the rate you want.


Presumably one nice way to "solve" this cleanly is to somehow add the
max clock rate into the code and adjust the divider (or parent) of a
clock to always make sure that it was under the max.  I'm not sure if
you could do this somehow using PRE_RATE_CHANGE notifiers or if you'd
need to touch the CCF itself.  I suspect the later.


-Doug
