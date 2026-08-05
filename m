Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 478B9C55ABF
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 12:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJlTXSg48ZZ6lgjTj8iTOc9XJpnalzVBZrZi2fuOxiE=; b=sowkA9K4gIZ8In
	I4G96BXjoL7IjYa9Shy1TsIUX8zqxwewR6rjvxXu6CpuAKwZL4pxrL7By8V5us3ElTYtu2RqkacmT
	hKm+egqMzZSGLlm5Ey4yOmPZkNQJkeIyCvcJDPrQgUoin9zFMlPHMRYaFEWN2XkFGakhszKB4RYej
	BlDv+Fz4FKhspPYa0fofEquul0BaCzDIwwMfhcBPU8XI48aEjz81cF32/gP2lJ4TIyhfvd343UUEF
	1w6++xEBpR3pH0b8paBahwgzWGP/fUlcE7MXrWPRPi6BQFWNU4HcZOh8GJhgAAX2oUigCkBl54qRP
	jS09Dn0IJtme5siz11bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrb7B-00000003wtK-05bo;
	Wed, 05 Aug 2026 12:52:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrb79-00000003wsC-1EtX
	for linux-rockchip@bombadil.infradead.org;
	Wed, 05 Aug 2026 12:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:From:Subject
	:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vNhnb6jBQpoGsN5TmbYgz5dCfwxd5/O/xYd00sVY3Ls=; b=CZZi9Q/3ty3FXzjs5ct7hQDv1d
	lUhawJN+94eAwo55/rKgYvIeN9QU5ErYtUmXE++St2j3SWD6GfX3e7ALJnYnYsWKau9D0burJcR5l
	PgGuPIMfDfNQR6dti8EqEonYwWkOtByh5nkHwdKhAGVyk8KwcalT45k3JlOdDaLq6fXWxVzt+BLU6
	rgigatg/Q/dMO1DCIW1zZhhVD491qkPYNcDQ6n5plZDu2V+SVoaBDjAKgLOEV1/xbsKQCWq0l78Ri
	iw3sqTMAKqOftPbBIIob2yfHl7zASI9Wdgv7KoRt42YgDevEABOUSPe/igvzw8ehyO9+5x/YKQfKr
	tendQYvQ==;
Received: from out-170.mta0.migadu.com ([2001:41d0:1004:224b::aa])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wrb76-0000000AjPl-1wl2
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 12:52:54 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1785934358;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vNhnb6jBQpoGsN5TmbYgz5dCfwxd5/O/xYd00sVY3Ls=;
	b=nIajNt3qjv825OzAIrvUT/uFNh0ISFr3TXlH+m6ASlKEJYrtZIdRHSRzaa6rXTOyMwX+RD
	I9M4XqE6a/XBBcnqkSY1v30HbYin0iFQqd3GR26zX4rh1H7ibu/9QGTje+CsM7RVauwf1g
	rO8Ov2a3emfdh78jieT8/+FjpEDkBJW3JAlOxiAeCchI9+W9tK67nol4ahmjXT033UIS6N
	Te14tKFPuaF10sDGrdHWzvW5/BoVqjwxXWA/2LNr8TXC9vZch6t2lt42UNrmhw6rP6vAw7
	Xa024CFdCT179KjLU526uh/AQko2rcZY61nAmkXWGCZolaytFvHkEQkCuMY+8Q==
Date: Wed, 05 Aug 2026 14:52:23 +0200
Message-Id: <DKH0VYV0DMRB.3F9GXE6E2TSZ@cknow-tech.com>
Cc: <royalnet026@gmail.com>, <alchark@flipper.net>,
 <chaoyi.chen@rock-chips.com>, <dri-devel@lists.freedesktop.org>,
 <linux-rockchip@lists.infradead.org>, <iommu@lists.linux.dev>,
 <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [RFC PATCH v5 v5 6/8] accel/rocket: add RK3576 NPU (RKNN)
 support
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Jiaxing Hu" <gahing@gahingwoo.com>, <tomeu@tomeuvizoso.net>,
 <heiko@sntech.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <joro@8bytes.org>, <will@kernel.org>,
 <robin.murphy@arm.com>, <ulfh@kernel.org>, <p.zabel@pengutronix.de>,
 <ogabbay@kernel.org>, <zhangqing@rock-chips.com>
References: <20260805063826.95682-1-gahing@gahingwoo.com>
 <20260805063826.95682-7-gahing@gahingwoo.com>
