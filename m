Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F5DC5AC7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 08:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpki2Y/PvEUPV1dpWbHlLcVAzmDW13uTp3LVkrlKoUE=; b=TlZbnZO7MceS5o
	TbE7R0MWbqwzStvwX6Kx8UW08waUGlkupTOINNiA1MpBA5RF2d9jyxW1qL9BJ0x/yhxVoo/JirerJ
	IvilO3R5x41DPdK++/PMig5p7vERE1tnpJZRisSogKA5v+/Nf7huZd5iX3aR94vehnFD7BZZJotAY
	brxKMFxIVY9Vqq3ju9R5ptoAD+3TLa0/bwoKM/Jg2SQjts3tCHQpVvwH7/eKQQaZs0nrA8b7qLilm
	g4nbWNDfATFTMLlKw4XMr/we+yjXufi5vGAe2Jyxey3fY+dldPmorOsFMp4HeBAmknhERk802t2iH
	BkOgwn+FubUd8WOdBZpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsFf6-00000007Mf2-2Bhf;
	Fri, 07 Aug 2026 08:10:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsFf0-00000007MUm-46hg
	for linux-rockchip@bombadil.infradead.org;
	Fri, 07 Aug 2026 08:10:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:From:Subject
	:Cc:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=myxhS2a8E7aAq3z2l/Oupz4nK0+6QMT2wFctmDznMP4=; b=oW6eXRNX5RENb5hhKdayydD37T
	MNq52IY/KS02KlxWAO2id0ctDJoZ1cBe6hv3n3TwC++/OSfQb4PGvXjQnxbaD43aOmSX3ZoiasSna
	DEtQCkTjH1OkszuyLYNQjTp0eEG8Y9I/TMGSLR6KBV4DSaQZIwe1ujhIB1dV4ek7DKhUyw3u6tb2R
	kKZqSmksu/4cH40UWvB8N6pagvBcc47IhAQ0+yhh0ke8+61Rrbf6AzVHXyQfXDoHpWHCvoNOo+VDZ
	N4XznC8pIr58pIImgJjyECy5nyocCwZkb7xl54xQUVIR32XY7O4xW64Vbb4bm0yh8azKaJQQJiTao
	ZVLb9unw==;
Received: from out-183.mta1.migadu.com ([95.215.58.183])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wsFex-0000000CAv7-06w6
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Aug 2026 08:10:33 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1786090227;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=myxhS2a8E7aAq3z2l/Oupz4nK0+6QMT2wFctmDznMP4=;
	b=ebXw3sGvz+JoVvAk2f5cLlPmCLtklqiquZ6SRIOKvuDAm7og00AMWvjQlMvicxCkd9cU6m
	dQklT4aNT4kz4uf/Bi54wlZkE3jWAOfUxQ4OzH9W0cMJUZRFWapie/1ER1oSmwl+XyAvYR
	Gc9sBN10/D0LIXz3dv9OisQUHGAo5oFhlErTQtSt1b73iw4K8bBLmSABn8VueSVNXyvs+4
	0Fqi8aerCyp4BwsCmqHdqslkHMwchI3VKh6OcDsEFuy3k76wdxv+qGgbVsq9GWuMWUNzsc
	Vr3w2gRdQwKlo/c1qaOKmYIgwAwiCoAvatNF+DPNNmPyN/6BuHIrkQqecMkqTg==
Date: Fri, 07 Aug 2026 10:10:08 +0200
Message-Id: <DKIK4YHEVYA5.Y03RHE1E8FGQ@cknow-tech.com>
Cc: <royalnet026@gmail.com>, <alchark@flipper.net>,
 <chaoyi.chen@rock-chips.com>, <diederik@cknow-tech.com>,
 <dri-devel@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <iommu@lists.linux.dev>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [RFC PATCH v6 6/9] accel/rocket: select the per-core clock and
 reset counts from match data
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Jiaxing Hu" <gahing@gahingwoo.com>, <tomeu@tomeuvizoso.net>,
 <heiko@sntech.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <joro@8bytes.org>, <will@kernel.org>,
 <robin.murphy@arm.com>, <ulfh@kernel.org>, <p.zabel@pengutronix.de>,
 <ogabbay@kernel.org>, <zhangqing@rock-chips.com>
