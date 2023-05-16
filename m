Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE79EC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 15:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCBKF+AZzjLdxWZdH0uD2FTyoMLhrEXl2+V6HuvVdh8=; b=JtDNI9pSyjq8vG
	ko6VrgYZh00bEXPs+cntlaGI+EcgRfaseBZROGxDQYIXfOtkNGPQ0HOcVl0w1vSOXit6auVZlanrr
	5rqSXFmdfZHpYlDtwQS+XSn1EDHUW3G1fZB1Ba8QZJxUNfdMN1WwX63X2uwcKN5ga1cqCvv8/H3p9
	HGZ0ZTMg2XtaKMYgXMa6n9iKg0Y//wj3YAdn9KWcjMtTBNbRo1crtyi0RS9pgU1nFDhN0Z6lN5Jlh
	TCWYvGmXNvpanxGw2mwoUqtYsoul14sVJpSrSTdz7S7GQKZvnmRNBYyrE7z4W/2fG+pJaVB2n+Ba0
	98Vm1Bi0kuzgU/5iApEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyx10-006M36-25;
	Tue, 16 May 2023 15:55:06 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyx0w-006M1i-25;
	Tue, 16 May 2023 15:55:05 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.200])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLLPw5YRsz67nRR;
	Tue, 16 May 2023 23:53:56 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Tue, 16 May
 2023 16:54:56 +0100
Date: Tue, 16 May 2023 16:54:55 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 08/21] PM / devfreq: rk3399_dmc,dfi: generalize
 DDRTYPE defines
Message-ID: <20230516165455.00002f5b@Huawei.com>
In-Reply-To: <20230505113856.463650-9-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-9-s.hauer@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_085502_979099_9F5C5877 
X-CRM114-Status: GOOD (  27.50  )
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

On Fri,  5 May 2023 13:38:43 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> The DDRTYPE defines are named to be RK3399 specific, but they can be
> used for other Rockchip SoCs as well, so replace the RK3399_PMUGRF_
> prefix with ROCKCHIP_. They are defined in a SoC specific header
> file, so when generalizing the prefix also move the new defines to
> a SoC agnostic header file. While at it use GENMASK to define the
> DDRTYPE bitfield and give it a name including the full register name.

Great - you covered this one a few patches later.

A few suggestions inline but this looks basically fine to me.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 10 ++++++----
>  drivers/devfreq/rk3399_dmc.c         | 10 +++++-----
>  include/soc/rockchip/rk3399_grf.h    |  7 +------
>  include/soc/rockchip/rockchip_grf.h  | 15 +++++++++++++++
>  4 files changed, 27 insertions(+), 15 deletions(-)
>  create mode 100644 include/soc/rockchip/rockchip_grf.h
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 18d578730fd0c..7896cd8beb143 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -18,7 +18,10 @@
>  #include <linux/list.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>

Why bits.h?

>  
> +#include <soc/rockchip/rockchip_grf.h>
>  #include <soc/rockchip/rk3399_grf.h>
>  
>  #define DMC_MAX_CHANNELS	2
> @@ -74,9 +77,9 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
>  
>  	/* set ddr type to dfi */
> -	if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
> +	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
>  		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> -	else if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
> +	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
>  		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);

Maybe a switch statement here as well?  In particular I'm interested
that there is no sign of DDR3 or LPDDR2 here and I think it would be good to
make that explicit given it's defined.

>  
>  	/* enable count, use software mode */
> @@ -191,8 +194,7 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  
>  	/* get ddr type */
>  	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> -	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> -			RK3399_PMUGRF_DDRTYPE_MASK;
> +	dfi->ddr_type = FIELD_GET(RK3399_PMUGRF_OS_REG2_DDRTYPE, val);
>  
>  	dfi->channel_mask = 3;
>  
> diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
> index daff407026157..fd2c5ffedf41e 100644
> --- a/drivers/devfreq/rk3399_dmc.c
> +++ b/drivers/devfreq/rk3399_dmc.c
> @@ -22,6 +22,7 @@
>  #include <linux/suspend.h>
>  
>  #include <soc/rockchip/pm_domains.h>
> +#include <soc/rockchip/rockchip_grf.h>
>  #include <soc/rockchip/rk3399_grf.h>
>  #include <soc/rockchip/rockchip_sip.h>
>  
> @@ -381,17 +382,16 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
>  	}
>  
>  	regmap_read(data->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> -	ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> -		    RK3399_PMUGRF_DDRTYPE_MASK;
> +	ddr_type = FIELD_GET(RK3399_PMUGRF_OS_REG2_DDRTYPE, val);

Excellent!  You did it a few patches later :)

>  
>  	switch (ddr_type) {
> -	case RK3399_PMUGRF_DDRTYPE_DDR3:
> +	case ROCKCHIP_DDRTYPE_DDR3:
>  		data->odt_dis_freq = data->ddr3_odt_dis_freq;
>  		break;
> -	case RK3399_PMUGRF_DDRTYPE_LPDDR3:
> +	case ROCKCHIP_DDRTYPE_LPDDR3:
>  		data->odt_dis_freq = data->lpddr3_odt_dis_freq;
>  		break;
> -	case RK3399_PMUGRF_DDRTYPE_LPDDR4:
> +	case ROCKCHIP_DDRTYPE_LPDDR4:
>  		data->odt_dis_freq = data->lpddr4_odt_dis_freq;
>  		break;
>  	default:
> diff --git a/include/soc/rockchip/rk3399_grf.h b/include/soc/rockchip/rk3399_grf.h
> index 3eebabcb28123..775f8444bea8d 100644
> --- a/include/soc/rockchip/rk3399_grf.h
> +++ b/include/soc/rockchip/rk3399_grf.h
> @@ -11,11 +11,6 @@
>  
>  /* PMU GRF Registers */
>  #define RK3399_PMUGRF_OS_REG2		0x308
> -#define RK3399_PMUGRF_DDRTYPE_SHIFT	13
> -#define RK3399_PMUGRF_DDRTYPE_MASK	7
> -#define RK3399_PMUGRF_DDRTYPE_DDR3	3
> -#define RK3399_PMUGRF_DDRTYPE_LPDDR2	5
> -#define RK3399_PMUGRF_DDRTYPE_LPDDR3	6
> -#define RK3399_PMUGRF_DDRTYPE_LPDDR4	7
> +#define RK3399_PMUGRF_OS_REG2_DDRTYPE		GENMASK(15, 13)
>  
>  #endif
> diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/rockchip_grf.h
> new file mode 100644
> index 0000000000000..dc77bb762a05a
> --- /dev/null
> +++ b/include/soc/rockchip/rockchip_grf.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Rockchip General Register Files definitions
> + */
> +
> +#ifndef __SOC_ROCKCHIP_GRF_H
> +#define __SOC_ROCKCHIP_GRF_H
> +
> +/* Rockchip DDRTYPE defines */
> +#define ROCKCHIP_DDRTYPE_DDR3	3
> +#define ROCKCHIP_DDRTYPE_LPDDR2	5
> +#define ROCKCHIP_DDRTYPE_LPDDR3	6
> +#define ROCKCHIP_DDRTYPE_LPDDR4	7

Maybe worth an enum so you can give ddr_type a named type and
the compiler can see if you've handled all the cases for
the switch statements?

> +
> +#endif /* __SOC_ROCKCHIP_GRF_H */


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
