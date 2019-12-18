From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 2/9] PM / devfreq: Remove devfreq_get_devfreq_by_phandle
 function
Date: Wed, 18 Dec 2019 11:59:31 +0900
Message-ID: <1967cf03-d1e8-8197-c767-3c8d5f403708@samsung.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
        <CGME20191217055105epcas1p2d2930402a559e381a7854f515a683d15@epcas1p2.samsung.com>
        <20191217055738.28445-3-cw00.choi@samsung.com>
        <VI1PR04MB70231FA16F12ACA3A3C01772EE500@VI1PR04MB7023.eurprd04.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <VI1PR04MB70231FA16F12ACA3A3C01772EE500@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Leonard Crestez <leonard.crestez@nxp.com>, "krzk@kernel.org" <krzk@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "heiko@sntech.de" <heiko@sntech.de>, "lukasz.luba@arm.com" <lukasz.luba@arm.com>, "a.swigon@samsung.com" <a.swigon@samsung.com>, "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>, "kgene@kernel.org" <kgene@kernel.org>, "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>, "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@l>
List-Id: linux-rockchip.vger.kernel.org

On 12/17/19 11:33 PM, Leonard Crestez wrote:
> On 17.12.2019 07:51, Chanwoo Choi wrote:
>> Previously, devfreq core support 'devfreq' property in order to get
>> the devfreq device by phandle. But, 'devfreq' property name is not proper
>> on devicetree binding because this name doesn't mean the any h/w attribute.
>>
>> The devfreq core hand over the right to decide the property name
>> for getting the devfreq device on devicetree. Each devfreq driver
>> will decide the property name on devicetree binding and then get
>> the devfreq device by using devfreq_get_devfreq_by_node().
>>
>> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
>> ---
>>   drivers/devfreq/devfreq.c    | 35 -----------------------------------
>>   drivers/devfreq/exynos-bus.c | 14 ++++++++++++--
>>   include/linux/devfreq.h      |  8 --------
>>   3 files changed, 12 insertions(+), 45 deletions(-)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index cb8ca81c8973..c3d3c7c802a0 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -991,48 +991,13 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>   
>>   	return ERR_PTR(-ENODEV);
>>   }
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
>> -	struct device_node *node;
>> -	struct devfreq *devfreq;
>> -
>> -	if (!dev)
>> -		return ERR_PTR(-EINVAL);
>> -
>> -	if (!dev->of_node)
>> -		return ERR_PTR(-EINVAL);
>> -
>> -	node = of_parse_phandle(dev->of_node, "devfreq", index);
>> -	if (!node)
>> -		return ERR_PTR(-ENODEV);
>> -
>> -	devfreq = devfreq_get_devfreq_by_node(node);
>> -	of_node_put(node);
>> -
>> -	return devfreq;
>> -}
>> -
>>   #else
>>   struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>   {
>>   	return ERR_PTR(-ENODEV);
>>   }
>> -
>> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>> -{
>> -	return ERR_PTR(-ENODEV);
>> -}
>>   #endif /* CONFIG_OF */
>>   EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
>> -EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
>>   
>>   /**
>>    * devm_devfreq_remove_device() - Resource-managed devfreq_remove_device()
>> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
>> index 7f5917d59072..9aac2db956d5 100644
>> --- a/drivers/devfreq/exynos-bus.c
>> +++ b/drivers/devfreq/exynos-bus.c
>> @@ -146,6 +146,16 @@ static int exynos_bus_get_dev_status(struct device *dev,
>>   	return ret;
>>   }
>>   
>> +static struct devfreq *get_parent_devfreq_by_node(struct device_node *np)
>> +{
>> +	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
>> +
>> +	if (!node)
>> +		return ERR_PTR(-ENODEV);
>> +
>> +	return devfreq_get_devfreq_by_node(node);
>> +}
> 
> The _by_node suffix here is confusing because it actually fetches a 
> property of the node unlike devfreq_get_devfreq_by_node. Maybe call this 
> get_parent_devfreq_from_node?
> 
> Since it's a static function it could just be called get_parent_devfreq?

OK.

> 
>> +
>>   static void exynos_bus_exit(struct device *dev)
>>   {
>>   	struct exynos_bus *bus = dev_get_drvdata(dev);
>> @@ -353,8 +363,8 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
>>   	profile->exit = exynos_bus_passive_exit;
>>   
>>   	/* Get the instance of parent devfreq device */
>> -	parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
>> -	if (IS_ERR(parent_devfreq))
>> +	parent_devfreq = get_parent_devfreq_by_node(dev->of_node);
>> +	if (IS_ERR(parent_devfreq)) {
>>   		return -EPROBE_DEFER;
>>   
>>   	passive_data = devm_kzalloc(dev, sizeof(*passive_data), GFP_KERNEL);
>> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
>> index e3633ae43349..3ed96426302e 100644
>> --- a/include/linux/devfreq.h
>> +++ b/include/linux/devfreq.h
>> @@ -254,8 +254,6 @@ extern void devm_devfreq_unregister_notifier(struct device *dev,
>>   				struct notifier_block *nb,
>>   				unsigned int list);
>>   extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node);
>> -extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>> -						int index);
>>   
>>   #if IS_ENABLED(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)
>>   /**
>> @@ -413,12 +411,6 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>   	return ERR_PTR(-ENODEV);
>>   }
>>   
>> -static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>> -							int index)
>> -{
>> -	return ERR_PTR(-ENODEV);
>> -}
>> -
>>   static inline int devfreq_update_stats(struct devfreq *df)
>>   {
>>   	return -EINVAL;
>>
> 
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics
