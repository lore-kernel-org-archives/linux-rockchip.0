From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] clk: rockchip: add flag CLK_SET_RATE_PARENT for
 dclk_vop0_div on RK3399
Date: Mon, 13 Jun 2016 11:37:49 -0700
Message-ID: <20160613183748.GA21936@google.com>
References: <1465724928-14611-1-git-send-email-zhengxing@rock-chips.com>
 <575D3D9B.1070501@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <575D3D9B.1070501-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, elaine.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Sun, Jun 12, 2016 at 06:46:51PM +0800, Yakir Yang wrote:
> On 06/12/2016 05:48 PM, Xing Zheng wrote:
> >The functions and features VOP0 more complete than VOP1's, we need to
> >use it dclk_vop0_div operate VPLLI, and let VOP0 as the default primary
> >screen.

Personally, I'd like a little better description that talks about the
rates, not just the differences between VOP0 and VOP1. Presumably the
clock rates needed by VOP0 are not achievable just by these dividers, so
we need to adjust the PLL?

FWIW, I haven't actually found this patch necessary in my own testing (I
have eDP running fine without this change), but perhaps with better
justification, this will make more sense.

> >Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> Tested on RK3399 Kevin board, after apply this patch, my eDP panel
> light up normally. So
> 
> Tested-by: Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

For clarification: this patch isn't sufficient for that, right? Of
course eDP support hasn't fully landed upstream yet, but I presume you
have other changes to set the correct VOP frequencies?

Brian

> BR,
> - Yakir
> 
> >---
> >
> >  drivers/clk/rockchip/clk-rk3399.c |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> >index 7ecb12c3..6affa75 100644
> >--- a/drivers/clk/rockchip/clk-rk3399.c
> >+++ b/drivers/clk/rockchip/clk-rk3399.c
> >@@ -1157,7 +1157,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
> >  	GATE(HCLK_VOP0_NOC, "hclk_vop0_noc", "hclk_vop0_pre", CLK_IGNORE_UNUSED,
> >  			RK3399_CLKGATE_CON(28), 0, GFLAGS),
> >-	COMPOSITE(DCLK_VOP0_DIV, "dclk_vop0_div", mux_pll_src_vpll_cpll_gpll_p, 0,
> >+	COMPOSITE(DCLK_VOP0_DIV, "dclk_vop0_div", mux_pll_src_vpll_cpll_gpll_p, CLK_SET_RATE_PARENT,
> >  			RK3399_CLKSEL_CON(49), 8, 2, MFLAGS, 0, 8, DFLAGS,
> >  			RK3399_CLKGATE_CON(10), 12, GFLAGS),
> 
> 
