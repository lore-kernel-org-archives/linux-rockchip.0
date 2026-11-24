Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D58E606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 17:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0n9V/5fy;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=arm.com header.i=@arm.com header.a=rsa-sha256 header.s=foss header.b=c6lqprQY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8wo5UyzYlwLDFiasiRYn4U1F9OGi5nSGD1v4Z1ld5bA=; b=0n9V/5fyU11xzCWXO5yUwpZHhE
	a7zouHLbzrhjS6izBsGv4giW3Rm6j/UUHu0W7K8QJhnzOYejqm9hrDM7rOfNG/EDKS3Zqf3B4kxTJ
	4aXlUYredsfJeRTpxGDzzSILZznkhZLeFydJGirL7sqJ1D/Q0GbmyKnaT57GSEpEmwu97ueEUZdr/
	z8Nr68hFab65nAGcYuySbX4IiZDlYeNnvkbRX20JjtamSL/MbHglA0xPRFOTYTw+XkhSOcPfRjo+c
	S0VnudPCXDEtIwPFU8H+am7N468pHvnq/HIFnkCsx0E5vNQzwNZYx3esZF76+CQjkvZ9UZ5brXbnR
	3Qbs4SYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVulS-00000007RBJ-0Snv;
	Tue, 24 Nov 2026 17:57:10 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVulP-00000007RA3-21di
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 17:57:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8752C339;
	Tue, 24 Nov 2026 09:57:01 -0800 (PST)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AE6F3F763;
	Tue, 24 Nov 2026 09:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1795543024; bh=I6pw8uS8s5roJNHb7M2GM3OgWZOUcGnGgtSmOYmDpLA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=c6lqprQYOctmM+/fQeuolrZ+/sAfDhBlYn6i0fniglNB+4MwNRaFwVhU0AWexLKDd
	 0dJaJktHsbqbhj5212vBrwIuPIFS42nLlbTpJMeJv0tuzeczJCMQ6LYG8UiGsa/0Nu
	 OJH2NEs+0VqstSHCG9YNw4T5EUmsHdco4iHEkoqc=
Message-ID: <d4f010f9-44b3-4f0e-9f84-f85ad9c82b3e@arm.com>
Date: Tue, 24 Nov 2026 17:57:01 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] iommu/rockchip: program the MMU even when the device
 is not in use
To: Anton Sovetov <anton.sovetov@gmail.com>, iommu@lists.linux.dev
Cc: heiko@sntech.de, joro@8bytes.org, will@kernel.org,
 linux-rockchip@lists.infradead.org
