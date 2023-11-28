Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FB40C07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 22:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lKTzgWUXcvdtTjv1EGVZiBSDV9pT5xbRsFd8/P8b3Rs=; b=L/02Nye35v5rymosukGVqgs01z
	ENim/lRPlrnPrt2XUnGDYVlwZ6NAGeJnowH1cTACe4/fowP4s1EnPwh43oTkoICT0if2yw/aEWplq
	+p3GCAobblzamhnexKoNfgkqcFJVcCCigOpwNJeuVXvEcSBrAUiMx1sGu6Vd9IcCOA7+fxglhofoI
	uQ78UzOxuvWTdXkX9ndU4m0EbrYbMab1pOkPKvfUExnflkCg0NbMokfKJoKksP+DmkLc/oS9TJ5JC
	DLy6mLiazMRk5t+5kSSxJ8pm0f3qjnOgRNrfgfy4Wr3YIF1M5sBOwlfRhFpmiwl0Q64TYMOTdxerJ
	iRi8ASKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86rK-006WFj-1l;
	Tue, 28 Nov 2023 22:47:14 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86rH-006WEe-1c;
	Tue, 28 Nov 2023 22:47:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C1F11FB;
	Tue, 28 Nov 2023 14:47:56 -0800 (PST)
Received: from [10.57.71.132] (unknown [10.57.71.132])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C40BF3F6C4;
	Tue, 28 Nov 2023 14:47:00 -0800 (PST)
Message-ID: <8e1961c9-0359-4450-82d8-2b2fcb2c5557@arm.com>
Date: Tue, 28 Nov 2023 22:46:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/16] iommu/io-pgtable-arm-v7s: use page allocation
 function provided by iommu-pages.h
Content-Language: en-GB
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
 <20231128204938.1453583-6-pasha.tatashin@soleen.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20231128204938.1453583-6-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_144711_632063_FBE4EFBB 
X-CRM114-Status: GOOD (  13.06  )
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
> Convert iommu/io-pgtable-arm-v7s.c to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> ---
>   drivers/iommu/io-pgtable-arm-v7s.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
> index 75f244a3e12d..3d494ca1f671 100644
> --- a/drivers/iommu/io-pgtable-arm-v7s.c
> +++ b/drivers/iommu/io-pgtable-arm-v7s.c
> @@ -34,6 +34,7 @@
>   #include <linux/types.h>
>   
>   #include <asm/barrier.h>
> +#include "iommu-pages.h"
>   
>   /* Struct accessors */
>   #define io_pgtable_to_data(x)						\
> @@ -255,7 +256,7 @@ static void *__arm_v7s_alloc_table(int lvl, gfp_t gfp,
>   		 GFP_KERNEL : ARM_V7S_TABLE_GFP_DMA;
>   
>   	if (lvl == 1)
> -		table = (void *)__get_free_pages(gfp_l1 | __GFP_ZERO, get_order(size));
> +		table = iommu_alloc_pages(gfp_l1, get_order(size));
>   	else if (lvl == 2)
>   		table = kmem_cache_zalloc(data->l2_tables, gfp);

Is it really meaningful to account the L1 table which is always 
allocated upon initial creation, yet not the L2 tables which are 
allocated in use?

Thanks,
Robin.

> @@ -283,6 +284,7 @@ static void *__arm_v7s_alloc_table(int lvl, gfp_t gfp,
>   	}
>   	if (lvl == 2)
>   		kmemleak_ignore(table);
> +
>   	return table;
>   
>   out_unmap:
> @@ -290,7 +292,7 @@ static void *__arm_v7s_alloc_table(int lvl, gfp_t gfp,
>   	dma_unmap_single(dev, dma, size, DMA_TO_DEVICE);
>   out_free:
>   	if (lvl == 1)
> -		free_pages((unsigned long)table, get_order(size));
> +		iommu_free_pages(table, get_order(size));
>   	else
>   		kmem_cache_free(data->l2_tables, table);
>   	return NULL;
> @@ -306,8 +308,9 @@ static void __arm_v7s_free_table(void *table, int lvl,
>   	if (!cfg->coherent_walk)
>   		dma_unmap_single(dev, __arm_v7s_dma_addr(table), size,
>   				 DMA_TO_DEVICE);
> +
>   	if (lvl == 1)
> -		free_pages((unsigned long)table, get_order(size));
> +		iommu_free_pages(table, get_order(size));
>   	else
>   		kmem_cache_free(data->l2_tables, table);
>   }

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
