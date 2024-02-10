Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1291BC4829B
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Feb 2024 02:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dORubR/gxnzXxsAjVcqBxYCh4xQqOBSj+BRy64AEwUw=; b=prll9GeWv6qVjw
	0dvxb8qWeNmqCxRGL7oUx1Pm+KTwshrHrr8MzR62SZj6Bz9SAkK8oxNvoXpZ+8GkOH6VEG8EA8vyF
	dhdjhuOIRnL3iHgP+zW3v08Q+MaMojA+F3TyETNzZijfb7SKHQrTquc9QHsag5yA/Fz5AqI0aGOFZ
	KDVlSZNhaBo2ErYkqs67MgQgxVNFwFyQVwbOR2XEdo7esbhM/v0Cke9X2Jcqrm+3CVLMlhjKLGHx8
	qjh8u3K+uejyGEYDqWP/9qzj6bnYvlh05JmZhK481EJm+OJ6T69zlPmW7uGFRHtbgAxKsapsEG/2J
	h6Bdn657zJFALxXqSvxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYd04-000000015pa-0NLB;
	Sat, 10 Feb 2024 02:21:52 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYd00-000000015oa-3zkf
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Feb 2024 02:21:50 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-219452bdf81so897693fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Feb 2024 18:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707531707; x=1708136507; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HxzMCuaeyhn3J9cU+FUkQXDQEw1s8FDPbrSZbrZddcs=;
        b=mEYRwHYEFdCg6k3nJ5HEfy7XN9h74lG97Z9KkhijLYIpZLN7xN6y0pCMD+8fNPKxb6
         Y+Appu9JTeSMq2IhjaUCydCGOhVjhWavY+xw4Hqb0JRybwNh23va9rNdNMavye/iImKP
         FM9Ek3ZFsqbwDiJOOoT9y8d4xDwEE8ByW0GBGVle8xztztlEhH5o2Kf2eEgHQbmnEBEN
         g1IoIizjpmRcf1Vj29nfXDGHRMGgKYikc9dhfj9HDrJIxZAz9F6qZuxZhPuYyFTy7DxG
         YLV3LUMp86Oa+JWjvoLQ0JPY9vIoA3R9s7C2ewSiomLfL9PFuVt3oMkdPv2Z10uMKsSq
         2Lxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707531707; x=1708136507;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HxzMCuaeyhn3J9cU+FUkQXDQEw1s8FDPbrSZbrZddcs=;
        b=VdO7uJ6mgBICtMgowZNtNj9+mT2zsds3iaLftkQI8iKhTKr3I6clv1aHgYSKSxjazS
         tp/n9YrplQe78JxSj6AGJr/zQfpj9EZfjF2BdTj9Vtqxv0rL38qd/mzAzZw9algNFaxf
         d5gyL83VyCN3pCZBZrG9GFUiCj6MnxoqruJLhJnMPhCRz3NuAcl9lUGH73uyAJDPPFrX
         p71PpygkaZmwqes1u5UkZhKRU16G+3dycEx6xQxvWs+kuqZ0xqtAhw1NRRG4fo8Z0VCa
         pt336OYsKmrDANBwplH/LWF1xE1QdIQzcttHA/rNGmUWz1fwsdXSZDhgo2zKpL3k58gf
         NOsA==
X-Forwarded-Encrypted: i=1; AJvYcCUb3mdcK/T2Z9ubiH09K2hzJV+SMRVI3ykPwmL0X/hmRd8oso1C0gZiz605DshTldxXOk8u5rwCrE2xkjTjoxfsl+uMEcC9h9KRiby0cRoqrK+3
X-Gm-Message-State: AOJu0YyXY2tnJmZGMdO76Svzb2VAHgSW/wijxGNvxVEG0G3uURJUEXP9
	8aF7oPggWy8NA7MUa6ceu+CFEKSIsqk5Bnsl6wKjmRUDEPkc+iUs7/4C6u6FqS7Oz9oYeuR+UFX
	C9UD7eXSGxachtJnnnKRjDLmeVXuTOzJSjBNkWw==
