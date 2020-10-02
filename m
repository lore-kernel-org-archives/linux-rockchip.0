Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14950C4363D
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 13:04:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 971BD206E3
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 13:04:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hNMxT0tp";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="ld4XU9dC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 971BD206E3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e1KJG+kRjI4aFoKFJkzXL/zo71+GCBz1oNyPxP/BoRA=; b=hNMxT0tp6iF2kw5zDwCkj3rmd
	Fa1uJ25jLtOnE0JuZsZcGzxT/V9+oNlLgo99g5+1MMbWFVevHOFR+6rARJUW1ucY0AEToyY5NCKGa
	o1Ul0zOAmGr8eKFYOjpn2qeOg4OCYeb1oX1bItnb25+JZWgCHZveAKvx2+z1zjCKGSOJwM4JE4Hsw
	Z+ZailtFEx26KsZL8Om8n2XFB9UwWf3uicpMLGFV8rLa4KmDsLhWNLHg0YiDcy+/yl1FPXdBY88uE
	6f3QkBbPOg+7YFW4Dh3nAffwVuWQ/PyuLzaqtZk9pl3E3DQWzgSnZpk4y9Kc1+KDLg+KSWpY11uJD
	3yK0aIoWw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOKjx-0000LV-2J; Fri, 02 Oct 2020 13:04:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOKju-0000Ju-Fv
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 13:04:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id c18so1744645wrm.9
 for <linux-rockchip@lists.infradead.org>; Fri, 02 Oct 2020 06:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=BRdG+Sv9lbvsBV80MeJ5uYgZhZMNFbaqhIia52Zq8gE=;
 b=ld4XU9dC3LDxekGn7GamKDrYPL7jSfU1sRt03W6y6ZG7Aj0ZYozjOKbQG2CqnDAQ+a
 Wm85y42hH9jUGUKeb3Qq0XMhu73F73vVo9TsKURGxDLRrOQhbtc2wTcM+8/StKpZWy9v
 y7aSSQFwbsgDSwiglVqPKSeUy1LEYeYYNmeDw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BRdG+Sv9lbvsBV80MeJ5uYgZhZMNFbaqhIia52Zq8gE=;
 b=tuC7vXR+yes+PKBHnft0WiJSSny9aHodIeoukLApjsjshyQh4lgQhy7myY5yExgbgb
 xgDG62+9ilgKSNgRtZYSdzsxT9Cq9RfLW8mLBujxtwlFEH9AENMK92a5KMEkbznR1g1T
 zfPFl9crVngGk5bS476YSCz5JEtYZqc17DT3AyAwCOHKzxUkOkVzaRzemMsVE6BNo+pc
 91oQYbCIe3QpK49RO/D1gEH0ancHm+HmXK8M2KRs5LEPw7pWf1x2Ee6lVgqRYsh5mkaG
 HOxIyJxx9/dWctHdq+40b2c8Y2GSQ7CTq45pMyoyVDVlHBvhVZzJHx2TJiBmN3m65ocs
 kx0Q==
X-Gm-Message-State: AOAM532VcIFKTzkVnHVt17Z/418zowY6U2C5O+MuGHEQnq3rou3tnirC
 CYkHGtpTn5S7IducjOz1VW3HdQ==
X-Google-Smtp-Source: ABdhPJyzB9ctK1WKL4a99n8wsCE482hZW17HPxIJTgRxw4A/5rqlGoYgwqEr/r2ZqiiE1CWrWADjIQ==
X-Received: by 2002:adf:e8c3:: with SMTP id k3mr3054113wrn.228.1601643884841; 
 Fri, 02 Oct 2020 06:04:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d13sm1695267wrp.44.2020.10.02.06.04.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 06:04:43 -0700 (PDT)
Date: Fri, 2 Oct 2020 15:04:40 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v3 4/7] drm/gem: Update internal GEM vmap/vunmap
 interfaces to use struct dma_buf_map
