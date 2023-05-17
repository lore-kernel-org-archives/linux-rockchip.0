Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A02FC77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 10:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vi4tKATvDPR+Bd6oJMcDfztOLtFFvNhzEsTEkgjrkIY=; b=STbgDa5pccYIiT
	zugElVmuJ5TiTPnZriHOJ/F5aSitnJr9ZyeENyXELzc0mj+54vc4Pium5ujH3cBG0aaTl2ZcgeFWO
	99EeFn7duY3ftLbxzyBTz5o1C3oBTomQG6mhCy0TETvD2uvGlT8mx2y4+Ejw/py6posBlVoYm6Sw8
	VQgbBRmMfIc30OhTpNfEyC+IrdgepcsYoNKGwck9flPLuxBGsUA7PJ2OMYmMCa8cbOoLNJezQxWCt
	IuMkyzlXs3xu6OZQZIWhwfCVo34Kfh3K6QdRafBPGni2z7KtzwAdENg2NnPWorqvsoA/ufZpCF6Z+
	0jxm7FyOAR+d17Mk+XnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEnL-009UyZ-0X;
	Wed, 17 May 2023 10:54:11 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEnG-009UwP-0L;
	Wed, 17 May 2023 10:54:09 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLqcV5WV6z6J8hd;
	Wed, 17 May 2023 18:49:46 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Wed, 17 May
 2023 11:54:00 +0100
Date: Wed, 17 May 2023 11:53:59 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham
	<myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland
	<mark.rutland@arm.com>, <kernel@pengutronix.de>, Michael Riesch
	<michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 15/21] PM / devfreq: rockchip-dfi: Add perf support
Message-ID: <20230517115359.0000429e@Huawei.com>
In-Reply-To: <20230505113856.463650-16-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-16-s.hauer@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500004.china.huawei.com (7.191.163.9) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_035406_436927_204A20FF 
X-CRM114-Status: GOOD (  41.38  )
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

On Fri,  5 May 2023 13:38:50 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> The DFI is a unit which is suitable for measuring DDR utilization, but
> so far it could only be used as an event driver for the DDR frequency
> scaling driver. This adds perf support to the DFI driver.
> 
> Usage with the 'perf' tool can look like:
> 
> perf stat -a -e rockchip_ddr/cycles/,\
> 		rockchip_ddr/read-bytes/,\
> 		rockchip_ddr/write-bytes/,\
> 		rockchip_ddr/bytes/ sleep 1
> 
>  Performance counter stats for 'system wide':
> 
>         1582524826      rockchip_ddr/cycles/
>            1802.25 MB   rockchip_ddr/read-bytes/
>            1793.72 MB   rockchip_ddr/write-bytes/
>            3595.90 MB   rockchip_ddr/bytes/
> 
>        1.014369709 seconds time elapsed
> 
> perf support has been tested on a RK3568 and a RK3399, the latter with
> dual channel DDR.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

A few comments to add to Robin's review.

> ---
>  drivers/devfreq/event/rockchip-dfi.c | 349 +++++++++++++++++++++++++++
>  include/soc/rockchip/rk3399_grf.h    |   2 +
>  include/soc/rockchip/rk3568_grf.h    |   1 +
>  3 files changed, 352 insertions(+)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index eae010644935a..400b1b360e3c9 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -20,6 +20,7 @@
>  #include <linux/of_device.h>
>  #include <linux/bitfield.h>
>  #include <linux/bits.h>
> +#include <linux/perf_event.h>
>  
>  #include <soc/rockchip/rockchip_grf.h>
>  #include <soc/rockchip/rk3399_grf.h>
> @@ -41,14 +42,30 @@
>  					 DDRMON_CTRL_LPDDR4 | \
>  					 DDRMON_CTRL_LPDDR23)
>  
> +#define DDRMON_CH0_WR_NUM		0x20
> +#define DDRMON_CH0_RD_NUM		0x24
>  #define DDRMON_CH0_COUNT_NUM		0x28
>  #define DDRMON_CH0_DFI_ACCESS_NUM	0x2c
>  #define DDRMON_CH1_COUNT_NUM		0x3c
>  #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
>  
> +enum access_type {
> +	PERF_EVENT_CYCLES,
> +	PERF_EVENT_READ_BYTES,
> +	PERF_EVENT_WRITE_BYTES,
> +	PERF_EVENT_BYTES,
> +	PERF_ACCESS_TYPE_MAX,
> +};
> +
>  struct dmc_count_channel {
>  	u32 access;
>  	u32 total;
> +	u32 read_access;
> +	u32 write_access;

Silly question, but is access = read_access + write_access?
If so no need for keeping track of all 3 around.

Come to think of it, total could do with a more meaningful name
or a comment at least.  total what?

> +};
> +
> +struct dmc_count_channel64 {
> +	u64 count[PERF_ACCESS_TYPE_MAX];
>  };

