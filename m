From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: Explicitly disable ADC on
 probe
Date: Tue, 26 Jul 2016 14:48:29 +0800
Message-ID: <579707BD.8060800@rock-chips.com>
References: <1469475540-26855-1-git-send-email-linux@roeck-us.net> <5796D036.1060101@rock-chips.com> <5796D792.4080407@roeck-us.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5796D792.4080407@roeck-us.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Guenter Roeck <linux@roeck-us.net>, Jonathan Cameron <jic23@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Caesar Wang <wxt@rock-chips.com>, linux-iio@vger.kernel.org, linux-rockchip@lists.infradead.org, dianders@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


On 2016=E5=B9=B407=E6=9C=8826=E6=97=A5 11:22, Guenter Roeck wrote:
> On 07/25/2016 07:51 PM, Caesar Wang wrote:
>> Hi Guenter,
>>
>> Thanks for fixing it.
>>
>> On 2016=E5=B9=B407=E6=9C=8826=E6=97=A5 03:39, Guenter Roeck wrote:
>>> If the ADC is read for the first time, the caller gets a timeout er=
ror,
>>> and the kernel log shows
>>>
>>> read channel() error: -110
>>>
>>> The ADC may be enabled on boot, and needs to be explicitly disabled
>>> for a read sequence to work (otherwise there is no completion=20
>>> interrupt).
>>> Disaple it explicitly in the probe function.
>>>
>>> Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
>>> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
>>> ---
>>>   drivers/iio/adc/rockchip_saradc.c | 3 +++
>>>   1 file changed, 3 insertions(+)
>>>
>>> diff --git a/drivers/iio/adc/rockchip_saradc.c=20
>>> b/drivers/iio/adc/rockchip_saradc.c
>>> index f9ad6c2d6821..6aa3271d86b5 100644
>>> --- a/drivers/iio/adc/rockchip_saradc.c
>>> +++ b/drivers/iio/adc/rockchip_saradc.c
>>> @@ -280,6 +280,9 @@ static int rockchip_saradc_probe(struct=20
>>> platform_device *pdev)
>>>           goto err_pclk;
>>>       }
>>> +    /* Make sure ADC is disabled */
>>> +    writel_relaxed(0, info->regs + SARADC_CTRL);
>>
>> I think we should reset the saradc controller.
>> Since make sure the reset value is 0 and loader-->kernel may even=20
>> cause harm, as my experience on tsadc.=20
>> (drivers/thermal/rockchip_thermal.c)
>>
>>
>> e.g.:
>> /**
>> * Reset SARADC Controller, reset all saradc registers.
>> */
>> static void rockchip_saradc_reset_controller(struct reset_control=20
>> *reset)
>> {
>> reset_control_assert(reset);
>> usleep_range(10, 20);
>> reset_control_deassert(reset);
>> }
>>
>> ..probe()
>> {
>> ...
>> rockchip_saradc_reset_controller();
>> ...
>> }
>>
>
> Ok, I'll give it a try.
>

I posted it on https://patchwork.kernel.org/patch/9247661/


> Guenter
>
>>
>> -
>> Caesar
>>
>>> +
>>>       platform_set_drvdata(pdev, indio_dev);
>>>       indio_dev->name =3D dev_name(&pdev->dev);
>>
>>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


--=20
caesar wang | software engineer | wxt@rock-chip.com
