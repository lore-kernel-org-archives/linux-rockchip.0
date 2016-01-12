From: zhangqing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] regulator: fan53555: fill set_suspend_enable/disable
 callback
Date: Tue, 12 Jan 2016 06:28:31 -0800
Message-ID: <56950D8F.8080902@rock-chips.com>
References: <1452596756-16617-1-git-send-email-zhangqing@rock-chips.com>
 <CAJKOXPcJGFV+jWE4XK_Jt5k=vCcGTOf-7QjR6oW=mFQH8yL7qw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAJKOXPcJGFV+jWE4XK_Jt5k=vCcGTOf-7QjR6oW=mFQH8yL7qw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Krzysztof Kozlowski <k.kozlowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 01/11/2016 09:03 PM, Krzysztof Kozlowski wrote:
> 2016-01-12 20:05 GMT+09:00 zhangqing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>:
>> Setting the set_suspend_enable/disable callback to support
>> enable and disable the dcdc when system is suspend.
>>
>> Signed-off-by: zhangqing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> ---
>>   drivers/regulator/fan53555.c | 18 ++++++++++++++++++
>>   1 file changed, 18 insertions(+)
>>
>> diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
>> index 4940e82..2cb5cc3 100644
>> --- a/drivers/regulator/fan53555.c
>> +++ b/drivers/regulator/fan53555.c
>> @@ -114,6 +114,22 @@ static int fan53555_set_suspend_voltage(struct regulator_dev *rdev, int uV)
>>          return 0;
>>   }
>>
>> +static int fan53555_set_suspend_enable(struct regulator_dev *rdev)
>> +{
>> +       struct fan53555_device_info *di = rdev_get_drvdata(rdev);
>> +
>> +       return regmap_update_bits(di->regmap, di->sleep_reg,
>> +                                 VSEL_BUCK_EN, VSEL_BUCK_EN);
>
> You are just writing the enable_mask (BTW, just use the enable_mask,
> not the value itself in such case) instead of enabling the suspend
> mode. In the disable callback you are just disabling the regulator.
>
> What do you want to achieve with these callbacks?
        return regmap_update_bits(di->regmap, di->sleep_reg,
                                  VSEL_BUCK_EN, VSEL_BUCK_EN);
This callback is setting sleep_reg, setting this dcdc output is enable 
or disable when system enter sleep.
In our system this dcdc need disabled when sleep. But the current 
software not support.

>
> Best regards,
> Krzysztof
>
>> +}
>> +
>> +static int fan53555_set_suspend_disable(struct regulator_dev *rdev)
>> +{
>> +       struct fan53555_device_info *di = rdev_get_drvdata(rdev);
>> +
>> +       return regmap_update_bits(di->regmap, di->sleep_reg,
>> +                                 VSEL_BUCK_EN, 0);
>> +}
>> +
>>   static int fan53555_set_mode(struct regulator_dev *rdev, unsigned int mode)
>>   {
>>          struct fan53555_device_info *di = rdev_get_drvdata(rdev);
>> @@ -192,6 +208,8 @@ static struct regulator_ops fan53555_regulator_ops = {
>>          .set_mode = fan53555_set_mode,
>>          .get_mode = fan53555_get_mode,
>>          .set_ramp_delay = fan53555_set_ramp,
>> +       .set_suspend_enable = fan53555_set_suspend_enable,
>> +       .set_suspend_disable = fan53555_set_suspend_disable,
>>   };
>>
>>   static int fan53555_voltages_setup_fairchild(struct fan53555_device_info *di)
>> --
>> 1.9.1
>>
>>
>
>
>
