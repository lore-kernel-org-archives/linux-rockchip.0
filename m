Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2BECC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 15:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvWRnte8d1DyVuxjoHvJTudnLw6Dp0/zzwUmN0bPg2A=; b=B5qZ3sqcYvxmE3
	T55dbDeg11zz7amc0NXuI+pTOuanM3hM65tX+acL+eHAabqJtsQat/l9oKIDTec4P/pRycieJ4s1Z
	unrjDc6GtEBh/sPp8YqC+Wi6eJU6R1zCRzlUDdtWe54/lNNbUq5mgCuROEiegME/dhNFh5cLKWCyA
	iz73Gr089lLQd5thV6LlpSVEyvZgE0g1vBadC4IK7C6WKitezXOGLBNMIwGWw5c2I6KZVHZEH4Q/y
	iQTYBGzbVBbLFP3PCnVmsICHgDI/+ObPAr3oj4FpNLjfMBWFGW0Wo/PY9Y9Ige2yB9C7GipHFc4Fy
	TOmdhU0Y7sbjLmYWB7Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywuw-006Kx0-2x;
	Tue, 16 May 2023 15:48:50 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywut-006Kvd-0m;
	Tue, 16 May 2023 15:48:48 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.207])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLLGm1nSqz67QqC;
	Tue, 16 May 2023 23:47:44 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Tue, 16 May
 2023 16:48:43 +0100
Date: Tue, 16 May 2023 16:48:43 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 06/21] PM / devfreq: rockchip-dfi: Use free running
 counter
Message-ID: <20230516164843.00000ca5@Huawei.com>
In-Reply-To: <20230505113856.463650-7-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-7-s.hauer@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500002.china.huawei.com (7.191.160.78) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_084847_576127_4B577F24 
X-CRM114-Status: GOOD (  28.73  )
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

On Fri,  5 May 2023 13:38:41 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> The DDR_MON counters are free running counters. These are resetted to 0
> when starting them over like currently done when reading the current
> counter values.
> 
> Resetting the counters becomes a problem with perf support we want to
> add later, because perf needs a monotonicly increasing counter.

In general, perf doesn't, but it does need to know no one else is modifying it,
so I guess this makes sense.

> 
> This patch removes resetting the counters and keeps them running
> instead. Counter overflows are handled with modular arithmetics. Not
> stopping the counters also has the impact that they are running while
> we are reading them. We cannot read multiple timers atomically, so
> the values do not exactly fit together. The effect should be negligible
> though as the time between two measurements is some orders of magnitude
> bigger than the time we need to read multiple registers.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


> ---
>  drivers/devfreq/event/rockchip-dfi.c | 53 ++++++++++++++++------------
>  1 file changed, 31 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 383fe8a17a512..25d64d9166a9a 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -38,11 +38,15 @@
>  #define DDRMON_CH1_COUNT_NUM		0x3c
>  #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
>  
> -struct dmc_usage {
> +struct dmc_count_channel {
>  	u32 access;
>  	u32 total;
>  };
>  
> +struct dmc_count {
> +	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
> +};
> +
>  /*
>   * The dfi controller can monitor DDR load. It has an upper and lower threshold
>   * for the operating points. Whenever the usage leaves these bounds an event is
> @@ -51,7 +55,8 @@ struct dmc_usage {
>  struct rockchip_dfi {
>  	struct devfreq_event_dev *edev;
>  	struct devfreq_event_desc desc;
> -	struct dmc_usage ch_usage[RK3399_DMC_NUM_CH];
> +	struct dmc_count count;

Is count used?  Looking at the code I'd guess you changed to a local variable at
some point and forgot to drop this.

> +	struct dmc_count last_event_count;
>  	struct device *dev;
>  	void __iomem *regs;
>  	struct regmap *regmap_pmu;
> @@ -85,30 +90,18 @@ static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
>  	writel_relaxed(SOFTWARE_DIS, dfi_regs + DDRMON_CTRL);
>  }
>  
> -static int rockchip_dfi_get_busier_ch(struct devfreq_event_dev *edev)
> +static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dmc_count *count)
>  {
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
> -	u32 tmp, max = 0;
> -	u32 i, busier_ch = 0;
> +	u32 i;
>  	void __iomem *dfi_regs = dfi->regs;
>  
> -	rockchip_dfi_stop_hardware_counter(edev);
> -
> -	/* Find out which channel is busier */
>  	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> -		dfi->ch_usage[i].access = readl_relaxed(dfi_regs +
> +		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> -		dfi->ch_usage[i].total = readl_relaxed(dfi_regs +
> +		count->c[i].total = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_COUNT_NUM + i * 20);
> -		tmp = dfi->ch_usage[i].access;
> -		if (tmp > max) {
> -			busier_ch = i;
> -			max = tmp;
> -		}
>  	}
> -	rockchip_dfi_start_hardware_counter(edev);
> -
> -	return busier_ch;
>  }
>  
>  static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
> @@ -145,12 +138,28 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  				  struct devfreq_event_data *edata)
>  {
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
> -	int busier_ch;
> +	struct dmc_count count;
> +	struct dmc_count *last = &dfi->last_event_count;
> +	u32 access = 0, total = 0;
> +	int i;
> +
> +	rockchip_dfi_read_counters(edev, &count);
> +
> +	/* We can only report one channel, so find the busiest one */
> +	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> +		u32 a = count.c[i].access - last->c[i].access;
> +		u32 t = count.c[i].total - last->c[i].total;
> +
> +		if (a > access) {
> +			access = a;
> +			total = t;
> +		}
> +	}
>  
> -	busier_ch = rockchip_dfi_get_busier_ch(edev);
> +	edata->load_count = access * 4;
> +	edata->total_count = total;
>  
> -	edata->load_count = dfi->ch_usage[busier_ch].access * 4;
> -	edata->total_count = dfi->ch_usage[busier_ch].total;
> +	dfi->last_event_count = count;
>  
>  	return 0;
>  }


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
