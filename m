Return-Path: <SRS0=LkMs=CZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC893C2BB84
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 10:03:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 90D372080C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 10:03:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="kAdDbleG";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="YwQFNnZ4"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 90D372080C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/1boUuXiAwanfbnE6/iHYAsY+gzvOAO5pGxBtDh0lvg=; b=kAdDbleG9otDEwgg/gjd5Bi8Z
	iOsCtBBfZVd5rFUS7HHJmVRxg/f9LJ3UrymeaCSZNLnLPiimtQ/Q4bZ/gige0cK0wMa2EsWhg+A5d
	lzQNn5xtSZCorDV82yz4N9j7cg6PI4Falhk9inEnOVBDSCydakGGqzuT38np5muRVHb6LTSggyqTl
	kXVCltKArTUuO7d3j7VB8ls6SUeYlWmyUvgRmzwEL9ZBOJzix+t78Gy4B3f1CVcr95v5UkHB5YqHm
	kEjb6ZIJnfYU8bbXjXNNHdipX1mVUOu9u98Twu/DL3h4AYkx5txwVKF5LWEfGb0h36Zq/5tI0vJeb
	Y7agVGedw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIUHh-0004zM-4M; Wed, 16 Sep 2020 10:03:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIUHd-0004xO-PP
 for linux-rockchip@lists.infradead.org; Wed, 16 Sep 2020 10:03:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id s12so6205602wrw.11
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Sep 2020 03:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=e2Znfx8BWkk5aVcx8hHpr3x0pz1zwQZhs1djRV0gcOU=;
 b=YwQFNnZ46y23ilMPtQ+YA1uU56yQbhOv6Wnxz4ZcYBv/64HXgnQIstoy81UuE+BuFc
 RbVimusECAo2qKzk8yvrlLUDfal98le+MXG5s9js8pfohQ+Bnhlzr8odUz3778w+kM1b
 6iP/yC9nMmGqgDJRKWjaW8mpLjM0JRvnAZoXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=e2Znfx8BWkk5aVcx8hHpr3x0pz1zwQZhs1djRV0gcOU=;
 b=R/wLKU66mBkXLCkV3oNX6SFpUV8LK8Tn876H0s3z32YF1vfLAsbg238kbe9ra7olE7
 1tvxu6TSwt2g82KKkgSe78EBsttYRtp7m/UsVNCQN+RC5FHLn3QWZSy8/ER+/KsdNZw5
 hdoQlJQx2kuO+pRzHWpN0O7NuMzu6DoRenbpviyEyPC7D+qw4EueAiWrz+wYpygjUn4i
 ovNw5+UYM7uV68dhv16nrYeK1BokW5HwslVpGu3XrZINnsvA+9utU2KiEEz47nev7x13
 T9vtRoslTBIaKFLXnk8uUubXrcPBg+2c6pAsIsh62vDfqnOhTcGEAer5C52JdGXECLpd
 iOlQ==
X-Gm-Message-State: AOAM530rSaKZ2CN0/0Y5lroyZWeV11AAYwz2ESwdMslfrw0DmuOPfSFe
 xkXozEuBgrcqC1TQZX/EuloVRA==
X-Google-Smtp-Source: ABdhPJzeuyJCXxonH76Yve4EPaguLB8swVVrVRKLIRv+fjNVrJReD84NaGvyyVb0RMzIohYAQGFSOA==
X-Received: by 2002:adf:81e6:: with SMTP id 93mr25703900wra.412.1600250602103; 
 Wed, 16 Sep 2020 03:03:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s26sm4516179wmh.44.2020.09.16.03.03.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 03:03:21 -0700 (PDT)
Date: Wed, 16 Sep 2020 12:03:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v2 04/21] drm/exynos: Introduce GEM object functions
Message-ID: <20200916100318.GF438822@phenom.ffwll.local>
References: <20200915145958.19993-1-tzimmermann@suse.de>
 <20200915145958.19993-5-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915145958.19993-5-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200916_060325_867019_FB8447B8 
X-CRM114-Status: GOOD (  19.83  )
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
Cc: hamohammed.sa@gmail.com, heiko@sntech.de, andrey.grodzovsky@amd.com,
 airlied@linux.ie, nouveau@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, dri-devel@lists.freedesktop.org,
 michal.simek@xilinx.com, eric@anholt.net, thierry.reding@gmail.com,
 robdclark@gmail.com, krzk@kernel.org, sam@ravnborg.org,
 sumit.semwal@linaro.org, emil.velikov@collabora.com,
 linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com,
 oleksandr_andrushchenko@epam.com, tomi.valkeinen@ti.com,
 linux-tegra@vger.kernel.org, linux@armlinux.org.uk,
 patrik.r.jakobsson@gmail.com, jonathanh@nvidia.com,
 linux-rockchip@lists.infradead.org, kgene@kernel.org, bskeggs@redhat.com,
 xen-devel@lists.xenproject.org, miaoqinglang@huawei.com,
 intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 chunkuang.hu@kernel.org, andi.shyti@intel.com, daniel@ffwll.ch,
 linux-arm-msm@vger.kernel.org, marek.olsak@amd.com, tianci.yin@amd.com,
 maarten.lankhorst@linux.intel.com, etnaviv@lists.freedesktop.org,
 jani.nikula@linux.intel.com, inki.dae@samsung.com, hdegoede@redhat.com,
 christian.gmeiner@gmail.com, linux-mediatek@lists.infradead.org,
 mripard@kernel.org, rodrigo.vivi@intel.com, matthias.bgg@gmail.com,
 evan.quan@amd.com, sean@poorly.run, linux-arm-kernel@lists.infradead.org,
 tvrtko.ursulin@linux.intel.com, amd-gfx@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, hyun.kwon@xilinx.com,
 rodrigosiqueiramelo@gmail.com, aaron.liu@amd.com, Felix.Kuehling@amd.com,
 xinhui.pan@amd.com, sw0312.kim@samsung.com, hjc@rock-chips.com,
 chris@chris-wilson.co.uk, kyungmin.park@samsung.com, nirmoy.das@amd.com,
 p.zabel@pengutronix.de, alexander.deucher@amd.com, Hawking.Zhang@amd.com,
 freedreno@lists.freedesktop.org, christian.koenig@amd.com,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 15, 2020 at 04:59:41PM +0200, Thomas Zimmermann wrote:
