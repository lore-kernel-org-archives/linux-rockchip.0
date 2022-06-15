Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8F4DC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 15:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r9v19gqZQy6+VHkn+QTtqvklrZ+7vbAcc445Z/T5Q8w=; b=Ss0jy4sPm9h8pE
	zVvFcN6UteNSKY9CQPJn/r6Ut79kHGJ+Rc9FF3x27sQZMYOrYipaqmacL4SiFgjr0deyk6/fEl/LI
	Ja536uD3fhT6MWrj3ttggt3ZAeyD/+tqz+gMPvxS8Gdn/9aGpYA9X3guo1PIj46KG+nsSMsghniHB
	GM3UNdvWatAnzNMiG+ZpVXZ2SiOg6Aa9ZpqceAC9/w6501Z9CrbkRnGvld6ie0C7J9fbW3ufUCm8l
	HJV1xiRf8sGaLpand2vqtTtDm88ju/gvY8vNfR9dA5p7x0K45yJkH7OA3nexs2qK1/iJkAlkClG5+
	TGHztg+U6YPKlDcNDi2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1VGY-00FELm-4h; Wed, 15 Jun 2022 15:49:10 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1VGL-00FEBx-Gf; Wed, 15 Jun 2022 15:48:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89EF4153B;
	Wed, 15 Jun 2022 08:48:49 -0700 (PDT)
Received: from e122027.arm.com (unknown [10.57.7.82])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB7D33F7F5;
	Wed, 15 Jun 2022 08:48:47 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@linux.ie>,
	Sandy Huang <hjc@rock-chips.com>
Cc: Steven Price <steven.price@arm.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] drm/rockchip: Detach from ARM DMA domain in attach_device
Date: Wed, 15 Jun 2022 16:48:30 +0100
Message-Id: <20220615154830.555422-1-steven.price@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_084857_634281_E6E42F79 
X-CRM114-Status: GOOD (  10.44  )
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

Since commit 1ea2a07a532b ("iommu: Add DMA ownership management
interfaces") the Rockchip display driver on the Firefly RK3288 fails to
initialise properly. This is because ARM DMA domain is still attached.

Let's follow the lead of exynos and tegra and add code to explicitly
remove the ARM domain before attaching a new one.

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
See also the thread[1] where I reported the regression.

[1] https://lore.kernel.org/linux-kernel/da9cca0a-ec5b-2e73-9de0-a930f7d947b2%40arm.com
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 67d38f53d3e5..13ed33e74457 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -23,6 +23,14 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 
+#if defined(CONFIG_ARM_DMA_USE_IOMMU)
+#include <asm/dma-iommu.h>
+#else
+#define arm_iommu_detach_device(...)	({ })
+#define arm_iommu_release_mapping(...)	({ })
+#define to_dma_iommu_mapping(dev) NULL
+#endif
+
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_fb.h"
 #include "rockchip_drm_gem.h"
@@ -49,6 +57,15 @@ int rockchip_drm_dma_attach_device(struct drm_device *drm_dev,
 	if (!private->domain)
 		return 0;
 
+	if (IS_ENABLED(CONFIG_ARM_DMA_USE_IOMMU)) {
+		struct dma_iommu_mapping *mapping = to_dma_iommu_mapping(dev);
+
+		if (mapping) {
+			arm_iommu_detach_device(dev);
+			arm_iommu_release_mapping(mapping);
+		}
+	}
+
 	ret = iommu_attach_device(private->domain, dev);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to attach iommu device\n");
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
