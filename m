Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C350CA6017
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 00:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1EwHjsn3Ksk2E+04Npz2HUnOnkoxUJmcBVFXinnm7k=; b=mkNOhaYI0jP0WX
	rFSJey5EbR5227DAQNztgCzRNoErQxNwdW+ZavrsA1ijUrZ7ZXuiY0IsY/gjQ/ZVwbxlTc/WE7r0v
	z76BsCfHRviifFKYFL4J2lLn5fzms7FwlpMzj9NDfsupv0evGXp46J/X2jYrod5adcf1ZfGS8Pw1E
	1k/PcY0ulHUGvhORUGNVIEI/fNDAqTR8J0QFDKFnuOr/nEPBwTy3+P1aH1DYhxa9Qm8cHfAZzkO8m
	ZgKfDzEh8F4hEvcyEg/UBSS6osjfeeWtI/byznhpNN8HEF8m9ESA3230o7ovfYjyVyrkYoyaGXsHQ
	w4YxZu6Z9W8hu355EPlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEyMh-00000005Bi8-2ZF5;
	Fri, 09 Oct 2026 00:21:35 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEyMe-00000005BfE-3vGY
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Oct 2026 00:21:34 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4a02667ccebso28041415e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 17:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791505291; x=1792110091; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kIz/qZTA1DVdo8Wv1KvtH0Jov9NyNDxXYjGr4vU3wa4=;
        b=q6BT2J58oPuTWevnzfBWoXJm0pcWn94PwTgW7Vx5MQcE5O38vxYuvnVguSK4KYWzAu
         z3iHuTQssAqtf/IZiqdKVu+NXc+IE4QFUV+vmOGdHUeFQFBJxzZHeTNvDm9TqjuNvKZx
         DDPZUUdGynWFLJ2kvGAnEArUG/09UUgWuig/mIX9jrhF5L7xv6h0MhAboQorILACX2XB
         jmZCC84FWUJIR8Fx28ae/MBFpHBQiDYX4uK/dEgxL2y1mZwO5ktvsJoh1KA8r8vbgJ9t
         w/MncISRuGWmNnN5uLv6mpdGeUr9Bwnl5xPZkbsaFirCDjNM58Nm8AfmP5QfWOUGheX9
         bdIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791505291; x=1792110091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kIz/qZTA1DVdo8Wv1KvtH0Jov9NyNDxXYjGr4vU3wa4=;
        b=zVg8yDK1aOgCX0KEvTa2biP5sCkN+QI4NMsPDv29aowrVJ+Miw0Vmxp/U4lK+JisrA
         g5yUjeKvN4IWe7FAGwUuiw9riLWub8Jm+uMmp+VNMj5s9CKOroSUA+cTghcLok9SXeng
         0EKUidf3b4IlZi2Htx0LQ1p4gaSJIZ/vLjwfFLZt2DR5d5JHZlA5AaUiSfgyUoaOJmkt
         WlqyzLebQkBnYXpfHxtfTq5VA7cE+uoRpdDcegehYA3UZjOpwxsfI1Ju9xc0sXu13spv
         owvcihm66fSIgEecalt8B2v3qiNlvA9QgFjXydomrtfWYOFHGNSKzPqk768/8JWQoDGW
         6/UQ==
X-Forwarded-Encrypted: i=1; AKwUvBx0QIpPDNgkXoBwDRtGCxepnCgOWNmgena3pgvUdhpCTt7I4zj+OPqYeDiyJjlEeymfNNG0RyY1jBvHrF327w==@lists.infradead.org
X-Gm-Message-State: AFuF++kjjC23qgeXwAl2Uh4PEaMYEiGdb7vSOyVmsHWJkW9FGxgJnyur
	WnZZOsPbfqY4U/3NjxAkQyWo6Vv2rkEN1a/Rquz7A/3h+5iHZpUsef+Q
X-Gm-Gg: AYBFou3vqXf++2Nz2P+PQpswCUk0vMMDW7B3U8P9VkaaefujWKq9n232UUm9qGRrLWd
	J+itT6wd7040x0dqt5OYDPtk7VxyHlA76DkEyjpJk6MY8+tBltzGvCN8aKi2BY+ywxz3TGkhKej
	AiN1UKtkGWDlxZRQwv6Wf1Ujqn7Ah5/AF7FQn2OrsDXcz5fYNmQR6BKNq5BaObWL561yTXCRKmB
	qwNTliyqr+1LGGOw+17mmHZwpTu48GA1smTqCbmnrMiimw+NjqxtmLPR9gQRTzKHC87qQjhGHCZ
	CfHEcWWaOgA3FBtmas6TLrfGWLopOKF8Rryz1uXZqxd/j7LY7g+Q7ecpEn1ov8CjgIjudmyPuKD
	6L/UgQNEwqT1ig7WNU799voVuFg22wWuJWYPqi70Oq7+NacocvsZen4db198WdyPSEXPlJswZls
	a9//U3IR79O8Z5TJ0rjM09vOcM6breszpFr1MQeVPoJJsXodPD5ynyeqjLNa+VkesrJJut7esMi
	8SJVVJeFmGBq1bZqRpDfkxcIWALw46BK1ZLceXVb/wV7/BCncjaptJzVGy9Y3iw+hG1oerVhFlK
	zDniVRKPvy000bXrYoStZX+j+oeqBJzbSlRBLKMvrEUrpFbvbef1NaA/O1Lg3p8ydGlIGaSMYHK
	D7PbL3rE=
