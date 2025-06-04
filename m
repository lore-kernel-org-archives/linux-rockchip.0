Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35C04C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 17:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tHxAS65+D9TstbKPenOjz8AUFT/y4sLYxIjfkBwdXWk=; b=E92t0HQCqfAzefd7b/3pV+Xnc5
	3ZxoTeb70+lrHLzG8lkIS+lBX/OHyfhTq93shZVJJ3A7X++w3L8GwKtPaX92iakPfdiUCy+4p/+md
	JYwWDIGtnjm+x9salSiNhSbjmE80WskuTMOFplXEmedDtGkvTOLU0ibRRiBGqSkaYVqdmUrVKyn+P
	LusQNuqhEoyAoDZsbGozupFe2fygDZnX6OdynBuQMPmHWtOFL813OJ0HCpi4S1+ysTLrQs41nTZaK
	f34rh/bbAiRrCmY+Kirn5wp6jNh5pQ+BgoyZkyCzmOc2UftbYoMB4yxq7PgR5cGZpNiLxYwWKMqVO
	6pK/3nGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMrZ9-0000000DrJT-2PDn;
	Wed, 04 Jun 2025 17:06:15 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMrWb-0000000Dqx9-2uta;
	Wed, 04 Jun 2025 17:03:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DF2F1758;
	Wed,  4 Jun 2025 10:03:17 -0700 (PDT)
Received: from [10.57.26.187] (unknown [10.57.26.187])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 358D43F59E;
	Wed,  4 Jun 2025 10:03:30 -0700 (PDT)
Message-ID: <cc21a090-801d-4b32-bac2-01cebf896c85@arm.com>
Date: Wed, 4 Jun 2025 18:03:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 06/10] accel/rocket: Add IOCTL for BO creation
To: Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net>
 <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_100337_827074_B0D84C66 
X-CRM114-Status: GOOD (  34.48  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2025-06-04 5:18 pm, Daniel Stone wrote:
> Hi Tomeu,
> I have some bad news ...
> 
> On Wed, 4 Jun 2025 at 08:57, Tomeu Vizoso <tomeu@tomeuvizoso.net> wrote:
>> +int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *file)
>> +{
>> +       [...]
>> +
>> +       /* This will map the pages to the IOMMU linked to core 0 */
>> +       sgt = drm_gem_shmem_get_pages_sgt(shmem_obj);
>> +       if (IS_ERR(sgt)) {
>> +               ret = PTR_ERR(sgt);
>> +               goto err;
>> +       }
>> +
>> +       /* Map the pages to the IOMMUs linked to the other cores, so all cores can access this BO */
> 
> So, uh, this is not great.
> 
> We only have a single IOMMU context (well, one per core, but one
> effective VMA) for the whole device. Every BO that gets created, gets
> mapped into the IOMMU until it's been destroyed. Given that there is
> no client isolation and no CS validation, that means that every client
> has RW access to every BO created by any other client, for the
> lifetime of that BO.
> 
> I really don't think that this is tractable, given that anyone with
> access to the device can exfiltrate anything that anyone else has
> provided to the device.
> 
> I also don't think that CS validation is tractable tbh.
> 
> So I guess that leaves us with the third option: enforcing context
> separation within the kernel driver.
> 
> The least preferable option I can think of is that rkt sets up and
> tears down MMU mappings for each job, according to the BO list
> provided for it. This seems like way too much overhead - especially
> with RK IOMMU ops having been slow enough within DRM that we expended
> a lot of effort in Weston doing caching of DRM BOs to avoid doing this
> unless completely necessary. It also seems risky wrt allocating memory
> in drm_sched paths to ensure forward progress.
> 
> Slightly more preferable than this would be that rkt kept a
> per-context list of BOs and their VA mappings, and when switching
> between different contexts, would tear down all MMU mappings from the
> old context and set up mappings from the new. But this has the same
> issues with drm_sched.
> 
> The most preferable option from where I sit is that we could have an
> explicit notion of driver-managed IOMMU contexts, such that rkt could
> prepare the IOMMU for each context, and then switching contexts at
> job-run time would be a matter of changing the root DTE pointer and
> issuing a flush. But I don't see that anywhere in the user-facing
> IOMMU API, and I'm sure Robin (CCed) will be along shortly to explain
> why it's not possible ...

On the contrary, it's called iommu_attach_group() :)

In fact this is precisely the usage model I would suggest for this sort 
of thing, and IIRC I had a similar conversation with the Ethos driver 
folks a few years back. Running your own IOMMU domain is no biggie, see 
several other DRM drivers (including rockchip). As long as you have a 
separate struct device per NPU core then indeed it should be perfectly 
straightforward to maintain distinct IOMMU domains per job, and 
attach/detach them as part of scheduling the jobs on and off the cores. 
Looks like rockchip-iommu supports cross-instance attach, so if 
necessary you should already be OK to have multiple cores working on the 
same job at once, without needing extra work at the IOMMU end.

> Either way, I wonder if we have fully per-context mappings, userspace
> should not manage IOVAs in the VM_BIND style common to newer drivers,
> rather than relying on the kernel to do VA allocation and inform
> userspace of them?

Indeed if you're using the IOMMU API directly then you need to do your 
own address space management either way, so matching bits of process VA 
space is pretty simple to put on the table.

Thanks,
Robin.

> 
> I'm really sorry this has come so late in the game.
> 
> Cheers,
> Daniel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
