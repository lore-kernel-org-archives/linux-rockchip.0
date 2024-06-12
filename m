Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F4C5C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eywp6kRp8LjNfxxsk4bzpGd/SsRTpSFg6KwVbgVf68E=; b=DA2RrTzf3mbujV
	f8Cxc+5tt+S/sqvlSsCjQXe7KQZNzny+2gDwiQzsHyaEcU7sVVyiv0UaFqYBesF+6OR/+2p5u1crN
	vm2yvbcnccubstHKB73ZerZQ2dM+BNkttEyVCqls98xoZ/ZlcznpNVWTUUwAdGIehaLcPec1wk4/H
	DslM0z7VC5De5/XQVK6P09nX05ebd2wB0RGCiAT7LzAWjVm3TlwOWIjRxURZbxakYTmG+f6HnhuuZ
	6n0YQ2BMKK7bs//ugZ0qSDjkWTimMsYqbcTvkeoRLk2lRpdbmILddnoTGhwaLuNIaiExlwB2jUt3J
	hGOglj1848bNF8G7A5GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOQA-0000000Cp2p-1BpR;
	Wed, 12 Jun 2024 13:53:50 +0000
Received: from mail-wm1-f50.google.com ([209.85.128.50])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPe-0000000CobQ-40tg;
	Wed, 12 Jun 2024 13:53:21 +0000
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-421820fc26dso29982175e9.2;
        Wed, 12 Jun 2024 06:53:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718200397; x=1718805197;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T7r3kSvbbTjgJVEwctFCbvRTGPSHV3jcoNvncpcvHqY=;
        b=oHqKGb4osjsVN6rvXtxeNfg9bDtq5ywhFq1SlOgN2Vao8Sr9ctkfIkPlq9ovBImfOU
         yldXOjPZTb4CtrXhZpQaW1vtcfRtvxs/Pg9qnsZfe6n2YTqxDnOjN8pNr0sTzqowODZs
         KJ+wB1k8N2DNP/jafkiI+Bagkjmsjm8MI/8W+1joNnp+F996UoePskcKjy2dYZDosRhq
         nZScjvDDV5sdpYjZ84K4xNFUE0TwTI1reKPRC40wWWxnFHcbhRfEyZYbryQ62VELS0Ta
         hoEW4q8HzoUZVA0InueDXUiBVzFme5HMq4Zt3GkVL+RrkB/SXVYPvjgA2hxxcz5GYukt
         GafQ==
X-Forwarded-Encrypted: i=1; AJvYcCUT6emO3npVFyqDRRCkDmvGKaWyuauDdhWsZ5WzQ6uw+pu3Ee7LINiQlsQVQESlLaItNUbkw/DEeRJJ93/wfDZ04tIE7HKrfUA+iVbUdWAKEuTnJ8xoBYY6KmFXQij0iHaNjNEIjb1AxkOP1GF2YGhhFLh+p0+7qrY=
X-Gm-Message-State: AOJu0YxpiLyBJioOVE7LKAccJji6AiAg2JV39AJKm84qVAXE9mDPgg8o
	J9pqvRqOVKQP/6k2LiS6yVB/R4wF6fWErPTTu1k37LLOMJMUORFs
X-Google-Smtp-Source: AGHT+IGUBVZP2NwuY2tIGmEPKUE7vkawNnEjSQW1ugPVM6t6UrOumHBZsDMeIXzxIvdwgzeSUxgDrQ==
X-Received: by 2002:a05:600c:4ecf:b0:421:7aad:370a with SMTP id 5b1f17b1804b1-422863adb55mr15148235e9.9.1718200396853;
        Wed, 12 Jun 2024 06:53:16 -0700 (PDT)
