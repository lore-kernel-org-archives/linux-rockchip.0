Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6B9BC48297
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 13:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tg8tFQnJu6N2Hnfxwt5a5zYvRPVr+cplCd6is1zJ9NA=; b=tEqCTpG0kzf2+jbNjgxPkaL8yy
	r4D22AYaau2YEz1oXkhJRofgUNqE6lH68cxX9Mq2KC3PYlRzgxaP1UpWoGHn720UyvPwRnCIuTlbN
	90VrVrjdnwnCTwQk1GMHh9RF8pOuWUV9NfIcG8bNo/SU4VjIwMwLO6Y9B1xt+dNPaEXORFErOH/ko
	d7DYNBzB7AL5uMScaOhXrWVky0u2Qi95alxz/t/VBzpwAuOy4ZJ7uW/jNsh2JTCU31Gl0VvxuLjD5
	lAEYhUTCDQ1CpGrZe8FD08Td2AhdpZ2zspaoz7UGNpwlOzKEWxsuomwDDs8uJAQzOLW0LkUam4Z4b
	P8QoudGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYRBB-0000000H6RF-3ndd;
	Fri, 09 Feb 2024 13:44:33 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYRB8-0000000H6Q8-2ppi
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Feb 2024 13:44:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9D9BDA7;
	Fri,  9 Feb 2024 05:45:09 -0800 (PST)
Received: from [10.57.47.119] (unknown [10.57.47.119])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B0283F762;
	Fri,  9 Feb 2024 05:44:21 -0800 (PST)
Message-ID: <8ce2cd7b-7702-45aa-b4c8-25a01c27ed83@arm.com>
Date: Fri, 9 Feb 2024 13:44:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 01/10] iommu/vt-d: add wrapper functions for page
 allocations
Content-Language: en-GB
To: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org,
 alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev,
 baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org,
 corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
 heiko@sntech.de, iommu@lists.linux.dev, jernej.skrabec@gmail.com,
 jonathanh@nvidia.com, joro@8bytes.org, krzysztof.kozlowski@linaro.org,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 lizefan.x@bytedance.com, marcan@marcan.st, mhiramat@kernel.org,
 m.szyprowski@samsung.com, paulmck@kernel.org, rdunlap@infradead.org,
 samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev,
 thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com,
 vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com,
 rientjes@google.com, bagasdotme@gmail.com, mkoutny@suse.com
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
 <20240207174102.1486130-2-pasha.tatashin@soleen.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20240207174102.1486130-2-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_054430_860687_52505ADF 
X-CRM114-Status: GOOD (  25.82  )
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

On 2024-02-07 5:40 pm, Pasha Tatashin wrote:
[...]> diff --git a/drivers/iommu/iommu-pages.h 
b/drivers/iommu/iommu-pages.h
> new file mode 100644
> index 000000000000..c412d0aaa399
> --- /dev/null
> +++ b/drivers/iommu/iommu-pages.h
> @@ -0,0 +1,204 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2024, Google LLC.
> + * Pasha Tatashin <pasha.tatashin@soleen.com>
> + */
> +
> +#ifndef __IOMMU_PAGES_H
> +#define __IOMMU_PAGES_H
> +
> +#include <linux/vmstat.h>
> +#include <linux/gfp.h>
> +#include <linux/mm.h>
> +
> +/*
> + * All page allocation that are performed in the IOMMU subsystem must use one of

"All page allocations" is too broad; As before, this is only about 
pagetable allocations, or I guess for the full nuance, allocations of 
pagetables and other per-iommu_domain configuration structures which are 
reasonable to report as "pagetables" to userspace.

> + * the functions below.  This is necessary for the proper accounting as IOMMU
> + * state can be rather large, i.e. multiple gigabytes in size.
> + */
> +
> +/**
> + * __iommu_alloc_pages_node - allocate a zeroed page of a given order from
> + * specific NUMA node.
> + * @nid: memory NUMA node id
> + * @gfp: buddy allocator flags
> + * @order: page order
> + *
> + * returns the head struct page of the allocated page.
> + */
> +static inline struct page *__iommu_alloc_pages_node(int nid, gfp_t gfp,
> +						    int order)
> +{
> +	struct page *page;
> +
> +	page = alloc_pages_node(nid, gfp | __GFP_ZERO, order);
> +	if (unlikely(!page))
> +		return NULL;
> +
> +	return page;
> +}

All 3 invocations of this only use the returned struct page to trivially 
derive page_address(), so we really don't need it; just clean up these 
callsites a bit more.

> +
> +/**
> + * __iommu_alloc_pages - allocate a zeroed page of a given order.
> + * @gfp: buddy allocator flags
> + * @order: page order
> + *
> + * returns the head struct page of the allocated page.
> + */
> +static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
> +{
> +	struct page *page;
> +
> +	page = alloc_pages(gfp | __GFP_ZERO, order);
> +	if (unlikely(!page))
> +		return NULL;
> +
> +	return page;
> +}

Same for the single invocation of this one.

