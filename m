Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 210B7EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 14:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTQENaLvFzwpI6TUjzSaEY9zw2DXuf17FEgATvoUUTY=; b=dRhOeXhacw7viO
	yaoilclaSSFeRBwql+SiEPhNjG1i+yCA/DUi45ssj/+50l4gUC+8MYRNOp5qy+lKrQM2xWZOb6Mv6
	EwO9xQsr3My0hUK3GzLLTIbYtF2FJV6ISV+yEArsPl6mMHRd7gYFBkDCaItq2GLnvUPUA+P+gTHM9
	FfYFczJbpOXSYC5zZX5YVHl7lnvbJdqYjGnJG3JUdHzqv4XDFDaEL8r88JKfEaKhbdO/DSpBq56T0
	kZKU9q47mlJyPwXDob6hxqzvfwo17MYglwS78pBIricxXyCFtrz3jZRd/rQmzUjd3wWG8qKyJTbec
	QYYsgDkMS3zNCrS3qcmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBGED-008ghJ-05;
	Mon, 19 Jun 2023 14:51:37 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBGEA-008gfv-0L;
	Mon, 19 Jun 2023 14:51:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 577F512FC;
	Mon, 19 Jun 2023 07:52:14 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6ACBB3F59C;
	Mon, 19 Jun 2023 07:51:29 -0700 (PDT)
Message-ID: <092dda67-8751-9e80-304d-05465162cd97@arm.com>
Date: Mon, 19 Jun 2023 15:51:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 2/2] iommu: rockchip: Allocate tables from all
 available memory for IOMMU v2
Content-Language: en-GB
To: Jonas Karlman <jonas@kwiboo.se>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230617182540.3091374-1-jonas@kwiboo.se>
 <20230617182540.3091374-3-jonas@kwiboo.se>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230617182540.3091374-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_075134_238448_F062F48A 
X-CRM114-Status: GOOD (  20.33  )
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

On 17/06/2023 7:25 pm, Jonas Karlman wrote:
> IOMMU v2 found in newer Rockchip SoCs, e.g. RK356x and RK3588, support
> placing directory and page tables in up to 40-bit addressable physical
> memory.
> 
> Remove the use of GFP_DMA32 flag for IOMMU v2 now that the physical
> address to the directory table is correctly written to DTE_ADDR.

FWIW I'd be tempted to refactor a bit harder since this is closely 
coupled to the DMA mask and both could be calculated from a single data 
value, but there's absolutely nothing wrong with this approach either.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

[ In fact if you start down that rabbit-hole, then I think logically it 
leads to an even bigger refactor to convert the whole lot to use 
dma_alloc_pages() instead ]

> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v3:
> - rework to only affect IOMMU v2
> 
> v2:
> - no change
> 
>   drivers/iommu/rockchip-iommu.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index ae42959bc490..8ff69fbf9f65 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -99,6 +99,7 @@ struct rk_iommu_ops {
>   	u32 (*mk_dtentries)(dma_addr_t pt_dma);
>   	u32 (*mk_ptentries)(phys_addr_t page, int prot);
>   	u64 dma_bit_mask;
> +	gfp_t gfp_flags;
>   };
>   
>   struct rk_iommu {
> @@ -727,7 +728,7 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
>   	if (rk_dte_is_pt_valid(dte))
>   		goto done;
>   
> -	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | GFP_DMA32);
> +	page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | rk_ops->gfp_flags);
>   	if (!page_table)
>   		return ERR_PTR(-ENOMEM);
>   
> @@ -1076,7 +1077,7 @@ static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
>   	 * Each level1 (dt) and level2 (pt) table has 1024 4-byte entries.
>   	 * Allocate one 4 KiB page for each table.
>   	 */
> -	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | GFP_DMA32);
> +	rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | rk_ops->gfp_flags);
>   	if (!rk_domain->dt)
>   		goto err_free_domain;
>   
> @@ -1377,6 +1378,7 @@ static struct rk_iommu_ops iommu_data_ops_v1 = {
>   	.mk_dtentries = &rk_mk_dte,
>   	.mk_ptentries = &rk_mk_pte,
>   	.dma_bit_mask = DMA_BIT_MASK(32),
> +	.gfp_flags = GFP_DMA32,
>   };
>   
>   static struct rk_iommu_ops iommu_data_ops_v2 = {
> @@ -1384,6 +1386,7 @@ static struct rk_iommu_ops iommu_data_ops_v2 = {
>   	.mk_dtentries = &rk_mk_dte_v2,
>   	.mk_ptentries = &rk_mk_pte_v2,
>   	.dma_bit_mask = DMA_BIT_MASK(40),
> +	.gfp_flags = 0,
>   };
>   
>   static const struct of_device_id rk_iommu_dt_ids[] = {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
