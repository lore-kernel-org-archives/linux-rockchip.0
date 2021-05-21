Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F458C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:43:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8753061163
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:43:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8753061163
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vfSm3dEtxMfcluagkdYF+RN/9wAKuWBBx0wVJwE8xto=; b=B5jTcgum2sK2SknH//u0X6Hh43
	kD+8RH1h5+pIHB7XYqgbw1vHEMpi63jrhwiDUcGP/DeXra4cdJvlkq6P3r2hzX64PstszX47ia141
	0i84F1H55I/2deOyh0LcKy7fcoV6/2AkxILG+y3FIzkQ1o4s+uwDOYq8w2QxD5Lzidj+cOeqcRnNa
	DvlytmMY6myjfr2jpOS3tsb+lKoJIySUCgc7nUw2Ywyo3EPq54Gv1PrKblRyQpGNNftqG4ydizKsT
	Q6oNxk+gkKCtmwEXVfRZOFj1TbcnKDWkH/j+uuisZa/89UE4rUA8D4KcSIrE7fAvsSKjnKHGaSfaI
	cNpVpT2w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk5R5-005bjV-4C; Fri, 21 May 2021 13:43:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk5Pt-005ahv-Bm; Fri, 21 May 2021 13:42:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=AHE1uGSJtBFEiHztSTGUmAbfhQ5LDrB54bvE7GFhWOc=; b=Khefxs8WEWWYuFRuG8/u3cXQPA
 jeMJ/k4FUulN1dwMsQHMhik8r6CJlV65ixKIDH2D9Xy1bRtGYbk+YCNuDAVWmBzsW/JN3Mkfa9a/6
 jR/02QAwJjODn6h/0DTIB1j62HLUv7s36emi7ZFAb/PiglG0SKtCXIz8SqV1llWg6iWRatf1vwNWP
 0mfOd7wqqsd1CuD94lah3Ep1SuSj/vU0xWFwGXYncZ5wOK6zzIyvVCjRPoO0zxUHljUlZbey/15XH
 4l7/s8CdtfsYqiZKJ5+hNSO15KZ2wBLsFpTgYmXyYw+ah3nYZ24Zd4yPRgAxdSTAoY3WuHhu0vIA9
 uOhI2FkA==;
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lk5Pq-00H9tO-93; Fri, 21 May 2021 13:42:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 305F611B3;
 Fri, 21 May 2021 06:42:13 -0700 (PDT)
