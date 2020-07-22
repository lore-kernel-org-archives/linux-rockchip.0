From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1] clk: Export __clk_lookup()
Date: Wed, 22 Jul 2020 20:26:50 +0200
Message-ID: <14639646.VOZsFJ8Tpa@phil>
References: <20200722023230.10826-1-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200722023230.10826-1-zhangqing@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Elaine,

Am Mittwoch, 22. Juli 2020, 04:32:30 CEST schrieb Elaine Zhang:
> Export __clk_lookup() to support user built as module.
> 
> ERROR:
> drivers/clk/rockchip/clk.ko: In function
> `rockchip_clk_protect_critical':
> drivers/clk/rockchip/clk.c:741:
> undefined reference to `__clk_lookup'

can you elaborate a bit more on why this would be needed?

Because right now the Rockchip clocks are of course built into
the main kernel image (especially due to them being needed during early
boot) and __clk_lookup actually is a pretty deep part of the clock-
framework itself, as probably also denoted by the "__" in the function
name.


Heiko

> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  drivers/clk/clk.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 3f588ed06ce3..600284fbb257 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -618,6 +618,7 @@ struct clk *__clk_lookup(const char *name)
>  
>  	return !core ? NULL : core->hw->clk;
>  }
> +EXPORT_SYMBOL_GPL(__clk_lookup);
>  
>  static void clk_core_get_boundaries(struct clk_core *core,
>  				    unsigned long *min_rate,
> 
