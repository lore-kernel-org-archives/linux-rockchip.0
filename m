From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
Date: Mon, 16 Dec 2019 17:16:06 +0100
Message-ID: <3f3e1fcd-f4e5-efe6-ff84-bc46db15137e@linaro.org>
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191212061702.BFE2D6E85603@corona.crabdance.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: schaecsn@gmx.net, Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 12/12/2019 07:17, Stefan Schaeckeler wrote:
> By default, of-based thermal drivers do not enable hwmon.
> Explicitly enable hwmon for both, the soc and gpu temperature
> sensor.
> 
> Signed-off-by: Stefan Schaeckeler <schaecsn@gmx.net>

Applied, and took the opportunity to test it.

(for patchwork)

Tested-by: Daniel Lezcano <daniel.lezcano@linaro.org>

> ---
>  drivers/thermal/rockchip_thermal.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
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
> @@ -1321,8 +1323,15 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
> 
>  	thermal->chip->control(thermal->regs, true);
> 
> -	for (i = 0; i < thermal->chip->chn_num; i++)
> +	for (i = 0; i < thermal->chip->chn_num; i++) {
>  		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
> +		thermal->sensors[i].tzd->tzp->no_hwmon = false;
> +		error = thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
> +		if (error)
> +			dev_warn(&pdev->dev,
> +				 "failed to register sensor %d with hwmon: %d\n",
> +				 i, error);
> +	}
> 
>  	platform_set_drvdata(pdev, thermal);
> 
> @@ -1344,6 +1353,7 @@ static int rockchip_thermal_remove(struct platform_device *pdev)
>  	for (i = 0; i < thermal->chip->chn_num; i++) {
>  		struct rockchip_thermal_sensor *sensor = &thermal->sensors[i];
> 
> +		thermal_remove_hwmon_sysfs(sensor->tzd);
>  		rockchip_thermal_toggle_sensor(sensor, false);
>  	}
> 
> --
> 2.24.0
> 


-- 
 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
