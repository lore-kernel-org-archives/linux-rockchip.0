Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3741DD2CE17
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Dec 2025 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HNEG/XcXLtC/iQYhJupi6t4MlVCmJUFxnvfqyV7Myw=; b=4elJ4WwBBAXL20
	giR2uWBjCSAANRP4/v5AOXoj3gkmE7YlfFqDa0DNzxmtw0LI67+gtL0x1RA2pJdxuewEIii1yy/1r
	WnDG0EDIPltS6L5LddSyegHNfT1f4emn+Pbf5XzYHGGqmIWVJZSb2ObbYOuxdWzRnb5TIrjgneJQ4
	/PvaE46UHLtaGpzmHKGVNySLkX5OawIvgmit9j7vojMDfdjjo6uljnfsj77SGoADUiueEW1PFwzI9
	15uckZDfIFDOj1wlPCkJ2JqfIHNitB1f5opN5LKsypW1KwneEYs0g90i8oUpaojFkSxBuXnmZnl4x
	rxspELvrV4hMoYvuMqcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSRlH-0000000CWbr-2wkj;
	Mon, 08 Dec 2025 03:18:07 +0000
Received: from mail-m49251.qiye.163.com ([45.254.49.251])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSRlD-0000000CWbM-28ZD
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Dec 2025 03:18:06 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2c55f01cb;
	Mon, 8 Dec 2025 11:17:59 +0800 (GMT+08:00)
Message-ID: <27dff4a5-1e9d-458d-936a-941c3f10c139@rock-chips.com>
Date: Mon, 8 Dec 2025 11:17:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON
 before regulator ready
To: Frank Zhang <rmxpzlb@gmail.com>
Cc: ulf.hansson@linaro.org, heiko@sntech.de,
 Quentin Schulz <quentin.schulz@cherry.de>,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251205064739.20270-1-rmxpzlb@gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20251205064739.20270-1-rmxpzlb@gmail.com>
X-HM-Tid: 0a9afbf74a8003abkunm5f783d0527a9bb2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhkZQlZCHx4fTRgdSUNNH0lWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=AGBNPbqC2bNDmPm7K0v/fuotV9dWhP34C9k6XFs0UxgTlVR0ZgpTogpHzatNY5iVXPAKXBO26ueuwrHui7Mtsf9GYPD+W8644XOs2H0u8fMMgDbBcx3PCXmbi1myE8KsN2LMw2kvfzhO9ctVpkQWQgCYnSHttxxr2vMgtAkTmc4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=1Hv4tC4zreaZB0KkuD0NA2HKLqwbNxwKjVQcNBrPpT4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_191804_950564_7A07B253 
X-CRM114-Status: GOOD (  15.27  )
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

On 12/5/2025 2:47 PM, Frank Zhang wrote:
> RK3588_PD_NPU initialize as GENPD_STATE_ON before regulator ready.
> rknn_iommu initlized success and suspend RK3588_PD_NPU. When rocket
> driver register, it will resume rknn_iommu.
> 
> If regulator is still not ready at this point, rknn_iommu resume fail,
> pm runtime status will be error: -EPROBE_DEFER.
> 
> This patch check regulator when pmdomain init, if regulator is not ready
> or not enabled, power off pmdomain. Consumer device can power on it's
> pmdomain after regulator ready
> 
> Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 1955c6d453e4..bc69f5d840e6 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -659,6 +659,11 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
>  	return ret;
>  }
>  
> +static bool rockchip_pd_regulator_is_enabled(struct rockchip_pm_domain *pd)
> +{
> +	return IS_ERR_OR_NULL(pd->supply) ? false : regulator_is_enabled(pd->supply);
> +}
> +
>  static int rockchip_pd_regulator_disable(struct rockchip_pm_domain *pd)
>  {
>  	return IS_ERR_OR_NULL(pd->supply) ? 0 : regulator_disable(pd->supply);
> @@ -861,6 +866,15 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
>  		pd->genpd.name = pd->info->name;
>  	else
>  		pd->genpd.name = kbasename(node->full_name);
> +
> +	if (pd->info->need_regulator) {
> +		if (IS_ERR_OR_NULL(pd->supply))
> +			pd->supply = devm_of_regulator_get(pmu->dev, pd->node, "domain");
> +
> +		if (!rockchip_pd_regulator_is_enabled(pd))
> +			rockchip_pd_power(pd, false);
> +	}
> +
>  	pd->genpd.power_off = rockchip_pd_power_off;
>  	pd->genpd.power_on = rockchip_pd_power_on;
>  	pd->genpd.attach_dev = rockchip_pd_attach_dev;
> 

@Quentin, Could you please try this patch? This should resolve the
problem you're currently facing where the NPU fails to work in
built-in module.

Tested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
