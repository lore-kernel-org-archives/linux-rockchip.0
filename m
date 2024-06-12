Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D385C27C7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuWHuBZSIE/wFfZx4uPKMAds1yFGF6NP+6DqnU/iuoY=; b=DdwVQr+v7HQkz8
	t3O6tlSJoHkUgnpSo1EsjOb5gPTJKUTUJvroBz9QDwwuqscb7mHSXqq27vurjDBm0Idco0uLlpkj2
	nZ+6nV9LTDoSDxG2rmPScYT4P8G4XGEP6C+TvPvv0y+6D2IBvyaLRuUDgQrXbs36rqWvBWG/whGfz
	n551kuFRhkTOr4Hhfv27nw6m0SjuI6ixmQz51RjfnjI0y+tSbg0oi/u+SOsxs8ngQuy06hp5yiFiG
	UurAlDvCabfiyEdQTcww2/isXPjGuxzZsWPamse2fEIMvEU/q+6y0usNbpYUA80zweXSQ9A++3gTs
	jnZS7UegBbVhESyb12Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOQN-0000000CpFR-0XDR;
	Wed, 12 Jun 2024 13:54:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPn-0000000Coil-1wqs;
	Wed, 12 Jun 2024 13:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=VEuYpCh3XjM5GPcfydkJgiyDWJJzYzsPQgvZ1sCjljI=; b=JlqtgxYAXmoNH7DMaY6ftzfKaT
	PL7EgWQ7LpHIYVLToJRhyo7RJPxccJ2g5YxIcB+IkUzs1asCu3eBZR1A0sJBdhXOVafOmrw4qCI4q
	bqWoKP0yREHGknmC5+pgeQcFYQNf8lnDffntWMsT0dCPNowftBuR3E84iRI5pL4KLVWp4VYIwTkKc
	aoNEqWYQjAmjI7di3ZbORBXjPZHUF2cV167VszOXM8ipEdFJ5XzBdT98OqbiQ1sqnXTLt3fUtQnwE
	tnN5NS4v50LStFW5qXIIeMxuBAaqBKmLZPV5Ntp6PMkSmAyAL0Ufet2roEJRQJPBBYOmACEJnMrXV
	z4XRd2uQ==;
Received: from mail-wm1-f48.google.com ([209.85.128.48])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPf-00000002uob-40eg;
	Wed, 12 Jun 2024 13:53:25 +0000
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4217136a74dso42510355e9.2;
        Wed, 12 Jun 2024 06:53:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718200400; x=1718805200;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VEuYpCh3XjM5GPcfydkJgiyDWJJzYzsPQgvZ1sCjljI=;
        b=hLYV9tf6v1OId+5nErGaglHPlrj/YGiJCsxWR3Da9ADN9yVRyKfRme/rTtCWF3URoz
         oAtCSUH3ece4MCkCv0ZAsPLg31ZogJGxvuxHjfGT19OegZU4KyYsFaDC1DTwS9RkIGGX
         qNlSkfOs6e09nY/IXWmuPrlNzLsLBAZS31AydMzJnEzvL1GvonZ2gza5SREYTWMjbQ1z
         qvghP7tu+EPg49/KeVIwx5sGav3SBxOChvDu+hhz7mXViIzzW4+jNe7BYzaudMkdms8r
         sB860qcRz9V3d6lcaTamDuiPXD9GZmN5DADcHM6ZUmZFHGC2jyQZ3kNwudunHsXBM/8A
         i21Q==
X-Forwarded-Encrypted: i=1; AJvYcCVSeh/l4HhWAGbPj+gDPeEZga2n+McmslZKrMB4Gh1HCkc4JEKT8mLFUUkr2CFXXg6SppvNje8Lqhq9y/rrv3Mu8QHDBiEZlgYxXfECRv/DcEb7ZTZMUqGB1sUKPptlqTwHc0ydFDWd6nnvHt9bpzlKN2w/X6JfGn4=
X-Gm-Message-State: AOJu0YyH0LYcLuFoBMAQR7F8QaFUvDjVoh7kuWrQPsqJhtTCUEl2/ZOU
	eKFFCMu6JXWpu8EBiEkI5lQh444qWoGQR6hiUMJ9Tp1MYY2zAgQG
