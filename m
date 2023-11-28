Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 859EFC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 22:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=at8PAYlsqGHEbAhk7ffHwaxwqmx2blyLx9ogfCjmdo8=; b=udOEKE8Yrnt8vXpSpn5X3s5NWU
	1EKAXnSVAFYx1Ejoda8KiTa9QT2shhg5E4pO1NakJ6EFQ7Nxsj+MMCIqnUsuRtmFdm6cMiHKmFR9A
	o+9b00oCCfxp4eKF8vgcA/OToPUg37/nm1x24MXjN8YoUEYXsLrZ1k2rzGY0e8OLUjGa+ARSdWclj
	0g7+Aw419DKE8+IzzFFPKuc8JRS7ONsi/hKG0MDawI5gY58Z7QGMWQF491BM+Un+RnCLv67fUSxrX
	cLxIK4bzbi+hzoEgozCtVnkV1NxwfNukDUbmq7RtKOXZYhvWnTHinHDvtX1vikYMJ6c0SzPgBG75P
	kCx8IoBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86eh-006VFR-2J;
	Tue, 28 Nov 2023 22:34:11 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86ed-006VCW-2s;
	Tue, 28 Nov 2023 22:34:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B808B1FB;
	Tue, 28 Nov 2023 14:34:48 -0800 (PST)
Received: from [10.57.71.132] (unknown [10.57.71.132])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2B473F6C4;
	Tue, 28 Nov 2023 14:33:44 -0800 (PST)
Message-ID: <d99e0d4a-94a9-482b-b5b5-833cba518b86@arm.com>
Date: Tue, 28 Nov 2023 22:33:42 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/16] iommu/dma: use page allocation function provided by
 iommu-pages.h
To: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org,
 alex.williamson@redhat.com, alim.akhtar@samsung.com, alyssa@rosenzweig.io,
 asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com,
 cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
 dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
 iommu@lists.linux.dev, jasowang@redhat.com, jernej.skrabec@gmail.com,
 jgg@ziepe.ca, jonathanh@nvidia.com, joro@8bytes.org, kevin.tian@intel.com,
 krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st,
 mhiramat@kernel.org, mst@redhat.com, m.szyprowski@samsung.com,
 netdev@vger.kernel.org, paulmck@kernel.org, rdunlap@infradead.org,
 samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev,
 thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com,
 vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org,
 will@kernel.org, yu-cheng.yu@intel.com
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-7-pasha.tatashin@soleen.com>
Content-Language: en-GB
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20231128204938.1453583-7-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_143408_041607_5F25F163 
X-CRM114-Status: GOOD (  13.78  )
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

On 2023-11-28 8:49 pm, Pasha Tatashin wrote:
> Convert iommu/dma-iommu.c to use the new page allocation functions
> provided in iommu-pages.h.

These have nothing to do with IOMMU pagetables, they are DMA buffers and 
they belong to whoever called the corresponding dma_alloc_* function.

Thanks,
Robin.

> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> ---
>   drivers/iommu/dma-iommu.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 85163a83df2f..822adad464c2 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -31,6 +31,7 @@
>   #include <linux/vmalloc.h>
>   
>   #include "dma-iommu.h"
> +#include "iommu-pages.h"
>   
>   struct iommu_dma_msi_page {
>   	struct list_head	list;
> @@ -874,7 +875,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
>   static void __iommu_dma_free_pages(struct page **pages, int count)
>   {
>   	while (count--)
> -		__free_page(pages[count]);
> +		__iommu_free_page(pages[count]);
>   	kvfree(pages);
>   }
>   
> @@ -912,7 +913,8 @@ static struct page **__iommu_dma_alloc_pages(struct device *dev,
>   			order_size = 1U << order;
>   			if (order_mask > order_size)
>   				alloc_flags |= __GFP_NORETRY;
> -			page = alloc_pages_node(nid, alloc_flags, order);
> +			page = __iommu_alloc_pages_node(nid, alloc_flags,
> +							order);
>   			if (!page)
>   				continue;
>   			if (order)
> @@ -1572,7 +1574,7 @@ static void *iommu_dma_alloc_pages(struct device *dev, size_t size,
>   
>   	page = dma_alloc_contiguous(dev, alloc_size, gfp);
>   	if (!page)
> -		page = alloc_pages_node(node, gfp, get_order(alloc_size));
> +		page = __iommu_alloc_pages_node(node, gfp, get_order(alloc_size));
>   	if (!page)
>   		return NULL;
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
