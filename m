Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F064606A334
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 16:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GR3ERv2z;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=arm.com header.i=@arm.com header.a=rsa-sha256 header.s=foss header.b=JHAZeWjz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rCxtBgMwDi4zoEjMuamYNdCFxQe2JEBREJBzh4XB0Ak=; b=GR3ERv2z/zZV8g/e9K6Q2n8bwe
	oh2/24S7A9wxgpd1uIXv022fkJEooM4UWLokR0SegDJ6wkh7Otqf/S4HrH9CeBUWHE3uP00m/+NoT
	91wpkuQp14VM2ckRBMV7aptVg3rjHnluxNFJyDCbRquIxAk09ik2Uj8YNmZ0MMLEswqlnoQlusDIR
	XhYY6TFPCo5Xnfyn47mOnxAqsNy7hvvxoTVS3ZkbframIx5Mo3o68vq2apeJm57s9wxoEXRqeMo30
	PRrHSMzgxN0BhCiQ1nH28vrVE0qRoXGumL8aIk5RNaMA6qVAfo/dANlm3HYo5i9m1e3ctXS1AAiKK
	VqGmMbJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWxt-00000004CZ1-3jQx;
	Mon, 23 Nov 2026 16:32:25 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWxq-00000004CXj-3Orw;
	Mon, 23 Nov 2026 16:32:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40AFB143D;
	Mon, 23 Nov 2026 08:32:16 -0800 (PST)
Received: from [10.57.63.212] (unknown [10.57.63.212])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC84D3F632;
	Mon, 23 Nov 2026 08:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1795451539; bh=KhxNIpGSzlXvEjcbWdqGMKZlQcHc/27HY9nyACtvYyU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JHAZeWjz3labj4HkqSbae/RQ4xXHLlp++Cg7+Inbu67rR6whvGAoBW/97PRbGatoF
	 ZDdXPZa1ingKjQBX3NZPmVbkcZQmAAYGEtAIHWUSsGV8lvyhQ9Dri90TRGpoDS1JDN
	 NVDMvRujrs7fJlM23mYi5ak5hX00/+5RbnQd6dfA=
Message-ID: <c6b04a8f-a575-4f78-828c-1d5684446584@arm.com>
Date: Mon, 23 Nov 2026 16:32:13 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/panthor: Suspend devfreq until the GPU is first
 resumed
To: aiyengar1990@gmail.com, Boris Brezillon <boris.brezillon@collabora.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Akash Goel <akash.goel@arm.com>,
 Karunika Choo <karunika.choo@arm.com>,
 Lukas Zapolskas <lukas.zapolskas@arm.com>,
 Chris Diamand <chris.diamand@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Jonas Karlman <jonas@kwiboo.se>