X-Google-Smtp-Source: AGHT+IHXyaNzrcBPeDigrcv5sVOrfalp6CstFjfzQPxgWGQHwRBknXSb0FuvFQr5BVQNXu8vkORxVQ==
X-Received: by 2002:a05:600c:4f49:b0:422:1def:e17f with SMTP id 5b1f17b1804b1-422866bc707mr16912265e9.31.1718200400311;
        Wed, 12 Jun 2024 06:53:20 -0700 (PDT)
Received: from ramallet.home (cst-prg-45-36.cust.vodafone.cz. [46.135.45.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871ec9e6sm28201695e9.38.2024.06.12.06.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:53:19 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 12 Jun 2024 15:53:02 +0200
Subject: [PATCH 9/9] accel/rocket: Add IOCTLs for synchronizing memory
 accesses
MIME-Version: 1.0
Message-Id: <20240612-6-10-rocket-v1-9-060e48eea250@tomeuvizoso.net>
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
X-CRM114-CacheID: sfid-20240612_145323_648234_92E0DD6E 
X-CRM114-Status: GOOD (  19.38  )
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

The NPU cores have their own access to the memory bus, and this isn't
cache coherent with the CPUs.

Add IOCTLs so userspace can mark when the caches need to be flushed, and
also when a writer job needs to be waited for before the buffer can be
accessed from the CPU.

Initially based on the same IOCTLs from the Etnaviv driver.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 drivers/accel/rocket/rocket_drv.c |  2 ++
 drivers/accel/rocket/rocket_gem.c | 68 +++++++++++++++++++++++++++++++++++++++
 drivers/accel/rocket/rocket_gem.h |  7 +++-
 include/uapi/drm/rocket_accel.h   | 20 +++++++++++-
 4 files changed, 95 insertions(+), 2 deletions(-)

diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index adcb9a685dd8..d41a4f4b330d 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -73,6 +73,8 @@ static const struct drm_ioctl_desc rocket_drm_driver_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(ROCKET_##n, rocket_ioctl_##func, 0)
 
 	ROCKET_IOCTL(CREATE_BO, create_bo),
+	ROCKET_IOCTL(PREP_BO, prep_bo),
+	ROCKET_IOCTL(FINI_BO, fini_bo),
 	ROCKET_IOCTL(SUBMIT, submit),
 };
 
diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
index e10eb886f150..afacdf91491e 100644
--- a/drivers/accel/rocket/rocket_gem.c
+++ b/drivers/accel/rocket/rocket_gem.c
@@ -2,7 +2,9 @@
 /* Copyright 2024 Tomeu Vizoso <tomeu@tomeuvizoso.net> */
 
 #include <drm/drm_device.h>
+#include <drm/drm_utils.h>
 #include <drm/rocket_accel.h>
+#include <linux/dma-mapping.h>
 
 #include "rocket_gem.h"
 
@@ -66,3 +68,69 @@ int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *
 
 	return ret;
 }
+
+static inline enum dma_data_direction rocket_op_to_dma_dir(u32 op)
+{
+	if (op & ROCKET_PREP_READ)
+		return DMA_FROM_DEVICE;
+	else if (op & ROCKET_PREP_WRITE)
+		return DMA_TO_DEVICE;
+	else
+		return DMA_BIDIRECTIONAL;
+}
+
+int rocket_ioctl_prep_bo(struct drm_device *dev, void *data, struct drm_file *file)
+{
+	struct drm_rocket_prep_bo *args = data;
+	unsigned long timeout = drm_timeout_abs_to_jiffies(args->timeout_ns);
+	struct drm_gem_object *gem_obj;
+	struct drm_gem_shmem_object *shmem_obj;
+	bool write = !!(args->op & ROCKET_PREP_WRITE);
+	long ret = 0;
+
+	if (args->op & ~(ROCKET_PREP_READ | ROCKET_PREP_WRITE))
+		return -EINVAL;
+
+	gem_obj = drm_gem_object_lookup(file, args->handle);
+	if (!gem_obj)
+		return -ENOENT;
+
+	ret = dma_resv_wait_timeout(gem_obj->resv, dma_resv_usage_rw(write),
+				    true, timeout);
+	if (!ret)
+		ret = timeout ? -ETIMEDOUT : -EBUSY;
+
+	shmem_obj = &to_rocket_bo(gem_obj)->base;
+
+	dma_sync_sgtable_for_cpu(dev->dev, shmem_obj->sgt, rocket_op_to_dma_dir(args->op));
+	to_rocket_bo(gem_obj)->last_cpu_prep_op = args->op;
+
+	drm_gem_object_put(gem_obj);
+
+	return ret;
+}
+
+int rocket_ioctl_fini_bo(struct drm_device *dev, void *data, struct drm_file *file)
+{
+	struct drm_rocket_fini_bo *args = data;
+	struct drm_gem_object *gem_obj;
+	struct rocket_gem_object *rkt_obj;
+	struct drm_gem_shmem_object *shmem_obj;
+
+	gem_obj = drm_gem_object_lookup(file, args->handle);
+	if (!gem_obj)
+		return -ENOENT;
+
+	rkt_obj = to_rocket_bo(gem_obj);
+	shmem_obj = &rkt_obj->base;
+
+	WARN_ON(rkt_obj->last_cpu_prep_op == 0);
+
+	dma_sync_sgtable_for_device(dev->dev, shmem_obj->sgt,
+				    rocket_op_to_dma_dir(rkt_obj->last_cpu_prep_op));
+	rkt_obj->last_cpu_prep_op = 0;
+
+	drm_gem_object_put(gem_obj);
+
+	return 0;
+}
diff --git a/drivers/accel/rocket/rocket_gem.h b/drivers/accel/rocket/rocket_gem.h
index 2cb294f25c19..9b1c485ec600 100644
--- a/drivers/accel/rocket/rocket_gem.h
+++ b/drivers/accel/rocket/rocket_gem.h
@@ -13,16 +13,21 @@ struct rocket_gem_object {
 	struct mutex mutex;
 	size_t size;
 	u32 offset;
+	u32 last_cpu_prep_op;
 };
 
 struct drm_gem_object *rocket_gem_create_object(struct drm_device *dev, size_t size);
 
 int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *file);
 