> GEM object functions deprecate several similar callback interfaces in
> struct drm_driver. This patch replaces the per-driver callbacks with
> per-instance callbacks in exynos. The only exception is gem_prime_mmap,
> which is non-trivial to convert.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/exynos/exynos_drm_drv.c | 10 ----------
>  drivers/gpu/drm/exynos/exynos_drm_gem.c | 15 +++++++++++++++
>  2 files changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_drv.c b/drivers/gpu/drm/exynos/exynos_drm_drv.c
> index dbd80f1e4c78..fe46680ca208 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_drv.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_drv.c
> @@ -75,11 +75,6 @@ static void exynos_drm_postclose(struct drm_device *dev, struct drm_file *file)
>  	file->driver_priv = NULL;
>  }
>  
> -static const struct vm_operations_struct exynos_drm_gem_vm_ops = {
> -	.open = drm_gem_vm_open,
> -	.close = drm_gem_vm_close,
> -};
> -
>  static const struct drm_ioctl_desc exynos_ioctls[] = {
>  	DRM_IOCTL_DEF_DRV(EXYNOS_GEM_CREATE, exynos_drm_gem_create_ioctl,
>  			DRM_RENDER_ALLOW),
> @@ -124,16 +119,11 @@ static struct drm_driver exynos_drm_driver = {
>  	.open			= exynos_drm_open,
>  	.lastclose		= drm_fb_helper_lastclose,
>  	.postclose		= exynos_drm_postclose,
> -	.gem_free_object_unlocked = exynos_drm_gem_free_object,
> -	.gem_vm_ops		= &exynos_drm_gem_vm_ops,
>  	.dumb_create		= exynos_drm_gem_dumb_create,
>  	.prime_handle_to_fd	= drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle	= drm_gem_prime_fd_to_handle,
>  	.gem_prime_import	= exynos_drm_gem_prime_import,
> -	.gem_prime_get_sg_table	= exynos_drm_gem_prime_get_sg_table,
>  	.gem_prime_import_sg_table	= exynos_drm_gem_prime_import_sg_table,
> -	.gem_prime_vmap		= exynos_drm_gem_prime_vmap,
> -	.gem_prime_vunmap	= exynos_drm_gem_prime_vunmap,
>  	.gem_prime_mmap		= exynos_drm_gem_prime_mmap,
>  	.ioctls			= exynos_ioctls,
>  	.num_ioctls		= ARRAY_SIZE(exynos_ioctls),
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_gem.c b/drivers/gpu/drm/exynos/exynos_drm_gem.c
> index efa476858db5..69a5cf28b4ae 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_gem.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_gem.c
> @@ -129,6 +129,19 @@ void exynos_drm_gem_destroy(struct exynos_drm_gem *exynos_gem)
>  	kfree(exynos_gem);
>  }
>  
> +static const struct vm_operations_struct exynos_drm_gem_vm_ops = {
> +	.open = drm_gem_vm_open,
> +	.close = drm_gem_vm_close,
> +};

Hm moving the drm_gem_cma_vm_ops into drm_gem.h or so and maybe calling
them drm_gem_simple_ops or so would remove a pile of these. But perhaps a
quick follow up series.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +
> +static const struct drm_gem_object_funcs exynos_drm_gem_object_funcs = {
> +	.free = exynos_drm_gem_free_object,
> +	.get_sg_table = exynos_drm_gem_prime_get_sg_table,
> +	.vmap = exynos_drm_gem_prime_vmap,
> +	.vunmap	= exynos_drm_gem_prime_vunmap,
> +	.vm_ops = &exynos_drm_gem_vm_ops,
> +};
> +
>  static struct exynos_drm_gem *exynos_drm_gem_init(struct drm_device *dev,
>  						  unsigned long size)
>  {
> @@ -143,6 +156,8 @@ static struct exynos_drm_gem *exynos_drm_gem_init(struct drm_device *dev,
>  	exynos_gem->size = size;
>  	obj = &exynos_gem->base;
>  
> +	obj->funcs = &exynos_drm_gem_object_funcs;
> +
>  	ret = drm_gem_object_init(dev, obj, size);
>  	if (ret < 0) {
>  		DRM_DEV_ERROR(dev->dev, "failed to initialize gem object\n");
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
