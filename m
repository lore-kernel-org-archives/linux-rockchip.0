Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF354C4363D
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 13:05:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3DE40206E3
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 13:05:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="SoZ08YMR";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="AV57jYtb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3DE40206E3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1V0VCcTc/UKq5Ik6gP+GCPNucL4Qsv+HdNJjzljKH4c=; b=SoZ08YMR3uPutC+rkMoGnw+6y
	mbpJVKcdxkKGMSPgkphqcLdDXuPI3vCo+aJYghnNtIXODp3gxd62wtvivLt52Lb+ReluUqcxN+mEi
	sS837UFYV6UJpUA7N5Bnr//Mi5+fEDwm96BnFLgtOIbpmB+kOaKVGkTkJEQu/KS5bYBO738R72VE7
	JHPHLpSPloPJRLZHIJ9SgUJqGUlmLaVZufm0cw1agJYfJE96+8NcL6CsyP0yxh98/drolf/nODyH/
	dG/ceB9hcxnrHfVd7z+z8o1I3B6tNf/78BpKttr1APevbnuMk0NZyY2MFYBG077l6nDqY0yXFt24C
	BbFCPA76Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOKks-0000Qa-Ut; Fri, 02 Oct 2020 13:05:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOKkq-0000Pv-Gx
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 13:05:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id w5so1749281wrp.8
 for <linux-rockchip@lists.infradead.org>; Fri, 02 Oct 2020 06:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dmSoMZsVp3YAqhv8Y0loIpdOiydVu0bIAY3p4JFgF7A=;
 b=AV57jYtbiDDUj/wY9l7Fv3SBOn5+BEvUjclpKKiUzjamkoeuUdu5XUIQeXdtqVoe4u
 RUgbNoQ1FIg3QVAEHmAugBg7ut2EtX2DV4qkpq1+xaxQlR3yGEkNqq77ciVXDZ0nWwIz
 iazTIBuZLCMcEaA0D/hmMTAcA7+HAkojRZOhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dmSoMZsVp3YAqhv8Y0loIpdOiydVu0bIAY3p4JFgF7A=;
 b=tStJvsMXGvCg7GL9c3IgcqeaeqaQxLfwvBblzM8lA+Dlwy5KcrsL/6SEfLOLpcFWId
 i5J4Uc/9IbCbFEqIHJc5Li8E912ZrJWwKlzwllm4uBvZIk4fLdvtuVH+n6Nx0WRrSUBU
 VeSA+7Cp51YPAINZBiHHhGPWNP4jdCz8dBVBMJ8jrLmO0rONJ7M/tWLkvwQPs5p4EQn5
 9FC9WHlku81w50l8Q9v5gNcTIqtRY3erY/NFklQi2pnJxLa41SlA08waFkiBque59EdK
 hqDO1gD1owen9lB8edPROMB0cJnjL4Gdqo9C9GtKr6bLpimNcbmIJcPFn3/aTDBjaqeD
 PHXg==
X-Gm-Message-State: AOAM532IkMhYgNfEadnONHHE/PvmD9i3wxNxIJbTcKDc3d3ptLR4ZZNT
 rustlPlsA8hQMTKbajFbdMdteg==
X-Google-Smtp-Source: ABdhPJw4B8Uh8JocUse1fCeaSMDHBFwcJ3sqMM0TRtXtxZYpHdNTQf6MuSSoFxFHMqa33V2JAFy1OA==
X-Received: by 2002:a5d:4910:: with SMTP id x16mr3248620wrq.204.1601643943480; 
 Fri, 02 Oct 2020 06:05:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k6sm1698980wmi.1.2020.10.02.06.05.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 06:05:42 -0700 (PDT)
Date: Fri, 2 Oct 2020 15:05:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 5/7] drm/gem: Store client buffer mappings as struct
 dma_buf_map
Message-ID: <20201002130539.GL438822@phenom.ffwll.local>
References: <20200929151437.19717-1-tzimmermann@suse.de>
 <20200929151437.19717-6-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929151437.19717-6-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_090544_610056_D21A1C01 
X-CRM114-Status: GOOD (  31.28  )
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
Cc: luben.tuikov@amd.com, heiko@sntech.de, airlied@linux.ie,
 nouveau@lists.freedesktop.org, linus.walleij@linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 melissa.srw@gmail.com, eric@anholt.net, ray.huang@amd.com, kraxel@redhat.com,
 sam@ravnborg.org, sumit.semwal@linaro.org, emil.velikov@collabora.com,
 robh@kernel.org, linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com,
 lima@lists.freedesktop.org, oleksandr_andrushchenko@epam.com, krzk@kernel.org,
 steven.price@arm.com, linux-rockchip@lists.infradead.org, kgene@kernel.org,
 bskeggs@redhat.com, linux+etnaviv@armlinux.org.uk,
 spice-devel@lists.freedesktop.org, alyssa.rosenzweig@collabora.com,
 maarten.lankhorst@linux.intel.com, etnaviv@lists.freedesktop.org,
 mripard@kernel.org, inki.dae@samsung.com, hdegoede@redhat.com,
 christian.gmeiner@gmail.com, xen-devel@lists.xenproject.org,
 virtualization@lists.linux-foundation.org, sean@poorly.run, apaneers@amd.com,
 linux-arm-kernel@lists.infradead.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, tomeu.vizoso@collabora.com,
 sw0312.kim@samsung.com, hjc@rock-chips.com, kyungmin.park@samsung.com,
 miaoqinglang@huawei.com, yuq825@gmail.com, daniel@ffwll.ch,
 alexander.deucher@amd.com, linux-media@vger.kernel.org,
 christian.koenig@amd.com, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 29, 2020 at 05:14:35PM +0200, Thomas Zimmermann wrote:
