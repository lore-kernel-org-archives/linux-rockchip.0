From: wlf <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] usb: host: xhci: plat: check hcc_params after add hcd
Date: Mon, 16 Jan 2017 14:43:14 +0800
Message-ID: <dccb1439-59a0-d171-5d27-e42b4fae0955@rock-chips.com>
References: <1484277533-30273-1-git-send-email-william.wu@rock-chips.com>
 <cb57648a-857f-8bf1-f885-e6c6717e5776@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cb57648a-857f-8bf1-f885-e6c6717e5776-l0cyMroinI0@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Roger Quadros <rogerq-l0cyMroinI0@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, groeck-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Roger,

在 2017年01月13日 19:02, Roger Quadros 写道:
> Hi,
>
> On 13/01/17 05:18, William Wu wrote:
>> From: William wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>>
>> The commit 4ac53087d6d4 ("usb: xhci: plat: Create both
>> HCDs before adding them") move add hcd to the end of
>> probe, this cause hcc_params uninitiated, because xHCI
>> driver sets hcc_params in xhci_gen_setup() called from
>> usb_add_hcd().
>>
>> This patch checks the Maximum Primary Stream Array Size
>> in the hcc_params register after add hcd.
>>
>> Signed-off-by: William wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> ---
>>   drivers/usb/host/xhci-plat.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
>> index ddfab30..52ce697 100644
>> --- a/drivers/usb/host/xhci-plat.c
>> +++ b/drivers/usb/host/xhci-plat.c
>> @@ -232,9 +232,6 @@ static int xhci_plat_probe(struct platform_device *pdev)
>>   	if (device_property_read_bool(&pdev->dev, "usb3-lpm-capable"))
>>   		xhci->quirks |= XHCI_LPM_SUPPORT;
>>   
>> -	if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
>> -		xhci->shared_hcd->can_do_streams = 1;
>> -
>>   	hcd->usb_phy = devm_usb_get_phy_by_phandle(&pdev->dev, "usb-phy", 0);
>>   	if (IS_ERR(hcd->usb_phy)) {
>>   		ret = PTR_ERR(hcd->usb_phy);
>> @@ -255,6 +252,9 @@ static int xhci_plat_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto dealloc_usb2_hcd;
>>   
>> +	if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
>> +		xhci->shared_hcd->can_do_streams = 1;
>> +
> xhci->hcc_params is initialized after the first usb_add_hcd().
> Should this bit come before the usb_add_hcd(xhci->shared_hcd,..)?
Yes, good idea！I will move it behind the first usb_add_hcd().
>
> You will also need to copy to v4.2+ <stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>. Thanks.
OK, thank you for reminding me!
>
>>   	return 0;
>>   
>>   
>>
> cheers,
> -roger
>
>
>


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
