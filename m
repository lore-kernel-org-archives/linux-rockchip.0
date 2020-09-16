Return-Path: <SRS0=LkMs=CZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D6FC2BB84
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 12:10:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4D9EB22210
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 12:10:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3SsnYlRR";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="FENeMTOi"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4D9EB22210
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VdjRb1kg/GzFSniSpOMagTkdbrIjo0XDqvgJXy6Kheo=; b=3SsnYlRRWN1cTlMPWdFd+sftT
	m5r5IHTzM/TeDCJ/+aaw1LCsGVcDaT/fEAZgdKOyg4/ziPmE500PafK1cW9uJjvql/NtTK46QniGm
	WMeYCJNnlLdrXbOyDDX4jYYavTXng8V48StQqigJjL6xJ7NBZW3WhFu89OxV1WtiPqG+QSC2OU/o/
	hYs6ntsHe+6JuC4SicFqJVWo7eP7YL3TJ8jWX4z0qQPGkw6rpba6VMK9GxZ230v4f/0eqpBLsweHz
	PS0spquiwjXC3bxx0sjOVFY+IJ5GF3SbTuX6XvEdZ43GW85uMZWSMbaJdUAjwvJgffSZQvp1OhQov
	MCvNbQ40w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIWG3-0001pu-Ib; Wed, 16 Sep 2020 12:09:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIWG1-0001oj-G6
 for linux-rockchip@lists.infradead.org; Wed, 16 Sep 2020 12:09:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id e16so6682711wrm.2
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Sep 2020 05:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+3jvoy/bBV/BNfVwVnfU8KcCZN1nPBtEmgjgdo9EwXk=;
 b=FENeMTOiWrFokQkUzY6vSvMhlCXV7HMJqSDFsMTbLqeNytwJMofYpFGvXfw3GhxJQe
 D9FUrSX8+Brv74I6kUhpyFb/XZioFwNiGTb+QuFgOQkexhfx/xeg364unF1nN8hvk40W
 Hh+h3hsu+pBXFmPF/2PAzcQ04fALpK5XDa9tA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+3jvoy/bBV/BNfVwVnfU8KcCZN1nPBtEmgjgdo9EwXk=;
 b=V0Uqcn+KAOZBxsY189BPYF9Ic3rLVC+yTR0M854C2u8eFc8pATf+Txw3xJ70EWcza2
 PG2s5qH6xE4BPd0CQaDnaTh0/g1LcE07ac5cr2iOv+yvHwaBn4UfoXV7TjCpsVP4M7qc
 UQEugs2j9mJ7iF113qOD/j+AIdbdrBWyCQEcQSlLpycWIZPWP/l8p3t4yrvmmd/pPqRP
 GoV4y3oxGgKBo2pTqYnnB3mkSv9Zo7DFsWfmTO4hpiw3chtiwm+ipN1niyH5u2YhfmEB
 6WmkKbEQxlqK11leKe09ZN1ks8yvf1y15wY2Dga3WhbNFJ7CXyS0uBF40pAeQyWAZ0cg
 /9pQ==
X-Gm-Message-State: AOAM530DRdOp0A8eHjCgAEKzehH98V/od6aCSe1vkZ9Y+Q0/soBTGYj6
 obvygcrdD3GHbYaKPebAN6TyQw==
X-Google-Smtp-Source: ABdhPJwcFrpBowFHXDaGWxAmgGA6UC0qLIIbiwK0yYyfwUChHgh/bXrgr93clOHTT0R4i2flV+cOiA==
X-Received: by 2002:a5d:4448:: with SMTP id x8mr28185933wrr.207.1600258192468; 
 Wed, 16 Sep 2020 05:09:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n11sm32655611wrx.91.2020.09.16.05.09.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 05:09:51 -0700 (PDT)
Date: Wed, 16 Sep 2020 14:09:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v2 17/21] drm/virtgpu: Set PRIME export function in
 struct drm_gem_object_funcs
Message-ID: <20200916120948.GO438822@phenom.ffwll.local>
References: <20200915145958.19993-1-tzimmermann@suse.de>
 <20200915145958.19993-18-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915145958.19993-18-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200916_080953_543241_AFED8524 
X-CRM114-Status: GOOD (  16.88  )
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

On Tue, Sep 15, 2020 at 04:59:54PM +0200, Thomas Zimmermann wrote:
> GEM object functions deprecate several similar callback interfaces in
> struct drm_driver. This patch replaces virtgpu's per-driver PRIME export
> function with a per-object function.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/virtio/virtgpu_drv.c    | 1 -
>  drivers/gpu/drm/virtio/virtgpu_object.c | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/virtio/virtgpu_drv.c b/drivers/gpu/drm/virtio/virtgpu_drv.c
> index b039f493bda9..1f8d6ed11d21 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_drv.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_drv.c
> @@ -203,7 +203,6 @@ static struct drm_driver driver = {
>  	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
>  	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
>  	.gem_prime_mmap = drm_gem_prime_mmap,
> -	.gem_prime_export = virtgpu_gem_prime_export,
>  	.gem_prime_import = virtgpu_gem_prime_import,
>  	.gem_prime_import_sg_table = virtgpu_gem_prime_import_sg_table,
>  
> diff --git a/drivers/gpu/drm/virtio/virtgpu_object.c b/drivers/gpu/drm/virtio/virtgpu_object.c
> index 842f8b61aa89..4f7d7ea8194c 100644
> --- a/drivers/gpu/drm/virtio/virtgpu_object.c
> +++ b/drivers/gpu/drm/virtio/virtgpu_object.c
> @@ -108,6 +108,7 @@ static const struct drm_gem_object_funcs virtio_gpu_shmem_funcs = {
>  	.close = virtio_gpu_gem_object_close,
>  
>  	.print_info = drm_gem_shmem_print_info,
> +	.export = virtgpu_gem_prime_export,
>  	.pin = drm_gem_shmem_pin,
>  	.unpin = drm_gem_shmem_unpin,
>  	.get_sg_table = drm_gem_shmem_get_sg_table,
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
