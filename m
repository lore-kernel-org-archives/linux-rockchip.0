Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4A6ED1CDC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 13:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNUOimAQaAUwyf3uVy20lUZ06zYcDR4Gyetv4r8EvyU=; b=H9XXoZIJctgUYI
	Y6+GnaPH1mXsQN4FFgEI4kHcqov6i9Y0QSPgTlqXQnSizEWIcR0nnrXnPBELl/Y7aHk2Ig8dPfOhN
	rFoRwXYP/BACvWMSEreMAxJ5VRFslgTqtqFc+xWioyGgaWrC1plYYGAHBFCY6bVis/cope0I18/d7
	cXJ6hzRyKaLkzAvsf1WH4CtGejRgOee9+xQq8g0xXkQiY71rXUpg2J6nVGvYe5i8h5rAigRXONjBE
	kdDLXNRebe/wCRI4ni4a/COOYReqIuNB7YaydO5IMAarguhaztYCMP5rs4ZrkWfK/mOPHCn+ujBOA
	5wVUBTVs3EnRMqw24IKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxWC-0000000EJC2-1Lrv;
	Tue, 09 Dec 2025 13:12:40 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxWA-0000000EJBi-0fV7
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Dec 2025 13:12:39 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765285953; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=EP3gl1HtjAikaBh1CO1Kep2Nj3jc9FjNjGtFwUKAty72pa0fpCk/WPXupo5dL550hI88HkOEcF9gPykS/vGSaWJJuz34lT4E13IxpZO58HaLT9+CHTqyVQx3QKRVI/g/ZyG2pDNCQggcphonRxtJUdpaLcrKNPH9p55qCdbB8F0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765285953; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=f1mS5C1si6nIV3IMrI1+Ba/oe6Jwxki2TBn7BTMbMCk=; 
	b=DvEdcl3asa9wBqpMIeGilHm7Y5gx24RxdSFUQt4SshWTwYUUDpsVa3xhATzpQ255FPq3bhUlnuIzgBhS1dZcInAT5USq/Ge0hjbVtB4r8ncA6GQ5qqCCvnre2F5bPU2ElXeDWvaqpP6+BjhvM7SdHXRunVFIA/PObCSgOWsC+iw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765285953;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=f1mS5C1si6nIV3IMrI1+Ba/oe6Jwxki2TBn7BTMbMCk=;
	b=JGLBbjveMVT1J09F5GULTP1n3QWA7Aph2VwQtiuOkDdJSEoc6xAeqcYoTSkhjcpY
	YkqvFZFaHg2Xh3Y+YN9qH9sDi+oHH9lUi3YRBPIR9yrRxmBaP19uCqNjP+7Noqqy+/t
	v2+6NqZ9aOdgXzudM9ORbBy50I7rbdL2KCFbfs8c=
Received: by mx.zohomail.com with SMTPS id 1765285950647233.28454600518887;
	Tue, 9 Dec 2025 05:12:30 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 9ED15180580; Tue, 09 Dec 2025 22:12:22 +0900 (JST)
Date: Tue, 9 Dec 2025 22:12:22 +0900
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Frank Zhang <rmxpzlb@gmail.com>
Cc: ulf.hansson@linaro.org, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON
 before regulator ready
Message-ID: <nokcp3ky37sdonx2kaqnmtr2pdqwoifrtpam7tqqygldl32tec@y2p3tcnd3bxa>
References: <20251205064739.20270-1-rmxpzlb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251205064739.20270-1-rmxpzlb@gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_051238_375966_9172B249 
X-CRM114-Status: GOOD (  22.56  )
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

Hi,

On Fri, Dec 05, 2025 at 02:47:39PM +0800, Frank Zhang wrote:
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

It is extremly unlikely, that you will be able to get the regulator
at driver probe time. The typical regulator for NPU or GPU is
connected via SPI or I2C, which will only be available after the
power domain driver has been probed. So I suppose this could be
simplified as:

--------------------------------------------
/*
 * power domain's needing a regulator should default to off, since
 * the regulator state is unknown at probe time. Also the regulator
 * state cannot be checked, since that usually requires IP needing
 * (a different) power domain.
 */
if (pd->info->need_regulator)
    rockchip_pd_power(pd, false);
--------------------------------------------

I think the proper fix would be to add support for registering the
regulator needing power-domain's delayed and then enforce requesting
the regulator at probe time. That's not trivial to implement, though.

Greetings,

-- Sebastian

> +
>  	pd->genpd.power_off = rockchip_pd_power_off;
>  	pd->genpd.power_on = rockchip_pd_power_on;
>  	pd->genpd.attach_dev = rockchip_pd_attach_dev;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
