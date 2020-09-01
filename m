Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E574C433E6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 20:01:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C685B20767
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 20:01:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mA8aO5jK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C685B20767
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C4DJO5Yp0VsvPgHzpSAY9bJx9BLCtAovxpEcHeWeGcc=; b=mA8aO5jKfgUFtix3ZQW9BnciR
	WIVkMAzJm8+HbjjfX2e2JG3zdTnkgA2iGsP74pJAFXovnZEguYWj5mHvTtj65sUjP2Wke31laD/9y
	d6C3lJvs7NxFkjd1XmjkIE+jxv9d5uOj0aVTNovwhsOq0nT4uPgP+ycUJ/nsiI08ZVa4DiSWDKUHF
	j6IWsA3iPQ5H1dDy3CyqO+P5TxF46+bZmccGwEGV9/SdEL6qTHL4RZPwzlRir2nHRg8QkSYl/rUM2
	mSRmMAojqbwC1CuhpPVk0wROoZVHeavpeIs+GF3KbjPHsJiEj7fuw0uAT7glwdoC+KZm+6RJLetSz
	hTNxWedug==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDCSr-0005Js-3K; Tue, 01 Sep 2020 20:01:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDCSn-0005Io-2d; Tue, 01 Sep 2020 20:01:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C75DA1FB;
 Tue,  1 Sep 2020 13:01:02 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8CE313F66F;
 Tue,  1 Sep 2020 13:01:00 -0700 (PDT)
Subject: Re: [PATCH v9 17/32] drm: rockchip: fix common struct sg_table
 related issues
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063537eucas1p2d9a362f619920ad84c46f36cd13ec362@eucas1p2.samsung.com>
 <20200826063316.23486-18-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d69bd263-c628-170d-3992-d717423196a2@arm.com>
Date: Tue, 1 Sep 2020 21:00:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200826063316.23486-18-m.szyprowski@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_160105_232108_30F7AC71 
X-CRM114-Status: GOOD (  29.48  )
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
> The Documentation/DMA-API-HOWTO.txt states that the dma_map_sg() function
> returns the number of the created entries in the DMA address space.
> However the subsequent calls to the dma_sync_sg_for_{device,cpu}() and
> dma_unmap_sg must be called with the original number of the entries
> passed to the dma_map_sg().
> 
> struct sg_table is a common structure used for describing a non-contiguous
> memory buffer, used commonly in the DRM and graphics subsystems. It
> consists of a scatterlist with memory pages and DMA addresses (sgl entry),
> as well as the number of scatterlist entries: CPU pages (orig_nents entry)
> and DMA mapped pages (nents entry).
> 
> It turned out that it was a common mistake to misuse nents and orig_nents
> entries, calling DMA-mapping functions with a wrong number of entries or
> ignoring the number of mapped entries returned by the dma_map_sg()
> function.
> 
> To avoid such issues, lets use a common dma-mapping wrappers operating
> directly on the struct sg_table objects and use scatterlist page
> iterators where possible. This, almost always, hides references to the
> nents and orig_nents entries, making the code robust, easier to follow
> and copy/paste safe.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

(Until now I hadn't noticed the crimes against the API that 
rockchip_gem_get_pages() is committing, but it's not this patch's 
fault... I'll have to take a closer look at that)

> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 23 +++++++++------------
>   1 file changed, 10 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index 2970e534e2bb..cb50f2ba2e46 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -36,8 +36,8 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
>   
>   	rk_obj->dma_addr = rk_obj->mm.start;
>   
> -	ret = iommu_map_sg(private->domain, rk_obj->dma_addr, rk_obj->sgt->sgl,
> -			   rk_obj->sgt->nents, prot);
> +	ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr, rk_obj->sgt,
> +				prot);
>   	if (ret < rk_obj->base.size) {
>   		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
>   			  ret, rk_obj->base.size);
> @@ -98,11 +98,10 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
>   	 * TODO: Replace this by drm_clflush_sg() once it can be implemented
>   	 * without relying on symbols that are not exported.
>   	 */
> -	for_each_sg(rk_obj->sgt->sgl, s, rk_obj->sgt->nents, i)
> +	for_each_sgtable_sg(rk_obj->sgt, s, i)
>   		sg_dma_address(s) = sg_phys(s);
>   
> -	dma_sync_sg_for_device(drm->dev, rk_obj->sgt->sgl, rk_obj->sgt->nents,
> -			       DMA_TO_DEVICE);
> +	dma_sync_sgtable_for_device(drm->dev, rk_obj->sgt, DMA_TO_DEVICE);
>   
>   	return 0;
>   
> @@ -350,8 +349,8 @@ void rockchip_gem_free_object(struct drm_gem_object *obj)
>   		if (private->domain) {
>   			rockchip_gem_iommu_unmap(rk_obj);
>   		} else {
> -			dma_unmap_sg(drm->dev, rk_obj->sgt->sgl,
> -				     rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
> +			dma_unmap_sgtable(drm->dev, rk_obj->sgt,
> +					  DMA_BIDIRECTIONAL, 0);
>   		}
>   		drm_prime_gem_destroy(obj, rk_obj->sgt);
>   	} else {
> @@ -476,15 +475,13 @@ rockchip_gem_dma_map_sg(struct drm_device *drm,
>   			struct sg_table *sg,
>   			struct rockchip_gem_object *rk_obj)
>   {
> -	int count = dma_map_sg(drm->dev, sg->sgl, sg->nents,
> -			       DMA_BIDIRECTIONAL);
> -	if (!count)
> -		return -EINVAL;
> +	int err = dma_map_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
> +	if (err)
> +		return err;
>   
>   	if (drm_prime_get_contiguous_size(sg) < attach->dmabuf->size) {
>   		DRM_ERROR("failed to map sg_table to contiguous linear address.\n");
> -		dma_unmap_sg(drm->dev, sg->sgl, sg->nents,
> -			     DMA_BIDIRECTIONAL);
> +		dma_unmap_sgtable(drm->dev, sg, DMA_BIDIRECTIONAL, 0);
>   		return -EINVAL;
>   	}
>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
