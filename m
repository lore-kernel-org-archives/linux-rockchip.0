From: Lukasz Luba <lukasz.luba-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH v2 01/11] PM / devfreq: Add devfreq_get_devfreq_by_node
 function
Date: Thu, 9 Jan 2020 09:47:31 +0000
Message-ID: <71da0ef9-1e72-dddc-dcb4-e4cb28b67183@arm.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4bbbcf6a84c09229db0ddae86be294405@epcas1p4.samsung.com>
 <20191220002430.11995-2-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20191220002430.11995-2-cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, krzk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, leonard.crestez-3arQi8VN3Tc@public.gmane.org
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, a.swigon-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, m.szyprowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, kyungmin.park-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, linux-pm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-samsung-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chanwoo,


On 12/20/19 12:24 AM, Chanwoo Choi wrote:
> From: Leonard Crestez <leonard.crestez-3arQi8VN3Tc@public.gmane.org>
> 
> Split off part of devfreq_get_devfreq_by_phandle into a separate
> function. This allows callers to fetch devfreq instances by enumerating
> devicetree instead of explicit phandles.
> 
> [lkp: Reported the build error]
> Reported-by: kbuild test robot <lkp-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Leonard Crestez <leonard.crestez-3arQi8VN3Tc@public.gmane.org>
> [cw00.choi: Export devfreq_get_devfreq_by_node function and
>   add function to devfreq.h when CONFIG_PM_DEVFREQ is enabled.]
> Signed-off-by: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
> ---
>   drivers/devfreq/devfreq.c | 46 +++++++++++++++++++++++++++++----------
>   include/linux/devfreq.h   |  6 +++++
>   2 files changed, 41 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 89260b17598f..cb8ca81c8973 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -966,6 +966,32 @@ struct devfreq *devm_devfreq_add_device(struct device *dev,
>   EXPORT_SYMBOL(devm_devfreq_add_device);
>   
>   #ifdef CONFIG_OF
> +/*
> + * devfreq_get_devfreq_by_node - Get the devfreq device from devicetree
> + * @node - pointer to device_node
> + *
> + * return the instance of devfreq device
> + */
> +struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
> +{
> +	struct devfreq *devfreq;
> +
> +	if (!node)
> +		return ERR_PTR(-EINVAL);
> +
> +	mutex_lock(&devfreq_list_lock);
> +	list_for_each_entry(devfreq, &devfreq_list, node) {
> +		if (devfreq->dev.parent
> +			&& devfreq->dev.parent->of_node == node) {
> +			mutex_unlock(&devfreq_list_lock);
> +			return devfreq;
> +		}
> +	}
> +	mutex_unlock(&devfreq_list_lock);
> +
> +	return ERR_PTR(-ENODEV);
> +}
> +
>   /*
>    * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
>    * @dev - instance to the given device
> @@ -988,26 +1014,24 @@ struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>   	if (!node)
>   		return ERR_PTR(-ENODEV);
>   
> -	mutex_lock(&devfreq_list_lock);
> -	list_for_each_entry(devfreq, &devfreq_list, node) {
> -		if (devfreq->dev.parent
> -			&& devfreq->dev.parent->of_node == node) {
> -			mutex_unlock(&devfreq_list_lock);
> -			of_node_put(node);
> -			return devfreq;
> -		}
> -	}
> -	mutex_unlock(&devfreq_list_lock);
> +	devfreq = devfreq_get_devfreq_by_node(node);
>   	of_node_put(node);
>   
> -	return ERR_PTR(-EPROBE_DEFER);
> +	return devfreq;
>   }
> +
>   #else
> +struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> +
>   struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>   {
>   	return ERR_PTR(-ENODEV);
>   }
>   #endif /* CONFIG_OF */
> +EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
>   EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
>   
>   /**
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
> index c6f82d4bec9f..1dccc47acbce 100644
> --- a/include/linux/devfreq.h
> +++ b/include/linux/devfreq.h
> @@ -253,6 +253,7 @@ extern void devm_devfreq_unregister_notifier(struct device *dev,
>   				struct devfreq *devfreq,
>   				struct notifier_block *nb,
>   				unsigned int list);
> +extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node);

It can go without 'extern' in the header.

>   extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>   						int index);
>   
> @@ -407,6 +408,11 @@ static inline void devm_devfreq_unregister_notifier(struct device *dev,
>   {
>   }
>   
> +static inline struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> +
>   static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>   							int index)
>   {
> 

Apart from this minor thing, looks good to me.
When you fix it, feel free to add

Reviewed-by: Lukasz Luba <lukasz.luba-5wv7dgnIgG8@public.gmane.org>

Regards,
Lukasz
