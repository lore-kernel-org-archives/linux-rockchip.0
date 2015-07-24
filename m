From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 1/2] ARM: rockchip: set correct stabilization
 thresholds in suspend
Date: Sat, 25 Jul 2015 01:09:23 +0200
Message-ID: <1460722.2xOTZfOB49@diego>
References: <4610448.RXXf22Qoxl@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <4610448.RXXf22Qoxl@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

Am Donnerstag, 23. Juli 2015, 10:29:34 schrieb Heiko St=FCbner:
> diff --git a/arch/arm/mach-rockchip/pm.c b/arch/arm/mach-rockchip/pm.c
> index 892bace..04d3028 100644
> --- a/arch/arm/mach-rockchip/pm.c
> +++ b/arch/arm/mach-rockchip/pm.c
> @@ -145,6 +145,10 @@ static void rk3288_slp_mode_set(int level)
> =

>  		mode_set1 |=3D BIT(PMU_CLR_ALIVE) | BIT(PMU_CLR_BUS) |
>  			     BIT(PMU_CLR_PERI) | BIT(PMU_CLR_DMA);
> +
> +		/* 30ms on a 32kHz clock for osc and pmic stabilization */
> +		regmap_write(pmu_regmap, RK3288_PMU_OSC_CNT, 32 * 30);
> +		regmap_write(pmu_regmap, RK3288_PMU_STABL_CNT, 32 * 30);

The deep suspend mode has two bits handling the 32kHz clock switch (PMU_USE=
_LF =

and ALIVE_USE_LF). Just for my understanding, are these always supposed to =
be =

set to the same value or can there be a case when only one of them is set?

Also when deciding the correct stabilization delays on which of the two are =

these dependant?

I.e. something like

  stabl_cnt =3D PMU_PMU_USE_LF ? 32 : 24000
  osc_cnt =3D PMU_ALIVE_USE_LF ? 32 : 24000

or are these always to be set similarly?


Thanks
Heiko