Message-ID: <20201002130440.GK438822@phenom.ffwll.local>
References: <20200929151437.19717-1-tzimmermann@suse.de>
 <20200929151437.19717-5-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929151437.19717-5-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_090446_562072_559FD0E2 
X-CRM114-Status: GOOD (  24.63  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 29, 2020 at 05:14:34PM +0200, Thomas Zimmermann wrote:
> GEM's vmap and vunmap interfaces now wrap memory pointers in struct
> dma_buf_map.
> =

> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/drm_client.c   | 18 +++++++++++-------
>  drivers/gpu/drm/drm_gem.c      | 28 ++++++++++++++--------------
>  drivers/gpu/drm/drm_internal.h |  5 +++--
>  drivers/gpu/drm/drm_prime.c    | 14 ++++----------
>  4 files changed, 32 insertions(+), 33 deletions(-)
> =

> diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
> index 495f47d23d87..ac0082bed966 100644
> --- a/drivers/gpu/drm/drm_client.c
> +++ b/drivers/gpu/drm/drm_client.c
> @@ -3,6 +3,7 @@
>   * Copyright 2018 Noralf Tr=F8nnes
>   */
>  =

> +#include <linux/dma-buf-map.h>
>  #include <linux/list.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> @@ -304,7 +305,8 @@ drm_client_buffer_create(struct drm_client_dev *clien=
t, u32 width, u32 height, u
>   */
>  void *drm_client_buffer_vmap(struct drm_client_buffer *buffer)
>  {
> -	void *vaddr;
> +	struct dma_buf_map map;
> +	int ret;
>  =

>  	if (buffer->vaddr)
>  		return buffer->vaddr;
> @@ -317,13 +319,13 @@ void *drm_client_buffer_vmap(struct drm_client_buff=
er *buffer)
>  	 * fd_install step out of the driver backend hooks, to make that
>  	 * final step optional for internal users.
>  	 */
> -	vaddr =3D drm_gem_vmap(buffer->gem);
> -	if (IS_ERR(vaddr))
> -		return vaddr;
> +	ret =3D drm_gem_vmap(buffer->gem, &map);
> +	if (ret)
> +		return ERR_PTR(ret);
>  =

> -	buffer->vaddr =3D vaddr;
> +	buffer->vaddr =3D map.vaddr;
>  =

> -	return vaddr;
> +	return map.vaddr;
>  }
>  EXPORT_SYMBOL(drm_client_buffer_vmap);
>  =

> @@ -337,7 +339,9 @@ EXPORT_SYMBOL(drm_client_buffer_vmap);
>   */
>  void drm_client_buffer_vunmap(struct drm_client_buffer *buffer)
>  {
> -	drm_gem_vunmap(buffer->gem, buffer->vaddr);
> +	struct dma_buf_map map =3D DMA_BUF_MAP_INIT_VADDR(buffer->vaddr);
> +
> +	drm_gem_vunmap(buffer->gem, &map);
>  	buffer->vaddr =3D NULL;
>  }
>  EXPORT_SYMBOL(drm_client_buffer_vunmap);
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 0c4a66dea5c2..f2b2f37d41c4 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -1205,32 +1205,32 @@ void drm_gem_unpin(struct drm_gem_object *obj)
>  		obj->funcs->unpin(obj);
>  }
>  =