> Kernel DRM clients now store their framebuffer address in an instance
> of struct dma_buf_map. Depending on the buffer's location, the address
> refers to system or I/O memory.
> 
> Callers of drm_client_buffer_vmap() receive a copy of the value in
> the call's supplied arguments. It can be accessed and modified with
> dma_buf_map interfaces.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_client.c    | 34 +++++++++++++++++++--------------
>  drivers/gpu/drm/drm_fb_helper.c | 23 +++++++++++++---------
>  include/drm/drm_client.h        |  7 ++++---
>  3 files changed, 38 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
> index ac0082bed966..fe573acf1067 100644
> --- a/drivers/gpu/drm/drm_client.c
> +++ b/drivers/gpu/drm/drm_client.c
> @@ -235,7 +235,7 @@ static void drm_client_buffer_delete(struct drm_client_buffer *buffer)
>  {
>  	struct drm_device *dev = buffer->client->dev;
>  
> -	drm_gem_vunmap(buffer->gem, buffer->vaddr);
> +	drm_gem_vunmap(buffer->gem, &buffer->map);
>  
>  	if (buffer->gem)
>  		drm_gem_object_put(buffer->gem);
> @@ -291,25 +291,31 @@ drm_client_buffer_create(struct drm_client_dev *client, u32 width, u32 height, u
>  /**
>   * drm_client_buffer_vmap - Map DRM client buffer into address space
>   * @buffer: DRM client buffer
> + * @map_copy: Returns the mapped memory's address
>   *
>   * This function maps a client buffer into kernel address space. If the
> - * buffer is already mapped, it returns the mapping's address.
> + * buffer is already mapped, it returns the existing mapping's address.
>   *
>   * Client buffer mappings are not ref'counted. Each call to
>   * drm_client_buffer_vmap() should be followed by a call to
>   * drm_client_buffer_vunmap(); or the client buffer should be mapped
>   * throughout its lifetime.
>   *
> + * The returned address is a copy of the internal value. In contrast to
> + * other vmap interfaces, you don't need it for the client's vunmap
> + * function. So you can modify it at will during blit and draw operations.
> + *
>   * Returns:
> - *	The mapped memory's address
> + *	0 on success, or a negative errno code otherwise.
>   */
> -void *drm_client_buffer_vmap(struct drm_client_buffer *buffer)
> +int
> +drm_client_buffer_vmap(struct drm_client_buffer *buffer, struct dma_buf_map *map_copy)
>  {
> -	struct dma_buf_map map;
> +	struct dma_buf_map *map = &buffer->map;
>  	int ret;
>  
> -	if (buffer->vaddr)
> -		return buffer->vaddr;
> +	if (dma_buf_map_is_set(map))
> +		goto out;
>  
>  	/*
>  	 * FIXME: The dependency on GEM here isn't required, we could
> @@ -319,13 +325,14 @@ void *drm_client_buffer_vmap(struct drm_client_buffer *buffer)
>  	 * fd_install step out of the driver backend hooks, to make that
>  	 * final step optional for internal users.
>  	 */
> -	ret = drm_gem_vmap(buffer->gem, &map);
> +	ret = drm_gem_vmap(buffer->gem, map);
>  	if (ret)
> -		return ERR_PTR(ret);
> +		return ret;
>  
> -	buffer->vaddr = map.vaddr;
> +out:
> +	*map_copy = *map;
>  
> -	return map.vaddr;
> +	return 0;
>  }
>  EXPORT_SYMBOL(drm_client_buffer_vmap);
>  
> @@ -339,10 +346,9 @@ EXPORT_SYMBOL(drm_client_buffer_vmap);
>   */
>  void drm_client_buffer_vunmap(struct drm_client_buffer *buffer)
>  {
> -	struct dma_buf_map map = DMA_BUF_MAP_INIT_VADDR(buffer->vaddr);
> +	struct dma_buf_map *map = &buffer->map;
>  
> -	drm_gem_vunmap(buffer->gem, &map);
> -	buffer->vaddr = NULL;
> +	drm_gem_vunmap(buffer->gem, map);
>  }
>  EXPORT_SYMBOL(drm_client_buffer_vunmap);
>  
> diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
> index 8697554ccd41..343a292f2c7c 100644
> --- a/drivers/gpu/drm/drm_fb_helper.c
> +++ b/drivers/gpu/drm/drm_fb_helper.c
> @@ -394,7 +394,7 @@ static void drm_fb_helper_dirty_blit_real(struct drm_fb_helper *fb_helper,
>  	unsigned int cpp = fb->format->cpp[0];
>  	size_t offset = clip->y1 * fb->pitches[0] + clip->x1 * cpp;
>  	void *src = fb_helper->fbdev->screen_buffer + offset;
> -	void *dst = fb_helper->buffer->vaddr + offset;
> +	void *dst = fb_helper->buffer->map.vaddr + offset;
>  	size_t len = (clip->x2 - clip->x1) * cpp;
>  	unsigned int y;
>  
> @@ -416,7 +416,8 @@ static void drm_fb_helper_dirty_work(struct work_struct *work)
>  	struct drm_clip_rect *clip = &helper->dirty_clip;
>  	struct drm_clip_rect clip_copy;
>  	unsigned long flags;
> -	void *vaddr;
> +	struct dma_buf_map map;
> +	int ret;
>  
>  	spin_lock_irqsave(&helper->dirty_lock, flags);
>  	clip_copy = *clip;
> @@ -429,8 +430,8 @@ static void drm_fb_helper_dirty_work(struct work_struct *work)
>  
>  		/* Generic fbdev uses a shadow buffer */
>  		if (helper->buffer) {
> -			vaddr = drm_client_buffer_vmap(helper->buffer);
> -			if (IS_ERR(vaddr))
> +			ret = drm_client_buffer_vmap(helper->buffer, &map);
> +			if (ret)
>  				return;
>  			drm_fb_helper_dirty_blit_real(helper, &clip_copy);
>  		}
> @@ -2076,7 +2077,8 @@ static int drm_fb_helper_generic_probe(struct drm_fb_helper *fb_helper,
>  	struct drm_framebuffer *fb;
>  	struct fb_info *fbi;
>  	u32 format;
> -	void *vaddr;
> +	struct dma_buf_map map;
> +	int ret;
>  
>  	drm_dbg_kms(dev, "surface width(%d), height(%d) and bpp(%d)\n",
>  		    sizes->surface_width, sizes->surface_height,
> @@ -2112,11 +2114,14 @@ static int drm_fb_helper_generic_probe(struct drm_fb_helper *fb_helper,
>  		fb_deferred_io_init(fbi);
>  	} else {
>  		/* buffer is mapped for HW framebuffer */
> -		vaddr = drm_client_buffer_vmap(fb_helper->buffer);
> -		if (IS_ERR(vaddr))
> -			return PTR_ERR(vaddr);
> +		ret = drm_client_buffer_vmap(fb_helper->buffer, &map);
> +		if (ret)
> +			return ret;
> +		if (map.is_iomem)
> +			fbi->screen_base = map.vaddr_iomem;
> +		else
> +			fbi->screen_buffer = map.vaddr;
>  
> -		fbi->screen_buffer = vaddr;
>  		/* Shamelessly leak the physical address to user-space */
>  #if IS_ENABLED(CONFIG_DRM_FBDEV_LEAK_PHYS_SMEM)
>  		if (drm_leak_fbdev_smem && fbi->fix.smem_start == 0)
> diff --git a/include/drm/drm_client.h b/include/drm/drm_client.h
> index 7aaea665bfc2..f07f2fb02e75 100644
> --- a/include/drm/drm_client.h
> +++ b/include/drm/drm_client.h
> @@ -3,6 +3,7 @@
>  #ifndef _DRM_CLIENT_H_
>  #define _DRM_CLIENT_H_
>  
> +#include <linux/dma-buf-map.h>
>  #include <linux/lockdep.h>
>  #include <linux/mutex.h>
>  #include <linux/types.h>
> @@ -141,9 +142,9 @@ struct drm_client_buffer {
>  	struct drm_gem_object *gem;
>  
>  	/**
> -	 * @vaddr: Virtual address for the buffer
> +	 * @map: Virtual address for the buffer
>  	 */
> -	void *vaddr;
> +	struct dma_buf_map map;
>  
>  	/**
>  	 * @fb: DRM framebuffer
> @@ -155,7 +156,7 @@ struct drm_client_buffer *
>  drm_client_framebuffer_create(struct drm_client_dev *client, u32 width, u32 height, u32 format);
>  void drm_client_framebuffer_delete(struct drm_client_buffer *buffer);
>  int drm_client_framebuffer_flush(struct drm_client_buffer *buffer, struct drm_rect *rect);
> -void *drm_client_buffer_vmap(struct drm_client_buffer *buffer);
> +int drm_client_buffer_vmap(struct drm_client_buffer *buffer, struct dma_buf_map *map);
>  void drm_client_buffer_vunmap(struct drm_client_buffer *buffer);
>  
>  int drm_client_modeset_create(struct drm_client_dev *client);

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
