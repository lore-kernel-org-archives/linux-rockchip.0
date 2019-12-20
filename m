From: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
Date: Fri, 20 Dec 2019 00:46:55 +0000
Message-ID: <VI1PR04MB70235291D8E40CB6225A0AF0EE2D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
 <20191220002430.11995-3-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>, "krzk@kernel.org" <krzk@kernel.org>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, "lukasz.luba@arm.com" <lukasz.luba@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>, "a.swigon@samsung.com" <a.swigon@samsung.com>, "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>, "kgene@kernel.org" <kgene@kernel.org>, "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>, "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-rockc
List-Id: linux-rockchip.vger.kernel.org

On 20.12.2019 02:18, Chanwoo Choi wrote:=0A=
> Previously, devfreq core support 'devfreq' property in order to get=0A=
> the devfreq device by phandle. But, 'devfreq' property name is not proper=
=0A=
> on devicetree binding because this name doesn't mean the any h/w attribut=
e.=0A=
> =0A=
> The devfreq core hand over the right to decide the property name=0A=
> for getting the devfreq device on devicetree. Each devfreq driver=0A=
> will decide the property name on devicetree binding and then get=0A=
> the devfreq device by using devfreq_get_devfreq_by_node().=0A=
> =0A=
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>=0A=
> ---=0A=
>   drivers/devfreq/devfreq.c    | 35 -----------------------------------=
=0A=
>   drivers/devfreq/exynos-bus.c | 12 +++++++++++-=0A=
>   include/linux/devfreq.h      |  8 --------=0A=
>   3 files changed, 11 insertions(+), 44 deletions(-)=0A=
> =0A=
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c=0A=
> index cb8ca81c8973..c3d3c7c802a0 100644=0A=
> --- a/drivers/devfreq/devfreq.c=0A=
> +++ b/drivers/devfreq/devfreq.c=0A=
> @@ -991,48 +991,13 @@ struct devfreq *devfreq_get_devfreq_by_node(struct =
device_node *node)=0A=
>   =0A=
>   	return ERR_PTR(-ENODEV);=0A=
>   }=0A=
> -=0A=
> -/*=0A=
> - * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetr=
ee=0A=
> - * @dev - instance to the given device=0A=
> - * @index - index into list of devfreq=0A=
> - *=0A=
> - * return the instance of devfreq device=0A=
> - */=0A=
> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int i=
ndex)=0A=
> -{=0A=
> -	struct device_node *node;=0A=
> -	struct devfreq *devfreq;=0A=
> -=0A=
> -	if (!dev)=0A=
> -		return ERR_PTR(-EINVAL);=0A=
> -=0A=
> -	if (!dev->of_node)=0A=
> -		return ERR_PTR(-EINVAL);=0A=
> -=0A=
> -	node =3D of_parse_phandle(dev->of_node, "devfreq", index);=0A=
> -	if (!node)=0A=
> -		return ERR_PTR(-ENODEV);=0A=
> -=0A=
> -	devfreq =3D devfreq_get_devfreq_by_node(node);=0A=
> -	of_node_put(node);=0A=
> -=0A=
> -	return devfreq;=0A=
> -}=0A=
> -=0A=
>   #else=0A=
>   struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)=
=0A=
>   {=0A=
>   	return ERR_PTR(-ENODEV);=0A=
>   }=0A=
> -=0A=
> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int i=
ndex)=0A=
> -{=0A=
> -	return ERR_PTR(-ENODEV);=0A=
> -}=0A=
>   #endif /* CONFIG_OF */=0A=
>   EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);=0A=
> -EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);=0A=
>   =0A=
>   /**=0A=
>    * devm_devfreq_remove_device() - Resource-managed devfreq_remove_devic=
e()=0A=
> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c=
=0A=
> index 7f5917d59072..1bc4e3c81115 100644=0A=
> --- a/drivers/devfreq/exynos-bus.c=0A=
> +++ b/drivers/devfreq/exynos-bus.c=0A=
> @@ -86,6 +86,16 @@ static int exynos_bus_get_event(struct exynos_bus *bus=
,=0A=
>   	return ret;=0A=
>   }=0A=
>   =0A=
> +static struct devfreq *exynos_bus_get_parent_devfreq(struct device_node =
*np)=0A=
> +{=0A=
> +	struct device_node *node =3D of_parse_phandle(np, "devfreq", 0);=0A=
> +=0A=
> +	if (!node)=0A=
> +		return ERR_PTR(-ENODEV);=0A=
> +=0A=
> +	return devfreq_get_devfreq_by_node(node);=0A=
=0A=
You need to call of_node_put(node) here and in several other places.=0A=
=0A=
The old devfreq_get_devfreq_by_phandle API handled this internally but =0A=
devfreq_get_devfreq_by_node doesn't.=0A=
=0A=
Maybe the _by_phandle API could be kept and just take the property name =0A=
instead of always using "devfreq"?=0A=
=0A=
> +}=0A=
> +=0A=
>   /*=0A=
>    * devfreq function for both simple-ondemand and passive governor=0A=
>    */=0A=
> @@ -353,7 +363,7 @@ static int exynos_bus_profile_init_passive(struct exy=
nos_bus *bus,=0A=
>   	profile->exit =3D exynos_bus_passive_exit;=0A=
>   =0A=
>   	/* Get the instance of parent devfreq device */=0A=
> -	parent_devfreq =3D devfreq_get_devfreq_by_phandle(dev, 0);=0A=
> +	parent_devfreq =3D exynos_bus_get_parent_devfreq(dev->of_node);=0A=
>   	if (IS_ERR(parent_devfreq))=0A=
>   		return -EPROBE_DEFER;=0A=
>   =0A=
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h=0A=
> index 1dccc47acbce..a4351698fb64 100644=0A=
> --- a/include/linux/devfreq.h=0A=
> +++ b/include/linux/devfreq.h=0A=
> @@ -254,8 +254,6 @@ extern void devm_devfreq_unregister_notifier(struct d=
evice *dev,=0A=
>   				struct notifier_block *nb,=0A=
>   				unsigned int list);=0A=
>   extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *=
node);=0A=
> -extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev=
,=0A=
> -						int index);=0A=
>   =0A=
>   #if IS_ENABLED(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)=0A=
>   /**=0A=
> @@ -413,12 +411,6 @@ static inline struct devfreq *devfreq_get_devfreq_by=
_node(struct device_node *no=0A=
>   	return ERR_PTR(-ENODEV);=0A=
>   }=0A=
>   =0A=
> -static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct devi=
ce *dev,=0A=
> -							int index)=0A=
> -{=0A=
> -	return ERR_PTR(-ENODEV);=0A=
> -}=0A=
> -=0A=
>   static inline int devfreq_update_stats(struct devfreq *df)=0A=
>   {=0A=
>   	return -EINVAL;=0A=
> =0A=
=0A=
