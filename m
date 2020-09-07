Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82A19C43461
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 11:24:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DF05206D4
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 11:24:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="dKLJDmdY";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Z/zu1uo0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DF05206D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rW3k1m9PLGTywIwJet0S+G4LTK1Qq9SJcoEVCRis3b4=; b=dKLJDmdYcx+Ht+ygYiB+Ngmsp
	uETA6OLbINbbxZIl17kG3zhHV4TWqamSxXaSXv5Phcj/fMYhJZuWgkvUGhv107GgO6fJGUb8IkQx1
	y+spnSmedwYakdiewUu97DmZFvM1lnjHjnV1SH/kTz2dYSlwMqviAR2ljj7LSE43VtXnBjY5/8KOO
	Ed4P3AYmFUFgw60dDzQwewCR7fWwEkkPx1bcBJZeFs2mw9KLP37dyoJS0gvO0SHt00lTptfqwIoJW
	dIir6EmmrCGAQX7gdAHhvWfMNJfAZmtQrQx0KkxMo2rkILTZCjIjH2Axw8MH5NFXzgliCVJLszUo1
	mULtfn+Rw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFFGR-0006MW-8M; Mon, 07 Sep 2020 11:24:47 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFFGL-0006K3-Bc
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 11:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599477880;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Helxr2TL3FWwvXuVr8Bc/R5+M7Jza/GFAwsBUbUC86o=;
 b=Z/zu1uo0G+QKqEpLtrd30ykj8ok7/sS2tuwegAo0lrylgSXytHVWRaLG/NxddhzOKQSGEk
 isHb2bqNPRPeuMIcTTrHEpTAcAjmwD3xOsonZTYSEyBiUvUkwhR46AS4B/ARi2LnvI+yM8
 9cU1kJkPfumIW/YDfLMjD+sxVKy09kE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-epmww-bXOvabWxKWaU32Hw-1; Mon, 07 Sep 2020 07:24:35 -0400
X-MC-Unique: epmww-bXOvabWxKWaU32Hw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 068D2873084;
 Mon,  7 Sep 2020 11:24:31 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-56.ams2.redhat.com
 [10.36.112.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D6B015C1BB;
 Mon,  7 Sep 2020 11:24:26 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 2CE7D9A83; Mon,  7 Sep 2020 13:24:26 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 1/1] drm: allow limiting the scatter list size.
Date: Mon,  7 Sep 2020 13:24:25 +0200
Message-Id: <20200907112425.15610-2-kraxel@redhat.com>
In-Reply-To: <20200907112425.15610-1-kraxel@redhat.com>
References: <20200907112425.15610-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_072441_436457_BBE75E29 
X-CRM114-Status: GOOD (  19.33  )
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
 christian.koenig@amd.com, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add drm_device argument to drm_prime_pages_to_sg(), so we can
call dma_max_mapping_size() to figure the segment size limit
and call into __sg_alloc_table_from_pages() with the correct
limit.

This fixes virtio-gpu with sev.  Possibly it'll fix other bugs
too given that drm seems to totaly ignore segment size limits
so far ...

v2: place max_segment in drm driver not gem object.
v3: move max_segment next to the other gem fields.
v4: just use dma_max_mapping_size().

Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
---
 include/drm/drm_prime.h                     |  3 ++-
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c |  3 ++-
 drivers/gpu/drm/drm_gem_shmem_helper.c      |  2 +-
 drivers/gpu/drm/drm_prime.c                 | 13 ++++++++++---
 drivers/gpu/drm/etnaviv/etnaviv_gem.c       |  3 ++-
 drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c |  2 +-
 drivers/gpu/drm/msm/msm_gem.c               |  2 +-
 drivers/gpu/drm/msm/msm_gem_prime.c         |  2 +-
 drivers/gpu/drm/nouveau/nouveau_prime.c     |  2 +-
 drivers/gpu/drm/radeon/radeon_prime.c       |  2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c |  5 +++--
 drivers/gpu/drm/tegra/gem.c                 |  2 +-
 drivers/gpu/drm/vgem/vgem_drv.c             |  2 +-
 drivers/gpu/drm/xen/xen_drm_front_gem.c     |  3 ++-
 14 files changed, 29 insertions(+), 17 deletions(-)

diff --git a/include/drm/drm_prime.h b/include/drm/drm_prime.h
index 9af7422b44cf..bf141e74a1c2 100644
--- a/include/drm/drm_prime.h
+++ b/include/drm/drm_prime.h
@@ -88,7 +88,8 @@ void drm_gem_dmabuf_vunmap(struct dma_buf *dma_buf, void *vaddr);
 int drm_gem_prime_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma);
 int drm_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *vma);
 
-struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_pages);
+struct sg_table *drm_prime_pages_to_sg(struct drm_device *dev,
+				       struct page **pages, unsigned int nr_pages);
 struct dma_buf *drm_gem_prime_export(struct drm_gem_object *obj,
 				     int flags);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
