Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 807F1C52D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 09:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BSxsXRMXPSKc1of+nERfZwkKN+wRSGpdwxlRDlTrvU=; b=lQ8wYIqV0xp5ul
	s5pGjjLPTp4I0tOmeUgrmraA2gpW3HUcDxvAfX1NdttqkT5gBCo+aCsjuqD7r+uriKc4Sl86NRVBw
	+2UyDs3Cz6Lcsthml656Ek8BH2JPcPUlKBDOLhL9Zm5bv/Cnh7KEYsMayS9+W1EucoQtzcoyWhm6X
	09VMgenuOwdWw9kQYfmi7xx6tjAtBO0Ew2Vk2mkjNp1n0fdjg0SXHNIyv19GOpoep+zYCIXGUpzpg
	eqMv9LIjHmUm4f1k5Dii8MSzGwo+/Qz/QqTRmf4UMh+91xw/ABgU+BTnW7gbXfp0LKyGU/rGFHm9p
	JG3YbEHsvmMAdtHw307g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siswX-0000000Agnp-2g0M;
	Tue, 27 Aug 2024 09:56:53 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sista-0000000Ag0M-2srl;
	Tue, 27 Aug 2024 09:53:52 +0000
Received: from mail.maildlp.com (unknown [172.18.186.231])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WtN862M71z6DB4F;
	Tue, 27 Aug 2024 17:50:30 +0800 (CST)
Received: from lhrpeml500005.china.huawei.com (unknown [7.191.163.240])
	by mail.maildlp.com (Postfix) with ESMTPS id D1815140A71;
	Tue, 27 Aug 2024 17:53:44 +0800 (CST)
Received: from localhost (10.203.177.66) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 27 Aug
 2024 10:53:44 +0100
Date: Tue, 27 Aug 2024 10:53:43 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
	<festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio
	<konradybcio@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, <linux-pm@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <imx@lists.linux.dev>,
	<linux-arm-msm@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH 01/10] pmdomain: rockchip: Simplify with scoped for each
 OF child loop
Message-ID: <20240827105343.00003a72@Huawei.com>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-1-8320722eaf39@linaro.org>
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
	<20240823-cleanup-h-guard-pm-domain-v1-1-8320722eaf39@linaro.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.203.177.66]
X-ClientProxiedBy: lhrpeml100003.china.huawei.com (7.191.160.210) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_025351_053862_2F041087 
X-CRM114-Status: GOOD (  18.67  )
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

On Fri, 23 Aug 2024 14:51:05 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> Use scoped for_each_available_child_of_node_scoped() and
> for_each_child_of_node_scoped() when iterating over
> device nodes to make code a bit simpler.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Ripe for some dev_err_probe() usage that will make this even nicer
as a cleanup.

Looks good as it stands
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 20 ++++++--------------
>  1 file changed, 6 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 64b4d7120d83..5679ad336a11 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -804,11 +804,10 @@ static void rockchip_configure_pd_cnt(struct rockchip_pmu *pmu,
>  static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
>  				     struct device_node *parent)
>  {
> -	struct device_node *np;
>  	struct generic_pm_domain *child_domain, *parent_domain;
>  	int error;
>  
> -	for_each_child_of_node(parent, np) {
> +	for_each_child_of_node_scoped(parent, np) {
>  		u32 idx;
>  
>  		error = of_property_read_u32(parent, "reg", &idx);
> @@ -816,7 +815,7 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
>  			dev_err(pmu->dev,
>  				"%pOFn: failed to retrieve domain id (reg): %d\n",
>  				parent, error);
> -			goto err_out;
> +			return error;
>  		}
>  		parent_domain = pmu->genpd_data.domains[idx];
>  
> @@ -824,7 +823,7 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
>  		if (error) {
>  			dev_err(pmu->dev, "failed to handle node %pOFn: %d\n",
>  				np, error);
> -			goto err_out;
> +			return error;
>  		}
>  
>  		error = of_property_read_u32(np, "reg", &idx);
> @@ -832,7 +831,7 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
>  			dev_err(pmu->dev,
>  				"%pOFn: failed to retrieve domain id (reg): %d\n",
>  				np, error);
> -			goto err_out;
> +			return error;
>  		}
>  		child_domain = pmu->genpd_data.domains[idx];
>  
> @@ -840,7 +839,7 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
>  		if (error) {
>  			dev_err(pmu->dev, "%s failed to add subdomain %s: %d\n",
>  				parent_domain->name, child_domain->name, error);
> -			goto err_out;
> +			return error;
>  		} else {
>  			dev_dbg(pmu->dev, "%s add subdomain: %s\n",
>  				parent_domain->name, child_domain->name);
> @@ -850,17 +849,12 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
>  	}
>  
>  	return 0;
> -
> -err_out:
> -	of_node_put(np);
> -	return error;
>  }
>  
>  static int rockchip_pm_domain_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = dev->of_node;
> -	struct device_node *node;
>  	struct device *parent;
>  	struct rockchip_pmu *pmu;
>  	const struct rockchip_pmu_info *pmu_info;
> @@ -918,12 +912,11 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
>  	 */
>  	mutex_lock(&dmc_pmu_mutex);
>  
> -	for_each_available_child_of_node(np, node) {
> +	for_each_available_child_of_node_scoped(np, node) {
>  		error = rockchip_pm_add_one_domain(pmu, node);
>  		if (error) {
>  			dev_err(dev, "failed to handle node %pOFn: %d\n",
>  				node, error);
> -			of_node_put(node);
>  			goto err_out;
>  		}
>  
> @@ -931,7 +924,6 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
>  		if (error < 0) {
>  			dev_err(dev, "failed to handle subdomain node %pOFn: %d\n",
>  				node, error);
> -			of_node_put(node);
>  			goto err_out;
>  		}
>  	}
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
