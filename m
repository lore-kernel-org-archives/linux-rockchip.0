From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH] thermal: rockchip: enable hwmon
Date: Tue, 17 Dec 2019 09:01:44 +0100
Message-ID: <7f2be28d-9bf5-79a8-8720-4615a4e9f463@linaro.org>
References: <20191217052328.25633-1-wens@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191217052328.25633-1-wens@kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Chen-Yu Tsai <wens@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


Hi Chen-Yu,

On 17/12/2019 06:23, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> By default of-based thermal driver do not have hwmon entries registered.
> 
> Do this explicitly so users can use standard hwmon interfaces and tools
> to read the temperature.
> 
> This is based on similar changes for bcm2835_thermal in commit
> d56c19d07e0b ("thermal: bcm2835: enable hwmon explicitly").

Thanks for submitting this patch, but it is duplicate with:

https://lore.kernel.org/linux-arm-kernel/20191212061702.BFE2D6E85603@corona.crabdance.com/

which I picked up.

  -- Daniel


> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  drivers/thermal/rockchip_thermal.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> index 9ed8085bb792..d53ba7dabf16 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -19,6 +19,8 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/pinctrl/consumer.h>
>  
> +#include "thermal_hwmon.h"
> +
>  /*
>   * If the temperature over a period of time High,
>   * the resulting TSHUT gave CRU module,let it reset the entire chip,
> @@ -1210,7 +1212,11 @@ rockchip_thermal_register_sensor(struct platform_device *pdev,
>  		return error;
>  	}
>  
> -	return 0;
> +	/* thermal_zone doesn't enable hwmon as default, enable it here */
> +	sensor->tzd->tzp->no_hwmon = false;
> +	error = thermal_add_hwmon_sysfs(sensor->tzd);
> +
> +	return error;
>  }
>  
>  /**
> 


-- 
 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