Received: from ramallet.home (cst-prg-45-36.cust.vodafone.cz. [46.135.45.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871ec9e6sm28201695e9.38.2024.06.12.06.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:53:16 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 12 Jun 2024 15:53:00 +0200
Subject: [PATCH 7/9] accel/rocket: Add IOCTL for BO creation
MIME-Version: 1.0
Message-Id: <20240612-6-10-rocket-v1-7-060e48eea250@tomeuvizoso.net>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
In-Reply-To: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_065319_366623_3272D267 
X-CRM114-Status: GOOD (  23.93  )
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

This uses the SHMEM DRM helpers and we map right away to the CPU and NPU
sides, as all buffers are expected to be accessed from both.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 drivers/accel/rocket/Makefile     |  3 +-
 drivers/accel/rocket/rocket_drv.c |  7 +++-
 drivers/accel/rocket/rocket_gem.c | 68 +++++++++++++++++++++++++++++++++++++++
 drivers/accel/rocket/rocket_gem.h | 28 ++++++++++++++++
 include/uapi/drm/rocket_accel.h   | 24 ++++++++++++++
 5 files changed, 128 insertions(+), 2 deletions(-)

diff --git a/drivers/accel/rocket/Makefile b/drivers/accel/rocket/Makefile
index 73a7280d260c..875cac2243d9 100644
--- a/drivers/accel/rocket/Makefile
+++ b/drivers/accel/rocket/Makefile
@@ -5,4 +5,5 @@ obj-$(CONFIG_DRM_ACCEL_ROCKET) := rocket.o
 rocket-y := \
 	rocket_core.o \
 	rocket_device.o \
-	rocket_drv.o
+	rocket_drv.o \
+	rocket_gem.o
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index e339c337fcf9..42196417030e 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -11,9 +11,11 @@
 #include <drm/drm_ioctl.h>
 #include <drm/drm_accel.h>
 #include <drm/drm_gem.h>
+#include <drm/rocket_accel.h>
 
 #include "rocket_drv.h"
 #include "rocket_device.h"
+#include "rocket_gem.h"
 
 static const char * const rk3588_pm_domains[] = { "npu0", "npu1", "npu2" };
 static const char * const rk3588_resets_a[] = { "srst_a0", "srst_a1", "srst_a2" };
@@ -58,6 +60,8 @@ rocket_postclose(struct drm_device *dev, struct drm_file *file)
 static const struct drm_ioctl_desc rocket_drm_driver_ioctls[] = {
 #define ROCKET_IOCTL(n, func) \
 	DRM_IOCTL_DEF_DRV(ROCKET_##n, rocket_ioctl_##func, 0)
+
+	ROCKET_IOCTL(CREATE_BO, create_bo),
 };
 
 static const struct file_operations rocket_drm_driver_fops = {
@@ -70,9 +74,10 @@ static const struct file_operations rocket_drm_driver_fops = {
  * - 1.0 - initial interface
  */
 static const struct drm_driver rocket_drm_driver = {
-	.driver_features	= DRIVER_COMPUTE_ACCEL,
+	.driver_features	= DRIVER_COMPUTE_ACCEL | DRIVER_GEM,
 	.open			= rocket_open,
 	.postclose		= rocket_postclose,
+	.gem_create_object	= rocket_gem_create_object,
 	.ioctls			= rocket_drm_driver_ioctls,
 	.num_ioctls		= ARRAY_SIZE(rocket_drm_driver_ioctls),
 	.fops			= &rocket_drm_driver_fops,
diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
new file mode 100644
index 000000000000..e10eb886f150
--- /dev/null
+++ b/drivers/accel/rocket/rocket_gem.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright 2024 Tomeu Vizoso <tomeu@tomeuvizoso.net> */
+
+#include <drm/drm_device.h>
+#include <drm/rocket_accel.h>
+
+#include "rocket_gem.h"
+
+/**
+ * rocket_gem_create_object - Implementation of driver->gem_create_object.
+ * @dev: DRM device
+ * @size: Size in bytes of the memory the object will reference
+ *
+ * This lets the GEM helpers allocate object structs for us, and keep
+ * our BO stats correct.
+ */
+struct drm_gem_object *rocket_gem_create_object(struct drm_device *dev, size_t size)
+{
+	struct rocket_gem_object *obj;
+
+	obj = kzalloc(sizeof(*obj), GFP_KERNEL);
+	if (!obj)
+		return ERR_PTR(-ENOMEM);
+
+	return &obj->base.base;
+}
+
+int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *file)
+{
+	struct drm_rocket_create_bo *args = data;
+	struct drm_gem_shmem_object *shmem_obj;
+	struct rocket_gem_object *rkt_obj;
+	struct drm_gem_object *gem_obj;
+	struct sg_table *sgt;
+	int ret;
+
+	shmem_obj = drm_gem_shmem_create(dev, args->size);
+	if (IS_ERR(shmem_obj))
+		return PTR_ERR(shmem_obj);
+
+	gem_obj = &shmem_obj->base;
+	rkt_obj = to_rocket_bo(gem_obj);
+
+	rkt_obj->size = args->size;
+	rkt_obj->offset = 0;
+	mutex_init(&rkt_obj->mutex);
+
+	ret = drm_gem_handle_create(file, gem_obj, &args->handle);
+	drm_gem_object_put(gem_obj);
+	if (ret)
+		goto err;
+
+	sgt = drm_gem_shmem_get_pages_sgt(shmem_obj);
+	if (IS_ERR(sgt)) {
+		ret = PTR_ERR(sgt);
+		goto err;
+	}
+
+	args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
+	args->dma_address = sg_dma_address(shmem_obj->sgt->sgl);
+
+	return 0;
+
+err:
+	drm_gem_shmem_object_free(gem_obj);
+
+	return ret;
+}
diff --git a/drivers/accel/rocket/rocket_gem.h b/drivers/accel/rocket/rocket_gem.h
new file mode 100644
index 000000000000..2cb294f25c19
--- /dev/null
+++ b/drivers/accel/rocket/rocket_gem.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright 2024 Tomeu Vizoso <tomeu@tomeuvizoso.net> */
+
+#ifndef __ROCKET_GEM_H__
+#define __ROCKET_GEM_H__
+
+#include <drm/drm_gem_shmem_helper.h>
+#include <drm/drm_mm.h>
+
+struct rocket_gem_object {
+	struct drm_gem_shmem_object base;
+
+	struct mutex mutex;
+	size_t size;
+	u32 offset;
+};
+
+struct drm_gem_object *rocket_gem_create_object(struct drm_device *dev, size_t size);
+
+int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *file);
+
+static inline
+struct  rocket_gem_object *to_rocket_bo(struct drm_gem_object *obj)
+{
+	return container_of(to_drm_gem_shmem_obj(obj), struct rocket_gem_object, base);
+}
+
+#endif
\ No newline at end of file
diff --git a/include/uapi/drm/rocket_accel.h b/include/uapi/drm/rocket_accel.h
index 7a179731ffe4..8338726a83c3 100644
--- a/include/uapi/drm/rocket_accel.h
+++ b/include/uapi/drm/rocket_accel.h
@@ -11,6 +11,30 @@
 extern "C" {
 #endif
 
+#define DRM_ROCKET_CREATE_BO			0x00
+
+#define DRM_IOCTL_ROCKET_CREATE_BO		DRM_IOWR(DRM_COMMAND_BASE + DRM_ROCKET_CREATE_BO, struct drm_rocket_create_bo)
+
+/**
+ * struct drm_rocket_create_bo - ioctl argument for creating Rocket BOs.
+ *
+ */
+struct drm_rocket_create_bo {
+	__u32 size;
+
+	/** Returned GEM handle for the BO. */
+	__u32 handle;
+
+	/**
+	 * Returned DMA address for the BO in the NPU address space.  This address
+	 * is private to the DRM fd and is valid for the lifetime of the GEM
+	 * handle.
+	 */
+	__u64 dma_address;
+
+	/** Offset into the drm node to use for subsequent mmap call. */
+	__u64 offset;
+};
 
 #if defined(__cplusplus)
 }

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
