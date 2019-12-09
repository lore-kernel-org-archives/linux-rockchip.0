From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH] thermal: rockchip: enable hwmon
Date: Mon, 9 Dec 2019 18:08:59 +0100
Message-ID: <e3b6e675-14de-d020-48f4-a8ed877646ab@linaro.org>
References: <20191118052413.D729B6E85603@corona.crabdance.com>
 <20191202145256.78AA06E85603@corona.crabdance.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191202145256.78AA06E85603@corona.crabdance.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: schaecsn@gmx.net, rui.zhang@intel.com, edubezval@gmail.com, amit.kucheria@verdurent.com, heiko@sntech.de, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


Hi Stefan,


On 02/12/2019 15:52, Stefan Schaeckeler wrote:
> Hello linux power management mailing list and others,
> 
> New month, new try. Could someone review this patch, please. I would reall=
> y
> like to see the Rockchip RK3399 temperature sensors hooked up to the hwmon=
>  API.

I don't know what is happening but there are some spurious '3D'
characters. Please fix it, elaborate a bit the changelog and resend.
I'll review it.

Thanks


>> Enable hwmon for the soc and gpu temperature sensors.
>>
>> Signed-off-by: Stefan Schaeckeler <schaecsn@gmx.net>
>>
>> ---
>>  drivers/thermal/rockchip_thermal.c | 12 +++++++++++-
>>  1 file changed, 11 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockch=
> ip_thermal.c
>> index 343c2f5c5a25..e47c60010259 100644
>> --- a/drivers/thermal/rockchip_thermal.c
>> +++ b/drivers/thermal/rockchip_thermal.c
>> @@ -19,6 +19,8 @@
>>  #include <linux/mfd/syscon.h>
>>  #include <linux/pinctrl/consumer.h>
>>
>> +#include "thermal_hwmon.h"
>> +
>>  /**
>>   * If the temperature over a period of time High,
>>   * the resulting TSHUT gave CRU module,let it reset the entire chip,
>> @@ -1321,8 +1323,15 @@ static int rockchip_thermal_probe(struct platform=
> _device *pdev)
>>
>>  	thermal->chip->control(thermal->regs, true);
>>
>> -	for (i =3D 0; i < thermal->chip->chn_num; i++)
>> +	for (i =3D 0; i < thermal->chip->chn_num; i++) {
>>  		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
>> +		thermal->sensors[i].tzd->tzp->no_hwmon =3D false;
>> +		error =3D thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
>> +		if (error)
>> +			dev_warn(&pdev->dev,
>> +				 "failed to register sensor %d with hwmon: %d\n",
>> +				 i, error);
>> +	}
>>
>>  	platform_set_drvdata(pdev, thermal);
>>
>> @@ -1344,6 +1353,7 @@ static int rockchip_thermal_remove(struct platform=
> _device *pdev)
>>  	for (i =3D 0; i < thermal->chip->chn_num; i++) {
>>  		struct rockchip_thermal_sensor *sensor =3D &thermal->sensors[i];
>>
>> +		thermal_remove_hwmon_sysfs(sensor->tzd);
>>  		rockchip_thermal_toggle_sensor(sensor, false);
>>  	}
>>
>> --
>> 2.24.0
>>


-- 
 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
