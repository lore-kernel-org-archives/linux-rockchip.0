From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Subject: Re: [PATCH] regulator: fan53555: fill set_suspend_enable/disable
 callback
Date: Tue, 12 Jan 2016 16:09:34 +0900
Message-ID: <5694A6AE.8040404@samsung.com>
References: <1452596756-16617-1-git-send-email-zhangqing@rock-chips.com>
 <CAJKOXPcJGFV+jWE4XK_Jt5k=vCcGTOf-7QjR6oW=mFQH8yL7qw@mail.gmail.com>
 <56950D8F.8080902@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <56950D8F.8080902@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: zhangqing <zhangqing@rock-chips.com>
Cc: heiko@sntech.de, lgirdwood@gmail.com, broonie@kernel.org, huangtao@rock-chips.com, zyw@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 12.01.2016 23:28, zhangqing wrote:
> 
> 
> On 01/11/2016 09:03 PM, Krzysztof Kozlowski wrote:
>> 2016-01-12 20:05 GMT+09:00 zhangqing <zhangqing@rock-chips.com>:
>>> Setting the set_suspend_enable/disable callback to support
>>> enable and disable the dcdc when system is suspend.
>>>
>>> Signed-off-by: zhangqing <zhangqing@rock-chips.com>
>>> ---
>>>   drivers/regulator/fan53555.c | 18 ++++++++++++++++++
>>>   1 file changed, 18 insertions(+)
>>>
>>> diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
>>> index 4940e82..2cb5cc3 100644
>>> --- a/drivers/regulator/fan53555.c
>>> +++ b/drivers/regulator/fan53555.c
>>> @@ -114,6 +114,22 @@ static int fan53555_set_suspend_voltage(struct
>>> regulator_dev *rdev, int uV)
>>>          return 0;
>>>   }
>>>
>>> +static int fan53555_set_suspend_enable(struct regulator_dev *rdev)
>>> +{
>>> +       struct fan53555_device_info *di = rdev_get_drvdata(rdev);
>>> +
>>> +       return regmap_update_bits(di->regmap, di->sleep_reg,
>>> +                                 VSEL_BUCK_EN, VSEL_BUCK_EN);
>>
>> You are just writing the enable_mask (BTW, just use the enable_mask,
>> not the value itself in such case) instead of enabling the suspend
>> mode. In the disable callback you are just disabling the regulator.
>>
>> What do you want to achieve with these callbacks?
>        return regmap_update_bits(di->regmap, di->sleep_reg,
>                                  VSEL_BUCK_EN, VSEL_BUCK_EN);
> This callback is setting sleep_reg, setting this dcdc output is enable
> or disable when system enter sleep.
> In our system this dcdc need disabled when sleep. But the current
> software not support.
> 

I missed that the register is different - sleep_reg instead of
enable_reg. It makes sense and as this is separate register then usage
of desc->enable_mask is up to you, I think.

Reviewed-by: Krzysztof Kozlowski <k.kozlowski@samsung.com>

Best regards,
Krzysztof
