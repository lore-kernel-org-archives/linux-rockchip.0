Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B67DC5CFDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 09:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYwTSpArEZoQmRXiP5G8ZDqPdUCRw1nTUz1A+gusUGU=; b=ri1Ew4qMYiSmTu
	/mrCdoOG7uT3fmYSmb5KVFkHCqD2XACBeymlmpsBoMO7I+GZs207cMrGbgrO0ZgBR+tPsb+Eo+zDx
	7EirwPObrx5m+PCjjl7I8PxHuMHXFzF37GC6Az4f/3d4oWRhOoUsT7IzUipj+AuvrKUny+ebkbdCw
	yeXPX/9Lad78tGLLN1ovH7AEb9B+mvBQ8x6B/+PwlLSX5wwYgW0fSyurm5yglad+N7CAbLTltAJWW
	aB0FsCIm2TtOhwZQbxjxRbbUHd4x0Kk5DQ8BESeHrQHl9J2I0SIMz9tjFtIT6ECnEy2gYyFAmxGJ+
	gXDDRN0lnxuYPzAg/1Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu4uf-0000000Fh9D-0TWn;
	Wed, 12 Aug 2026 09:06:17 +0000
Received: from mail-m83124.xmail.ntesmail.com ([156.224.83.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu4ua-0000000Fh7B-3i3a;
	Wed, 12 Aug 2026 09:06:15 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 49b5abffa;
	Wed, 12 Aug 2026 17:05:57 +0800 (GMT+08:00)
Message-ID: <47d9ada4-5277-4ff6-b7d4-ed4fcbb6a6f7@rock-chips.com>
Date: Wed, 12 Aug 2026 17:05:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: drm/rockchip: vop2: ACLK_VOP pinned at 500 MHz starves DP 4K120
 on RK3588
To: Igor Paunovic <royalnet026@gmail.com>
References: <20260808104240.13776-1-royalnet026@gmail.com>
 <33bd4a94-11af-4cf3-ae44-b7f8944250f6@collabora.com>
 <c0a7521d-9c19-4197-802b-2b64a6ddea28@rock-chips.com>
 <20260811212358.9980-1-royalnet026@gmail.com>
 <7759116b-0beb-4d25-b269-c020a8379cef@rock-chips.com>
 <20260812083857.60460-1-royalnet026@gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20260812083857.60460-1-royalnet026@gmail.com>
X-HM-Tid: 0a9ff538a45f03a7kunmac5ca8645a5459
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQkpCVkIYTkpOSRhJTB4dT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=JzzBXDF2SqrZWHEEKcqgSl4yADVvsT/qS1YZycy3unyz9vTyTyatY2ZpLX9R2FpQvO3mTO3jiEdmncU5ag4VxDLvYRT8K4H5Zk4GIS7UX3yMphO5Ui+0Atadmj3Cu+uN+XhyuqRebZXF9xQK/eWikF9FvKpPhUer0jdhI2siOfc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=h1el+5bynGwZTxmOlFRx3G0Um3mYKNFZI3qxJs10450=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_020613_607362_64F53285 
X-CRM114-Status: GOOD (  41.95  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Igor,

On 8/12/2026 4:38 PM, Igor Paunovic wrote:
> Hi Chaoyi,
> 
> That is exactly what I was missing, thank you. Having the vendor's
> decision flow meant I could stop guessing and go measure the case where
> my rule and yours disagree. I have done that now, and the result is
> worth more than my earlier argument was.
> 
> First, on equivalence: I do not think my threshold is equivalent to the
> linedur_ns term - it is strictly narrower. With
> linedur_ns = crtc_htotal * 1000000 / crtc_clock, and htotal 4400 for the
> 4K modes my panel offers:
> 
>   3840x2160@120  1188000 kHz   linedur_ns 3703
>   3840x2160@60    594000 kHz   linedur_ns 7407
>   2560x1440@144  ~586000 kHz   linedur_ns ~4600-4700
> 
> My VOP2_HIGH_BW_PIXCLK_KHZ of 1000000, at htotal 4400, is the same as
> saying linedur_ns < 4400 - about 1.7x stricter than your 7500. So my
> rule declines to boost in cases where yours boosts, and 3840x2160@60 is
> one of them: your rule raises it on two counts (crtc_hdisplay > 2560 and
> linedur_ns 7407 < 7500), mine does not raise it at all.
> 

Ah, that's close. What I want to say is that it has a direct
correlation with dclk and resolution.

> So I measured that case. I unplugged both HDMI cables, leaving the
> DisplayPort output as the only display, and switched it between
> 3840x2160@120 and 3840x2160@60, reading aclk_vop and dclk_vop2 from
> clk_summary at each point:
> 
>                         4K120 (YCbCr 4:2:0)      4K60
>   dclk_vop2             594 MHz                  594 MHz
>   aclk_vop              750 MHz                  500 MHz
>   vop interrupts/s      120                      60
>   POST_BUF_EMPTY        0                        0, over 60 s
> 
> The dclk is identical in the two states, because the 4K120 link runs
> YCbCr 4:2:0 and the 4K60 link does not. The interface rate did not move
> at all. What moved was what the video port composes - a full-screen 4K
> ARGB plane at 120 Hz versus the same plane at 60 Hz - and the AXI clock.
> That is the separation I told you I could not make from my earlier data,
> where mode and composition moved together. The interrupt counts are one
> vblank per frame in both states, so there is no starvation at either
> point.
> 
> 3840x2160@60 is therefore clean at ACLK 500 MHz with a full-screen 4K
> plane. For that case the downstream rule boosts and does not need to.
> 
> Putting all four points I now have in terms of composed pixels per ACLK
> cycle:
> 
>   3840x2160@120   995.3 Mpx/s   500 MHz   1.99   storms (116630 irq/s)
>   3840x2160@120   995.3 Mpx/s   750 MHz   1.33   clean
>   2560x1440@144   530.8 Mpx/s   500 MHz   1.06   clean
>   3840x2160@60    497.7 Mpx/s   500 MHz   1.00   clean
> 
> The boundary sits between 1.33 and 1.99. That quantity does not depend
> on the connector or on the pixel format, which is what I think you were
> pointing me at, and it fits every point I have rather than the two I
> started from.
> 
> The honest limit of this: all four are a single full-screen plane on a
> single video port. They say nothing about plane_num_4k or crtc_num > 1,
> which are exactly the terms my condition has no counterpart for. I am
> not proposing to drop your terms - I am saying the two mode-derived ones
> appear to carry margin for this shape of workload, and I would rather
> ask than assume.
> 
> The other thing I had not appreciated is where the decision lives.
> rockchip_drm_aclk_adjust() runs from atomic_commit_tail, so it is
> re-evaluated on every commit with that commit's plane information, and
> aclk_adjust_frame_num holds the boost for two more commits on the way
> down. My unsent patch puts the decision in vop2_crtc_atomic_enable() and
> _disable(), which only run on modeset. A condition that depends on what
> the planes are composing cannot live there: a client swapping a 1080p
> plane for a 4K one without a modeset would never be seen. So the
> placement has to change, not just the condition.
>

Yes, I think it depends on the strategy you adopt.

> Two things I would still rather learn than guess:
> 
>   - Is the two-commit hold on the way down a hardware requirement - the
>     rate has to be up before the frame that needs it and stay up for a
>     beat after - or is it belt and braces? It decides whether an
>     upstream version needs the same hysteresis.
>

I think this is a software strategy for debouncing.

>   - Are the mode-derived terms describing something the hardware stalls
>     on, or are they a conservative stand-in for "this is probably a
>     heavy scene"? My 4K60 and 1440p144 points only make sense to me
>     under the second reading.
>

I think it's both. You can think of the VOP internally as having a FIFO:
aclk is used to fill the FIFO, while dclk is used to consume from it. 
This problem occurs when the fill rate cannot keep up with the consumption
rate.

In practice, it is difficult to find a quantitative method to determine 
whether the requirements can be met, so we can only try through 
experimentation. For now, this strategy appears to satisfy our needs.

> I will rewrite the patch along the lines of your flow rather than the
> pixel-clock threshold, and move the decision to the commit path. For
> what it is worth, the version I have been running locally since 7 August
> has driven 3840x2160@120 HDR over DisplayPort with no HDMI output
> present at all, which is the case the FRL-gated condition cannot serve;
> it also drops the rate back to 500 MHz on modeset and restores it, so
> the refcount side behaves.
> 
> Thanks again - this turned a guess into a measurement.
>

Thank you for doing this, let's see if others have any comments.

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