index 519ce4427fce..d7050ab95946 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
@@ -302,7 +302,8 @@ static struct sg_table *amdgpu_dma_buf_map(struct dma_buf_attachment *attach,
 
 	switch (bo->tbo.mem.mem_type) {
 	case TTM_PL_TT:
-		sgt = drm_prime_pages_to_sg(bo->tbo.ttm->pages,
+		sgt = drm_prime_pages_to_sg(obj->dev,
+					    bo->tbo.ttm->pages,
 					    bo->tbo.num_pages);
 		if (IS_ERR(sgt))
 			return sgt;
diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 4b7cfbac4daa..0a952f27c184 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -656,7 +656,7 @@ struct sg_table *drm_gem_shmem_get_sg_table(struct drm_gem_object *obj)
 
 	WARN_ON(shmem->base.import_attach);
 
-	return drm_prime_pages_to_sg(shmem->pages, obj->size >> PAGE_SHIFT);
+	return drm_prime_pages_to_sg(obj->dev, shmem->pages, obj->size >> PAGE_SHIFT);
 }
 EXPORT_SYMBOL_GPL(drm_gem_shmem_get_sg_table);
 
diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
index 1693aa7c14b5..8a6a3c99b7d8 100644
--- a/drivers/gpu/drm/drm_prime.c
+++ b/drivers/gpu/drm/drm_prime.c
@@ -802,9 +802,11 @@ static const struct dma_buf_ops drm_gem_prime_dmabuf_ops =  {
  *
  * This is useful for implementing &drm_gem_object_funcs.get_sg_table.
  */
-struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_pages)
+struct sg_table *drm_prime_pages_to_sg(struct drm_device *dev,
+				       struct page **pages, unsigned int nr_pages)
 {
 	struct sg_table *sg = NULL;
+	size_t max_segment = 0;
 	int ret;
 
 	sg = kmalloc(sizeof(struct sg_table), GFP_KERNEL);
@@ -813,8 +815,13 @@ struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_page
 		goto out;
 	}
 
-	ret = sg_alloc_table_from_pages(sg, pages, nr_pages, 0,
-				nr_pages << PAGE_SHIFT, GFP_KERNEL);
+	if (dev)
+		max_segment = dma_max_mapping_size(dev->dev);
+	if (max_segment == 0 || max_segment > SCATTERLIST_MAX_SEGMENT)
+		max_segment = SCATTERLIST_MAX_SEGMENT;
+	ret = __sg_alloc_table_from_pages(sg, pages, nr_pages, 0,
+					  nr_pages << PAGE_SHIFT,
+					  max_segment, GFP_KERNEL);
 	if (ret)
 		goto out;
 
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.c b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
index f06e19e7be04..ea19f1d27275 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.c
@@ -103,7 +103,8 @@ struct page **etnaviv_gem_get_pages(struct etnaviv_gem_object *etnaviv_obj)
 		int npages = etnaviv_obj->base.size >> PAGE_SHIFT;
 		struct sg_table *sgt;
 
-		sgt = drm_prime_pages_to_sg(etnaviv_obj->pages, npages);
+		sgt = drm_prime_pages_to_sg(etnaviv_obj->base.dev,
+					    etnaviv_obj->pages, npages);
 		if (IS_ERR(sgt)) {
 			dev_err(dev->dev, "failed to allocate sgt: %ld\n",
 				PTR_ERR(sgt));
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
index 6d9e5c3c4dd5..4aa3426a9ba4 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c
@@ -19,7 +19,7 @@ struct sg_table *etnaviv_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	if (WARN_ON(!etnaviv_obj->pages))  /* should have already pinned! */
 		return ERR_PTR(-EINVAL);
 
-	return drm_prime_pages_to_sg(etnaviv_obj->pages, npages);
+	return drm_prime_pages_to_sg(obj->dev, etnaviv_obj->pages, npages);
 }
 
 void *etnaviv_gem_prime_vmap(struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/msm/msm_gem.c b/drivers/gpu/drm/msm/msm_gem.c
index b2f49152b4d4..b4553caaa196 100644
--- a/drivers/gpu/drm/msm/msm_gem.c
+++ b/drivers/gpu/drm/msm/msm_gem.c
@@ -126,7 +126,7 @@ static struct page **get_pages(struct drm_gem_object *obj)
 
 		msm_obj->pages = p;
 
-		msm_obj->sgt = drm_prime_pages_to_sg(p, npages);
+		msm_obj->sgt = drm_prime_pages_to_sg(obj->dev, p, npages);
 		if (IS_ERR(msm_obj->sgt)) {
 			void *ptr = ERR_CAST(msm_obj->sgt);
 
diff --git a/drivers/gpu/drm/msm/msm_gem_prime.c b/drivers/gpu/drm/msm/msm_gem_prime.c
index d7c8948427fe..515ef80816a0 100644
--- a/drivers/gpu/drm/msm/msm_gem_prime.c
+++ b/drivers/gpu/drm/msm/msm_gem_prime.c
@@ -19,7 +19,7 @@ struct sg_table *msm_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	if (WARN_ON(!msm_obj->pages))  /* should have already pinned! */
 		return NULL;
 
-	return drm_prime_pages_to_sg(msm_obj->pages, npages);
+	return drm_prime_pages_to_sg(obj->dev, msm_obj->pages, npages);
 }
 
 void *msm_gem_prime_vmap(struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/nouveau/nouveau_prime.c b/drivers/gpu/drm/nouveau/nouveau_prime.c
index bae6a3eccee0..7766b810653f 100644
--- a/drivers/gpu/drm/nouveau/nouveau_prime.c
+++ b/drivers/gpu/drm/nouveau/nouveau_prime.c
@@ -32,7 +32,7 @@ struct sg_table *nouveau_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	struct nouveau_bo *nvbo = nouveau_gem_object(obj);
 	int npages = nvbo->bo.num_pages;
 
-	return drm_prime_pages_to_sg(nvbo->bo.ttm->pages, npages);
+	return drm_prime_pages_to_sg(obj->dev, nvbo->bo.ttm->pages, npages);
 }
 
 void *nouveau_gem_prime_vmap(struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/radeon/radeon_prime.c b/drivers/gpu/drm/radeon/radeon_prime.c
index b906e8fbd5f3..ea4c900e7c41 100644
--- a/drivers/gpu/drm/radeon/radeon_prime.c
+++ b/drivers/gpu/drm/radeon/radeon_prime.c
@@ -36,7 +36,7 @@ struct sg_table *radeon_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	struct radeon_bo *bo = gem_to_radeon_bo(obj);
 	int npages = bo->tbo.num_pages;
 
-	return drm_prime_pages_to_sg(bo->tbo.ttm->pages, npages);
+	return drm_prime_pages_to_sg(obj->dev, bo->tbo.ttm->pages, npages);
 }
 
 void *radeon_gem_prime_vmap(struct drm_gem_object *obj)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index b9275ba7c5a5..77eeaf3439f6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -85,7 +85,8 @@ static int rockchip_gem_get_pages(struct rockchip_gem_object *rk_obj)
 
 	rk_obj->num_pages = rk_obj->base.size >> PAGE_SHIFT;
 
-	rk_obj->sgt = drm_prime_pages_to_sg(rk_obj->pages, rk_obj->num_pages);
+	rk_obj->sgt = drm_prime_pages_to_sg(rk_obj->base.dev,
+					    rk_obj->pages, rk_obj->num_pages);
 	if (IS_ERR(rk_obj->sgt)) {
 		ret = PTR_ERR(rk_obj->sgt);
 		goto err_put_pages;
@@ -442,7 +443,7 @@ struct sg_table *rockchip_gem_prime_get_sg_table(struct drm_gem_object *obj)
 	int ret;
 
 	if (rk_obj->pages)
-		return drm_prime_pages_to_sg(rk_obj->pages, rk_obj->num_pages);
+		return drm_prime_pages_to_sg(obj->dev,rk_obj->pages, rk_obj->num_pages);
 
 	sgt = kzalloc(sizeof(*sgt), GFP_KERNEL);
 	if (!sgt)
diff --git a/drivers/gpu/drm/tegra/gem.c b/drivers/gpu/drm/tegra/gem.c
index 723df142a981..47e2935b8c68 100644
--- a/drivers/gpu/drm/tegra/gem.c
+++ b/drivers/gpu/drm/tegra/gem.c
@@ -284,7 +284,7 @@ static int tegra_bo_get_pages(struct drm_device *drm, struct tegra_bo *bo)
 
 	bo->num_pages = bo->gem.size >> PAGE_SHIFT;
 
-	bo->sgt = drm_prime_pages_to_sg(bo->pages, bo->num_pages);
+	bo->sgt = drm_prime_pages_to_sg(bo->gem.dev, bo->pages, bo->num_pages);
 	if (IS_ERR(bo->sgt)) {
 		err = PTR_ERR(bo->sgt);
 		goto put_pages;
diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index 313339bbff90..15dd41e67de3 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -321,7 +321,7 @@ static struct sg_table *vgem_prime_get_sg_table(struct drm_gem_object *obj)
 {
 	struct drm_vgem_gem_object *bo = to_vgem_bo(obj);
 
-	return drm_prime_pages_to_sg(bo->pages, bo->base.size >> PAGE_SHIFT);
+	return drm_prime_pages_to_sg(obj->dev, bo->pages, bo->base.size >> PAGE_SHIFT);
 }
 
 static struct drm_gem_object* vgem_prime_import(struct drm_device *dev,
diff --git a/drivers/gpu/drm/xen/xen_drm_front_gem.c b/drivers/gpu/drm/xen/xen_drm_front_gem.c
index 39ff95b75357..aed7510e2710 100644
--- a/drivers/gpu/drm/xen/xen_drm_front_gem.c
+++ b/drivers/gpu/drm/xen/xen_drm_front_gem.c
@@ -179,7 +179,8 @@ struct sg_table *xen_drm_front_gem_get_sg_table(struct drm_gem_object *gem_obj)
 	if (!xen_obj->pages)
 		return ERR_PTR(-ENOMEM);
 
-	return drm_prime_pages_to_sg(xen_obj->pages, xen_obj->num_pages);
+	return drm_prime_pages_to_sg(gem_obj->dev,
+				     xen_obj->pages, xen_obj->num_pages);
 }
 
 struct drm_gem_object *
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
