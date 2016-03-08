From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH v5 6/6] rockchip: power-domain: Modify power domain driver
 for rk3399
Date: Tue, 8 Mar 2016 18:59:26 +0800
Message-ID: <56DEB08E.5060805@gmail.com>
References: <1456992233-25164-1-git-send-email-zhangqing@rock-chips.com>
 <1456992591-25383-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1456992591-25383-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>, wxt@rock-chips.com
Cc: heiko@sntech.de, khilman@baylibre.com, huangtao@rock-chips.com, xxx@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, zyw@rock-chips.com, jay.xu@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



=E5=9C=A8 2016=E5=B9=B403=E6=9C=8803=E6=97=A5 16:09, Elaine Zhang =E5=86=
=99=E9=81=93:
> This driver is modified to support RK3399 SoC.
>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

Reviewed-by: Caesar Wang  <wxt@rock-chips.com>

> ---
>   drivers/soc/rockchip/pm_domains.c | 55 ++++++++++++++++++++++++++++=
+++++++++++
>   1 file changed, 55 insertions(+)
>
> diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip=
/pm_domains.c
> index 1777e8e..8cdd877 100644
> --- a/drivers/soc/rockchip/pm_domains.c
> +++ b/drivers/soc/rockchip/pm_domains.c
> @@ -19,6 +19,7 @@
>   #include <linux/mfd/syscon.h>
>   #include <dt-bindings/power/rk3288-power.h>
>   #include <dt-bindings/power/rk3368-power.h>
> +#include <dt-bindings/power/rk3399-power.h>
>  =20
>   struct rockchip_domain_info {
>   	int pwr_mask;
> @@ -79,6 +80,9 @@ struct rockchip_pmu {
>   #define DOMAIN_RK3368(pwr, status, req)		\
>   	DOMAIN(pwr, status, req, (req) + 16, req)
>  =20
> +#define DOMAIN_RK3399(pwr, status, req)                \
> +	DOMAIN(pwr, status, req, req, req)
> +
>   static bool rockchip_pmu_domain_is_idle(struct rockchip_pm_domain *=
pd)
>   {
>   	struct rockchip_pmu *pmu =3D pd->pmu;
> @@ -535,6 +539,36 @@ static const struct rockchip_domain_info rk3368_=
pm_domains[] =3D {
>   	[RK3368_PD_GPU_1]	=3D DOMAIN_RK3368(17, 16, 2),
>   };
>  =20
> +static const struct rockchip_domain_info rk3399_pm_domains[] =3D {
> +	[RK3399_PD_TCPD0]	=3D DOMAIN_RK3399(8, 8, -1),
> +	[RK3399_PD_TCPD1]	=3D DOMAIN_RK3399(9, 9, -1),
> +	[RK3399_PD_CCI]	=3D DOMAIN_RK3399(10, 10, -1),
> +	[RK3399_PD_CCI0]	=3D DOMAIN_RK3399(-1, -1, 15),
> +	[RK3399_PD_CCI1]	=3D DOMAIN_RK3399(-1, -1, 16),
> +	[RK3399_PD_PERILP]	=3D DOMAIN_RK3399(11, 11, 1),
> +	[RK3399_PD_PERIHP]	=3D DOMAIN_RK3399(12, 12, 2),
> +	[RK3399_PD_CENTER]	=3D DOMAIN_RK3399(13, 13, 14),
> +	[RK3399_PD_VIO]	=3D DOMAIN_RK3399(14, 14, 17),
> +	[RK3399_PD_GPU]	=3D DOMAIN_RK3399(15, 15, 0),
> +	[RK3399_PD_VCODEC]	=3D DOMAIN_RK3399(16, 16, 3),
> +	[RK3399_PD_VDU]	=3D DOMAIN_RK3399(17, 17, 4),
> +	[RK3399_PD_RGA]	=3D DOMAIN_RK3399(18, 18, 5),
> +	[RK3399_PD_IEP]	=3D DOMAIN_RK3399(19, 19, 6),
> +	[RK3399_PD_VO]	=3D DOMAIN_RK3399(20, 20, -1),
> +	[RK3399_PD_VOPB]	=3D DOMAIN_RK3399(-1, -1, 7),
> +	[RK3399_PD_VOPL]	=3D DOMAIN_RK3399(-1, -1, 8),
> +	[RK3399_PD_ISP0]	=3D DOMAIN_RK3399(22, 22, 9),
> +	[RK3399_PD_ISP1]	=3D DOMAIN_RK3399(23, 23, 10),
> +	[RK3399_PD_HDCP]	=3D DOMAIN_RK3399(24, 24, 11),
> +	[RK3399_PD_GMAC]	=3D DOMAIN_RK3399(25, 25, 23),
> +	[RK3399_PD_EMMC]	=3D DOMAIN_RK3399(26, 26, 24),
> +	[RK3399_PD_USB3]	=3D DOMAIN_RK3399(27, 27, 12),
> +	[RK3399_PD_EDP]	=3D DOMAIN_RK3399(28, 28, 22),
> +	[RK3399_PD_GIC]	=3D DOMAIN_RK3399(29, 29, 27),
> +	[RK3399_PD_SD]	=3D DOMAIN_RK3399(30, 30, 28),
> +	[RK3399_PD_SDIOAUDIO]	=3D DOMAIN_RK3399(31, 31, 29),
> +};
> +
>   static const struct rockchip_pmu_info rk3288_pmu =3D {
>   	.pwr_offset =3D 0x08,
>   	.status_offset =3D 0x0c,
> @@ -569,6 +603,23 @@ static const struct rockchip_pmu_info rk3368_pmu=
 =3D {
>   	.domain_info =3D rk3368_pm_domains,
>   };
>  =20
> +static const struct rockchip_pmu_info rk3399_pmu =3D {
> +	.pwr_offset =3D 0x14,
> +	.status_offset =3D 0x18,
> +	.req_offset =3D 0x60,
> +	.idle_offset =3D 0x64,
> +	.ack_offset =3D 0x68,
> +
> +	.core_pwrcnt_offset =3D 0x9c,
> +	.gpu_pwrcnt_offset =3D 0xa4,
> +
> +	.core_power_transition_time =3D 24,
> +	.gpu_power_transition_time =3D 24,
> +
> +	.num_domains =3D ARRAY_SIZE(rk3399_pm_domains),
> +	.domain_info =3D rk3399_pm_domains,
> +};
> +
>   static const struct of_device_id rockchip_pm_domain_dt_match[] =3D =
{
>   	{
>   		.compatible =3D "rockchip,rk3288-power-controller",
> @@ -578,6 +629,10 @@ static const struct of_device_id rockchip_pm_dom=
ain_dt_match[] =3D {
>   		.compatible =3D "rockchip,rk3368-power-controller",
>   		.data =3D (void *)&rk3368_pmu,
>   	},
> +	{
> +		.compatible =3D "rockchip,rk3399-power-controller",
> +		.data =3D (void *)&rk3399_pmu,
> +	},
>   	{ /* sentinel */ },
>   };
>  =20


--=20
Thanks,
Caesar
