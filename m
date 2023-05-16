Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FAA8C77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 16:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5d12S8N6JDDTAYLyBnmMrgO9XbU8E92ae9ou/fMJQA=; b=extN+cQL52Ve3Z
	gVBUyvX0aB6Eovpix+XNA/QUXhxAUNIl0jO3m7dtMZJzGj3sBE9WKgmGBln5HcZKpxaIuRZcHvqeh
	vQ9Hic1QS5+PAOYu6acJ6A0hSSLl7q3ogzXtf96WNwJvyupNQ7l8RrXDuXSqVZHz858gRmbOuihzf
	MTNPJBMAAzXoDOY18g+yffu6AoFr/OffbyhjTepYwwtMe1diYU4oeUNhee8TIrSpwdTec2ZEWScby
	CxV3wrXJA8MSLP9yrFKcORh5/gj3ejU95XUZ40XEzINSmUgBo5/o+O4q7v3SnzVCo35HTRc2+EZgQ
	wDWauXeBO1kDSi/pwk+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxGE-006Q61-27;
	Tue, 16 May 2023 16:10:50 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxGA-006Q4z-2a;
	Tue, 16 May 2023 16:10:48 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLLm9097mz6D8yN;
	Wed, 17 May 2023 00:09:45 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Tue, 16 May
 2023 17:10:44 +0100
Date: Tue, 16 May 2023 17:10:43 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 13/21] PM / devfreq: rockchip-dfi: Pass private data
 struct to internal functions
Message-ID: <20230516171043.0000369f@Huawei.com>
In-Reply-To: <20230505113856.463650-14-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-14-s.hauer@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_091047_135606_A675252F 
X-CRM114-Status: GOOD (  19.15  )
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

On Fri,  5 May 2023 13:38:48 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> The internal functions do not need the struct devfreq_event_dev *,
> so pass them the struct rockchip_dfi *. This is a preparation for
> adding perf support later which doesn't have a struct devfreq_event_dev *.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

An improvement even without it being needed for the new code.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  drivers/devfreq/event/rockchip-dfi.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index dc48d9c26f599..c0b7b1e9805e9 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -73,9 +73,8 @@ struct rockchip_dfi {
>  	unsigned int channel_mask;
>  };
>  
> -static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> +static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
>  {
> -	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs = dfi->regs;
>  
>  	/* clear DDRMON_CTRL setting */
> @@ -102,18 +101,16 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  		       dfi_regs + DDRMON_CTRL);
>  }
>  
> -static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
> +static void rockchip_dfi_stop_hardware_counter(struct rockchip_dfi *dfi)
>  {
> -	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs = dfi->regs;
>  
>  	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
>  		       dfi_regs + DDRMON_CTRL);
>  }
>  
> -static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dmc_count *count)
> +static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_count *count)
>  {
> -	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	u32 i;
>  	void __iomem *dfi_regs = dfi->regs;
>  
> @@ -131,7 +128,7 @@ static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
>  {
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  
> -	rockchip_dfi_stop_hardware_counter(edev);
> +	rockchip_dfi_stop_hardware_counter(dfi);
>  	clk_disable_unprepare(dfi->clk);
>  
>  	return 0;
> @@ -148,7 +145,7 @@ static int rockchip_dfi_enable(struct devfreq_event_dev *edev)
>  		return ret;
>  	}
>  
> -	rockchip_dfi_start_hardware_counter(edev);
> +	rockchip_dfi_start_hardware_counter(dfi);
>  	return 0;
>  }
>  
> @@ -166,7 +163,7 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  	u32 access = 0, total = 0;
>  	int i;
>  
> -	rockchip_dfi_read_counters(edev, &count);
> +	rockchip_dfi_read_counters(dfi, &count);
>  
>  	/* We can only report one channel, so find the busiest one */
>  	for (i = 0; i < DMC_MAX_CHANNELS; i++) {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
