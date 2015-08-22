From: Michael Niewoehner <linux-zzFNMPX9jIaDjmgdnaGrkw@public.gmane.org>
Subject: Re: [PATCH] clk: rockchip: handle critical clocks after registrering
 all clocks
Date: Sat, 22 Aug 2015 17:04:52 +0200
Message-ID: <12B8A81E-1B35-4EF1-AEC4-08714F91AEC0@mniewoehner.de>
References: <7786473.0oe27txQFN@phil>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <7786473.0oe27txQFN@phil>
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
Cc: mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


Am 21.08.2015 um 19:51 schrieb Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>:

> Currently the registration of critical clocks is done in the function
> shared between rk3066 and rk3188 clock trees. That results in them
> getting handled maybe before all of them are registered.
> 
> Therefore move the critical clock handling down to the end of the soc-
> specific clock registration function, so that all clocks are registered
> before they're maybe handled as critical clock.
> 
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Tested-by: Michael Niewoehner <linux-zzFNMPX9jIaDjmgdnaGrkw@public.gmane.org>
> ---
> It looks like with the recent flexibilization of the gpio clocks in the
> pinctrl driver, we're shaking out some oddities from the clock trees.
> This is another one that surfaced.
> 
> drivers/clk/rockchip/clk-rk3188.c | 7 +++++--
> 1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-
> rk3188.c
> index faa6695..bd88542 100644
> --- a/drivers/clk/rockchip/clk-rk3188.c
> +++ b/drivers/clk/rockchip/clk-rk3188.c
> @@ -744,8 +744,6 @@ static void __init rk3188_common_clk_init(struct 
> device_node *np)
> 
> 	rockchip_clk_register_branches(common_clk_branches,
> 				  ARRAY_SIZE(common_clk_branches));
> -	rockchip_clk_protect_critical(rk3188_critical_clocks,
> -				      ARRAY_SIZE(rk3188_critical_clocks));
> 
> 	rockchip_register_softrst(np, 9, reg_base + RK2928_SOFTRST_CON(0),
> 				  ROCKCHIP_SOFTRST_HIWORD_MASK);
> @@ -765,6 +763,8 @@ static void __init rk3066a_clk_init(struct device_node 
> *np)
> 			mux_armclk_p, ARRAY_SIZE(mux_armclk_p),
> 			&rk3066_cpuclk_data, rk3066_cpuclk_rates,
> 			ARRAY_SIZE(rk3066_cpuclk_rates));
> +	rockchip_clk_protect_critical(rk3188_critical_clocks,
> +				      ARRAY_SIZE(rk3188_critical_clocks));
> }
> CLK_OF_DECLARE(rk3066a_cru, "rockchip,rk3066a-cru", rk3066a_clk_init);
> 
> @@ -801,6 +801,9 @@ static void __init rk3188a_clk_init(struct device_node 
> *np)
> 		pr_warn("%s: missing clocks to reparent aclk_cpu_pre to gpll\n",
> 			__func__);
> 	}
> +
> +	rockchip_clk_protect_critical(rk3188_critical_clocks,
> +				      ARRAY_SIZE(rk3188_critical_clocks));
> }
> CLK_OF_DECLARE(rk3188a_cru, "rockchip,rk3188a-cru", rk3188a_clk_init);
> 
> -- 
> 2.1.4
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
