Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C6E3C433E2
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 19:34:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5DAB9207D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 19:34:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VhhD5NkN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5DAB9207D3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jrfH824zjdCHXizGdhzpAPYVfHTgWm0PYw833lKT1ac=; b=VhhD5NkNSsysndXXH5UJQvk5H
	XkrxosSt9IYKVG+SWVTdRtnqo7OawwXZndS5WGSHkRrbCkosjLyMjQntb/oF8vrmffOJ8Z+jmVsa7
	dI/21Cbibh3Z8ru8J8X+5riXayXLnzc3cG1x+pg4yFPPeG22ogF5FycRWzSBpkcJ5zx4/bPRunx9P
	GTAjwAT5ANm3scLMVoxJDH+DTMHpmRUScLz3/zCndCMXZhs9M40Xw3k5gwcJrZoo89rrjm2QUm8Qp
	BXKXJAjZWj8jPYywsNY6tGJjsLTYKor6tPs3HtR51mLMILmkZqhnBbxRHgGQac09wYMHQ1tZh2dVZ
	rorfRDztQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDC3E-0003Ol-Sm; Tue, 01 Sep 2020 19:34:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDC38-0003MY-Ry; Tue, 01 Sep 2020 19:34:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63F041FB;
 Tue,  1 Sep 2020 12:34:32 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D91FB3F71F;
 Tue,  1 Sep 2020 12:34:29 -0700 (PDT)
Subject: Re: [PATCH v9 16/32] drm: rockchip: use common helper for a
 scatterlist contiguity check
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063537eucas1p1462d4761c8eb6d762fe5ea0fbd3b6e3b@eucas1p1.samsung.com>
 <20200826063316.23486-17-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <263143f0-8b39-6daa-1d26-54ef32b54c27@arm.com>
Date: Tue, 1 Sep 2020 20:34:28 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-17-m.szyprowski@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_153434_951334_10CD057C 
X-CRM114-Status: GOOD (  21.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-08-26 07:33, Marek Szyprowski wrote:
> Use common helper for checking the contiguity of the imported dma-buf.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 19 +------------------
>   1 file changed, 1 insertion(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index b9275ba7c5a5..2970e534e2bb 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -460,23 +460,6 @@ struct sg_table *rockchip_gem_prime_get_sg_table(struct drm_gem_object *obj)
>   	return sgt;
>   }
>   
> -static unsigned long rockchip_sg_get_contiguous_size(struct sg_table *sgt,
> -						     int count)
> -{
> -	struct scatterlist *s;
> -	dma_addr_t expected = sg_dma_address(sgt->sgl);
> -	unsigned int i;
> -	unsigned long size = 0;
> -
> -	for_each_sg(sgt->sgl, s, count, i) {
> -		if (sg_dma_address(s) != expected)
> -			break;
> -		expected = sg_dma_address(s) + sg_dma_len(s);
> -		size += sg_dma_len(s);
> -	}
> -	return size;
> -}
> -
>   static int
>   rockchip_gem_iommu_map_sg(struct drm_device *drm,
>   			  struct dma_buf_attachment *attach,
> @@ -498,7 +481,7 @@ rockchip_gem_dma_map_sg(struct drm_device *drm,
>   	if (!count)
>   		return -EINVAL;
>   
> -	if (rockchip_sg_get_contiguous_size(sg, count) < attach->dmabuf->size) {
> +	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
>   		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
>   		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
>   			     DMA_BIDIRECTIONAL);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
