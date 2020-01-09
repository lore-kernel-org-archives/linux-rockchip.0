From: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
Date: Thu, 9 Jan 2020 19:54:04 +0900
Message-ID: <22cde618-d51e-2d4d-461e-e2d2c1b52af2@samsung.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
        <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
        <20191220002430.11995-3-cw00.choi@samsung.com>
        <b9a1ebe5-e114-3a6b-6081-c794e1341329@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b9a1ebe5-e114-3a6b-6081-c794e1341329-5wv7dgnIgG8@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Lukasz Luba <lukasz.luba-5wv7dgnIgG8@public.gmane.org>, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, krzk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, leonard.crestez-3arQi8VN3Tc@public.gmane.org
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, a.swigon-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, m.szyprowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, kyungmin.park-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, linux-pm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-samsung-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 1/9/20 7:37 PM, Lukasz Luba wrote:
> Hi Chanwoo,
> 
> On 12/20/19 12:24 AM, Chanwoo Choi wrote:
>> Previously, devfreq core support 'devfreq' property in order to get
>> the devfreq device by phandle. But, 'devfreq' property name is not proper
>> on devicetree binding because this name doesn't mean the any h/w attribute.
>>
>> The devfreq core hand over the right to decide the property name
>> for getting the devfreq device on devicetree. Each devfreq driver
>> will decide the property name on devicetree binding and then get
>> the devfreq device by using devfreq_get_devfreq_by_node().
>>
>> Signed-off-by: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
>> ---
>>   drivers/devfreq/devfreq.c    | 35 -----------------------------------
>>   drivers/devfreq/exynos-bus.c | 12 +++++++++++-
>>   include/linux/devfreq.h      |  8 --------
>>   3 files changed, 11 insertions(+), 44 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index cb8ca81c8973..c3d3c7c802a0 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -991,48 +991,13 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>         return ERR_PTR(-ENODEV);
>>   }
>> -
>> -/*
>> - * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
>> - * @dev - instance to the given device
>> - * @index - index into list of devfreq
>> - *
>> - * return the instance of devfreq device
>> - */
>> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>> -{
>> -    struct device_node *node;
>> -    struct devfreq *devfreq;
>> -
>> -    if (!dev)
>> -        return ERR_PTR(-EINVAL);
>> -
>> -    if (!dev->of_node)
>> -        return ERR_PTR(-EINVAL);
>> -
>> -    node = of_parse_phandle(dev->of_node, "devfreq", index);
>> -    if (!node)
>> -        return ERR_PTR(-ENODEV);
>> -
>> -    devfreq = devfreq_get_devfreq_by_node(node);
>> -    of_node_put(node);
>> -
>> -    return devfreq;
>> -}
>> -
>>   #else
>>   struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>   {
>>       return ERR_PTR(-ENODEV);
>>   }
>> -
>> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>> -{
>> -    return ERR_PTR(-ENODEV);
>> -}
>>   #endif /* CONFIG_OF */
>>   EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
>> -EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
>>     /**
>>    * devm_devfreq_remove_device() - Resource-managed devfreq_remove_device()
>> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
>> index 7f5917d59072..1bc4e3c81115 100644
>> --- a/drivers/devfreq/exynos-bus.c
>> +++ b/drivers/devfreq/exynos-bus.c
>> @@ -86,6 +86,16 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
>>       return ret;
>>   }
>>   +static struct devfreq *exynos_bus_get_parent_devfreq(struct device_node *np)
>> +{
>> +    struct device_node *node = of_parse_phandle(np, "devfreq", 0);
>> +
>> +    if (!node)
>> +        return ERR_PTR(-ENODEV);
>> +
>> +    return devfreq_get_devfreq_by_node(node);
>> +}
>> +
>>   /*
>>    * devfreq function for both simple-ondemand and passive governor
>>    */
>> @@ -353,7 +363,7 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
>>       profile->exit = exynos_bus_passive_exit;
>>         /* Get the instance of parent devfreq device */
>> -    parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
>> +    parent_devfreq = exynos_bus_get_parent_devfreq(dev->of_node);
>>       if (IS_ERR(parent_devfreq))
>>           return -EPROBE_DEFER;
>>   
> 
> These changes won't apply, probably I need some base for it.

I developed it on devfreq-next branch[1]
[1] https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/linux.git/log/?h=devfreq-next

And I try to apply these patchset to linux-next[2] with tags/next-20200109.
But, patch10/11 of deviceetree has some merge conflict
because patch[3] related to exynos-bus was merged.
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/
[3] https://patchwork.kernel.org/cover/11303235/
    - [v2,0/2] Exynos5422: fix bus related OPPs for Odroid XU3/XU4/HC1

On next version, I'll rebase it on latest patches.

> 
> Regards,
> Lukasz
> 
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics
