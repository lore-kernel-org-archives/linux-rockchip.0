From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: Explicitly disable ADC on
 probe
Date: Mon, 25 Jul 2016 20:22:58 -0700
Message-ID: <5796D792.4080407@roeck-us.net>
References: <1469475540-26855-1-git-send-email-linux@roeck-us.net>
 <5796D036.1060101@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <5796D036.1060101-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 07/25/2016 07:51 PM, Caesar Wang wrote:
> Hi Guenter,
>
> Thanks for fixing it.
>
> On 2016=E5=B9=B407=E6=9C=8826=E6=97=A5 03:39, Guenter Roeck wrote:
>> If the ADC is read for the first time, the caller gets a timeout err=
or,
>> and the kernel log shows
>>
>> read channel() error: -110
>>
>> The ADC may be enabled on boot, and needs to be explicitly disabled
>> for a read sequence to work (otherwise there is no completion interr=
upt).
>> Disaple it explicitly in the probe function.
>>
>> Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
>> Signed-off-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
>> ---
>>   drivers/iio/adc/rockchip_saradc.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/roc=
kchip_saradc.c
>> index f9ad6c2d6821..6aa3271d86b5 100644
>> --- a/drivers/iio/adc/rockchip_saradc.c
>> +++ b/drivers/iio/adc/rockchip_saradc.c
>> @@ -280,6 +280,9 @@ static int rockchip_saradc_probe(struct platform=
_device *pdev)
>>           goto err_pclk;
>>       }
>> +    /* Make sure ADC is disabled */
>> +    writel_relaxed(0, info->regs + SARADC_CTRL);
>
> I think we should reset the saradc controller.
> Since make sure the reset value is 0 and loader-->kernel may even cau=
se harm, as my experience on tsadc. (drivers/thermal/rockchip_thermal.c=
)
>
>
> e.g.:
> /**
> * Reset SARADC Controller, reset all saradc registers.
> */
> static void rockchip_saradc_reset_controller(struct reset_control *re=
set)
> {
> reset_control_assert(reset);
> usleep_range(10, 20);
> reset_control_deassert(reset);
> }
>
> ..probe()
> {
> ...
> rockchip_saradc_reset_controller();
> ...
> }
>

Ok, I'll give it a try.

Guenter

>
> -
> Caesar
>
>> +
>>       platform_set_drvdata(pdev, indio_dev);
>>       indio_dev->name =3D dev_name(&pdev->dev);
>
>
