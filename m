Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3000DC3ABDD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 17:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooakSqWx202ezaA0Choz3vaEqqxLDXoHsVHZF9OETwE=; b=3AJlFBHYy8K+y6
	FmKeDonv1yWcl6LKo+RHANVFCUMSTCvzrQtukrnNrxR8VdPNBRTRGiGCN0Qr/mNtOWASRTo/MVkNQ
	p8vdOCV60be8DiyVZRMS9qN8YsQxNp6tDL0uys5VfZPgAF5WGOpeHVwupxXWsowsHUY6I8Pdoed9G
	szo6EwmDxF7LaT8yCEgmr1plNT/DSNFvAxSWvqQgllozn8j/sKOcC6a6fXRJ1D/ezl7wQD+jvnDmK
	4N08S3+fvVtZlHDPfh7zk88GLPEDA0Gzbi74HoK9CKPcNXVD+/EzJnP7XEShnkn6SzCqF7YKDmrHk
	a0tB+OOt2l1DKeol6CXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH4OA-00000009yrc-1W44;
	Mon, 19 May 2025 17:34:58 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH3iv-00000009sNP-3jGV;
	Mon, 19 May 2025 16:52:23 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 79D1525A49;
	Mon, 19 May 2025 18:52:20 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHDEt46mHG2L; Mon, 19 May 2025 18:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1747673539; bh=U9x2vCHwSzL90x0YSqb3lSIFOLdNatA4ryM/Wrtr0Mw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=V63S+DKiXH03Rzuz9caUPXeIvfVuut9gQuvpswWqDgO9HhFjDrqGkM5+KVju/FZl2
	 GMMfizcMFEJLYbZzhXyiHLggXd4MTY1ELM4zabtHP5Y/dUGdEncQyDtXPd81HeSNg+
	 2NhJCrS+34I1S+D8kwUmsQOgzjyvlc92v6SS4JZtukbBTm8toU8UlvtckQ4s8HAZj9
	 QtO3HZ1dk+WBIuxjV4ToKEega2HSPPJfElrXgB8Hm/MtUHEno/w1sZ8F3WTnO+nG4U
	 +xcrNnwIvVZHsdyhbui/rlG/yOAKzqrU5fPW4/luHVFKRzqVVTQ2YwRNxQEglOSsYQ
	 J+fmXkY42S7ZQ==
Date: Mon, 19 May 2025 16:52:04 +0000
From: Yao Zi <ziyao@disroot.org>
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/9] pmdomain: rockchip: Add support for RK3528
Message-ID: <aCthtDxm25RU_fd3@pie.lan>
References: <20250518220707.669515-1-jonas@kwiboo.se>
 <20250518220707.669515-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250518220707.669515-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_095222_056942_D4E7D1C0 
X-CRM114-Status: GOOD (  20.40  )
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

On Sun, May 18, 2025 at 10:06:49PM +0000, Jonas Karlman wrote:
> Add configuration and power domains for RK3528 SoC.
> 
> Only PD_GPU can fully be powered down. PD_RKVDEC, PD_RKVENC, PD_VO and
> PD_VPU are used by miscellaneous devices in RK3528.

Thanks for your work!

> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 27 ++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 4cce407bb1eb..242570c505fb 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -35,6 +35,7 @@
>  #include <dt-bindings/power/rk3366-power.h>
>  #include <dt-bindings/power/rk3368-power.h>
>  #include <dt-bindings/power/rk3399-power.h>
> +#include <dt-bindings/power/rockchip,rk3528-power.h>
>  #include <dt-bindings/power/rockchip,rk3562-power.h>

But I had some trouble applying this patch on either Rockchip SoC tree
or linux-pm. Looking through the context, seems the patch depends on
some RK3562 PMU driver changes, which I couldn't find with some brief
searching among the list.

Which branch is the series based on?

>  #include <dt-bindings/power/rk3568-power.h>
>  #include <dt-bindings/power/rockchip,rk3576-power.h>
> @@ -216,6 +217,9 @@ struct rockchip_pmu {
>  #define DOMAIN_RK3399(name, pwr, status, req, wakeup)		\
>  	DOMAIN(name, pwr, status, req, req, req, wakeup)
>  
> +#define DOMAIN_RK3528(name, pwr, req)		\
> +	DOMAIN_M(name, pwr, pwr, req, req, req, false)
> +
>  #define DOMAIN_RK3562(name, pwr, req, g_mask, mem, wakeup)		\
>  	DOMAIN_M_G_SD(name, pwr, pwr, req, req, req, g_mask, mem, wakeup, false)
>  
> @@ -1215,6 +1219,14 @@ static const struct rockchip_domain_info rk3399_pm_domains[] = {
>  	[RK3399_PD_SDIOAUDIO]	= DOMAIN_RK3399("sdioaudio", BIT(31), BIT(31), BIT(29), true),
>  };
>  
> +static const struct rockchip_domain_info rk3528_pm_domains[] = {
> +	[RK3528_PD_GPU]		= DOMAIN_RK3528("gpu",  BIT(0), BIT(4)),
> +	[RK3528_PD_RKVDEC]	= DOMAIN_RK3528("vdec",      0, BIT(5)),
> +	[RK3528_PD_RKVENC]	= DOMAIN_RK3528("venc",      0, BIT(6)),
> +	[RK3528_PD_VO]		= DOMAIN_RK3528("vo",        0, BIT(7)),
> +	[RK3528_PD_VPU]		= DOMAIN_RK3528("vpu",       0, BIT(8)),
> +};
> +
>  static const struct rockchip_domain_info rk3562_pm_domains[] = {
>  					     /* name           pwr     req     g_mask  mem wakeup */
>  	[RK3562_PD_GPU]		= DOMAIN_RK3562("gpu",         BIT(0), BIT(1), BIT(1), 0, false),
> @@ -1428,6 +1440,17 @@ static const struct rockchip_pmu_info rk3399_pmu = {
>  	.domain_info = rk3399_pm_domains,
>  };
>  
> +static const struct rockchip_pmu_info rk3528_pmu = {
> +	.pwr_offset = 0x1210,
> +	.status_offset = 0x1230,
> +	.req_offset = 0x1110,
> +	.idle_offset = 0x1128,
> +	.ack_offset = 0x1120,
> +
> +	.num_domains = ARRAY_SIZE(rk3528_pm_domains),
> +	.domain_info = rk3528_pm_domains,
> +};
> +
>  static const struct rockchip_pmu_info rk3562_pmu = {
>  	.pwr_offset = 0x210,
>  	.status_offset = 0x230,
> @@ -1538,6 +1561,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
>  		.compatible = "rockchip,rk3399-power-controller",
>  		.data = (void *)&rk3399_pmu,
>  	},
> +	{
> +		.compatible = "rockchip,rk3528-power-controller",
> +		.data = (void *)&rk3528_pmu,
> +	},
>  	{
>  		.compatible = "rockchip,rk3562-power-controller",
>  		.data = (void *)&rk3562_pmu,
> -- 
> 2.49.0
> 

Thanks for your effort,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
