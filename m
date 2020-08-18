Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B05FC433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 07:50:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D860E20738
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 07:50:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="v7VA/ssr";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EiotchGP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D860E20738
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xEMe0VHwc24M5CFdYc9EXbhtPYuGMUSWdO/QC7qrr0g=; b=v7VA/ssrBXaXE/pc7QGzij6U8/
	lPnwhG3nc+MXdy6wHLXMaqwNbmhJAxo7UA+PsPBFBKQiyPTw8OyUd4KZzRDMhxmzF7WI+eCXvoFXL
	kQqboKiH4RZTpkvuDoKPPV/dzU+xjC7Om7hGKm86/6L2e+QUXqt1r+Iui0LFayBqbgrCd6Oylm/0D
	nV1AyjgafrbtK9VqVoj6thTY19mN6MCAZ8lOKbSFynNh+g0pzgVdtbzQXo426juV8M3XSSs+S7pe1
	DlNVSUd/9IHe1+8Qi8H9qXx0owrBxeE7c0WPmquJyMJcL5Ro1itXmvy8n3DXPSzqxNYSUG0h3z+ST
	lcCxIJNg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7wNm-0008Cv-V3; Tue, 18 Aug 2020 07:50:11 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7wNj-0008CP-Nk
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 07:50:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597737007;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:in-reply-to:in-reply-to:references:references;
 bh=WanW9by5F/DHIgu66E+1I0NOXAa3iKuB6OXDjnbn69A=;
 b=EiotchGPJVkG27RBmYGY2pGT1SaNNlDmB09RCSq5CMkhHfIC4azRRreccwdNwYWR+iyLRS
 DWql8CNTuZajVFb12mzIdO6DbuYBECPSdNuSiiuqDpbRRSB2v9CbBexN8dSaOg5dX0XEUi
 LHxHsx7sm7pRdYC36EHTnYi7eygYZD4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-B9KZxgOsOPCS3WTw1IRtxQ-1; Tue, 18 Aug 2020 03:48:38 -0400
X-MC-Unique: B9KZxgOsOPCS3WTw1IRtxQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8DBFB1005E5F;
 Tue, 18 Aug 2020 07:48:34 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-195.ams2.redhat.com
 [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3153B7B8F9;
 Tue, 18 Aug 2020 07:48:30 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 5DC849D74; Tue, 18 Aug 2020 09:48:29 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 1/2] drm: allow limiting the scatter list size.
Date: Tue, 18 Aug 2020 09:48:27 +0200
Message-Id: <20200818074828.9509-2-kraxel@redhat.com>
In-Reply-To: <20200818074828.9509-1-kraxel@redhat.com>
References: <20200818074828.9509-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_035007_948237_B66FF003 
X-CRM114-Status: GOOD (  19.02  )
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>,
 Thierry Reding <thierry.reding@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Ben Skeggs <bskeggs@redhat.com>, Russell King <linux+etnaviv@armlinux.org.uk>,
 "moderated list:DRM DRIVERS FOR XEN" <xen-devel@lists.xenproject.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "moderated list:DRM DRIVERS FOR VIVANTE GPU IP"
 <etnaviv@lists.freedesktop.org>, Maxime Ripard <mripard@kernel.org>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 "open list:DRM DRIVERS FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>,
 Sean Paul <sean@poorly.run>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add max_segment argument to drm_prime_pages_to_sg().  When set pass it
through to the __sg_alloc_table_from_pages() call, otherwise use
SCATTERLIST_MAX_SEGMENT.

