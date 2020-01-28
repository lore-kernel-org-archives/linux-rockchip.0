From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/3] clk: rockchip: convert rk3399 pll type to use
 readl_poll_timeout
Date: Tue, 28 Jan 2020 15:28:44 +0000
Message-ID: <f8001dbb-ebbc-ebe3-d1db-c75d3888fd38@arm.com>
References: <20200128100204.1318450-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200128100204.1318450-1-heiko@sntech.de>
Content-Language: en-GB
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org
Cc: sboyd@kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, mturquette@baylibre.com, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

On 28/01/2020 10:02 am, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Instead of open coding the polling of the lock status, use the
> handy readl_poll_timeout for this. As the pll locking is normally
> blazingly fast and we don't want to incur additional delays, we're
> not doing any sleeps similar to for example the imx clk-pllv4
> and define a very safe but still short timeout of 1ms.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   drivers/clk/rockchip/clk-pll.c | 21 ++++++++++-----------
>   1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index 198417d56300..43c9fd0086a2 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -585,19 +585,18 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
>   static int rockchip_rk3399_pll_wait_lock(struct rockchip_clk_pll *pll)
>   {
>   	u32 pllcon;
> -	int delay = 24000000;
> +	int ret;
>   
> -	/* poll check the lock status in rk3399 xPLLCON2 */
> -	while (delay > 0) {
> -		pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(2));
> -		if (pllcon & RK3399_PLLCON2_LOCK_STATUS)
> -			return 0;
> +	/*
> +	 * Lock time typical 250, max 500 input clock cycles @24MHz
> +	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
> +	 */
> +	ret = readl_poll_timeout(pll->reg_base + RK3399_PLLCON(2), pllcon,
> +				 pllcon & RK3399_PLLCON2_LOCK_STATUS, 0, 1000);

Note that the existing I/O accessor was readl_relaxed(), but using plain 
readl_poll_timeout() switches it to regular readl(). It may well not 
matter, but since it's not noted as an intentional change it seemed 
worth pointing out.

Robin.

> +	if (ret)
> +		pr_err("%s: timeout waiting for pll to lock\n", __func__);
>   
> -		delay--;
> -	}
> -
> -	pr_err("%s: timeout waiting for pll to lock\n", __func__);
> -	return -ETIMEDOUT;
> +	return ret;
>   }
>   
>   static void rockchip_rk3399_pll_get_params(struct rockchip_clk_pll *pll,
> 
