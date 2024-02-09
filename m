Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F47C48297
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 11:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vEmLmtX+IKH21JjzUsgSaEIdw5dDvNU79Mf4CTrb46Y=; b=QmZZvgZtEG2ZsgdyJRweaHfRTT
	Ph9KQ3NvAYVKa+8bjgVuVv97DxHXjpOiUd9kFR3neVv4CQU7vshh7ggZEjp35ky8RdEynxdo85LjP
	B0aQQKcHt6cT4iO7irVwIv8M7OlCeYJf0OCfXXJICsGskK65AP+B/awevAJ/xQpDtconw1eVNWRUd
	B65GGuYCHgIAAjqjSNkKU2uTbbo63MW3ojnJVsMCJhPeeg2nknpJIAjRgYT0OnN5wpQBJu77TXnTA
	jqJ2WZZKbG0vzzMHRjZ1ryUD5F+WIxGutcs+h4ISw3WJcc0fb7JlIra7Lx6vA2EQD+M8oKE6Nc4Gb
	hHyWf37g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYOtK-0000000Gp5r-2OSs;
	Fri, 09 Feb 2024 11:17:58 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYOtI-0000000Gp55-07tD
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Feb 2024 11:17:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF7CFDA7;
	Fri,  9 Feb 2024 03:18:33 -0800 (PST)
Received: from [10.57.47.119] (unknown [10.57.47.119])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7511A3F762;
	Fri,  9 Feb 2024 03:17:45 -0800 (PST)
Message-ID: <14e55a48-4439-47c7-a74f-126eaa998968@arm.com>
Date: Fri, 9 Feb 2024 11:17:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/10] iommu: observability of the IOMMU allocations
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
 <20240207174102.1486130-10-pasha.tatashin@soleen.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20240207174102.1486130-10-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_031756_191349_E70F07E6 
X-CRM114-Status: GOOD (  21.86  )
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

On 2024-02-07 5:41 pm, Pasha Tatashin wrote:
> Add NR_IOMMU_PAGES into node_stat_item that counts number of pages
> that are allocated by the IOMMU subsystem.
> 
> The allocations can be view per-node via:
> /sys/devices/system/node/nodeN/vmstat.
> 
> For example:
> 
> $ grep iommu /sys/devices/system/node/node*/vmstat
> /sys/devices/system/node/node0/vmstat:nr_iommu_pages 106025
> /sys/devices/system/node/node1/vmstat:nr_iommu_pages 3464
> 
> The value is in page-count, therefore, in the above example
> the iommu allocations amount to ~428M.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> Acked-by: David Rientjes <rientjes@google.com>
> Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
> ---
>   drivers/iommu/iommu-pages.h | 30 ++++++++++++++++++++++++++++++
>   include/linux/mmzone.h      |  3 +++
>   mm/vmstat.c                 |  3 +++
>   3 files changed, 36 insertions(+)
> 
> diff --git a/drivers/iommu/iommu-pages.h b/drivers/iommu/iommu-pages.h
> index c412d0aaa399..7336f976b641 100644
> --- a/drivers/iommu/iommu-pages.h
> +++ b/drivers/iommu/iommu-pages.h
> @@ -17,6 +17,30 @@
>    * state can be rather large, i.e. multiple gigabytes in size.
>    */
>   
> +/**
> + * __iommu_alloc_account - account for newly allocated page.
> + * @page: head struct page of the page.
> + * @order: order of the page
> + */
> +static inline void __iommu_alloc_account(struct page *page, int order)
> +{
> +	const long pgcnt = 1l << order;
> +
> +	mod_node_page_state(page_pgdat(page), NR_IOMMU_PAGES, pgcnt);
> +}
> +
> +/**
> + * __iommu_free_account - account a page that is about to be freed.
> + * @page: head struct page of the page.
> + * @order: order of the page
> + */
> +static inline void __iommu_free_account(struct page *page, int order)
> +{
> +	const long pgcnt = 1l << order;
> +
> +	mod_node_page_state(page_pgdat(page), NR_IOMMU_PAGES, -pgcnt);
> +}
> +
>   /**
>    * __iommu_alloc_pages_node - allocate a zeroed page of a given order from
>    * specific NUMA node.
> @@ -35,6 +59,8 @@ static inline struct page *__iommu_alloc_pages_node(int nid, gfp_t gfp,
>   	if (unlikely(!page))
>   		return NULL;
>   
> +	__iommu_alloc_account(page, order);
> +
>   	return page;
>   }
>   
> @@ -53,6 +79,8 @@ static inline struct page *__iommu_alloc_pages(gfp_t gfp, int order)
>   	if (unlikely(!page))
>   		return NULL;
>   
> +	__iommu_alloc_account(page, order);
> +
>   	return page;
>   }
>   
> @@ -89,6 +117,7 @@ static inline void __iommu_free_pages(struct page *page, int order)
>   	if (!page)
>   		return;
>   
> +	__iommu_free_account(page, order);
>   	__free_pages(page, order);
>   }
>   
> @@ -197,6 +226,7 @@ static inline void iommu_free_pages_list(struct list_head *page)
>   		struct page *p = list_entry(page->prev, struct page, lru);
>   
>   		list_del(&p->lru);
> +		__iommu_free_account(p, 0);

I'm keen to revive my patches to hook up freelist support in 
io-pgtable-arm, which would then mean a chance of higher-order GFP_COMP 
allocations coming back though this path - do you have any pointers for 
what I'd have to do here to make it work properly?

Thanks,
Robin.

>   		put_page(p);
>   	}
>   }
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index a497f189d988..bb6bc504915a 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -203,6 +203,9 @@ enum node_stat_item {
>   #endif
>   	NR_PAGETABLE,		/* used for pagetables */
>   	NR_SECONDARY_PAGETABLE, /* secondary pagetables, e.g. KVM pagetables */
> +#ifdef CONFIG_IOMMU_SUPPORT
> +	NR_IOMMU_PAGES,		/* # of pages allocated by IOMMU */
> +#endif
>   #ifdef CONFIG_SWAP
>   	NR_SWAPCACHE,
>   #endif
> diff --git a/mm/vmstat.c b/mm/vmstat.c
> index db79935e4a54..8507c497218b 100644
> --- a/mm/vmstat.c
> +++ b/mm/vmstat.c
> @@ -1242,6 +1242,9 @@ const char * const vmstat_text[] = {
>   #endif
>   	"nr_page_table_pages",
>   	"nr_sec_page_table_pages",
> +#ifdef CONFIG_IOMMU_SUPPORT
> +	"nr_iommu_pages",
> +#endif
>   #ifdef CONFIG_SWAP
>   	"nr_swapcached",
>   #endif

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