In-Reply-To: <20260805063826.95682-7-gahing@gahingwoo.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_135252_620036_30586909 
X-CRM114-Status: GOOD (  41.18  )
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

On Wed Aug 5, 2026 at 8:38 AM CEST, Jiaxing Hu wrote:
> The RK3576 carries the same RKNN block as the RK3588, with two cores
> instead of three and a few platform differences:
>
>  - the CBUF (convolution buffer) has its own clock domain, so the core
>    needs six clocks rather than four;
>  - the BIU reset moved into the power domain, leaving one reset here;
>  - the NPU spans two power domains, and a device with more than one is
>    skipped by the driver-core single-domain auto-attach, so the list has
>    to be attached explicitly;
>  - the DPU completion interrupt is armed exactly as on RK3588 but never
>    reaches the GIC. The completion is visible in INTERRUPT_RAW_STATUS,
>    so sample that from an hrtimer rather than wait for an interrupt that
>    does not come. The interrupt stays armed, so if it ever does arrive
>    the normal handler finalises the job first.
>
> Select all of that from of_device_id match data so the RK3588 path keeps
> its existing counts and behaviour unchanged.

Would it make sense to split this patch up in 2 patches:
1) Prepare for different NPU/RKNN implementations
2) Add support for RK3576 NPU/RKNN

It seems like you're changing the implementation for RK3588 in this patch
AND add support for RK3576. It's often better to split those things out.

Cheers,
  Diederik

> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
> ---
>  drivers/accel/rocket/rocket_core.c   |  26 +++++-
>  drivers/accel/rocket/rocket_core.h   |  20 ++++-
>  drivers/accel/rocket/rocket_device.c |   4 +
>  drivers/accel/rocket/rocket_drv.c    |  22 ++++-
>  drivers/accel/rocket/rocket_job.c    | 121 ++++++++++++++++++++++++---
>  5 files changed, 176 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
> index b3b2fa9ba..e08288c8c 100644
> --- a/drivers/accel/rocket/rocket_core.c
> +++ b/drivers/accel/rocket/rocket_core.c
> @@ -8,6 +8,7 @@
>  #include <linux/err.h>
>  #include <linux/iommu.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/reset.h>
>  
> @@ -21,14 +22,22 @@ int rocket_core_init(struct rocket_core *core)
>  	u32 version;
>  	int err = 0;
>  
> +	/* RK3576 moves the BIU reset into its power domain and takes only srst_a. */
>  	core->resets[0].id = "srst_a";
>  	core->resets[1].id = "srst_h";
> -	err = devm_reset_control_bulk_get_exclusive(&pdev->dev, ARRAY_SIZE(core->resets),
> +	err = devm_reset_control_bulk_get_exclusive(&pdev->dev, core->soc->num_resets,
>  						    core->resets);
>  	if (err)
>  		return dev_err_probe(dev, err, "failed to get resets for core %d\n", core->index);
>  
> -	err = devm_clk_bulk_get(dev, ARRAY_SIZE(core->clks), core->clks);
> +	core->clks[0].id = "aclk";
> +	core->clks[1].id = "hclk";
> +	core->clks[2].id = "npu";
> +	core->clks[3].id = "pclk";
> +	/* RK3576 clocks the CBUF separately; the compute path stalls without these. */
> +	core->clks[4].id = "aclk_cbuf";
> +	core->clks[5].id = "hclk_cbuf";
> +	err = devm_clk_bulk_get(dev, core->soc->num_clks, core->clks);
>  	if (err)
>  		return dev_err_probe(dev, err, "failed to get clocks for core %d\n", core->index);
>  
> @@ -65,6 +74,19 @@ int rocket_core_init(struct rocket_core *core)
>  		return err;
>  	}
>  
> +	/*
> +	 * RK3576 spans two power domains, and a multi-domain device is skipped
> +	 * by the driver-core single-domain auto-attach, so attach the list here.
> +	 */
> +	if (core->soc->multi_power_domain) {
> +		struct dev_pm_domain_list *pd_list;
> +
> +		err = devm_pm_domain_attach_list(dev, NULL, &pd_list);
> +		if (err < 0)
> +			return dev_err_probe(dev, err,
> +					     "failed to attach NPU power domains\n");
> +	}
> +
>  	pm_runtime_use_autosuspend(dev);
>  
>  	/*
> diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
> index f6d738285..205ff070d 100644
> --- a/drivers/accel/rocket/rocket_core.h
> +++ b/drivers/accel/rocket/rocket_core.h
> @@ -6,6 +6,7 @@
>  
>  #include <drm/gpu_scheduler.h>
>  #include <linux/clk.h>
> +#include <linux/hrtimer.h>
>  #include <linux/io.h>
>  #include <linux/mutex_types.h>
>  #include <linux/reset.h>
> @@ -27,16 +28,25 @@
>  #define rocket_core_writel(core, reg, value) \
>  	writel(value, (core)->core_iomem + (REG_CORE_##reg) - REG_CORE_S_STATUS)
>  
> +/* Per-SoC differences, selected by the of_device_id match data. */
> +struct rocket_soc_data {
> +	unsigned int num_clks;		/* clk_bulk count: 4 base, 6 with CBUF */
> +	unsigned int num_resets;	/* reset_bulk count: 2 base, 1 on RK3576 */
> +	bool multi_power_domain;	/* device spans more than one PM domain */
> +	bool poll_completion;		/* completion IRQ never reaches the GIC */
> +};
> +
>  struct rocket_core {
>  	struct device *dev;
>  	struct rocket_device *rdev;
> +	const struct rocket_soc_data *soc;
>  	unsigned int index;
>  
>  	int irq;
>  	void __iomem *pc_iomem;
>  	void __iomem *cna_iomem;
>  	void __iomem *core_iomem;
> -	struct clk_bulk_data clks[4];
> +	struct clk_bulk_data clks[6];
>  	struct reset_control_bulk_data resets[2];
>  
>  	struct iommu_group *iommu_group;
> @@ -52,6 +62,14 @@ struct rocket_core {
>  		atomic_t pending;
>  	} reset;
>  
> +	struct hrtimer poll_timer;
> +	struct work_struct poll_work;
> +	atomic_t poll_active;
> +	unsigned int poll_ticks;
> +	unsigned int poll_seq;
> +	unsigned int poll_work_seq;
> +	bool poll_dying;
> +
>  	struct drm_gpu_scheduler sched;
>  	u64 fence_context;
>  	u64 emit_seqno;
> diff --git a/drivers/accel/rocket/rocket_device.c b/drivers/accel/rocket/rocket_device.c
> index 46e6ee1e7..bfb00f967 100644
> --- a/drivers/accel/rocket/rocket_device.c
> +++ b/drivers/accel/rocket/rocket_device.c
> @@ -31,6 +31,10 @@ struct rocket_device *rocket_device_init(struct platform_device *pdev,
>  		if (of_device_is_available(core_node))
>  			num_cores++;
>  
> +	for_each_compatible_node(core_node, NULL, "rockchip,rk3576-rknn-core")
> +		if (of_device_is_available(core_node))
> +			num_cores++;
> +
>  	rdev->cores = devm_kcalloc(dev, num_cores, sizeof(*rdev->cores), GFP_KERNEL);
>  	if (!rdev->cores)
>  		return ERR_PTR(-ENOMEM);
> diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
> index 8bbbce594..7f7dfa374 100644
> --- a/drivers/accel/rocket/rocket_drv.c
> +++ b/drivers/accel/rocket/rocket_drv.c
> @@ -176,6 +176,7 @@ static int rocket_probe(struct platform_device *pdev)
>  
>  	rdev->cores[core].rdev = rdev;
>  	rdev->cores[core].dev = &pdev->dev;
> +	rdev->cores[core].soc = of_device_get_match_data(&pdev->dev);
>  	rdev->cores[core].index = core;
>  
>  	rdev->num_cores++;
> @@ -213,8 +214,23 @@ static void rocket_remove(struct platform_device *pdev)
>  	}
>  }
>  
> +static const struct rocket_soc_data rk3588_soc_data = {
> +	.num_clks = 4,
> +	.num_resets = 2,
> +	.multi_power_domain = false,
> +	.poll_completion = false,
> +};
> +
> +static const struct rocket_soc_data rk3576_soc_data = {
> +	.num_clks = 6,
> +	.num_resets = 1,
> +	.multi_power_domain = true,
> +	.poll_completion = true,
> +};
> +
>  static const struct of_device_id dt_match[] = {
> -	{ .compatible = "rockchip,rk3588-rknn-core" },
> +	{ .compatible = "rockchip,rk3588-rknn-core", .data = &rk3588_soc_data },
> +	{ .compatible = "rockchip,rk3576-rknn-core", .data = &rk3576_soc_data },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dt_match);
> @@ -240,7 +256,7 @@ static int rocket_device_runtime_resume(struct device *dev)
>  	if (core < 0)
>  		return -ENODEV;
>  
> -	err = clk_bulk_prepare_enable(ARRAY_SIZE(rdev->cores[core].clks), rdev->cores[core].clks);
> +	err = clk_bulk_prepare_enable(rdev->cores[core].soc->num_clks, rdev->cores[core].clks);
>  	if (err) {
>  		dev_err(dev, "failed to enable (%d) clocks for core %d\n", err, core);
>  		return err;
> @@ -260,7 +276,7 @@ static int rocket_device_runtime_suspend(struct device *dev)
>  	if (!rocket_job_is_idle(&rdev->cores[core]))
>  		return -EBUSY;
>  
> -	clk_bulk_disable_unprepare(ARRAY_SIZE(rdev->cores[core].clks), rdev->cores[core].clks);
> +	clk_bulk_disable_unprepare(rdev->cores[core].soc->num_clks, rdev->cores[core].clks);
>  
>  	return 0;
>  }
> diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
> index bb77b6bf0..28845ac4e 100644
> --- a/drivers/accel/rocket/rocket_job.c
> +++ b/drivers/accel/rocket/rocket_job.c
> @@ -7,6 +7,7 @@
>  #include <drm/drm_file.h>
>  #include <drm/drm_gem.h>
>  #include <drm/rocket_accel.h>
> +#include <linux/hrtimer.h>
>  #include <linux/interrupt.h>
>  #include <linux/overflow.h>
>  #include <linux/iommu.h>
> @@ -21,6 +22,15 @@
>  
>  #define JOB_TIMEOUT_MS 500
>  
> +/*
> + * RK3576 arms the same DPU completion as RK3588, but the interrupt never
> + * reaches the GIC. The completion itself is visible in INTERRUPT_RAW_STATUS,
> + * so sample that instead. The tick cap bounds jobs that never raise it at all,
> + * which is the same open problem as the wrong inference results.
> + */
> +#define RK3576_POLL_INTERVAL_NS	1000000LL	/* 1 ms */
> +#define RK3576_POLL_MAX_TICKS	8
> +
>  static struct rocket_job *
>  to_rocket_job(struct drm_sched_job *sched_job)
>  {
> @@ -151,6 +161,14 @@ static void rocket_job_hw_submit(struct rocket_core *core, struct rocket_job *jo
>  
>  	rocket_pc_writel(core, OPERATION_ENABLE, PC_OPERATION_ENABLE_OP_EN(1));
>  
> +	if (core->soc->poll_completion) {
> +		core->poll_ticks = 0;
> +		core->poll_seq++;
> +		atomic_set(&core->poll_active, 1);
> +		hrtimer_start(&core->poll_timer, ns_to_ktime(RK3576_POLL_INTERVAL_NS),
> +			      HRTIMER_MODE_REL);
> +	}
> +
>  	dev_dbg(core->dev, "Submitted regcmd at 0x%llx to core %d", task->regcmd, core->index);
>  }
>  
> @@ -341,25 +359,87 @@ static struct dma_fence *rocket_job_run(struct drm_sched_job *sched_job)
>  	return ERR_PTR(ret);
>  }
>  
> +static void rocket_job_handle_irq(struct rocket_core *core);
> +
> +static enum hrtimer_restart rocket_poll_timer_fn(struct hrtimer *timer)
> +{
> +	struct rocket_core *core = container_of(timer, struct rocket_core, poll_timer);
> +	u32 raw;
> +
> +	if (!atomic_read(&core->poll_active))
> +		return HRTIMER_NORESTART;
> +
> +	core->poll_work_seq = core->poll_seq;
> +
> +	raw = rocket_pc_readl(core, INTERRUPT_RAW_STATUS);
> +	if ((raw & (PC_INTERRUPT_RAW_STATUS_DPU_0 | PC_INTERRUPT_RAW_STATUS_DPU_1)) ||
> +	    ++core->poll_ticks >= RK3576_POLL_MAX_TICKS) {
> +		atomic_set(&core->poll_active, 0);
> +		schedule_work(&core->poll_work);
> +		return HRTIMER_NORESTART;
> +	}
> +
> +	hrtimer_forward_now(timer, ns_to_ktime(RK3576_POLL_INTERVAL_NS));
> +	return HRTIMER_RESTART;
> +}
> +
> +/* Start the job's next task, or retire it. Caller holds job_lock. */
> +static void rocket_job_next_locked(struct rocket_core *core)
> +{
> +	lockdep_assert_held(&core->job_lock);
> +
> +	if (!core->in_flight_job)
> +		return;
> +
> +	if (core->in_flight_job->next_task_idx < core->in_flight_job->task_count) {
> +		rocket_job_hw_submit(core, core->in_flight_job);
> +		return;
> +	}
> +
> +	iommu_detach_group(NULL, iommu_group_get(core->dev));
> +	dma_fence_signal(core->in_flight_job->done_fence);
> +	pm_runtime_put_autosuspend(core->dev);
> +	core->in_flight_job = NULL;
> +}
> +
> +static void rocket_poll_work_fn(struct work_struct *work)
> +{
> +	struct rocket_core *core = container_of(work, struct rocket_core, poll_work);
> +
> +	pm_runtime_mark_last_busy(core->dev);
> +
> +	scoped_guard(mutex, &core->job_lock) {
> +		/*
> +		 * The interrupt can land while this work is queued, retire the job
> +		 * and start the next task. poll_seq only moves under job_lock, in
> +		 * hw_submit, so comparing it here says whether that happened. Doing
> +		 * it outside the lock would leave the window open rather than close
> +		 * it, and this work would then submit a task on top of a live one.
> +		 */
> +		if (READ_ONCE(core->poll_dying) || core->poll_work_seq != core->poll_seq)
> +			return;
> +
> +		rocket_pc_writel(core, OPERATION_ENABLE, 0x0);
> +		rocket_pc_writel(core, INTERRUPT_CLEAR, 0x1ffff);
> +
> +		rocket_job_next_locked(core);
> +	}
> +}
> +
>  static void rocket_job_handle_irq(struct rocket_core *core)
>  {
> +	if (core->soc->poll_completion) {
> +		atomic_set(&core->poll_active, 0);
> +		hrtimer_cancel(&core->poll_timer);
> +	}
> +
>  	pm_runtime_mark_last_busy(core->dev);
>  
>  	rocket_pc_writel(core, OPERATION_ENABLE, 0x0);
>  	rocket_pc_writel(core, INTERRUPT_CLEAR, 0x1ffff);
>  
>  	scoped_guard(mutex, &core->job_lock)
> -		if (core->in_flight_job) {
> -			if (core->in_flight_job->next_task_idx < core->in_flight_job->task_count) {
> -				rocket_job_hw_submit(core, core->in_flight_job);
> -				return;
> -			}
> -
> -			iommu_detach_group(NULL, iommu_group_get(core->dev));
> -			dma_fence_signal(core->in_flight_job->done_fence);
> -			pm_runtime_put_autosuspend(core->dev);
> -			core->in_flight_job = NULL;
> -		}
> +		rocket_job_next_locked(core);
>  }
>  
>  static void
> @@ -460,6 +540,10 @@ int rocket_job_init(struct rocket_core *core)
>  	int ret;
>  
>  	INIT_WORK(&core->reset.work, rocket_reset_work);
> +	INIT_WORK(&core->poll_work, rocket_poll_work_fn);
> +	hrtimer_setup(&core->poll_timer, rocket_poll_timer_fn, CLOCK_MONOTONIC,
> +		      HRTIMER_MODE_REL);
> +	atomic_set(&core->poll_active, 0);
>  	spin_lock_init(&core->fence_lock);
>  	mutex_init(&core->job_lock);
>  
> @@ -501,8 +585,23 @@ int rocket_job_init(struct rocket_core *core)
>  
>  void rocket_job_fini(struct rocket_core *core)
>  {
> +	/*
> +	 * Stop the poll from starting hardware work before tearing anything
> +	 * down: it submits the next task, and drm_sched_fini() does not wait
> +	 * for work already queued. Cancel after the scheduler is gone, so a
> +	 * job running now cannot re-arm the timer behind the cancel.
> +	 */
> +	if (core->soc->poll_completion)
> +		WRITE_ONCE(core->poll_dying, true);
> +
>  	drm_sched_fini(&core->sched);
>  
> +	if (core->soc->poll_completion) {
> +		atomic_set(&core->poll_active, 0);
> +		hrtimer_cancel(&core->poll_timer);
> +		cancel_work_sync(&core->poll_work);
> +	}
> +
>  	cancel_work_sync(&core->reset.work);
>  	destroy_workqueue(core->reset.wq);
>  }


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