Why bother with the structure?

>  
>  struct dmc_count {
> @@ -65,6 +82,7 @@ struct rockchip_dfi {
>  	struct devfreq_event_desc desc;
>  	struct dmc_count count;
>  	struct dmc_count last_event_count;
> +	struct dmc_count last;

Needs a more descriptive name...

>  	struct device *dev;
>  	void __iomem *regs;
>  	struct regmap *regmap_pmu;
> @@ -73,6 +91,15 @@ struct rockchip_dfi {
>  	struct mutex mutex;
>  	u32 ddr_type;
>  	unsigned int channel_mask;
> +	enum cpuhp_state cpuhp_state;
> +	struct hlist_node node;
> +	struct pmu pmu;
> +	struct hrtimer timer;
> +	unsigned int cpu;
> +	struct dmc_count_channel64 frr;
> +	int active_events;
> +	int burst_len;
> +	int buswidth[DMC_MAX_CHANNELS];
>  };
>  
>  static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
> @@ -148,6 +175,10 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
>  	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
> +		count->c[i].read_access = readl_relaxed(dfi_regs +
> +				DDRMON_CH0_RD_NUM + i * 20);
> +		count->c[i].write_access = readl_relaxed(dfi_regs +
> +				DDRMON_CH0_WR_NUM + i * 20);

I guess no expensive, but you could gate these on the perf support being built given
not used for anything else

>  		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>  		count->c[i].total = readl_relaxed(dfi_regs +
> @@ -218,6 +249,305 @@ static const struct devfreq_event_ops rockchip_dfi_ops = {
>  	.set_event = rockchip_dfi_set_event,
>  };
>  

> +
> +static void rockchip_ddr_perf_event_start(struct perf_event *event, int flags)
> +{
> +	struct rockchip_dfi *dfi = container_of(event->pmu, struct rockchip_dfi, pmu);
> +
> +	rockchip_ddr_perf_update_counters(dfi);
> +
> +	local64_set(&event->hw.prev_count, dfi->frr.count[event->attr.config]);
> +}
> +
> +static int rockchip_ddr_perf_event_add(struct perf_event *event, int flags)
> +{
> +	struct rockchip_dfi *dfi = container_of(event->pmu, struct rockchip_dfi, pmu);
> +	struct hw_perf_event *hwc = &event->hw;
> +
> +	hwc->state |= PERF_HES_STOPPED;
> +
> +	dfi->active_events++;
> +
> +	if (dfi->active_events == 1) {
> +		rockchip_dfi_enable(dfi);
> +		hrtimer_start(&dfi->timer, 0, HRTIMER_MODE_REL);

Trigger immediately?  Lot of work to just call the function.  Perhaps
instead wrap the contents of the callback with two functions, the callback
itself and one that does same reads etc and starts the timer.

I guess it doesn't really matter though.

To my mind the timer start should be in the event_start callback, but I
see there is plenty of precedence for doing it add and I doubt it matters.

> +	}
> +
> +	if (flags & PERF_EF_START)
> +		rockchip_ddr_perf_event_start(event, flags);
> +
> +	return 0;
> +}
> +
> +static void rockchip_ddr_perf_event_stop(struct perf_event *event, int flags)
> +{
> +	rockchip_ddr_perf_event_update(event);
> +}
> +
> +static void rockchip_ddr_perf_event_del(struct perf_event *event, int flags)
> +{
> +	struct rockchip_dfi *dfi = container_of(event->pmu, struct rockchip_dfi, pmu);
> +
> +	rockchip_ddr_perf_event_stop(event, PERF_EF_UPDATE);
> +
> +	dfi->active_events--;
> +
> +	if (dfi->active_events == 0) {
> +		hrtimer_cancel(&dfi->timer);
> +		rockchip_dfi_disable(dfi);
> +	}
> +}
> +
> +static enum hrtimer_restart rockchip_dfi_timer(struct hrtimer *timer)
> +{
> +	struct rockchip_dfi *dfi = container_of(timer, struct rockchip_dfi, timer);
> +	ktime_t timeout;
> +
> +	rockchip_ddr_perf_update_counters(dfi);
> +
> +	timeout = ns_to_ktime(NSEC_PER_SEC);
> +	hrtimer_forward_now(&dfi->timer, timeout);

Trivial: No real advantage in local variable.

	hrtimer_forward-now(&dfi->timer, ns_to_ktime(NSEC_PER_SEC));

> +
> +	return HRTIMER_RESTART;
> +};

...

> +static int rockchip_ddr_perf_init(struct rockchip_dfi *dfi)
> +{

...

> +
> +	dfi->cpuhp_state = ret;
> +
> +	/* Register the pmu instance for cpu hotplug */

I'd argue that's pretty obvious so comment not needed.

> +	ret = cpuhp_state_add_instance_nocalls(dfi->cpuhp_state, &dfi->node);
> +	if (ret) {
> +		dev_err(dfi->dev, "Error %d registering hotplug\n", ret);
> +		goto cpuhp_instance_err;
> +	}
> +
> +	hrtimer_init(&dfi->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
> +	dfi->timer.function = rockchip_dfi_timer;
> +
> +	switch (dfi->ddr_type) {
> +	case ROCKCHIP_DDRTYPE_LPDDR2:
> +	case ROCKCHIP_DDRTYPE_LPDDR3:
> +		dfi->burst_len = 8;
> +		break;
> +	case ROCKCHIP_DDRTYPE_LPDDR4:
> +	case ROCKCHIP_DDRTYPE_LPDDR4X:
> +		dfi->burst_len = 16;
> +		break;
> +	}
> +
> +	ret = perf_pmu_register(pmu, "rockchip_ddr", -1);
> +	if (ret)
> +		goto ddr_perf_err;
> +
> +	return 0;
> +
> +ddr_perf_err:
> +	cpuhp_state_remove_instance_nocalls(dfi->cpuhp_state, &dfi->node);
> +cpuhp_instance_err:
> +	cpuhp_remove_multi_state(dfi->cpuhp_state);

Instead of a single devm callback as suggested below, you could
do them separately for the various steps.  That way you can avoid
the need to do explicit error handling in this function.

> +
> +	return ret;
> +}


> @@ -325,13 +660,27 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  		return PTR_ERR(dfi->edev);
>  	}
>  
> +	ret = rockchip_ddr_perf_init(dfi);
> +	if (ret)
> +		return ret;
> +
>  	platform_set_drvdata(pdev, dfi);
>  
>  	return 0;
>  }
>  
> +static int rockchip_dfi_remove(struct platform_device *pdev)
> +{
> +	struct rockchip_dfi *dfi = platform_get_drvdata(pdev);
> +
> +	rockchip_ddr_perf_remove(dfi);

If this is all you have in remove, use devm_add_action_or_reset()
to make it a devm managed callback and keep the whole flow
devm based.

Obviously makes no practical difference today, but it makes ordering
bugs as a result of future changes less likely.

Or, given this is a nice devm managed driver, do it at finer granularity
(see above).



> +
> +	return 0;
> +}
> +
>  static struct platform_driver rockchip_dfi_driver = {
>  	.probe	= rockchip_dfi_probe,
> +	.remove	= rockchip_dfi_remove,
>  	.driver = {
>  		.name	= "rockchip-dfi",
>  		.of_match_table = rockchip_dfi_id_match,



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