References: <20260806063413.350184-1-gahing@gahingwoo.com>
 <20260806063413.350184-7-gahing@gahingwoo.com>
In-Reply-To: <20260806063413.350184-7-gahing@gahingwoo.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_091031_441219_8B5443C5 
X-CRM114-Status: GOOD (  28.65  )
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

Hi Jiaxing,

On Thu Aug 6, 2026 at 8:34 AM CEST, Jiaxing Hu wrote:
> The RK3576 carries the same RKNN block with a different set of clocks and

nit: same RKNN block as what? And if it has a different set of clocks/resets,
is it still the same (HW) block?

> resets, so the counts cannot stay compile-time constants. Add a soc_data
> struct to the of_device_id match data and take the bulk counts from it.
> RK3588 keeps four clocks and two resets, so nothing changes for it.
>
> rocket_core_reset() is switched over as well. It is the same array, and
> leaving it on ARRAY_SIZE() would walk entries that were never acquired
> once a SoC asks for fewer.

but now comes the point I actually want to make:

> While moving through this path, take the two register writes in
> rocket_job_handle_irq() under job_lock. rocket_job_hw_submit() writes
> OPERATION_ENABLE from inside the lock, so a completion handled outside it
> can write the zero after that one and stop a task that has just started.

This should be its own separate commit (with a Fixes tag) ... which
probably doesn't have/should be part of this (RFC) series?

