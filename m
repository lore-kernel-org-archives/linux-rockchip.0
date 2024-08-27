Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08766C52D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAKR98E2NSjBMxHNbRMsU/l3bNDBsItaC1HBqQ58SXA=; b=htsCu3jEawRWCi
	zSmTdYwA6/BLm67vRoq7hDNDoN/EnGSthDavAzbc6/l+rQh+EN/AF8TLYW3skRxL6sqd2vSQ9wsLI
	ZcZKiMG3VHmpbgozgoe55T9S9ZlFm9YkFBBiBEKEqsPycU3I70mEYFMs09rbYS7Pc9i+LReWHdo+q
	BFetJTRAkz+kTvJrSgknnbCLzskEhIyS0sf0zqzk85lsjuVKWfNeRpTdpA6L7ARZ5Aotlxebdkshs
	sQ/e3pgG8N63K0q4Dodc+kt1AHcHICdMchERLn2F/tUnQD7QeC/WxLRii5b6y/X6vFX0jIrKv9VBI
	rxo+iFotf8ryga5DK5bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sit5J-0000000AjQl-2mhz;
	Tue, 27 Aug 2024 10:05:57 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siszA-0000000AhVr-1kuu;
	Tue, 27 Aug 2024 09:59:38 +0000
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4WtNFv32sdz6J6xg;
	Tue, 27 Aug 2024 17:55:31 +0800 (CST)
Received: from lhrpeml500005.china.huawei.com (unknown [7.191.163.240])
	by mail.maildlp.com (Postfix) with ESMTPS id 3BCCF140447;
	Tue, 27 Aug 2024 17:59:29 +0800 (CST)
Received: from localhost (10.203.177.66) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 27 Aug
 2024 10:59:28 +0100
Date: Tue, 27 Aug 2024 10:59:27 +0100
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
Subject: Re: [PATCH 02/10] pmdomain: rockchip: Simplify locking with guard()
Message-ID: <20240827105927.00007ac7@Huawei.com>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-2-8320722eaf39@linaro.org>
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
	<20240823-cleanup-h-guard-pm-domain-v1-2-8320722eaf39@linaro.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.203.177.66]
X-ClientProxiedBy: lhrpeml100003.china.huawei.com (7.191.160.210) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_025936_636129_4ABD04ED 
X-CRM114-Status: GOOD (  17.62  )
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

On Fri, 23 Aug 2024 14:51:06 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> Simplify error handling (smaller error handling) over locks with
> guard().
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Musing inline.

LGTM
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>


> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 5679ad336a11..538dde58d924 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -910,7 +910,7 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
>  	 * Prevent any rockchip_pmu_block() from racing with the remainder of
>  	 * setup (clocks, register initialization).
>  	 */
> -	mutex_lock(&dmc_pmu_mutex);
> +	guard(mutex)(&dmc_pmu_mutex);
>  
>  	for_each_available_child_of_node_scoped(np, node) {
>  		error = rockchip_pm_add_one_domain(pmu, node);
> @@ -943,13 +943,10 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
>  	if (!WARN_ON_ONCE(dmc_pmu))
>  		dmc_pmu = pmu;
>  
> -	mutex_unlock(&dmc_pmu_mutex);
> -
>  	return 0;
>  
>  err_out:
>  	rockchip_pm_domain_cleanup(pmu);

I wonder.  Could you use a devm_add_action_or_reset for this and allow early
returns throughout?

Would need to take the lock again perhaps and I haven't checked if there
is any issue in dropping and retaking the mutex however.
The block logic is non obvious so I couldn't quickly figure this out.
 
> -	mutex_unlock(&dmc_pmu_mutex);
>  	return error;
>  }
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
