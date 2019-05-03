From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Don't yell about bad mmc phases when getting
Date: Fri, 03 May 2019 23:51:01 +0200
Message-ID: <1783321.PXM97fLzLk@phil>
References: <20190503212208.223232-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190503212208.223232-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, hal@halemmerich.com, linux-rockchip@lists.infradead.org, mka@chromium.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 3. Mai 2019, 23:22:08 CEST schrieb Douglas Anderson:
> At boot time, my rk3288-veyron devices yell with 8 lines that look
> like this:
>   [    0.000000] rockchip_mmc_get_phase: invalid clk rate
> 
> This is because the clock framework at clk_register() time tries to
> get the phase but we don't have a parent yet.
> 
> While the errors appear to be harmless they are still ugly and, in
> general, we don't want yells like this in the log unless they are
> important.
> 
> There's no real reason to be yelling here.  We can still return
> -EINVAL to indicate that the phase makes no sense without a parent.
> If someone really tries to do tuning and the clock is reported as 0
> then we'll see the yells in rockchip_mmc_set_phase().
> 
> Fixes: 4bf59902b500 ("clk: rockchip: Prevent calculating mmc phase if clock rate is zero")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Thanks for fixing that. I always meant to handle that yell, but hadn't
found the time yet.

@Stephen, Mike: if you want to just apply this atop the other Rockchip
clock patches for 5.2, here is a

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Otherwise I'l queue that up for 5.3 later on.

Thanks
Heiko

> ---
> 
>  drivers/clk/rockchip/clk-mmc-phase.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
> index 026a26bb702d..dbec84238ecd 100644
> --- a/drivers/clk/rockchip/clk-mmc-phase.c
> +++ b/drivers/clk/rockchip/clk-mmc-phase.c
> @@ -61,10 +61,8 @@ static int rockchip_mmc_get_phase(struct clk_hw *hw)
>  	u32 delay_num = 0;
>  
>  	/* See the comment for rockchip_mmc_set_phase below */
> -	if (!rate) {
> -		pr_err("%s: invalid clk rate\n", __func__);
> +	if (!rate)
>  		return -EINVAL;
> -	}
>  
>  	raw_value = readl(mmc_clock->reg) >> (mmc_clock->shift);
>  
> 