References: <CANLiQWrVGN00Hn8s3X7nyDZxh3x0wJ1YqTVzYsLUPM3s-Pkp1A@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CANLiQWrVGN00Hn8s3X7nyDZxh3x0wJ1YqTVzYsLUPM3s-Pkp1A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_095707_613393_D75F135C 
X-CRM114-Status: GOOD (  54.75  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 23/11/2026 8:07 pm, Anton Sovetov wrote:
> Hi,
> 
> I hit three related problems in drivers/iommu/rockchip-iommu.c on an RK3566
> (Radxa Zero 3W) with the out-of-tree NPU driver. All three have the same shape:
> the driver gates work on pm_runtime_get_if_in_use(), which is 0 unless somebody
> already holds a reference, and for a device that keeps its DMA domain for its
> whole lifetime that is the normal state.
> 
> 1. rk_iommu_irq(), line 583, gate at 592.
> 
>     A page fault raised while the device is running, outside a map or unmap
>     call, finds usage_count 0,

That sounds wrong - if "the device is running" then its RPM state should 
be logically active, which should in turn hold the IOMMU active via the 
device link. And if the client device is still doing DMA and able to 
cause page faults while logically suspended, that would seem like a bug 
in the client driver.

> so the handler returns IRQ_NONE without touching
>     the registers. The fault stays latched: INT_RAWSTAT bit 0 and INT_STATUS bit
>     0 remain set, PAGE_FAULT_ACTIVE stays set in STATUS, REPLAY_BUFFER_EMPTY
>     clears, and nothing is printed. The device then sits on a stalled
>     transaction and dmesg says nothing at all, which is the worst part for
>     anyone trying to debug it.
> 
>     Observed on the NPU: after a job that never completed, the MMU read back
>     dte 0x480000 status 0x2b rawstat 0x1 intstatus 0x1 fault 0xdc80, and the
>     handler had never run. A normal fault report would have printed "Page fault
>     at 0x0000dc80 of type read" plus the page table walk.
> 
> 2. rk_iommu_zap_iova(), line 680, gate at 694.
> 
>     The comment says "Only zap TLBs of IOMMUs that are powered on", but the test
>     is the usage count, not the power state. An unmap that happens while nothing
>     else is using the IOMMU skips the shootdown. A device that keeps its domain
>     but is idle at that moment, which is the usual case when the process that
>     owned the buffers has exited, keeps stale entries, and the next owner of the
>     same iova can still be translated to the previous physical page.
> 
>     I could not prove this one with a bus trace, so I am reporting it as a code
>     observation and not as a measured failure.

The physical power state shouldn't matter - as long as the IOMMU is 
logically suspended then we should have been through rk_iommu_suspend() 
-> rk_iommu_disable(), after which we're not going to touch it again 
until rk_iommu_resume() -> rk_iommu_enable() which inherently does an 
RK_MMU_CMD_ZAP_CACHE. Thus resuming a suspended IOMMU, invalidating all 
the TLBs in the process, just to issue a command to re-invalidate 
nothing, then disabling it until the client device next resumes it and 
invalidates all the TLBs yet again, clearly seems a bit silly.

> 3. rk_iommu_attach_device(), line 1008, gate at 1040.
> 
>     Detach plus attach is how a driver resets its IOMMU domain. On attach, when
>     the usage count is 0, the function returns 0 without calling
>     rk_iommu_enable(), so paging stays off, DTE_ADDR stays 0 and INT_MASK stays
>     0. The caller is told the attach succeeded.
> 
>     Observed on the NPU: its soft reset does iommu_detach_device() and then
>     iommu_attach_device() on the same domain. After the first reset the MMU read
>     dte 0x0 status 0x18 intmask 0x0, no translation at all, and every later DMA
>     ran on raw iovas. Before the reset it was dte 0x480000 status 0x19
>     intmask 0x3. Holding the MMU device with pm_runtime_resume_and_get() around
>     the detach/attach makes the same sequence end with dte 0x480000 status 0x19,
>     which is how I convinced myself the gate, and not the reset itself, was
>     responsible.

Again, that sounds very much like something is wrong with either the 
device link or how the out-of-tree client driver is managing its own 
RPM. And since the device link support has been upstream and apparently 
working fine with the upstream VOP/RGA/etc. client drivers for over 8 
years now...

Thanks,
Robin.

> The patch below resumes the device around the attach and the zap. Both run in
> process context, so pm_runtime_get_sync() is fine there. For the interrupt
> handler I only added a log line on the drop path, because I do not want to
> touch registers from hard irq context while the device may be suspended.
> 
> What it fixes: the MMU now stays programmed across a detach/attach cycle, and a
> fault that arrives while nothing is mapping gets reported instead of vanishing.
> 
> What it does not fix: the reason I went looking. Our NPU still stops executing
> jobs in IOMMU mode after a few separate processes, with a healthy MMU and no
> page fault at all. That is a different problem and I am not claiming this patch
> touches it. I am sending these three because each one is a real failure mode on
> its own.
> 
> Tested only on rk3566 with the v1 block. I have no rk3588 hardware and would
> rather not guess about the v2 path.
> 
> Questions:
> 
> - Is the usage count gate deliberate, in the sense that register access is
>    unsafe unless someone holds a reference? If so, is the right fix to keep the
>    MMU programmed for as long as the device is attached to a domain, instead of
>    tying it to the map/unmap window?
> - For the interrupt path, what is the intended behaviour when a fault arrives
>    while the IOMMU device is runtime suspended? Ignoring it leaves the device
>    stalled and the status latched, which is what we see today.
> 
> Signed-off-by: Anton Sovetov <anton.sovetov@gmail.com>
> 
> ---
>   drivers/iommu/rockchip-iommu.c | 42 ++++++++++++++++++++++------------
>   1 file changed, 28 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 07e3517..a3da612 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -590,8 +590,11 @@ static irqreturn_t rk_iommu_irq(int irq, void *dev_id)
>    int i, err;
> 
>    err = pm_runtime_get_if_in_use(iommu->dev);
> - if (!err || WARN_ON_ONCE(err < 0))
> + if (!err || WARN_ON_ONCE(err < 0)) {
> + dev_err(iommu->dev,
> + "interrupt while the mmu is not in use, ignored\n");
>    return ret;
> + }
> 
>    if (WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks)))
>    goto out;
> @@ -691,17 +694,19 @@ static void rk_iommu_zap_iova(struct
> rk_iommu_domain *rk_domain,
> 
>    iommu = list_entry(pos, struct rk_iommu, node);
> 
> - /* Only zap TLBs of IOMMUs that are powered on. */
> - ret = pm_runtime_get_if_in_use(iommu->dev);
> + /*
> + * The usage count says nothing about the power state, so an
> + * unmap that runs while the IOMMU is idle skipped the
> + * shootdown and left stale translations for the next owner of
> + * the same iova.
> + */
> + ret = pm_runtime_get_sync(iommu->dev);
>    if (WARN_ON_ONCE(ret < 0))
>    continue;
> - if (ret) {
> - WARN_ON(clk_bulk_enable(iommu->num_clocks,
> - iommu->clocks));
> - rk_iommu_zap_lines(iommu, iova, size);
> - clk_bulk_disable(iommu->num_clocks, iommu->clocks);
> - pm_runtime_put(iommu->dev);
> - }
> + WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks));
> + rk_iommu_zap_lines(iommu, iova, size);
> + clk_bulk_disable(iommu->num_clocks, iommu->clocks);
> + pm_runtime_put(iommu->dev);
>    }
>    spin_unlock_irqrestore(&rk_domain->iommus_lock, flags);
>   }
> @@ -1037,13 +1042,22 @@ static int rk_iommu_attach_device(struct
> iommu_domain *domain,
>    list_add_tail(&iommu->node, &rk_domain->iommus);
>    spin_unlock_irqrestore(&rk_domain->iommus_lock, flags);
> 
> - ret = pm_runtime_get_if_in_use(iommu->dev);
> - if (!ret || WARN_ON_ONCE(ret < 0))
> - return 0;
> + /*
> + * Detach plus attach is how drivers reset their domain, and the caller
> + * has no way to notice that the MMU was left unprogrammed. Resume the
> + * device and program it.
> + */
> + ret = pm_runtime_get_sync(iommu->dev);
> + if (ret < 0) {
> + dev_err(dev, "cannot resume the mmu, ret: %d\n", ret);
> + return ret;
> + }
> 
>    ret = rk_iommu_enable(iommu);
> - if (ret)
> + if (ret) {
> + dev_err(dev, "mmu enable failed, ret: %d\n", ret);
>    WARN_ON(rk_iommu_identity_attach(&rk_identity_domain, dev));
> + }
> 
>    pm_runtime_put(iommu->dev);
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
