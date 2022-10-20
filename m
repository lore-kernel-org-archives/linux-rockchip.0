Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F10D8C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 16:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGa1u90QyCthkPUhb8TyzWQ+J6CfPguKQIuwmJTIw4c=; b=Y9wKxJWry3z8ub
	cdxtYX0Tb2gzGBePyFDjWnUpiVRz8BKqTEuWz5huUUVeDFnTK0X83lxwdDy1ocUuXX47ITPbglW8P
	RteYHZSj8sTBMYGdQyfFc5G2X+hQEYidmneyu9szbKrJ0wJRhTs1fKXDXLMhk6zWD2lSGu03ADoAY
	ZFein4m3T5XJfn0YXdiitV94Kur27PuqGrUuH5JuO33d4u0Pj+CnEdb6NmltO1JOliJVk28ElZfez
	HHokuek9sBLQjphQOB3SVzNPktjeD+JZWuYRF8gPtD9NFGq4mjHoYj3t6sd15cRKn/HuvVPPCROSh
	wgCRHvC+lbKh7HyOyIVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olYKF-000Hdt-1W; Thu, 20 Oct 2022 16:23:19 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olYII-000GlG-Li
	for linux-rockchip@lists.infradead.org; Thu, 20 Oct 2022 16:21:22 +0000
Received: by mail-pg1-x533.google.com with SMTP id 78so19654013pgb.13
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Oct 2022 09:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=plOOD7cVd6m0ayR0WngHA5VzJY/ih3n9oBQSnCn1imE=;
        b=gfrRQJVth66JTluBm/IV9RjNih1diET/yN81fJNO+7A/9jBP6/Kw0sjGPFq4VFkHbD
         zvNz99iBHO/vz0BflPXAZ1XSd3kIiVm7eDYQqqd1bC/GOTRfrTuzFUdS08KKn2b+aphj
         hfM9cPO3lI9SSGaa/V6FpDfAUq9lZY3bPsnFA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=plOOD7cVd6m0ayR0WngHA5VzJY/ih3n9oBQSnCn1imE=;
        b=W4xQ5mZyYYGq8p6rewfa1mFzxZ3JgK0vutTEPFaRyXM81QQJuYpqwDaAQwggP103Dz
         DzoHxzxb3tPi8Muok1UeD1QbDdg/RGjiEzUi4YkwRLrI/gbUqX/TOovxRdvhVaI4Nb9Y
         zOPkT863eZIcVBnibiWovUCVpkQBFC1GR9ywhneR8+1EuGyzvVZfbfyw9zrF6hYDjp/j
         KxUX1LIzGvMCznkzkX2CG4VAUEaK1zlC1O4H2C3QNZVqx0OWhqxI730F9CqGouFjcDrA
         dqWPsGdeVEkVJMPrL2NfKeSdI0IclCXWCH2/EJrj4pOqRpQv1OLTA0yCGjIHHlPEpFpo
         dH5Q==
X-Gm-Message-State: ACrzQf00f1ToJ5YkPDbZX1+Si1+FTJdC85qyd1Saef7F9+lTBs8tTLdU
	vgEzumv7Mhhn4tuNtvVRDBv7wcUQAiRiJQ==
X-Google-Smtp-Source: AMsMyM6TTBcdYg5hMgTgMPFyj9z7SojwECecgH8dVjYo3AiRIoMJbn8XaUhT2ty7xsvM4P3kuD9deg==
X-Received: by 2002:a17:902:f54d:b0:185:4ca4:2641 with SMTP id h13-20020a170902f54d00b001854ca42641mr14463917plf.50.1666282864857;
        Thu, 20 Oct 2022 09:21:04 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:57b7:1f0e:44d1:f252])
        by smtp.gmail.com with ESMTPSA id b4-20020a170902bd4400b0016d72804664sm12908567plx.205.2022.10.20.09.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 09:21:04 -0700 (PDT)
