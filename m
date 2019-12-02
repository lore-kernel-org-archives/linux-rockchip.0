From: Stefan Schaeckeler <schaecsn@gmx.net>
Subject: Re: [PATCH] thermal: rockchip: enable hwmon
Date: Mon,  2 Dec 2019 06:52:56 -0800 (PST)
Message-ID: <20191202145256.78AA06E85603@corona.crabdance.com>
References: <20191118052413.D729B6E85603@corona.crabdance.com>
Reply-To: schaecsn@gmx.net
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <20191118052413.D729B6E85603@corona.crabdance.com> (message from
        schaecsn on Sun, 17 Nov 2019 21:24:13 -0800 (PST))
Sender: linux-kernel-owner@vger.kernel.org
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org, amit.kucheria@verdurent.com, heiko@sntech.de, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello linux power management mailing list and others,

New month, new try. Could someone review this patch, please. I would reall=
y
like to see the Rockchip RK3399 temperature sensors hooked up to the hwmon=
 API.

~ Stefan

> Enable hwmon for the soc and gpu temperature sensors.
>
> Signed-off-by: Stefan Schaeckeler <schaecsn@gmx.net>
>
> ---
>  drivers/thermal/rockchip_thermal.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockch=
ip_thermal.c
> index 343c2f5c5a25..e47c60010259 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -19,6 +19,8 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/pinctrl/consumer.h>
>
> +#include "thermal_hwmon.h"
> +
>  /**
>   * If the temperature over a period of time High,
>   * the resulting TSHUT gave CRU module,let it reset the entire chip,
> @@ -1321,8 +1323,15 @@ static int rockchip_thermal_probe(struct platform=
_device *pdev)
>
>  	thermal->chip->control(thermal->regs, true);
>
> -	for (i =3D 0; i < thermal->chip->chn_num; i++)
> +	for (i =3D 0; i < thermal->chip->chn_num; i++) {
>  		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
> +		thermal->sensors[i].tzd->tzp->no_hwmon =3D false;
> +		error =3D thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
> +		if (error)
> +			dev_warn(&pdev->dev,
> +				 "failed to register sensor %d with hwmon: %d\n",
> +				 i, error);
> +	}
>
>  	platform_set_drvdata(pdev, thermal);
>
> @@ -1344,6 +1353,7 @@ static int rockchip_thermal_remove(struct platform=
_device *pdev)
>  	for (i =3D 0; i < thermal->chip->chn_num; i++) {
>  		struct rockchip_thermal_sensor *sensor =3D &thermal->sensors[i];
>
> +		thermal_remove_hwmon_sysfs(sensor->tzd);
>  		rockchip_thermal_toggle_sensor(sensor, false);
>  	}
>
> --
> 2.24.0
>