X-Google-Smtp-Source: AGHT+IFmCDzBaOTRJEg/f8FLkRS6yQpqqh3yX5ZW6I0WCsOQ72Tibv6RAzofMrIiMT9QniCTSK/5rtfk2WW8zRu6CiM=
X-Received: by 2002:a05:6870:211:b0:218:f001:10bf with SMTP id
 j17-20020a056870021100b00218f00110bfmr1150766oad.35.1707531707564; Fri, 09
 Feb 2024 18:21:47 -0800 (PST)
MIME-Version: 1.0
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
 <20240207174102.1486130-2-pasha.tatashin@soleen.com> <8ce2cd7b-7702-45aa-b4c8-25a01c27ed83@arm.com>
In-Reply-To: <8ce2cd7b-7702-45aa-b4c8-25a01c27ed83@arm.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 9 Feb 2024 21:21:10 -0500
Message-ID: <CA+CK2bC=XyUhoSP9f0XBqEnQ-P5mMT2U=5dfzRSc9C=2b+bstQ@mail.gmail.com>
Subject: Re: [PATCH v4 01/10] iommu/vt-d: add wrapper functions for page allocations
To: Robin Murphy <robin.murphy@arm.com>
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_182149_058445_18A60E83 
X-CRM114-Status: GOOD (  35.18  )
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

Hi Robin,

Thank you for reviewing this.

> > +#ifndef __IOMMU_PAGES_H
> > +#define __IOMMU_PAGES_H
> > +
> > +#include <linux/vmstat.h>
> > +#include <linux/gfp.h>
> > +#include <linux/mm.h>
> > +
> > +/*
> > + * All page allocation that are performed in the IOMMU subsystem must use one of
>
> "All page allocations" is too broad; As before, this is only about
> pagetable allocations, or I guess for the full nuance, allocations of
> pagetables and other per-iommu_domain configuration structures which are
> reasonable to report as "pagetables" to userspace.

I will update the comment.


>
> > + * the functions below.  This is necessary for the proper accounting as IOMMU
> > + * state can be rather large, i.e. multiple gigabytes in size.
> > + */
> > +
> > +/**
> > + * __iommu_alloc_pages_node - allocate a zeroed page of a given order from
> > + * specific NUMA node.
> > + * @nid: memory NUMA node id
> > + * @gfp: buddy allocator flags
> > + * @order: page order
> > + *
> > + * returns the head struct page of the allocated page.
> > + */
> > +static inline struct page *__iommu_alloc_pages_node(int nid, gfp_t gfp,
> > +                                                 int order)
> > +{
> > +     struct page *page;
> > +
> > +     page = alloc_pages_node(nid, gfp | __GFP_ZERO, order);
> > +     if (unlikely(!page))
> > +             return NULL;
> > +
> > +     return page;
> > +}
>
> All 3 invocations of this only use the returned struct page to trivially
> derive page_address(), so we really don't need it; just clean up these
> callsites a bit more.

I will remove this function, and update all invocations to use
iommu_alloc_pages_node() directly.


> > + * __iommu_alloc_pages - allocate a zeroed page of a given order.
> > + * @gfp: buddy allocator flags
> > + * @order: page order
> > + *
> > + * returns the head struct page of the allocated page.
> > + */
> > +static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
> > +{
> > +     struct page *page;
> > +
> > +     page = alloc_pages(gfp | __GFP_ZERO, order);
> > +     if (unlikely(!page))
> > +             return NULL;
> > +
> > +     return page;
> > +}
>
> Same for the single invocation of this one.

I kept this function, but removed __iommu_alloc_page() that depends on
it. This is because tegra-smmu needs a "struct page" allocator.

>
> > +
> > +/**
> > + * __iommu_alloc_page_node - allocate a zeroed page at specific NUMA node.
> > + * @nid: memory NUMA node id
> > + * @gfp: buddy allocator flags
> > + *
> > + * returns the struct page of the allocated page.
> > + */
> > +static inline struct page *__iommu_alloc_page_node(int nid, gfp_t gfp)
> > +{
> > +     return __iommu_alloc_pages_node(nid, gfp, 0);
> > +}
>
> There are no users of this at all.

