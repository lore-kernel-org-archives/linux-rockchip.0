Return-Path: <SRS0=BK9L=MJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF540C636CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 23:30:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F93260BD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 23:30:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4F93260BD3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REndFNU52f/dmp6lKuerx4x6hyIDNmZKFMR6cZ0rJUY=; b=BplMl/EOO5wk1j
	MUvlAGqxuJnQjdQBLPotAaIfFlYleO+MkDL4cCGQHn5vFzGDHaF6iFtxP2BwODep5xgEbACmEbtaZ
	Y9ccZukdrbXE8MMDDD5tbXWOeM7ieBCbMHl0CLjVRyJPD9Nk9wFQSufyxQ7y178t6lRt4Gpl2t4NZ
	Enmc1m45u9UKOaYG5rXFBkJvysdJ3sy3A+gE73zBW02XHU85e44AAK9QkmzyJ4P7+Lo7zPX6UKNLn
	10I5IMUfKX1aN6ziF9LcV1pBAiVjiHy8p5y+td2TOKinY2VorTopMyLW+nlidCOg8lm8IO0JP9fhw
	fJNVz6u20DoOkE8MqNzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4tkr-0077tc-3U; Sat, 17 Jul 2021 23:29:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4tkd-0077sV-Rj; Sat, 17 Jul 2021 23:29:45 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4tkV-0007Jc-F1; Sun, 18 Jul 2021 01:29:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: hjc@rock-chips.com, airlied@linux.ie, daniel@ffwll.ch,
 Thomas Zimmermann <tzimmermann@suse.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH] drm/rockchip: Implement mmap as GEM object function
