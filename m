From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH v5 3/6] rockchip: power-domain: add support for sub-power
 domains
Date: Tue, 8 Mar 2016 18:41:36 +0800
Message-ID: <56DEAC60.9000803@gmail.com>
References: <1456992233-25164-1-git-send-email-zhangqing@rock-chips.com>
 <1456992233-25164-4-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1456992233-25164-4-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>, wxt@rock-chips.com
Cc: heiko@sntech.de, khilman@baylibre.com, huangtao@rock-chips.com, xxx@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, zyw@rock-chips.com, jay.xu@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



=E5=9C=A8 2016=E5=B9=B403=E6=9C=8803=E6=97=A5 16:03, Elaine Zhang =E5=86=
=99=E9=81=93:
> This patch adds support for making one power domain a sub-domain of
> other domain. This is useful for modeling power dependences,
> which needs to have more than one power domain enabled to be operatio=
nal.
>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>   drivers/soc/rockchip/pm_domains.c | 64 ++++++++++++++++++++++++++++=
+++++++++++
>   1 file changed, 64 insertions(+)
>
> diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip=
/pm_domains.c
> index 0465a06..1777e8e 100644
> --- a/drivers/soc/rockchip/pm_domains.c
> +++ b/drivers/soc/rockchip/pm_domains.c
> @@ -370,6 +370,63 @@ static void rockchip_configure_pd_cnt(struct roc=
kchip_pmu *pmu,
>   	regmap_write(pmu->regmap, domain_reg_offset + 4, count);
>   }
>  =20
> +static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
> +				     struct device_node *parent)
> +{
[...]
> +		child_domain =3D pmu->genpd_data.domains[idx];
> +
> +		if (pm_genpd_add_subdomain(parent_domain, child_domain)) {
> +			dev_err(pmu->dev, "%s failed to add subdomain: %s\n",
> +				parent_domain->name, child_domain->name);
> +			goto err_out;
> +		} else {
> +			dev_info(pmu->dev, "%s add subdomain: %s\n",
> +				parent_domain->name, child_domain->name);
> +		}

s/dev_info/dev_dbg

CHECK: Alignment should match open parenthesis

#416: FILE: drivers/soc/rockchip/pm_domains.c:416:
+            dev_info(pmu->dev, "%s add subdomain: %s\n",
+                parent_domain->name, child_domain->name);

> +
> +		error =3D rockchip_pm_add_subdomain(pmu, np);
> +		if (error < 0)
> +			goto rm_sub_domain;
> +	}
> +	return 0;
> +
> +err_out:
> +	of_node_put(parent);
> +	of_node_put(np);
> +	return -EINVAL;
> +rm_sub_domain:
> +	pm_genpd_remove_subdomain(parent_domain, child_domain);
> +	return error;
> +}
> +
>   static int rockchip_pm_domain_probe(struct platform_device *pdev)
>   {
>   	struct device *dev =3D &pdev->dev;
> @@ -440,6 +497,13 @@ static int rockchip_pm_domain_probe(struct platf=
orm_device *pdev)
>   			of_node_put(node);
>   			goto err_out;
>   		}
> +
> +		error =3D rockchip_pm_add_subdomain(pmu, node);
> +		if (error < 0) {
> +			dev_err(dev, "failed to handle subdomain node %s: %d\n",
> +				node->name, error);
> +			goto err_out;
> +		}
>   	}
>  =20
>   	if (error) {


--=20
Thanks,
Caesar
