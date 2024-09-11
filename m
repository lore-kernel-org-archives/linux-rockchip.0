Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08E99EE4983
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 09:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OK21X4kb88rX6FB+bB/EX2TVn2D2Y/Y/WWnJFKDTeVQ=; b=RnSSjiT3yUL0HK
	R3PB2LzJh2nt2HdyIAzw0EfRb54/CKceZfO68o2UTbk1xPS+zi4VNGMIaLW6qAuKcADIqAFgWgTz3
	szy1UJnER1KQdmwyxmU6jjiaCZJ6S8ow0JGuxft25mDfbtn7/LUxiJJccyGbQuvDcywUsGS8B9Cnt
	xBd6pRTYAdn9io7sX8SEogxibmTN2lvWr5UYms84RrhVSYdMqdPCjS/eMKvsJdfS3KtVNkO7C0jqo
	MZIlKrB71vOC5tBgJLlWkMZmLPOpIn/CVf8undnIZU/l6/Qaz1nUY2d4FfkF9Wa47TBBp2EKCJj4V
	126BR9USXxZ0fuOU2smQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soJu1-00000008yRD-2RCu;
	Wed, 11 Sep 2024 09:44:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soJtz-00000008yQN-2OxU
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 09:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nNb8FNqNc1pyiluz5XbOkdKPgdGwdFZnKD4YbayYcKs=; b=0V366jw6uETJ6sjPeanMRDucm+
	KrBb5CGgRh9DKb3D32v1lzPu7ijmHE0reQ/aCu7F7N7qHMySUIWoGnKl2ATRnBNcI5lHIa9uZICYR
	7fsDvCepVe12TFIMtdmvoZxlOAq4toPvNzNjainKXSAQf8B01wtHuNL214MmPrjN+yL261N13HXkn
	kj7bmqygquwI+rKjI/jzEinxLorz7gbatnySNjIzbz97p1hDS7CUrHRONpJ9IPLg8y8/ntYgbJlfN
	/mHdB9GKw3yBBqEq8GU5kbAFWSJgJh/harGnIdSFfz2DJM/41t5/qApYNveETrxf65zZltPzvTW/l
	eB0ODdKg==;
Received: from i53875a03.versanet.de ([83.135.90.3] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1soJtk-0007oi-Kw; Wed, 11 Sep 2024 11:44:28 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 Chen-Yu Tsai <wenst@chromium.org>
Subject: Re: [PATCH v1 5/6] pmdomain: rockchip: add regulator support
Date: Wed, 11 Sep 2024 11:46:58 +0200
Message-ID: <2224005.vXnMlVU4IS@diego>
In-Reply-To: <20240910180530.47194-6-sebastian.reichel@collabora.com>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
 <20240910180530.47194-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_024443_666320_0E5E62D9 
X-CRM114-Status: GOOD (  29.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 10. September 2024, 19:57:14 CEST schrieb Sebastian Reichel:
> Some power domains require extra voltages to be applied. For example
> trying to enable the GPU domain on RK3588 fails when the SoC does not
> have VDD GPU enabled.
> 
> The solution to temporarily change the device's device tree node has
> been taken over from the Mediatek power domain driver.
> 
> The regulator is not acquired at probe time, since that creates circular
> dependencies. The power domain driver must be probed early, since SoC
> peripherals need it. Regulators on the other hand depend on SoC
> peripherals like SPI, I2C or GPIO.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

It does look like Chen-Yu Tsai is working on a similar problem [0].

I.e. this really is a hack, so I started looking around the regulator API
and found of_regulator_bulk_get existing but unused that already
operates on a of-node.

Googling further I stumbled upon the linked patch from some days
ago ;-) . So maybe that could be a cleaner way forward?


[0] https://patchwork.kernel.org/project/linux-mediatek/patch/20240904090016.2841572-6-wenst@chromium.org/

> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 57 +++++++++++++++++++++++++-
>  1 file changed, 55 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 663d390faaeb..ae6990897928 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -18,6 +18,7 @@
>  #include <linux/of_clk.h>
>  #include <linux/clk.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
>  #include <linux/mfd/syscon.h>
>  #include <soc/rockchip/pm_domains.h>
>  #include <dt-bindings/power/px30-power.h>
> @@ -89,6 +90,8 @@ struct rockchip_pm_domain {
>  	u32 *qos_save_regs[MAX_QOS_REGS_NUM];
>  	int num_clks;
>  	struct clk_bulk_data *clks;
> +	struct device_node *node;
> +	struct regulator *supply;
>  };
>  
>  struct rockchip_pmu {
> @@ -571,18 +574,67 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
>  	return 0;
>  }
>  
> +static int rockchip_pd_regulator_disable(struct rockchip_pm_domain *pd)
> +{
> +	return pd->supply ? regulator_disable(pd->supply) : 0;
> +}
> +
> +
> +static int rockchip_pd_regulator_enable(struct rockchip_pm_domain *pd)
> +{
> +	struct rockchip_pmu *pmu = pd->pmu;
> +	struct device_node *main_node;
> +
> +	if (!pd->supply) {
> +		/*
> +		 * Find regulator in current power domain node.
> +		 * devm_regulator_get() finds regulator in a node and its child
> +		 * node, so set of_node to current power domain node then change
> +		 * back to original node after regulator is found for current
> +		 * power domain node.
> +		 */
> +		main_node = pmu->dev->of_node;
> +		pmu->dev->of_node = pd->node;
> +		pd->supply = devm_regulator_get(pmu->dev, "domain");
> +		pmu->dev->of_node = main_node;
> +		if (IS_ERR(pd->supply)) {
> +			pd->supply = NULL;
> +			return 0;
> +		}
> +	}
> +
> +	return regulator_enable(pd->supply);
> +}
> +
>  static int rockchip_pd_power_on(struct generic_pm_domain *domain)
>  {
>  	struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
> +	int ret;
> +
> +	ret = rockchip_pd_regulator_enable(pd);
> +	if (ret) {
> +		dev_err(pd->pmu->dev, "Failed to enable supply: %d\n", ret);
> +		return ret;
> +	}
>  
> -	return rockchip_pd_power(pd, true);
> +	ret = rockchip_pd_power(pd, true);
> +	if (ret)
> +		rockchip_pd_regulator_disable(pd);
> +
> +	return ret;
>  }
>  
>  static int rockchip_pd_power_off(struct generic_pm_domain *domain)
>  {
>  	struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
> +	int ret;
>  
> -	return rockchip_pd_power(pd, false);
> +	ret = rockchip_pd_power(pd, false);
> +	if (ret)
> +		return ret;
> +
> +	rockchip_pd_regulator_disable(pd);
> +	return ret;
>  }
>  
>  static int rockchip_pd_attach_dev(struct generic_pm_domain *genpd,
> @@ -663,6 +715,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
>  
>  	pd->info = pd_info;
>  	pd->pmu = pmu;
> +	pd->node = node;
>  
>  	pd->num_clks = of_clk_get_parent_count(node);
>  	if (pd->num_clks > 0) {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
