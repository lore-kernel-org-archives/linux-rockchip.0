From: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 1/3] ARM: rockchip: rename osc_switch_to_32k variable
Date: Wed, 05 Aug 2015 18:36:06 +0800
Message-ID: <55C1E716.4010901@rock-chips.com>
References: <2128609.Kb18M8K28F@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2128609.Kb18M8K28F@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?windows-1252?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 08/05/2015 06:50 AM, Heiko St=FCbner wrote:
> The variable name is misleading, as the deep suspend mode always switches
> the main supplying clock to the 32kHz source. Additionally the main
> oscillator remain running in some cases, which this var indicates.
>
> So rename it to osc_disable to clarity.
>
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> ---
>   arch/arm/mach-rockchip/pm.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
> index 892bace..2ca1170 100644
> --- a/arch/arm/mach-rockchip/pm.c
> +++ b/arch/arm/mach-rockchip/pm.c
> @@ -96,7 +96,7 @@ static bool rk3288_slp_disable_osc(void)
>   static void rk3288_slp_mode_set(int level)
>   {
>   	u32 mode_set, mode_set1;
> -	bool osc_switch_to_32k =3D rk3288_slp_disable_osc();
> +	bool osc_disable =3D rk3288_slp_disable_osc();
>   =

>   	regmap_read(sgrf_regmap, RK3288_SGRF_CPU_CON0, &rk3288_sgrf_cpu_con0);
>   	regmap_read(sgrf_regmap, RK3288_SGRF_SOC_CON0, &rk3288_sgrf_soc_con0);
> @@ -140,7 +140,7 @@ static void rk3288_slp_mode_set(int level)
>   			    BIT(PMU_DDR1IO_RET_EN) | BIT(PMU_DDR0IO_RET_EN) |
>   			    BIT(PMU_ALIVE_USE_LF) | BIT(PMU_PLL_PD_EN);
>   =

> -		if (osc_switch_to_32k)
> +		if (osc_disable)
>   			mode_set |=3D BIT(PMU_OSC_24M_DIS);
>   =

>   		mode_set1 |=3D BIT(PMU_CLR_ALIVE) | BIT(PMU_CLR_BUS) |
Reviewed-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Tested-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