> +
> +/**
> + * __iommu_alloc_page_node - allocate a zeroed page at specific NUMA node.
> + * @nid: memory NUMA node id
> + * @gfp: buddy allocator flags
> + *
> + * returns the struct page of the allocated page.
> + */
> +static inline struct page *__iommu_alloc_page_node(int nid, gfp_t gfp)
> +{
> +	return __iommu_alloc_pages_node(nid, gfp, 0);
> +}

There are no users of this at all.

> +
> +/**
> + * __iommu_alloc_page - allocate a zeroed page
> + * @gfp: buddy allocator flags
> + *
> + * returns the struct page of the allocated page.
> + */
> +static inline struct page *__iommu_alloc_page(gfp_t gfp)
> +{
> +	return __iommu_alloc_pages(gfp, 0);
> +}
> +
> +/**
> + * __iommu_free_pages - free page of a given order
> + * @page: head struct page of the page
> + * @order: page order
> + */
> +static inline void __iommu_free_pages(struct page *page, int order)
> +{
> +	if (!page)
> +		return;
> +
> +	__free_pages(page, order);
> +}
> +
> +/**
> + * __iommu_free_page - free page
> + * @page: struct page of the page
> + */
> +static inline void __iommu_free_page(struct page *page)
> +{
> +	__iommu_free_pages(page, 0);
> +}

Beyond one more trivial Intel cleanup for __iommu_alloc_pages(), these 3 
are then only used by tegra-smmu, so honestly I'd be inclined to just 
open-code there page_address()/virt_to_page() conversions as appropriate 
there (once again I think the whole thing could in fact be refactored to 
not use struct pages at all because all it's ever ultimately doing with 
them is page_address(), but that would be a bigger job so definitely 
out-of-scope for this series).

> +
> +/**
> + * iommu_alloc_pages_node - allocate a zeroed page of a given order from
> + * specific NUMA node.
> + * @nid: memory NUMA node id
> + * @gfp: buddy allocator flags
> + * @order: page order
> + *
> + * returns the virtual address of the allocated page
> + */
> +static inline void *iommu_alloc_pages_node(int nid, gfp_t gfp, int order)
> +{
> +	struct page *page = __iommu_alloc_pages_node(nid, gfp, order);
> +
> +	if (unlikely(!page))
> +		return NULL;

As a general point I'd prefer to fold these checks into the accounting 
function itself rather than repeat them all over.

> +
> +	return page_address(page);
> +}
> +
> +/**
> + * iommu_alloc_pages - allocate a zeroed page of a given order
> + * @gfp: buddy allocator flags
> + * @order: page order
> + *
> + * returns the virtual address of the allocated page
> + */
> +static inline void *iommu_alloc_pages(gfp_t gfp, int order)
> +{
> +	struct page *page = __iommu_alloc_pages(gfp, order);
> +
> +	if (unlikely(!page))
> +		return NULL;
> +
> +	return page_address(page);
> +}
> +
> +/**
> + * iommu_alloc_page_node - allocate a zeroed page at specific NUMA node.
> + * @nid: memory NUMA node id
> + * @gfp: buddy allocator flags
> + *
> + * returns the virtual address of the allocated page
> + */
> +static inline void *iommu_alloc_page_node(int nid, gfp_t gfp)
> +{
> +	return iommu_alloc_pages_node(nid, gfp, 0);
> +}

TBH I'm not entirely convinced that saving 4 characters per invocation 
times 11 invocations makes this wrapper worthwhile :/

> +
> +/**
> + * iommu_alloc_page - allocate a zeroed page
> + * @gfp: buddy allocator flags
> + *
> + * returns the virtual address of the allocated page
> + */
> +static inline void *iommu_alloc_page(gfp_t gfp)
> +{
> +	return iommu_alloc_pages(gfp, 0);
> +}
> +
> +/**
> + * iommu_free_pages - free page of a given order
> + * @virt: virtual address of the page to be freed.
> + * @order: page order
> + */
> +static inline void iommu_free_pages(void *virt, int order)
> +{
> +	if (!virt)
> +		return;
> +
> +	__iommu_free_pages(virt_to_page(virt), order);
> +}
> +
> +/**
> + * iommu_free_page - free page
> + * @virt: virtual address of the page to be freed.
> + */
> +static inline void iommu_free_page(void *virt)
> +{
> +	iommu_free_pages(virt, 0);
> +}
> +
> +/**
> + * iommu_free_pages_list - free a list of pages.
> + * @page: the head of the lru list to be freed.
> + *
> + * There are no locking requirement for these pages, as they are going to be
> + * put on a free list as soon as refcount reaches 0. Pages are put on this LRU
> + * list once they are removed from the IOMMU page tables. However, they can
> + * still be access through debugfs.
> + */
> +static inline void iommu_free_pages_list(struct list_head *page)

Nit: I'd be inclined to call this iommu_put_pages_list for consistency.

> +{
> +	while (!list_empty(page)) {
> +		struct page *p = list_entry(page->prev, struct page, lru);
> +
> +		list_del(&p->lru);
> +		put_page(p);
> +	}
> +}

I realise now you've also missed the common freelist freeing sites in 
iommu-dma.

Thanks,
Robin.

> +
> +#endif	/* __IOMMU_PAGES_H */

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