+int rocket_ioctl_prep_bo(struct drm_device *dev, void *data, struct drm_file *file);
+
+int rocket_ioctl_fini_bo(struct drm_device *dev, void *data, struct drm_file *file);
+
 static inline
 struct  rocket_gem_object *to_rocket_bo(struct drm_gem_object *obj)
 {
 	return container_of(to_drm_gem_shmem_obj(obj), struct rocket_gem_object, base);
 }
 
-#endif
\ No newline at end of file
+#endif
diff --git a/include/uapi/drm/rocket_accel.h b/include/uapi/drm/rocket_accel.h
index 888c9413e4cd..1539af0af4fe 100644
--- a/include/uapi/drm/rocket_accel.h
+++ b/include/uapi/drm/rocket_accel.h
@@ -12,9 +12,13 @@ extern "C" {
 #endif
 
 #define DRM_ROCKET_CREATE_BO			0x00
-#define DRM_ROCKET_SUBMIT			0x01
+#define DRM_ROCKET_PREP_BO			0x01
+#define DRM_ROCKET_FINI_BO			0x02
+#define DRM_ROCKET_SUBMIT			0x03
 
 #define DRM_IOCTL_ROCKET_CREATE_BO		DRM_IOWR(DRM_COMMAND_BASE + DRM_ROCKET_CREATE_BO, struct drm_rocket_create_bo)
+#define DRM_IOCTL_ROCKET_PREP_BO		DRM_IOW(DRM_COMMAND_BASE + DRM_ROCKET_PREP_BO, struct drm_rocket_prep_bo)
+#define DRM_IOCTL_ROCKET_FINI_BO		DRM_IOW(DRM_COMMAND_BASE + DRM_ROCKET_FINI_BO, struct drm_rocket_fini_bo)
 #define DRM_IOCTL_ROCKET_SUBMIT			DRM_IOW(DRM_COMMAND_BASE + DRM_ROCKET_SUBMIT, struct drm_rocket_submit)
 
 /**
@@ -38,6 +42,20 @@ struct drm_rocket_create_bo {
 	__u64 offset;
 };
 
+#define ROCKET_PREP_READ        0x01
+#define ROCKET_PREP_WRITE       0x02
+
+struct drm_rocket_prep_bo {
+	__u32 handle;		/* in */
+	__u32 op;		/* in, mask of ROCKET_PREP_x */
+	__s64 timeout_ns;	/* in */
+};
+
+struct drm_rocket_fini_bo {
+	__u32 handle;		/* in */
+	__u32 flags;		/* in, placeholder for now, no defined values */
+};
+
 /**
  * struct drm_rocket_task - A task to be run on the NPU
  *

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
