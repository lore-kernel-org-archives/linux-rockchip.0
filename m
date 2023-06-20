Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8935BEB64D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 16:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8xoNGMdlaiydQ9oSWBJog1DXRIbWIUxadGlzyswVrM=; b=zRIjQrEsy7tmhu
	qwx4lRDAnllMvKbXmaTvf1f/4v6Gzd4UgK0VQOH1xiKuLKf6T4KWHQH3ZBEiYZPAjpahTYNrDuUCk
	QsZD7JeqiVj191AYWKN0J+sLyf6ZVa+mTSrRxaBsz5ti67t6PFOFK1mJkvHrphtacWReVvVImZvUd
	CrAkpv6OGfUnibV0tfqYum5gxb1Wr5c0ZSx6KqwJBuVtoCs/nVW1gMzW3WUrf5PLi3ptmV1NkS70m
	gzSuDQfYPOqcU+5oKvgx8GWURUmbnlOBLwWW9DfXDRrJOlTAYpZK1czinamk+c0MtwVx0g1B0Kvin
	GWojMRqw0FLjj8VjURSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeWo-00BrDL-1A;
	Tue, 20 Jun 2023 16:48:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeWk-00BrBT-2i;
	Tue, 20 Jun 2023 16:48:24 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 05F20B2A;
	Tue, 20 Jun 2023 18:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1687279666;
	bh=n6szjPbzctfFO2eL46Qs3m2ddroPrcA/e5XpeGrnJTM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oNOh5R2HHEl4+NNt0N0uTWOqgYKFTZbVThLpNE8jy7qIgadxEc/RTVyZCwbk8GOpq
	 7cNGu8guZHypWWWvh2jAIO5tgzW1anOwWvlL/2K5wgPpToJITbIjcVhp6k2eqYQKnc
	 y9dQDTGTIwX4W2XLXzqLvdtCVrMOILWnKyQE4FVI=
Date: Tue, 20 Jun 2023 19:48:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	airlied@gmail.com, daniel@ffwll.ch,
	kieran.bingham+renesas@ideasonboard.com, hjc@rock-chips.com,
	heiko@sntech.de, dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] drm/gem-dma: Unexport drm_gem_dma_vm_ops
Message-ID: <20230620164819.GF26467@pendragon.ideasonboard.com>
References: <20230620121202.28263-1-tzimmermann@suse.de>
 <20230620121202.28263-4-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230620121202.28263-4-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_094823_027133_7B0363CA 
X-CRM114-Status: GOOD (  14.58  )
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

Hi Thomas,

Thank you for the patch.

On Tue, Jun 20, 2023 at 02:03:23PM +0200, Thomas Zimmermann wrote:
> There are no external users of drm_gem_dma_vm_ops. Unexport the symbol.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> ---
>  drivers/gpu/drm/drm_gem_dma_helper.c | 11 +++++------
>  include/drm/drm_gem_dma_helper.h     |  2 --
>  2 files changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem_dma_helper.c b/drivers/gpu/drm/drm_gem_dma_helper.c
> index e9aa3ac140654..d8a415c3d156c 100644
> --- a/drivers/gpu/drm/drm_gem_dma_helper.c
> +++ b/drivers/gpu/drm/drm_gem_dma_helper.c
> @@ -45,6 +45,11 @@
>   * drm_gem_dma_vmap()). These helpers perform the necessary type conversion.
>   */
>  
> +static const struct vm_operations_struct drm_gem_dma_vm_ops = {
> +	.open = drm_gem_vm_open,
> +	.close = drm_gem_vm_close,
> +};
> +
>  static const struct drm_gem_object_funcs drm_gem_dma_default_funcs = {
>  	.free = drm_gem_dma_object_free,
>  	.print_info = drm_gem_dma_object_print_info,
> @@ -315,12 +320,6 @@ int drm_gem_dma_dumb_create(struct drm_file *file_priv,
>  }
>  EXPORT_SYMBOL_GPL(drm_gem_dma_dumb_create);
>  
> -const struct vm_operations_struct drm_gem_dma_vm_ops = {
> -	.open = drm_gem_vm_open,
> -	.close = drm_gem_vm_close,
> -};
> -EXPORT_SYMBOL_GPL(drm_gem_dma_vm_ops);
> -
>  #ifndef CONFIG_MMU
>  /**
>   * drm_gem_dma_get_unmapped_area - propose address for mapping in noMMU cases
> diff --git a/include/drm/drm_gem_dma_helper.h b/include/drm/drm_gem_dma_helper.h
> index 3877cbf0e927c..88a810f954fce 100644
> --- a/include/drm/drm_gem_dma_helper.h
> +++ b/include/drm/drm_gem_dma_helper.h
> @@ -45,8 +45,6 @@ int drm_gem_dma_vmap(struct drm_gem_dma_object *dma_obj,
>  		     struct iosys_map *map);
>  int drm_gem_dma_mmap(struct drm_gem_dma_object *dma_obj, struct vm_area_struct *vma);
>  
> -extern const struct vm_operations_struct drm_gem_dma_vm_ops;
> -
>  /*
>   * GEM object functions
>   */

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