Received: from [10.57.73.64] (unknown [10.57.73.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6EE9B3F73B;
 Fri, 21 May 2021 06:42:11 -0700 (PDT)
Subject: Re: [PATCH v5 4/4] iommu: rockchip: Add support for iommu v2
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
 will@kernel.org, robh+dt@kernel.org, heiko@sntech.de, xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210521083637.3221304-1-benjamin.gaignard@collabora.com>
 <20210521083637.3221304-5-benjamin.gaignard@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e094347e-5396-dd2c-dad5-79e17feb96a3@arm.com>
Date: Fri, 21 May 2021 14:42:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210521083637.3221304-5-benjamin.gaignard@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_064214_450213_539C4571 
X-CRM114-Status: GOOD (  29.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2021-05-21 09:36, Benjamin Gaignard wrote:
> This second version of the hardware block has a different bits
> mapping for page table entries.
> Add the ops matching to this new mapping.
> Define a new compatible to distinguish it from the first version.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 5:
>   - Use internal ops to support v2 hardware block
>   - Use GENMASK macro.
>   - Keep rk_dte_pt_address() and rk_dte_pt_address_v2() separated
>     because I believe that is more readable like this.
>   - Do not duplicate code.
> 
>   drivers/iommu/rockchip-iommu.c | 78 ++++++++++++++++++++++++++++++++++
>   1 file changed, 78 insertions(+)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index e7b9bcf174b1..23253a2f269e 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -189,6 +189,33 @@ static inline phys_addr_t rk_dte_pt_address(u32 dte)
>   	return (phys_addr_t)dte & RK_DTE_PT_ADDRESS_MASK;
>   }
>   
> +/*
> + * In v2:
> + * 31:12 - PT address bit 31:0
> + * 11: 8 - PT address bit 35:32
> + *  7: 4 - PT address bit 39:36
> + *  3: 1 - Reserved
> + *     0 - 1 if PT @ PT address is valid
> + */
> +#define RK_DTE_PT_ADDRESS_MASK_V2 GENMASK_ULL(31, 4)
> +#define DTE_HI_MASK1	GENMASK(11, 8)
> +#define DTE_HI_MASK2	GENMASK(7, 4)
> +#define DTE_HI_SHIFT1	24 /* shift bit 8 to bit 32 */
> +#define DTE_HI_SHIFT2	32 /* shift bit 4 to bit 36 */

Nit: no harm in doing "#define DTE_HI_SHIFT1 (32 - 8)" etc. for maximum 
clarity if you want.

> +#define PAGE_DESC_HI_MASK1	GENMASK_ULL(39, 36)
> +#define PAGE_DESC_HI_MASK2	GENMASK_ULL(35, 32)
> +
> +static inline phys_addr_t rk_dte_pt_address_v2(u32 dte)
> +{
> +	u64 dte_v2 = dte;
> +
> +	dte_v2 = ((dte_v2 & DTE_HI_MASK2) << DTE_HI_SHIFT2) |
> +		 ((dte_v2 & DTE_HI_MASK1) << DTE_HI_SHIFT1) |
> +		 (dte_v2 & RK_DTE_PT_ADDRESS_MASK);
> +
> +	return (phys_addr_t)dte_v2;
> +}
> +
>   static inline bool rk_dte_is_pt_valid(u32 dte)
>   {
>   	return dte & RK_DTE_PT_VALID;
> @@ -199,6 +226,15 @@ static inline u32 rk_mk_dte(dma_addr_t pt_dma)
>   	return (pt_dma & RK_DTE_PT_ADDRESS_MASK) | RK_DTE_PT_VALID;
>   }
>   
> +static inline u32 rk_mk_dte_v2(dma_addr_t pt_dma)
> +{
> +	pt_dma = (pt_dma & RK_DTE_PT_ADDRESS_MASK) |
> +		 ((pt_dma & PAGE_DESC_HI_MASK1) >> DTE_HI_SHIFT1) |
> +		 (pt_dma & PAGE_DESC_HI_MASK2) >> DTE_HI_SHIFT2;
> +
> +	return (pt_dma & RK_DTE_PT_ADDRESS_MASK_V2) | RK_DTE_PT_VALID;
> +}
> +
>   /*
>    * Each PTE has a Page address, some flags and a valid bit:
>    * +---------------------+---+-------+-+
> @@ -240,6 +276,29 @@ static u32 rk_mk_pte(phys_addr_t page, int prot)
>   	return page | flags | RK_PTE_PAGE_VALID;
>   }
>   
> +/*
> + * In v2:
> + * 31:12 - Page address bit 31:0
> + *  11:9 - Page address bit 34:32
> + *   8:4 - Page address bit 39:35
> + *     3 - Security
> + *     2 - Readable
> + *     1 - Writable
> + *     0 - 1 if Page @ Page address is valid
> + */
> +#define RK_PTE_PAGE_READABLE_V2      BIT(2)
> +#define RK_PTE_PAGE_WRITABLE_V2      BIT(1)
> +
> +static u32 rk_mk_pte_v2(phys_addr_t page, int prot)
> +{
> +	u32 flags = 0;
> +
> +	flags |= (prot & IOMMU_READ) ? RK_PTE_PAGE_READABLE_V2 : 0;
> +	flags |= (prot & IOMMU_WRITE) ? RK_PTE_PAGE_WRITABLE_V2 : 0;
> +
> +	return rk_mk_dte_v2(page) | flags ;
> +}
> +
>   static u32 rk_mk_pte_invalid(u32 pte)
>   {
>   	return pte & ~RK_PTE_PAGE_VALID;
> @@ -480,6 +539,14 @@ static inline phys_addr_t rk_dte_addr_phys(phys_addr_t addr)
>   	return addr;
>   }
>   
> +#define DT_HI_MASK GENMASK_ULL(39, 32)
> +#define DT_SHIFT   28
> +
> +static inline phys_addr_t rk_dte_addr_phys_v2(phys_addr_t addr)
> +{
> +	return (addr & RK_DTE_PT_ADDRESS_MASK) | ((addr & DT_HI_MASK) << DT_SHIFT);
> +}

Are we missing something overall? AFAICS the DT_HI_MASK bits of 
RK_MMU_DTE_ADDR will never actually be used, since rk_iommu_enable() 
just writes the value of dt_dma directly...

> +
>   static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
>   {
>   	void __iomem *base = iommu->bases[index];
> @@ -1305,10 +1372,21 @@ static struct rk_iommu_ops iommu_data_ops_v1 = {
>   	.pt_address_mask = RK_DTE_PT_ADDRESS_MASK,
>   };
>   
> +static struct rk_iommu_ops iommu_data_ops_v2 = {
> +	.pt_address = &rk_dte_pt_address_v2,
> +	.mk_dtentries = &rk_mk_dte_v2,
> +	.mk_ptentries = &rk_mk_pte_v2,
> +	.dte_addr_phys = &rk_dte_addr_phys_v2,
> +	.pt_address_mask = RK_DTE_PT_ADDRESS_MASK_V2,
> +};
> +
>   static const struct of_device_id rk_iommu_dt_ids[] = {
>   	{	.compatible = "rockchip,iommu",
>   		.data = &iommu_data_ops_v1,
>   	},
> +	{	.compatible = "rockchip,rk3568-iommu",
> +		.data = &iommu_data_ops_v2,
> +	},
>   	{ /* sentinel */ }
>   };
>   MODULE_DEVICE_TABLE(of, rk_iommu_dt_ids);
> 

...and I'll bet the reason it appears to work is that we also never 
actually set the IOMMU device's DMA masks anywhere, so what happens in 
practice is that even if pagetable pages are allocated above 32 bits 
they'll just get bounced by the DMA mapping ops and gradually fill up 
the SWIOTLB buffer. That's something you're liable to have a bad time 
with under real-world usage ;)

The overall cleanup is *so* much better though, thanks for that!

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
