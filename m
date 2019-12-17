From: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 2/9] PM / devfreq: Remove devfreq_get_devfreq_by_phandle
 function
Date: Tue, 17 Dec 2019 14:33:52 +0000
Message-ID: <VI1PR04MB70231FA16F12ACA3A3C01772EE500@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055105epcas1p2d2930402a559e381a7854f515a683d15@epcas1p2.samsung.com>
 <20191217055738.28445-3-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>, "krzk@kernel.org" <krzk@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "heiko@sntech.de" <heiko@sntech.de>, "lukasz.luba@arm.com" <lukasz.luba@arm.com>, "a.swigon@samsung.com" <a.swigon@samsung.com>, "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>, "kgene@kernel.org" <kgene@kernel.org>, "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>, "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@l>
List-Id: linux-rockchip.vger.kernel.org

On 17.12.2019 07:51, Chanwoo Choi wrote:=0A=
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
>   drivers/devfreq/exynos-bus.c | 14 ++++++++++++--=0A=
>   include/linux/devfreq.h      |  8 --------=0A=
>   3 files changed, 12 insertions(+), 45 deletions(-)=0A=
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
> index 7f5917d59072..9aac2db956d5 100644=0A=
> --- a/drivers/devfreq/exynos-bus.c=0A=
> +++ b/drivers/devfreq/exynos-bus.c=0A=
> @@ -146,6 +146,16 @@ static int exynos_bus_get_dev_status(struct device *=
dev,=0A=
>   	return ret;=0A=
>   }=0A=
>   =0A=
> +static struct devfreq *get_parent_devfreq_by_node(struct device_node *np=
)=0A=
> +{=0A=
> +	struct device_node *node =3D of_parse_phandle(np, "devfreq", 0);=0A=
> +=0A=
> +	if (!node)=0A=
> +		return ERR_PTR(-ENODEV);=0A=
> +=0A=
> +	return devfreq_get_devfreq_by_node(node);=0A=
> +}=0A=
=0A=
The _by_node suffix here is confusing because it actually fetches a =0A=
property of the node unlike devfreq_get_devfreq_by_node. Maybe call this =
=0A=
get_parent_devfreq_from_node?=0A=
=0A=
Since it's a static function it could just be called get_parent_devfreq?=0A=
=0A=
> +=0A=
>   static void exynos_bus_exit(struct device *dev)=0A=
>   {=0A=
>   	struct exynos_bus *bus =3D dev_get_drvdata(dev);=0A=
> @@ -353,8 +363,8 @@ static int exynos_bus_profile_init_passive(struct exy=
nos_bus *bus,=0A=
>   	profile->exit =3D exynos_bus_passive_exit;=0A=
>   =0A=
>   	/* Get the instance of parent devfreq device */=0A=
> -	parent_devfreq =3D devfreq_get_devfreq_by_phandle(dev, 0);=0A=
> -	if (IS_ERR(parent_devfreq))=0A=
> +	parent_devfreq =3D get_parent_devfreq_by_node(dev->of_node);=0A=
> +	if (IS_ERR(parent_devfreq)) {=0A=
>   		return -EPROBE_DEFER;=0A=
>   =0A=
>   	passive_data =3D devm_kzalloc(dev, sizeof(*passive_data), GFP_KERNEL);=
=0A=
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h=0A=
> index e3633ae43349..3ed96426302e 100644=0A=
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
> @@ -413,12 +411,6 @@ struct devfreq *devfreq_get_devfreq_by_node(struct d=
evice_node *node)=0A=
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