X-Received: by 2002:a05:600c:6990:b0:4a0:1ea1:477a with SMTP id 5b1f17b1804b1-4a18e4d8bbamr2152055e9.27.1791505291199;
        Thu, 08 Oct 2026 17:21:31 -0700 (PDT)
Received: from localhost.localdomain (dynamic-2a02-3100-ad61-5a01-743c-891f-b33c-cae7.310.pool.telefonica.de. [2a02:3100:ad61:5a01:743c:891f:b33c:cae7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a18e4987casm3364605e9.1.2026.10.08.17.21.29
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 08 Oct 2026 17:21:30 -0700 (PDT)
From: Karl Mehltretter <kmehltretter@gmail.com>
To: iommu@lists.linux.dev,
	dri-devel@lists.freedesktop.org
Cc: Karl Mehltretter <kmehltretter@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Jason Gunthorpe <jgg@nvidia.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/2] drm/rockchip: Map imported buffers from DMA addresses
Date: Fri,  9 Oct 2026 02:21:14 +0200
Message-Id: <20261009002114.67851-3-kmehltretter@gmail.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20261009002114.67851-1-kmehltretter@gmail.com>
References: <20261009002114.67851-1-kmehltretter@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_172133_015627_7ED5D39C 
X-CRM114-Status: GOOD (  14.00  )
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

rockchip_gem_prime_import_sg_table() uses iommu_map_sgtable(), which reads
CPU-side pages and lengths. DMABUF_DEBUG clears these fields, causing
the RK3588 import failures reported by Diederik de Haas.

The attachment's DMA addresses belong to the VOP's default domain,
while scanout uses a separate DRM domain. Use iommu_map_sgtable_dma()
to copy the live mapping into that domain.

Keep native allocations unchanged. Unsupported imports still use the
old page-based path and remain unfixed under strict DMABUF_DEBUG.
This RFC retains reverse translation rather than sharing the DMA domain.

Reported-by: Diederik de Haas <diederik@cknow-tech.com>
Link: https://lore.kernel.org/r/DLR74W1U9YPC.375IK0HOYHDIG@cknow-tech.com/
Link: https://lore.kernel.org/r/DLYLA3WQNN3X.3FB9MO8ZWBQ5@cknow-tech.com/
Assisted-by: LLM
Signed-off-by: Karl Mehltretter <kmehltretter@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
index 9a1dc9f12072..501c94cb921a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
@@ -20,7 +20,8 @@
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_gem.h"
 
-static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
+static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj,
+				  struct device *dma_dev)
 {
 	struct drm_device *drm = rk_obj->base.dev;
 	struct rockchip_drm_private *private = drm->dev_private;
@@ -40,8 +41,16 @@ static int rockchip_gem_iommu_map(struct rockchip_gem_object *rk_obj)
 
 	rk_obj->dma_addr = rk_obj->mm.start;
 
-	ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr, rk_obj->sgt,
-				prot);
+	if (dma_dev) {
+		ret = iommu_map_sgtable_dma(private->domain, rk_obj->dma_addr,
+					    dma_dev, rk_obj->sgt, prot);
+		if (ret == -EOPNOTSUPP)
+			ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr,
+						rk_obj->sgt, prot);
+	} else {
+		ret = iommu_map_sgtable(private->domain, rk_obj->dma_addr,
+					rk_obj->sgt, prot);
+	}
 	if (ret < (ssize_t)rk_obj->base.size) {
 		DRM_ERROR("failed to map buffer: size=%zd request_size=%zd\n",
 			  ret, rk_obj->base.size);
@@ -131,7 +140,7 @@ static int rockchip_gem_alloc_iommu(struct rockchip_gem_object *rk_obj,
 	if (ret < 0)
 		return ret;
 
-	ret = rockchip_gem_iommu_map(rk_obj);
+	ret = rockchip_gem_iommu_map(rk_obj, NULL);
 	if (ret < 0)
 		goto err_free;
 
@@ -457,7 +466,7 @@ rockchip_gem_iommu_map_sg(struct drm_device *drm,
 			  struct rockchip_gem_object *rk_obj)
 {
 	rk_obj->sgt = sg;
-	return rockchip_gem_iommu_map(rk_obj);
+	return rockchip_gem_iommu_map(rk_obj, attach->dev);
 }
 
 static int
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
