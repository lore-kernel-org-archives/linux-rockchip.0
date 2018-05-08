From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 1/2] clk: divider: Add CLK_DIVIDER_EVEN flag support
Date: Tue, 8 May 2018 10:19:26 +0800
Message-ID: <fab22026-32eb-04c2-6f18-d58394cafd08@rock-chips.com>
References: <1523172498-74798-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1523172498-74798-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Xiao Yao <xiaoyao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Finley Xiao <finley.xiao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Xing Zheng <xing.zheng-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ziyuan Xu <xzy.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Michael and Stephen

Any chance to take a look at this patch? :)

On 2018/4/8 15:28, Shawn Lin wrote:
> CLK_DIVIDER_EVEN is used for clock divders that should only
> use even number in the div field.
> 
> Two clock divder should consider to use this flag
> (1) The divder is physically only support even div number to
> generate 50% duty cycle clock rate.
> (2) The divder's clock consumer request it to use even div number
> to generate the most closest requested rate for whatever reason.
> 
> In some platforms, for instance Rockchip, the eMMC/SDIO/SDMMC should
> request divder to use even number when working at a high throughput
> speed mode reliably. However, that wasn't guaranteed by clock framework.
> So the previous tricky is to carefully assign magic clock rate to their
> parents as well as consumer's clock rate when requesting. That works
> bad in practice if folks change the parents clock rate or the clock
> hierarchy randomly. That also work bad if the consumer's clock rate
> came from the DT, which is changed so fraquent for different boards.
> 
> To make it's less prone to make mistake and to make it really respect
> the fact that the divder should use even number to the div field, we
> need the clock framework's help. Now we have CLK_DIVIDER_POWER_OF_TWO,
> which could guarantee the div field is even number, however, obviously
> it skips the even numbers which isn't the power of 2, but maybe which is
> the best div to generate closest clock rate for consumer.
> 
> Look at the examples here when doing some random test on Rockchip's
> platforms, by changing the requested clock rate from DT, namely
> assigning different max-frquency for MMC node,
> 
> when the mmc host driver requests 80MHz with CLK_DIVIDER_POWER_OF_TWO
> flag for the clock divder, it shows the final clock rate is 61.44Mhz
> 
> pll_vpll0		1		1 983039999     0   0
>     vpll0		4		4 983039999     0   0
>       clk_emmc_div       1		1 122880000     0   0
> 	clk_emmc	1		1 122880000     0   0
> 	  emmc_sample	0		0  61440000	0 155
> 	  emmc_drv	0		0  61440000	0 180
> 
> With this patch and add CLK_DIVIDER_EVEN flag for clk_emmc_div, we get
> the final clock rate, 67.7376MHz.
> 
> pll_vpll1               1		1 812851199	0   0
>     vpll1                2		2 812851199     0   0
>       clk_emmc_div       1		1 135475200     0   0
> 	clk_emmc	1		1 135475200     0   0
> 	  emmc_sample   0		0  67737600     0 113
> 	  emmc_drv	0		0  67737600	0 180
> 
> Apprently 67737600 is better than 61440000 when requesting 80MHz.
> Of course, we could have more case that worsen the gap between
> the desired rate and the actual rate if using CLK_DIVIDER_POWER_OF_TWO.
> 
> Alternatively, clk_div_table could be resorted to handle different kinds
> of div limilation, and it seems to be applied to irregular div calculation
> in practice by current clock provider drivers, but even number for div
> field is a rather common, regular and symmetrical requirement. So it is
> worth to introduces CLK_DIVIDER_EVEN flag for clock framework to make
> the best in this process.
> 
> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> ---
> 
> Changes in v3:
> - Fix a wrong if condition check
> 
> Changes in v2:
> - Avoid to use div 1 if (CLK_DIVIDER_EVEN | CLK_DIVIDER_POWER_OF_TWO)
>    suggested by Heiko. And seems actually no other flags should be bothered
>    by this newly added CLK_DIVIDER_EVEN.
> 
>   drivers/clk/clk-divider.c    | 26 ++++++++++++++++++++++++--
>   include/linux/clk-provider.h |  3 +++
>   2 files changed, 27 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
> index b6234a5..8f305f1 100644
> --- a/drivers/clk/clk-divider.c
> +++ b/drivers/clk/clk-divider.c
> @@ -159,8 +159,17 @@ static bool _is_valid_table_div(const struct clk_div_table *table,
>   static bool _is_valid_div(const struct clk_div_table *table, unsigned int div,
>   			  unsigned long flags)
>   {
> -	if (flags & CLK_DIVIDER_POWER_OF_TWO)
> -		return is_power_of_2(div);
> +	bool is_valid;
> +
> +	if (flags & CLK_DIVIDER_POWER_OF_TWO) {
> +		is_valid = is_power_of_2(div);
> +		if (flags & CLK_DIVIDER_EVEN)
> +			return is_valid && (div != 1);
> +		return is_valid;
> +	}
> +
> +	if (flags & CLK_DIVIDER_EVEN)
> +		return !(div % 2);
>   	if (table)
>   		return _is_valid_table_div(table, div);
>   	return true;
> @@ -208,6 +217,12 @@ static int _div_round_up(const struct clk_div_table *table,
>   {
>   	int div = DIV_ROUND_UP_ULL((u64)parent_rate, rate);
>   
> +	/*
> +	 * Check even before power of two to avoid div 1 if combination
> +	 * happens, which applies to all the following similarities.
> +	 */
> +	if (flags & CLK_DIVIDER_EVEN)
> +		div = !(div % 2) ? div : (div + 1);
>   	if (flags & CLK_DIVIDER_POWER_OF_TWO)
>   		div = __roundup_pow_of_two(div);
>   	if (table)
> @@ -226,6 +241,11 @@ static int _div_round_closest(const struct clk_div_table *table,
>   	up = DIV_ROUND_UP_ULL((u64)parent_rate, rate);
>   	down = parent_rate / rate;
>   
> +	if (flags & CLK_DIVIDER_EVEN) {
> +		up = !(up % 2) ? up : (up + 1);
> +		down = !(down % 2) ? down : (down - 1);
> +	}
> +
>   	if (flags & CLK_DIVIDER_POWER_OF_TWO) {
>   		up = __roundup_pow_of_two(up);
>   		down = __rounddown_pow_of_two(down);
> @@ -264,6 +284,8 @@ static int _next_div(const struct clk_div_table *table, int div,
>   {
>   	div++;
>   
> +	if (flags & CLK_DIVIDER_EVEN)
> +		div = !(div % 2) ? div : (div + 1);
>   	if (flags & CLK_DIVIDER_POWER_OF_TWO)
>   		return __roundup_pow_of_two(div);
>   	if (table)
> diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
> index 210a890..7c59611 100644
> --- a/include/linux/clk-provider.h
> +++ b/include/linux/clk-provider.h
> @@ -388,6 +388,8 @@ struct clk_div_table {
>    * CLK_DIVIDER_MAX_AT_ZERO - For dividers which are like CLK_DIVIDER_ONE_BASED
>    *	except when the value read from the register is zero, the divisor is
>    *	2^width of the field.
> + * CLK_DIVIDER_EVEN - For the dividers which could only use even number in the
> + *	div field.
>    */
>   struct clk_divider {
>   	struct clk_hw	hw;
> @@ -409,6 +411,7 @@ struct clk_divider {
>   #define CLK_DIVIDER_ROUND_CLOSEST	BIT(4)
>   #define CLK_DIVIDER_READ_ONLY		BIT(5)
>   #define CLK_DIVIDER_MAX_AT_ZERO		BIT(6)
> +#define CLK_DIVIDER_EVEN		BIT(7)
>   
>   extern const struct clk_ops clk_divider_ops;
>   extern const struct clk_ops clk_divider_ro_ops;
> 