Also add max_segment field to gem objects and pass it to
drm_prime_pages_to_sg() calls in drivers and helpers.

Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
---
 include/drm/drm_gem.h                       |  8 ++++++++
 include/drm/drm_prime.h                     |  3 ++-
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c |  3 ++-
 drivers/gpu/drm/drm_gem_shmem_helper.c      |  3 ++-
 drivers/gpu/drm/drm_prime.c                 | 10 +++++++---
 drivers/gpu/drm/etnaviv/etnaviv_gem.c       |  3 ++-
 drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c |  3 ++-
 drivers/gpu/drm/msm/msm_gem.c               |  3 ++-
 drivers/gpu/drm/msm/msm_gem_prime.c         |  3 ++-
 drivers/gpu/drm/nouveau/nouveau_prime.c     |  3 ++-
 drivers/gpu/drm/radeon/radeon_prime.c       |  3 ++-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c |  6 ++++--
 drivers/gpu/drm/tegra/gem.c                 |  3 ++-
 drivers/gpu/drm/vgem/vgem_drv.c             |  3 ++-
 drivers/gpu/drm/xen/xen_drm_front_gem.c     |  3 ++-
 15 files changed, 43 insertions(+), 17 deletions(-)

diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
index 337a48321705..dea5e92e745b 100644
--- a/include/drm/drm_gem.h
+++ b/include/drm/drm_gem.h
@@ -241,6 +241,14 @@ struct drm_gem_object {
 	 */
 	size_t size;
 
+	/**
+	 * @max_segment:
+	 *
+	 * Max size for scatter list segments.  When unset the default
+	 * (SCATTERLIST_MAX_SEGMENT) is used.
+	 */
+	size_t max_segment;
+
 	/**
 	 * @name:
 	 *
diff --git a/include/drm/drm_prime.h b/include/drm/drm_prime.h
index 9af7422b44cf..2c3689435cb4 100644
--- a/include/drm/drm_prime.h
+++ b/include/drm/drm_prime.h
@@ -88,7 +88,8 @@ void drm_gem_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr);
 int drm_gem_prime_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 int drm_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma);
 
-struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_pages);
+struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_pages,
+				       size_t max_segment);
 struct dma_buf *drm_gem_prime_export(struct drm_gem_object *obj,
 				     int flags);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
index 519ce4427fce..5e8a9760b33f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
@@ -303,7 +303,8 @@ static struct sg_table *amdgpu_dma_buf_map(struct dma_buf_attachment *attach,
 	switch (bo->tbo.mem.mem_type) {
 	case TTM_PL_TT:
 		sgt = drm_prime_pages_to_sg(bo->tbo.ttm->pages,
-					    bo->tbo.num_pages);
+					    bo->tbo.num_pages,
+					    obj->max_segment);
 		if (IS_ERR(sgt))
 			return sgt;
 
diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 4b7cfbac4daa..cfb979d808fd 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -656,7 +656,8 @@ struct sg_table *drm_gem_shmem_get_sg_table(struct drm_gem_object *obj)
 
 	WARN_ON(shmem->base.import_attach);
 
-	return drm_prime_pages_to_sg(shmem->pages, obj->size >> PAGE_SHIFT);
+	return drm_prime_pages_to_sg(shmem->pages, obj->size >> PAGE_SHIFT,
+				     obj->max_segment);
 }
 EXPORT_SYMBOL_GPL(drm_gem_shmem_get_sg_table);
 
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 1693aa7c14b5..27c783fd6633 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -802,7 +802,8 @@ static const struct dma_buf_ops drm_gem_prime_dmabuf_ops =  {
  *
  * This is useful for implementing &drm_gem_object_funcs.get_sg_table.
  */
-struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_pages)
+struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_pages,
+				       size_t max_segment)
 {
 	struct sg_table *sg = NULL;
 	int ret;
@@ -813,8 +814,11 @@ struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_page
 		goto out;
 	}
 