Date: Sun, 18 Jul 2021 01:29:34 +0200
Message-ID: <8019180.LvFx2qVVIh@diego>
In-Reply-To: <20210624095502.8945-1-tzimmermann@suse.de>
References: <20210624095502.8945-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210717_162943_954529_C6592996 
X-CRM114-Status: GOOD (  23.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 24. Juni 2021, 11:55:02 CEST schrieb Thomas Zimmermann:
> Moving the driver-specific mmap code into a GEM object function allows
> for using DRM helpers for various mmap callbacks.
> 
> The respective rockchip functions are being removed. The file_operations
> structure fops is now being created by the helper macro
> DEFINE_DRM_GEM_FOPS().
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

On rk3288 (pinky), rk3399 (gru-kevin, puma) and rk3328 (rock64)
Tested-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c   | 13 +-----
>  drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c |  3 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_gem.c   | 44 +++++--------------
>  drivers/gpu/drm/rockchip/rockchip_drm_gem.h   |  7 ---
>  4 files changed, 15 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index b730b8d5d949..2e3ab573a817 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -208,16 +208,7 @@ static void rockchip_drm_unbind(struct device *dev)
>  	drm_dev_put(drm_dev);
>  }
>  
> -static const struct file_operations rockchip_drm_driver_fops = {
> -	.owner = THIS_MODULE,
> -	.open = drm_open,
> -	.mmap = rockchip_gem_mmap,
> -	.poll = drm_poll,
> -	.read = drm_read,
> -	.unlocked_ioctl = drm_ioctl,
> -	.compat_ioctl = drm_compat_ioctl,
> -	.release = drm_release,
> -};
> +DEFINE_DRM_GEM_FOPS(rockchip_drm_driver_fops);
>  
>  static const struct drm_driver rockchip_drm_driver = {
>  	.driver_features	= DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
> @@ -226,7 +217,7 @@ static const struct drm_driver rockchip_drm_driver = {
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
>  	.gem_prime_import_sg_table	= rockchip_gem_prime_import_sg_table,
> -	.gem_prime_mmap		= rockchip_gem_mmap_buf,
> +	.gem_prime_mmap		= drm_gem_prime_mmap,
>  	.fops			= &rockchip_drm_driver_fops,
>  	.name	= DRIVER_NAME,
>  	.desc	= DRIVER_DESC,
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> index 2fdc455c4ad7..d8418dd39d0e 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
> @@ -7,6 +7,7 @@
>  #include <drm/drm.h>
>  #include <drm/drm_fb_helper.h>
>  #include <drm/drm_fourcc.h>
> +#include <drm/drm_prime.h>
>  #include <drm/drm_probe_helper.h>
>  
>  #include "rockchip_drm_drv.h"
> @@ -24,7 +25,7 @@ static int rockchip_fbdev_mmap(struct fb_info *info,
>  	struct drm_fb_helper *helper = info->par;
>  	struct rockchip_drm_private *private = to_drm_private(helper);
>  
> -	return rockchip_gem_mmap_buf(private->fbdev_bo, vma);
> +	return drm_gem_prime_mmap(private->fbdev_bo, vma);
>  }
>  
>  static const struct fb_ops rockchip_drm_fbdev_ops = {
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index 7971f57436dd..63eb73b624aa 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -240,12 +240,22 @@ static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
>  	int ret;
>  	struct rockchip_gem_object *rk_obj = to_rockchip_obj(obj);
>  
> +	/*
> +	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
> +	 * whole buffer from the start.
> +	 */
> +	vma->vm_pgoff = 0;
> +
>  	/*
>  	 * We allocated a struct page table for rk_obj, so clear
>  	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
>  	 */
> +	vma->vm_flags |= VM_IO | VM_DONTEXPAND | VM_DONTDUMP;
>  	vma->vm_flags &= ~VM_PFNMAP;
>  
> +	vma->vm_page_prot = pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
> +	vma->vm_page_prot = pgprot_decrypted(vma->vm_page_prot);
> +
>  	if (rk_obj->pages)
>  		ret = rockchip_drm_gem_object_mmap_iommu(obj, vma);
>  	else
> @@ -257,39 +267,6 @@ static int rockchip_drm_gem_object_mmap(struct drm_gem_object *obj,
>  	return ret;
>  }
>  
> -int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
> -			  struct vm_area_struct *vma)
> -{
> -	int ret;
> -
> -	ret = drm_gem_mmap_obj(obj, obj->size, vma);
> -	if (ret)
> -		return ret;
> -
> -	return rockchip_drm_gem_object_mmap(obj, vma);
> -}
> -
> -/* drm driver mmap file operations */
> -int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma)
> -{
> -	struct drm_gem_object *obj;
> -	int ret;
> -
> -	ret = drm_gem_mmap(filp, vma);
> -	if (ret)
> -		return ret;
> -
> -	/*
> -	 * Set vm_pgoff (used as a fake buffer offset by DRM) to 0 and map the
> -	 * whole buffer from the start.
> -	 */
> -	vma->vm_pgoff = 0;
> -
> -	obj = vma->vm_private_data;
> -
> -	return rockchip_drm_gem_object_mmap(obj, vma);
> -}
> -
>  static void rockchip_gem_release_object(struct rockchip_gem_object *rk_obj)
>  {
>  	drm_gem_object_release(&rk_obj->base);
> @@ -301,6 +278,7 @@ static const struct drm_gem_object_funcs rockchip_gem_object_funcs = {
>  	.get_sg_table = rockchip_gem_prime_get_sg_table,
>  	.vmap = rockchip_gem_prime_vmap,
>  	.vunmap	= rockchip_gem_prime_vunmap,
> +	.mmap = rockchip_drm_gem_object_mmap,
>  	.vm_ops = &drm_gem_cma_vm_ops,
>  };
>  
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> index 5a70a56cd406..47c1861eece0 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> @@ -34,13 +34,6 @@ rockchip_gem_prime_import_sg_table(struct drm_device *dev,
>  int rockchip_gem_prime_vmap(struct drm_gem_object *obj, struct dma_buf_map *map);
>  void rockchip_gem_prime_vunmap(struct drm_gem_object *obj, struct dma_buf_map *map);
>  
> -/* drm driver mmap file operations */
> -int rockchip_gem_mmap(struct file *filp, struct vm_area_struct *vma);
> -
> -/* mmap a gem object to userspace. */
> -int rockchip_gem_mmap_buf(struct drm_gem_object *obj,
> -			  struct vm_area_struct *vma);
> -
>  struct rockchip_gem_object *
>  	rockchip_gem_create_object(struct drm_device *drm, unsigned int size,
>  				   bool alloc_kmap);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