References: <20261112-panthor-suspend-clk-v2-1-62e1b168052d@gmail.com>
From: Steven Price <steven.price@arm.com>
Content-Language: en-GB
In-Reply-To: <20261112-panthor-suspend-clk-v2-1-62e1b168052d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_083222_944275_4AC67E20 
X-CRM114-Status: GOOD (  42.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 12/11/2026 08:10, Arun Iyengar via B4 Relay wrote:
> From: Arun Iyengar <aiyengar1990@gmail.com>
> 
> panthor_devfreq_init() adds the devfreq device while the GPU is still
> suspended, and the first panthor_device_resume() then calls
> devfreq_resume_device() without a matching devfreq_suspend_device(). The
> devfreq suspend count stays off by one for the lifetime of the device:
> -1 while the GPU is active, 0 while it is runtime suspended.
> 
> devfreq_suspend() and devfreq_resume() around a system suspend therefore
> treat a runtime suspended GPU as an active one: devfreq_suspend()
> applies the suspend OPP, if there is one, and devfreq_resume() restarts
> the polling of the simple_ondemand governor, which then sets GPU rates
> while the GPU is still runtime suspended, until its next runtime resume
> and suspend. With the devfreq core keeping a suspended device's
> frequency alone ("PM / devfreq: Do not change the frequency of a
> suspended device"), the unbalanced devfreq_resume() also marks the
> device resumed while the GPU is powered down.
> 
> Suspend devfreq right after adding it, as msm_devfreq_init() does, so
> that the devfreq suspend and resume calls pair up.
> 
> Fixes: fac9b22df4b1 ("drm/panthor: Add the devfreq logical block")
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
> v1 kept devfreq from changing the GPU clock rate while the GPU is
> suspended by filtering the calls in panthor_devfreq_target(). As Boris
> pointed out, that cannot be done race-free in the driver, so v2 moves it
> to the devfreq core: "PM / devfreq: Do not change the frequency of a
> suspended device" (linux-pm [1]) keeps devfreq from calling
> ->target() between devfreq_suspend_device() and devfreq_resume_device()
> and applies the requests made in between on resume. The SError fix
> needs that patch. What is left for panthor is this patch, which makes
> panthor's devfreq suspend and resume calls pair up; it does not depend
> on the devfreq patch to build or to be correct.
> 
> Tested on an Orange Pi 5 (RK3588S) running a v7.3-based kernel with
> this patch and the devfreq patch, with the GPU core clock on the
> firmware-managed SCMI_CLK_GPU and a 200 MHz opp-suspend (the
> configuration of Jonas Karlman's RFC, not in mainline): min_freq,
> max_freq, the userspace governor's set_freq and the devfreq cooling
> state written while the GPU was runtime suspended, also right after a
> suspend-to-idle cycle, no longer end in an SError and take effect on
> the next GPU job; 200 runtime suspend/resume cycles with max_freq
> toggling every ~35 ms and a 3 minute sustained load ran without an
> SError, WARN or panthor fault.
> 
> This patch was developed with Claude (Anthropic) as a coding assistant:
> it wrote the code and the commit message, and I reviewed it and tested
> it as described above.
> 
> [1] https://lore.kernel.org/r/20261112-devfreq-suspend-sync-v1-1-af64603ef43e@gmail.com
> ---
> Changes in v2:
> - Dropped the check in panthor_devfreq_target() (Boris): neither
>   pm.state nor devfreq::suspend_count can be read there without racing
>   with devfreq_suspend_device() and devfreq_resume_device(), which only
>   take devfreq->lock around the suspend and resume frequency changes.
>   The devfreq core now tracks the suspended state under devfreq->lock
>   and does not call ->target() while it is set, as Boris suggested.
> - New patch: start with devfreq suspended. The first runtime resume
>   called devfreq_resume_device() without a matching suspend, so the
>   suspend count was -1 while the GPU was active and 0 while it was
>   suspended (the reason v1 did not use it). Without this, the devfreq
>   core change would not hold across a system suspend taken while the
>   GPU is runtime suspended.
> - Liviu, on returning 0 instead of -EINVAL: returning 0 was wrong, devfreq
>   then records a rate the GPU does not run at (Boris). An error is
>   better than 0, but -EINVAL reports a valid request as invalid (-EBUSY
>   fits better), and either way nothing retries the request on resume:
>   the userspace and performance governors never re-evaluate, and
>   simple_ondemand only at its next poll. With the core change panthor
>   never gets these calls, so there is nothing left to reject.
> - Liviu, on disabling the clock when the power domain goes down: the
>   clocks are already disabled in panthor_device_suspend() before the
>   domain goes down, and the SError happens in that state. On RK3588 a
>   rate change on the disabled SCMI clock still goes to TF-A, which
>   programs the PVTPLL through the GPU GRF in the powered-down domain.
>   So the rate change itself has to be held back while suspended.
> - Liviu, on the comment length: the remaining comment is two lines.
> - Sashiko's findings on v1 (a rate requested while suspended was lost
>   without a suspend OPP or with a non-polling governor; the lockless
>   state check could race with the clocks going off; Fixes: tag) are
>   covered by the devfreq core change, which applies deferred requests on
>   resume and keeps the state under devfreq->lock. Thanks to Sashiko for
>   them. The new patch has Fixes: fac9b22df4b1, the commit Sashiko named:
>   the unbalanced count is a mainline bug, independent of the SCMI clock.
> - Link to v1: https://patch.msgid.link/20261110-panthor-suspend-clk-v1-1-53457050e51e@gmail.com
> ---
>  drivers/gpu/drm/panthor/panthor_devfreq.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panthor/panthor_devfreq.c b/drivers/gpu/drm/panthor/panthor_devfreq.c
> index 2249b41ca4af..45ae42dacdcb 100644
> --- a/drivers/gpu/drm/panthor/panthor_devfreq.c
> +++ b/drivers/gpu/drm/panthor/panthor_devfreq.c
> @@ -256,6 +256,12 @@ int panthor_devfreq_init(struct panthor_device *ptdev)
>  		return ret;
>  	}
>  
> +	/*
> +	 * The GPU stays suspended until the first panthor_device_resume(),
> +	 * which resumes devfreq. Suspend devfreq to match.
> +	 */
> +	panthor_devfreq_suspend(ptdev);
> +
>  	cooling = devfreq_cooling_em_register(pdevfreq->devfreq, NULL);
>  	if (IS_ERR(cooling))
>  		DRM_DEV_INFO(dev, "Failed to register cooling device\n");
> 
> ---
> base-commit: cb0a63f0c96e8ecb90199eeb99cc2a7fcfa703d4
> change-id: 20261110-panthor-suspend-clk-11d5604fe5be
> 
> Best regards,
> --  
> Arun Iyengar <aiyengar1990@gmail.com>
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
