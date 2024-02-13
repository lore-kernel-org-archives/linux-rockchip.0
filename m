Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74179C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 17:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3EbCyquSaRpDboW4FOI3ttQaKNUwpiHyzLmTn7G3pI=; b=Zka6hypG7eOg3c
	1ytZ6FvBHBqLn8FzkKSGb0/dpJmN4B8mmDNQtHS2PwOs2YL9fNu7GJTHOb6WE6aZSuTHUeKCz+vsj
	J4Vuht9KTuIev5Ya7PWMrRnjWO3cKKHtTvCYYbmRS78lOUVHd3Jf10asER2w5vTypIzQ6ossZjamR
	vt38tGWJcP8VRtHVa0tGQBr948hXwVMQMa3sjXi7VYOYL9YUbAPKSwDb+E75vD33xw098uqB/dx3Z
	4L7SwG2d6CZXkAavSGhux3C5+6KIv2smOTapC5TZVeVtJeZRUhsd8vRxEyny4pRtfU4ZUu7Ph+Xac
	kZVbQWpxRlvkL1fz+ygA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZwYH-0000000A89q-3S8d;
	Tue, 13 Feb 2024 17:26:37 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZwYF-0000000A88C-19sy
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 17:26:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 724E71FB;
	Tue, 13 Feb 2024 09:27:15 -0800 (PST)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 155943F5A1;
	Tue, 13 Feb 2024 09:26:27 -0800 (PST)
Message-ID: <b008bd2d-a189-481f-917d-bb045c43cb07@arm.com>
Date: Tue, 13 Feb 2024 17:26:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/10] iommu/vt-d: add wrapper functions for page
 allocations
Content-Language: en-GB
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io,
 asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com,
 cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
 dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
 iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com,
 joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st,
 mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org,
 rdunlap@infradead.org, samuel@sholland.org, suravee.suthikulpanit@amd.com,
 sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
 tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, will@kernel.org,
 yu-cheng.yu@intel.com, rientjes@google.com, bagasdotme@gmail.com,
 mkoutny@suse.com
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
 <20240207174102.1486130-2-pasha.tatashin@soleen.com>
 <8ce2cd7b-7702-45aa-b4c8-25a01c27ed83@arm.com>
 <CA+CK2bC=XyUhoSP9f0XBqEnQ-P5mMT2U=5dfzRSc9C=2b+bstQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CA+CK2bC=XyUhoSP9f0XBqEnQ-P5mMT2U=5dfzRSc9C=2b+bstQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_092635_450898_E5843F23 
X-CRM114-Status: GOOD (  16.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 10/02/2024 2:21 am, Pasha Tatashin wrote:
[...]
>>> +/**
>>> + * iommu_alloc_pages_node - allocate a zeroed page of a given order from
>>> + * specific NUMA node.
>>> + * @nid: memory NUMA node id
>>> + * @gfp: buddy allocator flags
>>> + * @order: page order
>>> + *
>>> + * returns the virtual address of the allocated page
>>> + */
>>> +static inline void *iommu_alloc_pages_node(int nid, gfp_t gfp, int order)
>>> +{
>>> +     struct page *page = __iommu_alloc_pages_node(nid, gfp, order);
>>> +
>>> +     if (unlikely(!page))
>>> +             return NULL;
>>
>> As a general point I'd prefer to fold these checks into the accounting
>> function itself rather than repeat them all over.
> 
> For the free functions this saves a few cycles by not repeating this
> check again inside __free_pages(), to keep things symmetrical it makes
> sense to keep __iomu_free_account and __iomu_alloc_account the same.
> With the other clean-up there are not that many of these checks left.

__free_pages() doesn't accept NULL, so __iommu_free_pages() shouldn't 
need a check; free_pages() does, but correspondingly iommu_free_pages() 
needs its own check up-front to avoid virt_to_page(NULL); either way it 
means there are no callers of iommu_free_account() who should be passing 
NULL.

The VA-returning allocators of course need to avoid page_address(NULL), 
so I clearly made this comment in the wrong place to begin with, oops. 
In the end I guess that will leave __iommu_alloc_pages() as the only 
caller of iommu_alloc_account() who doesn't already need to handle their 
own NULL. OK, I'm convinced, apologies for having to bounce it off you 
to work it through :)

>>> + */
>>> +static inline void *iommu_alloc_page_node(int nid, gfp_t gfp)
>>> +{
>>> +     return iommu_alloc_pages_node(nid, gfp, 0);
>>> +}
>>
>> TBH I'm not entirely convinced that saving 4 characters per invocation
>> times 11 invocations makes this wrapper worthwhile :/
> 
> Let's keep them. After the clean-up that you suggested, there are
> fewer functions left in this file, but I think that it is cleaner to
> keep these remaining, as it is beneficial to easily distinguish when
> exactly one page is allocated vs when multiple are allocated via code
> search.

But is it, really? It's not at all obvious to me *why* it would be 
significantly interesting to distinguish fixed order-0 allocations from 
higher-order or variable-order (which may still be 0) ones. After all, 
there's no regular alloc_page_node() wrapper, yet plenty more callers of 
alloc_pages_node(..., 0) :/

Thanks,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
