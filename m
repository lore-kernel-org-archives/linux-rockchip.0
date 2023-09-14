Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B847AEEAA4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 15:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0q1xTAobP/h7qqOV2yIMt5E358yeQAuOWH836DZPOO0=; b=XhtfSdezg27T6F
	10WLxeOwDo4Cr8PK2Yqq+S3EiES9JXvQJRreCTg6V2MAMU8WHzROy4NgKDNCPuu366iSEYXXUHxuX
	ExAd911uz7ETj24BO+niWLL93kJxA1xXRBxtTbhU+qtdKVm5F1PAEMM5nMh9IDy6bNVsropt3wooM
	/aYQw2Nvn4q03SWEkMW9RLEaCzyhHOLq4ELGmu7duiX55XtbceME8Xz3ajoERqM69MXygiHuCPhVh
	q8nWUXCFbgQiiOyJythw0Ehv65vRTGIGQo3BYo8uC3JWtZ0OvSVUbwTzJU7UrzciUQzZt4xy94LMx
	wOgARDRNPahyaQOjelhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgnvS-008kEp-0g;
	Thu, 14 Sep 2023 15:06:38 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgnvO-008kDf-35;
	Thu, 14 Sep 2023 15:06:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97D501FB;
	Thu, 14 Sep 2023 08:07:09 -0700 (PDT)
Received: from [10.57.93.68] (unknown [10.57.93.68])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6105F3F738;
	Thu, 14 Sep 2023 08:06:30 -0700 (PDT)
Message-ID: <239e2853-f89f-20da-2492-7f6d33aede63@arm.com>
Date: Thu, 14 Sep 2023 16:06:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 02/13] media: rockchip: rga: extract helper to fill
 descriptors
Content-Language: en-GB
To: Michael Tretter <m.tretter@pengutronix.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
 <20230914-rockchip-rga-multiplanar-v1-2-abfd77260ae3@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v1-2-abfd77260ae3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_080635_088286_058479FC 
X-CRM114-Status: GOOD (  27.63  )
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

On 2023-09-14 13:40, Michael Tretter wrote:
> The IOMMU of the RGA is programmed with a list of DMA descriptors that
> contain an 32 bit address per 4k page in the video buffers. The address
> in the descriptor points to the start address of the page.
> 
> Introduce 'struct rga_dma_desc' to make the handling of the DMA
> descriptors explicit instead of hiding them behind standard types.
> 
> As the descriptors only handle 32 bit addresses, addresses above 4 GB
> cannot be addressed. If this is detected, stop filling the descriptor
> list and report an error.

That sounds unnecessary, since the only DMA addresses the RGA should be 
seeing are those from a dma_map_sg() call using the RGA device itself, 
and that would have failed if it was unable to provide a valid DMA 
address for the device.

The existing rga_buf_map() code is so clearly wrong I can't tell whether 
that mapping is done somewhere out in the core framework or whether the 
driver's supposed to be doing it for itself.

Thanks,
Robin.

> While at it, use provided helpers for iterating the sg_table instead of
> manually calculating the DMA addresses.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>   drivers/media/platform/rockchip/rga/rga-buf.c | 47 +++++++++++++++------------
>   drivers/media/platform/rockchip/rga/rga.h     |  8 +++--
>   2 files changed, 33 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
> index 81508ed5abf3..df5ebc90e32d 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -5,6 +5,7 @@
>    */
>   
>   #include <linux/pm_runtime.h>
> +#include <linux/scatterlist.h>
>   
>   #include <media/v4l2-device.h>
>   #include <media/v4l2-ioctl.h>
> @@ -15,6 +16,25 @@
>   #include "rga-hw.h"
>   #include "rga.h"
>   
> +static int fill_descriptors(struct rga_dma_desc *desc, struct sg_table *sgt)
> +{
> +	struct sg_dma_page_iter iter;
> +	struct rga_dma_desc *tmp = desc;
> +	unsigned int num_desc = 0;
> +	dma_addr_t addr;
> +
> +	for_each_sgtable_dma_page(sgt, &iter, 0) {
> +		addr = sg_page_iter_dma_address(&iter);
> +		if (upper_32_bits(addr) != 0L)
> +			return -1;
> +		tmp->addr = lower_32_bits(addr);
> +		tmp++;
> +		num_desc++;
> +	}
> +
> +	return num_desc;
> +}
> +
>   static int
>   rga_queue_setup(struct vb2_queue *vq,
>   		unsigned int *nbuffers, unsigned int *nplanes,
> @@ -114,11 +134,8 @@ void rga_buf_map(struct vb2_buffer *vb)
>   {
>   	struct rga_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
>   	struct rockchip_rga *rga = ctx->rga;
> -	struct sg_table *sgt;
> -	struct scatterlist *sgl;
> -	unsigned int *pages;
> -	unsigned int address, len, i, p;
> -	unsigned int mapped_size = 0;
> +	struct rga_dma_desc *pages;
> +	unsigned int num_desc = 0;
>   
>   	if (vb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
>   		pages = rga->src_mmu_pages;
> @@ -126,23 +143,13 @@ void rga_buf_map(struct vb2_buffer *vb)
>   		pages = rga->dst_mmu_pages;
>   
>   	/* Create local MMU table for RGA */
> -	sgt = vb2_plane_cookie(vb, 0);
> -
> -	for_each_sg(sgt->sgl, sgl, sgt->nents, i) {
> -		len = sg_dma_len(sgl) >> PAGE_SHIFT;
> -		address = sg_phys(sgl);
> -
> -		for (p = 0; p < len; p++) {
> -			dma_addr_t phys = address +
> -					  ((dma_addr_t)p << PAGE_SHIFT);
> -
> -			pages[mapped_size + p] = phys;
> -		}
> -
> -		mapped_size += len;
> +	num_desc = fill_descriptors(pages, vb2_dma_sg_plane_desc(vb, 0));
> +	if (num_desc < 0) {
> +		dev_err(rga->dev, "Failed to map buffer");
> +		return;
>   	}
>   
>   	/* sync local MMU table for RGA */
>   	dma_sync_single_for_device(rga->dev, virt_to_phys(pages),
> -				   8 * PAGE_SIZE, DMA_BIDIRECTIONAL);
> +				   num_desc * sizeof(*pages), DMA_BIDIRECTIONAL);
>   }
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
> index 5fa9d2f366dc..22f7da28ac51 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -40,6 +40,10 @@ struct rga_frame {
>   	u32 size;
>   };
>   
> +struct rga_dma_desc {
> +	u32 addr;
> +};
> +
>   struct rockchip_rga_version {
>   	u32 major;
>   	u32 minor;
> @@ -81,8 +85,8 @@ struct rockchip_rga {
>   	struct rga_ctx *curr;
>   	dma_addr_t cmdbuf_phy;
>   	void *cmdbuf_virt;
> -	unsigned int *src_mmu_pages;
> -	unsigned int *dst_mmu_pages;
> +	struct rga_dma_desc *src_mmu_pages;
> +	struct rga_dma_desc *dst_mmu_pages;
>   };
>   
>   struct rga_frame *rga_get_frame(struct rga_ctx *ctx, enum v4l2_buf_type type);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
