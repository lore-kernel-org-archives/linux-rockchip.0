Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B37AEEB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 21:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQnEIhTByR6CP35/aX5+DpdIqy/UuVz//pcx0qewbiY=; b=wCQnqOkaV6u3wZ
	K9+hWDstLj46/1FF7jspqf5r215C8P592QpmQCyDTlt85RWZi5nqjmwjbBN9PgYzx+u9b26cRcyqI
	5b+PMcLICPQYmouP0pjw/gTO4BKCkB2eGycAe3JyWuYfZu30wOtNID9rsePAVJuWq23lIe2uzq+rK
	T0soFYeS2aCIvST6+vZS2l1iKrNsiKLrXM1X3HOeH64pL6NlMkdj6vP/CFxJVPwHcn3TWWEINn+Ca
	GrRixGseNcrhvMsb9TvkZBOq0z/bbCrpn53IhGeVpbwyysqMKhuH25UfUWGhbU9eqoasUo8DND2L1
	q7Bq7QjDFd1OOKACCMOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9uSg-00G8XI-1f;
	Thu, 15 Jun 2023 21:24:58 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9uSc-00G8Ux-22;
	Thu, 15 Jun 2023 21:24:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDE851FB;
	Thu, 15 Jun 2023 14:25:35 -0700 (PDT)
Received: from [10.57.85.251] (unknown [10.57.85.251])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F3B773F663;
	Thu, 15 Jun 2023 14:24:49 -0700 (PDT)
Message-ID: <81ea403e-1279-bb01-9b74-51afd6d8532b@arm.com>
Date: Thu, 15 Jun 2023 22:24:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 1/3] iommu: rockchip: Fix discovery table address
 encoding
Content-Language: en-GB
To: Jonas Karlman <jonas@kwiboo.se>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Joerg Roedel <jroedel@suse.de>
References: <20230615201042.2291867-1-jonas@kwiboo.se>
 <20230615201042.2291867-2-jonas@kwiboo.se>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230615201042.2291867-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_142454_765378_87C39FF8 
X-CRM114-Status: GOOD (  21.91  )
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

On 2023-06-15 21:10, Jonas Karlman wrote:
> The address to the discovery table is currently encoded using the
> following bit layout.
> 
>   31:12 - Address bit 31:0
>   11: 4 - Address bit 39:32
> 
> This is also the bit layout used by the vendor kernel.
> 
> However, testing has shown that addresses to the discovery/page tables
> and memory pages are all encoded using the same bit layout.
> 
> IOMMU v1:
>   31:12 - Address bit 31:0
> 
> IOMMU v2:
>   31:12 - Address bit 31:0
>   11: 8 - Address bit 35:32
>    7: 4 - Address bit 39:36
> 
> Change to use the mk_dtentries ops to encode the discovery table address

Nit: s/discovery/directory/g

> correctly. Also update the bit layout comment for the page address.
> 
> These changes render the dte_addr_phys and dma_addr_dte ops unused
> and will be removed in a following patch.

TBH I'd just squash that into this patch - we don't gain anything from 
leaving dead code in stable kernels, and at worst it just stands to make 
future fixes harder to backport.

> Fixes: 227014b33f62 ("iommu: rockchip: Add internal ops to handle variants")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2:
> - replace currently with correctly in commit message
> 
>   drivers/iommu/rockchip-iommu.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 4054030c3237..d46319f77e5c 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -278,8 +278,8 @@ static u32 rk_mk_pte(phys_addr_t page, int prot)
>   /*
>    * In v2:
>    * 31:12 - Page address bit 31:0
> - *  11:9 - Page address bit 34:32
> - *   8:4 - Page address bit 39:35
> + * 11: 8 - Page address bit 35:32
> + *  7: 4 - Page address bit 39:36
>    *     3 - Security
>    *     2 - Writable
>    *     1 - Readable
> @@ -577,7 +577,7 @@ static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
>   	page_offset = rk_iova_page_offset(iova);
>   
>   	mmu_dte_addr = rk_iommu_read(base, RK_MMU_DTE_ADDR);
> -	mmu_dte_addr_phys = rk_ops->dte_addr_phys(mmu_dte_addr);
> +	mmu_dte_addr_phys = rk_ops->pt_address(mmu_dte_addr);
>   
>   	dte_addr_phys = mmu_dte_addr_phys + (4 * dte_index);
>   	dte_addr = phys_to_virt(dte_addr_phys);
> @@ -967,7 +967,7 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
>   
>   	for (i = 0; i < iommu->num_mmu; i++) {
>   		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR,
> -			       rk_ops->dma_addr_dte(rk_domain->dt_dma));
> +			       rk_ops->mk_dtentries(rk_domain->dt_dma));

Hmm, this writes the RK_DTE_PT_VALID bit into the register as well - 
does that really make sense?

Thanks,
Robin.

>   		rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
>   		rk_iommu_write(iommu->bases[i], RK_MMU_INT_MASK, RK_MMU_IRQ_MASK);
>   	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