>
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
> ---
>  drivers/accel/rocket/rocket_core.c |  8 ++++----
>  drivers/accel/rocket/rocket_core.h |  9 ++++++++-
>  drivers/accel/rocket/rocket_drv.c  | 12 +++++++++---
>  drivers/accel/rocket/rocket_job.c  | 12 +++++++++---
>  4 files changed, 30 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
> index 5dd260bac..b202d1581 100644
> --- a/drivers/accel/rocket/rocket_core.c
> +++ b/drivers/accel/rocket/rocket_core.c
> @@ -23,7 +23,7 @@ int rocket_core_init(struct rocket_core *core)
>  
>  	core->resets[0].id = "srst_a";
>  	core->resets[1].id = "srst_h";
> -	err = devm_reset_control_bulk_get_exclusive(&pdev->dev, ARRAY_SIZE(core->resets),
> +	err = devm_reset_control_bulk_get_exclusive(&pdev->dev, core->soc->num_resets,
>  						    core->resets);
>  	if (err)
>  		return dev_err_probe(dev, err, "failed to get resets for core %d\n", core->index);
> @@ -32,7 +32,7 @@ int rocket_core_init(struct rocket_core *core)
>  	core->clks[1].id = "hclk";
>  	core->clks[2].id = "npu";
>  	core->clks[3].id = "pclk";
> -	err = devm_clk_bulk_get(dev, ARRAY_SIZE(core->clks), core->clks);
> +	err = devm_clk_bulk_get(dev, core->soc->num_clks, core->clks);
>  	if (err)
>  		return dev_err_probe(dev, err, "failed to get clocks for core %d\n", core->index);
>  
> @@ -109,9 +109,9 @@ void rocket_core_fini(struct rocket_core *core)
>  
>  void rocket_core_reset(struct rocket_core *core)
>  {
> -	reset_control_bulk_assert(ARRAY_SIZE(core->resets), core->resets);
> +	reset_control_bulk_assert(core->soc->num_resets, core->resets);
>  
>  	udelay(10);
>  
> -	reset_control_bulk_deassert(ARRAY_SIZE(core->resets), core->resets);
> +	reset_control_bulk_deassert(core->soc->num_resets, core->resets);
>  }
> diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
> index f6d738285..0f424bb86 100644
> --- a/drivers/accel/rocket/rocket_core.h
> +++ b/drivers/accel/rocket/rocket_core.h
> @@ -27,16 +27,23 @@
>  #define rocket_core_writel(core, reg, value) \
>  	writel(value, (core)->core_iomem + (REG_CORE_##reg) - REG_CORE_S_STATUS)
>  
> +/* Per-SoC differences, selected by the of_device_id match data. */
> +struct rocket_soc_data {
> +	unsigned int num_clks;		/* clk_bulk count */
> +	unsigned int num_resets;	/* reset_bulk count */
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
> diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
> index 8bbbce594..6e7dc91c5 100644
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
> @@ -213,8 +214,13 @@ static void rocket_remove(struct platform_device *pdev)
>  	}
>  }
>  
> +static const struct rocket_soc_data rk3588_soc_data = {
> +	.num_clks = 4,
> +	.num_resets = 2,
> +};
> +
>  static const struct of_device_id dt_match[] = {
> -	{ .compatible = "rockchip,rk3588-rknn-core" },
> +	{ .compatible = "rockchip,rk3588-rknn-core", .data = &rk3588_soc_data },

While it technically fits on 1 line, putting the ``.data = `` part on its
own line is easier to read and likely more future proof. 

Cheers,
  Diederik

>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dt_match);
> @@ -240,7 +246,7 @@ static int rocket_device_runtime_resume(struct device *dev)
>  	if (core < 0)
>  		return -ENODEV;
>  
> -	err = clk_bulk_prepare_enable(ARRAY_SIZE(rdev->cores[core].clks), rdev->cores[core].clks);
> +	err = clk_bulk_prepare_enable(rdev->cores[core].soc->num_clks, rdev->cores[core].clks);
>  	if (err) {
>  		dev_err(dev, "failed to enable (%d) clocks for core %d\n", err, core);
>  		return err;
> @@ -260,7 +266,7 @@ static int rocket_device_runtime_suspend(struct device *dev)
>  	if (!rocket_job_is_idle(&rdev->cores[core]))
>  		return -EBUSY;
>  
> -	clk_bulk_disable_unprepare(ARRAY_SIZE(rdev->cores[core].clks), rdev->cores[core].clks);
> +	clk_bulk_disable_unprepare(rdev->cores[core].soc->num_clks, rdev->cores[core].clks);
>  
>  	return 0;
>  }
> diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
> index bb77b6bf0..aa26e2977 100644
> --- a/drivers/accel/rocket/rocket_job.c
> +++ b/drivers/accel/rocket/rocket_job.c
> @@ -345,10 +345,15 @@ static void rocket_job_handle_irq(struct rocket_core *core)
>  {
>  	pm_runtime_mark_last_busy(core->dev);
>  
> -	rocket_pc_writel(core, OPERATION_ENABLE, 0x0);
> -	rocket_pc_writel(core, INTERRUPT_CLEAR, 0x1ffff);
> +	scoped_guard(mutex, &core->job_lock) {
> +		/*
> +		 * Stopping the block belongs under the lock. hw_submit() writes
> +		 * OPERATION_ENABLE too, and outside the lock this zero can land
> +		 * after that one and kill a task that has only just started.
> +		 */
> +		rocket_pc_writel(core, OPERATION_ENABLE, 0x0);
> +		rocket_pc_writel(core, INTERRUPT_CLEAR, 0x1ffff);
>  
> -	scoped_guard(mutex, &core->job_lock)
>  		if (core->in_flight_job) {
>  			if (core->in_flight_job->next_task_idx < core->in_flight_job->task_count) {
>  				rocket_job_hw_submit(core, core->in_flight_job);
> @@ -360,6 +365,7 @@ static void rocket_job_handle_irq(struct rocket_core *core)
>  			pm_runtime_put_autosuspend(core->dev);
>  			core->in_flight_job = NULL;
>  		}
> +	}
>  }
>  
>  static void



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
