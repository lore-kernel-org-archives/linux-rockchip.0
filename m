From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [RESEND PATCH v2 3/8] clk: rockchip: rk3399: fix incorrect
 parent for rk3399's {c, g}pll_aclk_perihp_src
Date: Mon, 1 Aug 2016 13:13:50 -0700
Message-ID: <20160801201349.GA129313@google.com>
References: <1470045224-31854-1-git-send-email-zhengxing@rock-chips.com>
 <1470045224-31854-4-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1470045224-31854-4-git-send-email-zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Aug 01, 2016 at 05:53:38PM +0800, Xing Zheng wrote:
> There was a typo, swapping 'c' <--> 'g'.
> (This patch is updated and am from https://patchwork.kernel.org/patch/9254067/)
> 
> Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> 
> Changes in v2: None

I believe this patch was already applied upstream; otherwise, it
wouldn't make sense to have both this patch and patch 4 -- we would
probably squash them together.

Brian

>  drivers/clk/rockchip/clk-rk3399.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> index f55f967f..2182391 100644
> --- a/drivers/clk/rockchip/clk-rk3399.c
> +++ b/drivers/clk/rockchip/clk-rk3399.c
> @@ -832,9 +832,9 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
>  			RK3399_CLKGATE_CON(13), 1, GFLAGS),
>  
>  	/* perihp */
> -	GATE(0, "cpll_aclk_perihp_src", "gpll", CLK_IGNORE_UNUSED,
> +	GATE(0, "cpll_aclk_perihp_src", "cpll", CLK_IGNORE_UNUSED,
>  			RK3399_CLKGATE_CON(5), 0, GFLAGS),
> -	GATE(0, "gpll_aclk_perihp_src", "cpll", CLK_IGNORE_UNUSED,
> +	GATE(0, "gpll_aclk_perihp_src", "gpll", CLK_IGNORE_UNUSED,
>  			RK3399_CLKGATE_CON(5), 1, GFLAGS),
>  	COMPOSITE(ACLK_PERIHP, "aclk_perihp", mux_aclk_perihp_p, CLK_IGNORE_UNUSED,
>  			RK3399_CLKSEL_CON(14), 7, 1, MFLAGS, 0, 5, DFLAGS,
> -- 
> 1.7.9.5
> 
> 