Yes, I added it just for completeness, I will remove it.


> > + * __iommu_alloc_page - allocate a zeroed page
> > + * @gfp: buddy allocator flags
> > + *
> > + * returns the struct page of the allocated page.
> > + */
> > +static inline struct page *__iommu_alloc_page(gfp_t gfp)
> > +{
> > +     return __iommu_alloc_pages(gfp, 0);
> > +}
> > +
> > +/**
> > + * __iommu_free_pages - free page of a given order
> > + * @page: head struct page of the page
> > + * @order: page order
> > + */
> > +static inline void __iommu_free_pages(struct page *page, int order)
> > +{
> > +     if (!page)
> > +             return;
> > +
> > +     __free_pages(page, order);
> > +}
> > +
> > +/**
> > + * __iommu_free_page - free page
> > + * @page: struct page of the page
> > + */
> > +static inline void __iommu_free_page(struct page *page)
> > +{
> > +     __iommu_free_pages(page, 0);
> > +}
>
> Beyond one more trivial Intel cleanup for __iommu_alloc_pages(), these 3
> are then only used by tegra-smmu, so honestly I'd be inclined to just
> open-code there page_address()/virt_to_page() conversions as appropriate
> there (once again I think the whole thing could in fact be refactored to
> not use struct pages at all because all it's ever ultimately doing with
> them is page_address(), but that would be a bigger job so definitely
> out-of-scope for this series).

I removed __iommu_free_page(), but kept __iommu_free_pages() variant.

>
> > +
> > +/**
> > + * iommu_alloc_pages_node - allocate a zeroed page of a given order from
> > + * specific NUMA node.
> > + * @nid: memory NUMA node id
> > + * @gfp: buddy allocator flags
> > + * @order: page order
> > + *
> > + * returns the virtual address of the allocated page
> > + */
> > +static inline void *iommu_alloc_pages_node(int nid, gfp_t gfp, int order)
> > +{
> > +     struct page *page = __iommu_alloc_pages_node(nid, gfp, order);
> > +
> > +     if (unlikely(!page))
> > +             return NULL;
>
> As a general point I'd prefer to fold these checks into the accounting
> function itself rather than repeat them all over.

For the free functions this saves a few cycles by not repeating this
check again inside __free_pages(), to keep things symmetrical it makes
sense to keep __iomu_free_account and __iomu_alloc_account the same.
With the other clean-up there are not that many of these checks left.

> > + */
> > +static inline void *iommu_alloc_page_node(int nid, gfp_t gfp)
> > +{
> > +     return iommu_alloc_pages_node(nid, gfp, 0);
> > +}
>
> TBH I'm not entirely convinced that saving 4 characters per invocation
> times 11 invocations makes this wrapper worthwhile :/

Let's keep them. After the clean-up that you suggested, there are
fewer functions left in this file, but I think that it is cleaner to
keep these remaining, as it is beneficial to easily distinguish when
exactly one page is allocated vs when multiple are allocated via code
search.


> > + *
> > + * There are no locking requirement for these pages, as they are going to be
> > + * put on a free list as soon as refcount reaches 0. Pages are put on this LRU
> > + * list once they are removed from the IOMMU page tables. However, they can
> > + * still be access through debugfs.
> > + */
> > +static inline void iommu_free_pages_list(struct list_head *page)
>
> Nit: I'd be inclined to call this iommu_put_pages_list for consistency.

I will rename it to iommu_put_pages_list(), indeed a better name.

>
> > +{
> > +     while (!list_empty(page)) {
> > +             struct page *p = list_entry(page->prev, struct page, lru);
> > +
> > +             list_del(&p->lru);
> > +             put_page(p);
> > +     }
> > +}
>
> I realise now you've also missed the common freelist freeing sites in
> iommu-dma.

Ah yes, thank you for catching that. I will fix it.

Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
