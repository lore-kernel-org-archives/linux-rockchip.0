From: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Subject: Re: [PATCH v2 2/2] clk: rockchip: Make uartpll a child of the gpll
 on rk3036
Date: Wed, 1 Mar 2017 11:08:53 -0800
Message-ID: <20170301190853.GQ25384@codeaurora.org>
References: <20170228181214.6413-1-heiko@sntech.de>
 <20170228181214.6413-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20170228181214.6413-3-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 02/28, Heiko Stuebner wrote:
> @@ -480,6 +481,19 @@ static void __init rk3036_clk_init(struct device_node *np)
>  
>  	rockchip_register_restart_notifier(ctx, RK2928_GLB_SRST_FST, NULL);
>  
> +	clk = __clk_lookup("uart_pll_clk");
> +	clk2 = __clk_lookup("gpll");

Can we do the register writes directly? Or call the appropriate
function to twiddle some bits to change the parent before
registering the clks? It's nice to avoid using clk API in
provider drivers when we're getting clks from the provider
itself, plus I'd like to get rid of __clk_lookup() one day.

> +	if (clk && clk2) {
> +		int ret = clk_set_parent(clk, clk2);
> +
> +		if (ret < 0)
> +			pr_warn("%s: could not reparent uart_pll_clk to gpll\n",
> +				__func__);
> +	} else {
> +		pr_warn("%s: missing clocks to reparent uart_pll_clk to gpll\n",
> +			__func__);
> +	}
> +
>  	rockchip_clk_of_add_provider(np, ctx);
>  }

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