-	ret = sg_alloc_table_from_pages(sg, pages, nr_pages, 0,
-				nr_pages << PAGE_SHIFT, GFP_KERNEL);
+	if (max_segment == 0 || max_segment > SCATTERLIST_MAX_SEGMENT)
+		max_segment = SCATTERLIST_MAX_SEGMENT;
+	ret = __sg_alloc_table_from_pages(sg, pages, nr_pages, 0,
+					  nr_pages << PAGE_SHIFT,
+					  max_segment, GFP_KERNEL);
 	if (ret)
 		goto out;
 
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.c b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
index f06e19e7be04..e5b6e7996f80 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
@@ -103,7 +103,8 @@ struct page **etnaviv_gem_get_pages(struct etnaviv_gem_object *etnaviv_obj)
 		int npages = etnaviv_obj->base.size >> PAGE_SHIFT;
 		struct sg_table *sgt;
 
-		sgt = drm_prime_pages_to_sg(etnaviv_obj->pages, npages);
+		sgt = drm_prime_pages_to_sg(etnaviv_obj->pages, npages,
+					    etnaviv_obj->base.max_segment);
 		if (IS_ERR(sgt)) {
 			dev_err(dev->dev, "failed to allocate sgt: %ld\n",
 				PTR_ERR(sgt));
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
index 6d9e5c3c4dd5..f327676450bd 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
@@ -19,7 +19,8 @@ struct sg_table *etnaviv_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	if (WARN_ON(!etnaviv_obj->pages))  /* should have already pinned! */
 		return ERR_PTR(-EINVAL);
 
-	return drm_prime_pages_to_sg(etnaviv_obj->pages, npages);
+	return drm_prime_pages_to_sg(etnaviv_obj->pages, npages,
+				     obj->max_segment);
 }
 
 void *etnaviv_gem_prime_vmap(struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index b2f49152b4d4..f805419bb84a 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -126,7 +126,8 @@ static struct page **get_pages(struct drm_gem_object *obj)
 
 		msm_obj->pages = p;
 
-		msm_obj->sgt = drm_prime_pages_to_sg(p, npages);
+		msm_obj->sgt = drm_prime_pages_to_sg(p, npages,
+						     obj->max_segment);
 		if (IS_ERR(msm_obj->sgt)) {
 			void *ptr = ERR_CAST(msm_obj->sgt);
 
diff --git a/drivers/gpu/drm/msm/msm_gem_prime.c b/drivers/gpu/drm/msm/msm_gem_prime.c
index d7c8948427fe..a5a412564c7f 100644
--- a/drivers/gpu/drm/msm/msm_gem_prime.c
+++ b/drivers/gpu/drm/msm/msm_gem_prime.c
@@ -19,7 +19,8 @@ struct sg_table *msm_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	if (WARN_ON(!msm_obj->pages))  /* should have already pinned! */
 		return NULL;
 
-	return drm_prime_pages_to_sg(msm_obj->pages, npages);
+	return drm_prime_pages_to_sg(msm_obj->pages, npages,
+				     obj->max_segment);
 }
 
 void *msm_gem_prime_vmap(struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/nouveau/nouveau_prime.c b/drivers/gpu/drm/nouveau/nouveau_prime.c
index bae6a3eccee0..56a2e916d51a 100644
--- a/drivers/gpu/drm/nouveau/nouveau_prime.c
+++ b/drivers/gpu/drm/nouveau/nouveau_prime.c
@@ -32,7 +32,8 @@ struct sg_table *nouveau_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	struct nouveau_bo *nvbo = nouveau_gem_object(obj);
 	int npages = nvbo->bo.num_pages;
 
-	return drm_prime_pages_to_sg(nvbo->bo.ttm->pages, npages);
+	return drm_prime_pages_to_sg(nvbo->bo.ttm->pages, npages,
+				     obj->max_segment);
 }
 
 void *nouveau_gem_prime_vmap(struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/radeon/radeon_prime.c b/drivers/gpu/drm/radeon/radeon_prime.c
index b906e8fbd5f3..503e35625045 100644
--- a/drivers/gpu/drm/radeon/radeon_prime.c
+++ b/drivers/gpu/drm/radeon/radeon_prime.c
@@ -36,7 +36,8 @@ struct sg_table *radeon_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	struct radeon_bo *bo = gem_to_radeon_bo(obj);
 	int npages = bo->tbo.num_pages;
 
-	return drm_prime_pages_to_sg(bo->tbo.ttm->pages, npages);
+	return drm_prime_pages_to_sg(bo->tbo.ttm->pages, npages,
+				     obj->max_segment);
 }
 
 void *radeon_gem_prime_vmap(struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index b9275ba7c5a5..444657e03c16 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -85,7 +85,8 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
 
 	rk_obj->num_pages = rk_obj->base.size >> PAGE_SHIFT;
 
-	rk_obj->sgt = drm_prime_pages_to_sg(rk_obj->pages, rk_obj->num_pages);
+	rk_obj->sgt = drm_prime_pages_to_sg(rk_obj->pages, rk_obj->num_pages,
+					    rk_obj->base.max_segment);
 	if (IS_ERR(rk_obj->sgt)) {
 		ret = PTR_ERR(rk_obj->sgt);
 		goto err_put_pages;
@@ -442,7 +443,8 @@ struct sg_table *rockchip_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	int ret;
 
 	if (rk_obj->pages)
-		return drm_prime_pages_to_sg(rk_obj->pages, rk_obj->num_pages);
+		return drm_prime_pages_to_sg(rk_obj->pages, rk_obj->num_pages,
+					     obj->max_segment);
 
 	sgt = kzalloc(sizeof(*sgt), GFP_KERNEL);
 	if (!sgt)
diff --git a/drivers/gpu/drm/tegra/gem.c b/drivers/gpu/drm/tegra/gem.c
index 723df142a981..8d98b02a8d21 100644
--- a/drivers/gpu/drm/tegra/gem.c
+++ b/drivers/gpu/drm/tegra/gem.c
@@ -284,7 +284,8 @@ static int tegra_bo_get_pages(struct drm_device *drm, struct tegra_bo *bo)
 
 	bo->num_pages = bo->gem.size >> PAGE_SHIFT;
 
-	bo->sgt = drm_prime_pages_to_sg(bo->pages, bo->num_pages);
+	bo->sgt = drm_prime_pages_to_sg(bo->pages, bo->num_pages,
+					bo->gem.max_segment);
 	if (IS_ERR(bo->sgt)) {
 		err = PTR_ERR(bo->sgt);
 		goto put_pages;
diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index 313339bbff90..d25c93b5a2c1 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -321,7 +321,8 @@ static struct sg_table *vgem_prime_get_sg_table(struct drm_gem_object *obj)
 {
 	struct drm_vgem_gem_object *bo = to_vgem_bo(obj);
 
-	return drm_prime_pages_to_sg(bo->pages, bo->base.size >> PAGE_SHIFT);
+	return drm_prime_pages_to_sg(bo->pages, bo->base.size >> PAGE_SHIFT,
+				     obj->max_segment);
 }
 
 static struct drm_gem_object* vgem_prime_import(struct drm_device *dev,
diff --git a/drivers/gpu/drm/xen/xen_drm_front_gem.c b/drivers/gpu/drm/xen/xen_drm_front_gem.c
index f0b85e094111..362fe5311b1b 100644
--- a/drivers/gpu/drm/xen/xen_drm_front_gem.c
+++ b/drivers/gpu/drm/xen/xen_drm_front_gem.c
@@ -179,7 +179,8 @@ struct sg_table *xen_drm_front_gem_get_sg_table(struct drm_gem_object *gem_obj)
 	if (!xen_obj->pages)
 		return ERR_PTR(-ENOMEM);
 
-	return drm_prime_pages_to_sg(xen_obj->pages, xen_obj->num_pages);
+	return drm_prime_pages_to_sg(xen_obj->pages, xen_obj->num_pages,
+				     gem_obj->max_segment);
 }
 
 struct drm_gem_object *
-- 
2.18.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