Date: Thu, 20 Oct 2022 09:21:01 -0700
From: Brian Norris <briannorris@chromium.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Krishna Reddy <vdumpa@nvidia.com>,
	Kevin Tian <kevin.tian@intel.com>,
	Matthew Rosato <mjrosato@linux.ibm.com>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	Joerg Roedel <jroedel@suse.de>, iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: 6.1-rc1 regression: bisected to 57365a04c921 iommu: Move bus
 setup to IOMMU device registration
Message-ID: <Y1F1bbaVX4/bmbS0@google.com>
References: <Y1CHh2oM5wyHs06J@google.com>
 <5933d917-a026-7150-2e05-2cb283a73174@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5933d917-a026-7150-2e05-2cb283a73174@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_092118_839848_CDB0FD2E 
X-CRM114-Status: GOOD (  16.10  )
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

On Thu, Oct 20, 2022 at 11:02:23AM +0100, Robin Murphy wrote:
> We shouldn't really need locking for iommu_buses itself, but I guess to
> support async probe we would need per-device locking in
> iommu_probe_device() to prevent multiple threads trying to probe the
> same device at once, which must be what's happening in your case to
> cause a double-dev_iommu_free().

Perhaps. I still haven't spent enough time trying to learn the expected
behavior here.

> I'll see what I can do ASAP, since I
> think that's worthwhile.

Awesome!

> In the meantime, as to why you're hitting the
> failure path at all, I think that's another subtle oversight on my part,

Ah, I didn't even pay attention to the fact we were hitting an error
path here.

The comments you move ("Use the first registered IOMMU device") might
suggest that some of the problems could be more fundamental to rk_iommu,
since with async probe, there is no such "first registerered device".
(Well, they get serialized into some lists eventually, but for the most
part we have to consider them unordered.)

> does something like the diff below help?

I get a different crash at least!

[    0.183048] Unable to handle kernel NULL pointer dereference at virtual address 00000000000002a0
...
[    0.183133] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 6.1.0-rc1+ #66
[    0.183143] Hardware name: Google Scarlet (DT)
...
[    0.183314] Call trace:
[    0.183319]  _raw_spin_lock_irqsave+0x44/0x9c
[    0.183328]  devres_add+0x34/0x64
[    0.183336]  devm_kmalloc+0xac/0xcc
[    0.183345]  rk_iommu_of_xlate+0x3c/0x80
[    0.183358]  of_iommu_xlate+0x8c/0xd0
[    0.183367]  of_iommu_configure+0x120/0x1d0
[    0.183377]  of_dma_configure_id+0x190/0x244
[    0.183387]  platform_dma_configure+0x40/0x88
[    0.183397]  really_probe+0xac/0x284
[    0.183409]  __driver_probe_device+0xc0/0xec
[    0.183419]  driver_probe_device+0x4c/0xd4
[    0.183429]  __driver_attach+0xb8/0x10c
[    0.183439]  bus_for_each_dev+0x8c/0xd8
[    0.183448]  driver_attach+0x30/0x3c
[    0.183458]  bus_add_driver+0x118/0x1f8
[    0.183467]  driver_register+0x70/0x10c
[    0.183475]  __platform_register_drivers+0x5c/0xcc
[    0.183484]  rockchip_drm_init+0x74/0xc4
[    0.183495]  do_one_initcall+0x154/0x2e0
[    0.183505]  do_initcall_level+0x134/0x160
[    0.183515]  do_initcalls+0x60/0xa0
[    0.183524]  do_basic_setup+0x28/0x34
[    0.183532]  kernel_init_freeable+0xf8/0x150
[    0.183541]  kernel_init+0x2c/0x12c
[    0.183551]  ret_from_fork+0x10/0x20
[    0.183567] Code: 5280002b 1100054a b900092a f9800011 (885ffc01)
[    0.183574] ---[ end trace 0000000000000000 ]---

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
