From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [RESEND PATCH 5/6] clk: rockchip: rk3399: delete the
 CLK_IGNORE_UNUSED for aclk_pcie
Date: Mon, 1 Aug 2016 16:47:32 +0800
Message-ID: <8ee66f8c-f758-45ef-6e21-f757157d2fe4@rock-chips.com>
References: <1470025389-4094-1-git-send-email-zhengxing@rock-chips.com>
 <1470025485-4218-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1470025485-4218-1-git-send-email-zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2016/8/1 12:24, Xing Zheng wrote:
> From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>
> allow aclk_pcie and aclk_perf_pcie disabled when unused.
>

Thanks for landing it. Yes, my pcie driver will control it
manually, and this patch looks the same as what we land on
the downstream tree, so

Reviewed-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

> Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>
> ---
>
>  drivers/clk/rockchip/clk-rk3399.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> index 74afec0..4a15ce5b 100644
> --- a/drivers/clk/rockchip/clk-rk3399.c
> +++ b/drivers/clk/rockchip/clk-rk3399.c
> @@ -848,9 +848,9 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
>  			RK3399_CLKSEL_CON(14), 12, 2, DFLAGS,
>  			RK3399_CLKGATE_CON(5), 4, GFLAGS),
>
> -	GATE(ACLK_PERF_PCIE, "aclk_perf_pcie", "aclk_perihp", CLK_IGNORE_UNUSED,
> +	GATE(ACLK_PERF_PCIE, "aclk_perf_pcie", "aclk_perihp", 0,
>  			RK3399_CLKGATE_CON(20), 2, GFLAGS),
> -	GATE(ACLK_PCIE, "aclk_pcie", "aclk_perihp", CLK_IGNORE_UNUSED,
> +	GATE(ACLK_PCIE, "aclk_pcie", "aclk_perihp", 0,
>  			RK3399_CLKGATE_CON(20), 10, GFLAGS),
>  	GATE(0, "aclk_perihp_noc", "aclk_perihp", CLK_IGNORE_UNUSED,
>  			RK3399_CLKGATE_CON(20), 12, GFLAGS),
>


-- 
Best Regards
Shawn Lin
