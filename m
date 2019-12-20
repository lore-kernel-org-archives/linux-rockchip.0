From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
Date: Fri, 20 Dec 2019 10:00:43 +0900
Message-ID: <46e629e0-fee4-21a6-3baa-f347ff6417d8@samsung.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
        <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
        <20191220002430.11995-3-cw00.choi@samsung.com>
        <VI1PR04MB70235291D8E40CB6225A0AF0EE2D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <VI1PR04MB70235291D8E40CB6225A0AF0EE2D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Leonard Crestez <leonard.crestez@nxp.com>, "krzk@kernel.org" <krzk@kernel.org>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, "lukasz.luba@arm.com" <lukasz.luba@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>, "a.swigon@samsung.com" <a.swigon@samsung.com>, "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>, "kgene@kernel.org" <kgene@kernel.org>, "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>, "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-rockc
List-Id: linux-rockchip.vger.kernel.org

On 12/20/19 9:46 AM, Leonard Crestez wrote:
> On 20.12.2019 02:18, Chanwoo Choi wrote:
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
>>   drivers/devfreq/exynos-bus.c | 12 +++++++++++-
>>   include/linux/devfreq.h      |  8 --------
>>   3 files changed, 11 insertions(+), 44 deletions(-)
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
>> index 7f5917d59072..1bc4e3c81115 100644
>> --- a/drivers/devfreq/exynos-bus.c
>> +++ b/drivers/devfreq/exynos-bus.c
>> @@ -86,6 +86,16 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
>>   	return ret;
>>   }
>>   
>> +static struct devfreq *exynos_bus_get_parent_devfreq(struct device_node *np)
>> +{
>> +	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
>> +
>> +	if (!node)
>> +		return ERR_PTR(-ENODEV);
>> +
>> +	return devfreq_get_devfreq_by_node(node);
> 
> You need to call of_node_put(node) here and in several other places.
> 
> The old devfreq_get_devfreq_by_phandle API handled this internally but 
> devfreq_get_devfreq_by_node doesn't.

Thanks. I'll fix it.

> 
> Maybe the _by_phandle API could be kept and just take the property name 
> instead of always using "devfreq"?

Do you mean like below?
devfreq_get_devfreq_by_phandle(struct device *dev, int index)
-> devfreq_get_devfreq_by_phandle(struct device *dev, char *property_name, int index)

In case of devfreq-event.c,
struct devfreq_event_dev *devfreq_event_get_edev_by_phandle(
						struct device *dev,
						char property_name,
						int index)
int devfreq_event_get_edev_count(struct device *dev, char *property_name)

> 
>> +}
>> +
>>   /*
>>    * devfreq function for both simple-ondemand and passive governor
>>    */
>> @@ -353,7 +363,7 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
>>   	profile->exit = exynos_bus_passive_exit;
>>   
>>   	/* Get the instance of parent devfreq device */
>> -	parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
>> +	parent_devfreq = exynos_bus_get_parent_devfreq(dev->of_node);
>>   	if (IS_ERR(parent_devfreq))
>>   		return -EPROBE_DEFER;
>>   
>> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
>> index 1dccc47acbce..a4351698fb64 100644
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
>> @@ -413,12 +411,6 @@ static inline struct devfreq *devfreq_get_devfreq_by_node(struct device_node *no
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
