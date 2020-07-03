From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2] clk: rockchip: use separate compatibles for
 rk3288w-cru
Date: Fri, 03 Jul 2020 15:33:52 -0300
Message-ID: <c76893775a8c2ecee5093f9a7dfa872ec2afcefe.camel@collabora.com>
References: <20200703154948.260369-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200703154948.260369-1-heiko@sntech.de>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: mylene.josserand@collabora.com, mturquette@baylibre.com, sboyd@kernel.org, jagan@amarulasolutions.com, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 2020-07-03 at 17:49 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Commit 1627f683636d ("clk: rockchip: Handle clock tree for rk3288w variant")
> added the check for rk3288w-specific clock-tree changes but in turn would
> require a double-compatible due to re-using the main rockchip,rk3288-cru
> compatible as entry point.
> 
> The binding change actually describes the compatibles as one or the other
> so adapt the code accordingly and add a real second entry-point for the
> clock controller.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Now all we need is someone to wire the U-Boot bits :)

Thanks a lot Heiko,
Ezequiel

> ---
> changes in v2:
> - type enum instead of boolean (Ezequiel)
> 
>  drivers/clk/rockchip/clk-rk3288.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
> index 204976e2d0cb..93c794695c46 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -15,6 +15,11 @@
>  #define RK3288_GRF_SOC_CON(x)	(0x244 + x * 4)
>  #define RK3288_GRF_SOC_STATUS1	0x284
>  
> +enum rk3288_variant {
> +	RK3288_CRU,
> +	RK3288W_CRU,
> +};
> +
>  enum rk3288_plls {
>  	apll, dpll, cpll, gpll, npll,
>  };
> @@ -922,7 +927,8 @@ static struct syscore_ops rk3288_clk_syscore_ops = {
>  	.resume = rk3288_clk_resume,
>  };
>  
> -static void __init rk3288_clk_init(struct device_node *np)
> +static void __init rk3288_common_init(struct device_node *np,
> +				      enum rk3288_variant soc)
>  {
>  	struct rockchip_clk_provider *ctx;
>  
> @@ -945,7 +951,7 @@ static void __init rk3288_clk_init(struct device_node *np)
>  	rockchip_clk_register_branches(ctx, rk3288_clk_branches,
>  				  ARRAY_SIZE(rk3288_clk_branches));
>  
> -	if (of_device_is_compatible(np, "rockchip,rk3288w-cru"))
> +	if (soc == RK3288W_CRU)
>  		rockchip_clk_register_branches(ctx, rk3288w_hclkvio_branch,
>  					       ARRAY_SIZE(rk3288w_hclkvio_branch));
>  	else
> @@ -970,4 +976,15 @@ static void __init rk3288_clk_init(struct device_node *np)
>  
>  	rockchip_clk_of_add_provider(np, ctx);
>  }
> +
> +static void __init rk3288_clk_init(struct device_node *np)
> +{
> +	rk3288_common_init(np, RK3288_CRU);
> +}
>  CLK_OF_DECLARE(rk3288_cru, "rockchip,rk3288-cru", rk3288_clk_init);
> +
> +static void __init rk3288w_clk_init(struct device_node *np)
> +{
> +	rk3288_common_init(np, RK3288W_CRU);
> +}
> +CLK_OF_DECLARE(rk3288w_cru, "rockchip,rk3288w-cru", rk3288w_clk_init);
