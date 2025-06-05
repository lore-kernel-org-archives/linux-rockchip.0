Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C84E3C5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 14:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u4GLMDRZNLm+ApeGbj/jMfh6eaMktv3liqWADEXAORA=; b=sIoGit67NGI319MfomQBkavOR8
	Gbnd1cUx7O2qywrG3EBAWirrh4gkj4CAXV+X2ijnnNtDp8VEUWuTL+Ynj7vqw877PXXUtLY9oZ1vS
	eM+F2E68Xc9XAcXXMIvnYbmhU2hsVa8zzqo7OfakA4R3lt8M9fGo6GvGIacCb4dyWq3Z8Wn5qddbx
	XVN40M070BJoKFhUXiUjPeUfU588W8wlBjFJ5oamZLKX/aqnVik82QYwsxuoD48SVAAIBSvTcF+2x
	EMoCbb3q9e4pvdgCqatK2+EfG8ENL9TwBXNBYRU91gIQ7+eenxYUcsUlVUN3u0R+SnrMeV1I6oKHK
	C+huwUEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNBAi-0000000FirA-3NZ7;
	Thu, 05 Jun 2025 14:02:20 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAn9-0000000Ffhb-0Rh6;
	Thu, 05 Jun 2025 13:38:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E160168F;
	Thu,  5 Jun 2025 06:37:40 -0700 (PDT)
Received: from [10.1.196.50] (e121345-lin.cambridge.arm.com [10.1.196.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 57A603F5A1;
	Thu,  5 Jun 2025 06:37:56 -0700 (PDT)
Message-ID: <3a8e1101-469b-4686-b160-6fdb1737a636@arm.com>
Date: Thu, 5 Jun 2025 14:37:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 06/10] accel/rocket: Add IOCTL for BO creation
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net>
 <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
 <cc21a090-801d-4b32-bac2-01cebf896c85@arm.com>
 <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_063759_198310_ACB0790A 
X-CRM114-Status: GOOD (  14.20  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, Daniel Stone <daniel@fooishbar.org>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 05/06/2025 8:41 am, Tomeu Vizoso wrote:
[...]
>> In fact this is precisely the usage model I would suggest for this sort
>> of thing, and IIRC I had a similar conversation with the Ethos driver
>> folks a few years back. Running your own IOMMU domain is no biggie, see
>> several other DRM drivers (including rockchip). As long as you have a
>> separate struct device per NPU core then indeed it should be perfectly
>> straightforward to maintain distinct IOMMU domains per job, and
>> attach/detach them as part of scheduling the jobs on and off the cores.
>> Looks like rockchip-iommu supports cross-instance attach, so if
>> necessary you should already be OK to have multiple cores working on the
>> same job at once, without needing extra work at the IOMMU end.
> 
> Ok, so if I understood it correctly, the plan would be for each DRM
> client to have one IOMMU domain per each core (each core has its own
> IOMMU), and map all its buffers in all these domains.
> 
> Then when a job is about to be scheduled on a given core, make sure
> that the IOMMU for that core uses the domain for the client that
> submitted the job.
> 
> Did I get that right?

It should only need a single IOMMU domain per DRM client, so no faffing 
about replicating mappings. iommu_paging_domain_alloc() does need *an* 
appropriate target device so it can identify the right IOMMU driver, but 
that in itself doesn't preclude attaching other devices to the resulting 
domain as well as (or even instead of) the nominal one. In general, not 
all IOMMU drivers support cross-instance attach so it may fail with 
-EINVAL, and *that*'s when you might need to fall back to allocating 
multiple per-instance domains - but as I say since this is a 
Rockchip-specific driver where the IOMMU *is* intended to support this 
already, you don't need to bother.

Thanks,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