> -void *drm_gem_vmap(struct drm_gem_object *obj)
> +int drm_gem_vmap(struct drm_gem_object *obj, struct dma_buf_map *map)
>  {
> -	struct dma_buf_map map;
>  	int ret;
>  =

> -	if (!obj->funcs->vmap) {
> -		return ERR_PTR(-EOPNOTSUPP);
> +	if (!obj->funcs->vmap)
> +		return -EOPNOTSUPP;
>  =

> -	ret =3D obj->funcs->vmap(obj, &map);
> +	ret =3D obj->funcs->vmap(obj, map);
>  	if (ret)
> -		return ERR_PTR(ret);
> -	else if (dma_buf_map_is_null(&map))
> -		return ERR_PTR(-ENOMEM);
> +		return ret;
> +	else if (dma_buf_map_is_null(map))
> +		return -ENOMEM;
>  =

> -	return map.vaddr;
> +	return 0;
>  }
>  =

> -void drm_gem_vunmap(struct drm_gem_object *obj, void *vaddr)
> +void drm_gem_vunmap(struct drm_gem_object *obj, struct dma_buf_map *map)
>  {
> -	struct dma_buf_map map =3D DMA_BUF_MAP_INIT_VADDR(vaddr);
> -
> -	if (!vaddr)
> +	if (dma_buf_map_is_null(map))
>  		return;
>  =

>  	if (obj->funcs->vunmap)
> -		obj->funcs->vunmap(obj, &map);
> +		obj->funcs->vunmap(obj, map);
> +
> +	/* Always set the mapping to NULL. Callers may rely on this. */
> +	dma_buf_map_clear(map);
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_interna=
l.h
> index b65865c630b0..58832d75a9bd 100644
> --- a/drivers/gpu/drm/drm_internal.h
> +++ b/drivers/gpu/drm/drm_internal.h
> @@ -33,6 +33,7 @@
>  =

>  struct dentry;
>  struct dma_buf;
> +struct dma_buf_map;
>  struct drm_connector;
>  struct drm_crtc;
>  struct drm_framebuffer;
> @@ -187,8 +188,8 @@ void drm_gem_print_info(struct drm_printer *p, unsign=
ed int indent,
>  =

>  int drm_gem_pin(struct drm_gem_object *obj);
>  void drm_gem_unpin(struct drm_gem_object *obj);
> -void *drm_gem_vmap(struct drm_gem_object *obj);
> -void drm_gem_vunmap(struct drm_gem_object *obj, void *vaddr);
> +int drm_gem_vmap(struct drm_gem_object *obj, struct dma_buf_map *map);
> +void drm_gem_vunmap(struct drm_gem_object *obj, struct dma_buf_map *map);
>  =

>  /* drm_debugfs.c drm_debugfs_crc.c */
>  #if defined(CONFIG_DEBUG_FS)
> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index 89e2a2496734..cb8fbeeb731b 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -667,21 +667,15 @@ EXPORT_SYMBOL(drm_gem_unmap_dma_buf);
>   *
>   * Sets up a kernel virtual mapping. This can be used as the &dma_buf_op=
s.vmap
>   * callback. Calls into &drm_gem_object_funcs.vmap for device specific h=
andling.
> + * The kernel virtual address is returned in map.
>   *
> - * Returns the kernel virtual address or NULL on failure.
> + * Returns 0 on success or a negative errno code otherwise.
>   */
>  int drm_gem_dmabuf_vmap(struct dma_buf *dma_buf, struct dma_buf_map *map)
>  {
>  	struct drm_gem_object *obj =3D dma_buf->priv;
> -	void *vaddr;
>  =

> -	vaddr =3D drm_gem_vmap(obj);
> -	if (IS_ERR(vaddr))
> -		return PTR_ERR(vaddr);
> -
> -	dma_buf_map_set_vaddr(map, vaddr);
> -
> -	return 0;
> +	return drm_gem_vmap(obj, map);
>  }
>  EXPORT_SYMBOL(drm_gem_dmabuf_vmap);
>  =

> @@ -697,7 +691,7 @@ void drm_gem_dmabuf_vunmap(struct dma_buf *dma_buf, s=
truct dma_buf_map *map)
>  {
>  	struct drm_gem_object *obj =3D dma_buf->priv;
>  =

> -	drm_gem_vunmap(obj, map->vaddr);
> +	drm_gem_vunmap(obj, map);
>  }
>  EXPORT_SYMBOL(drm_gem_dmabuf_vunmap);

Some of the transitional stuff disappearing!

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>  =

> -- =

> 2.28.0
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
