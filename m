Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A6DCD98DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+ycqhRuzcaRi78SxIZB15WF/lbCsf+DxZXp9PUtjMg=; b=ANo0Wf0hfndwHq
	rgd9GhsV8erTmwd/oKkyhEM5/luyWvtH8enzCG+NZATTyheGvsvS5rLcK9z8ABEIQBlT/SiV2kVWR
	8c9chJMpAEs+kj4aBzoXDsmIjBa5Cbi3oOloZ06uLgwas583KbLnLXlD31WY3Fp/2aqwxyhqvZOZ3
	GhwqGU6/DyHMp6m6CFZ214Z4k5EFCbU4HHAb3S4rFxuPVCzjIgHvnfrbDYx3BLzvEIYEscHHkhfoL
	mbQHLO9TthkcJHQkZiqKhlrChhFGJTK8bKTCKNt002nwoRMA6NoCIavwv0A4tfi0IhpiBoZiTNcp2
	CUwKTA9GIVADFf+0rO4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIK8-0000000C0nv-33lh;
	Sat, 13 Jun 2026 06:58:32 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIK6-0000000C0lt-0umF
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:31 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-490c0c92cffso11114305e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333908; x=1781938708; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CRmyPRAFuevqTsUvI5TWwwBpkZJdoLOQStZBNs50ckM=;
        b=InBXeg2Gu8yfBwn04op5gj4eixAZSkqUQcDdK8GUBK7GP8GoO8zdFydMLiGU0Vdbrt
         ASC3qofsZL5TGDn9rIrhA2cf0AcNzG/FdzG0pk4XBLJTmUsCVybFCuMdADVG0gONMHOx
         EBF0W5+rOdpccg7RWGMamK1Il9hAr5qsgpMeFSWg/TGfSDFUXaHu66QBVPpBpX26zYWC
         ZftZXMRgBGQlkQGaQHJHNGjXo+sE80VfCVQTI1/YvoMy3gBOfrvpBMapuiWJaHW7xp4D
         J9wmHW9t93lAtGp2ccKzuMtiMuYvwfZGhf92LsPrJNRMgPm/vFGjoVymNpqAkI+lKU0Z
         xcpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333908; x=1781938708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CRmyPRAFuevqTsUvI5TWwwBpkZJdoLOQStZBNs50ckM=;
        b=Kvckxtlq+N34njaoPPU50SeFQtCQHZQV3eZkoy7xYbhl0EO7ghL7FCq/1Vl8/RCPcv
         Sj5o2r2DLEf2gg2eBLF037ZlkdTpkwrgjp2XQOUBD+v8sBtXkTJzPMBbtHAwLxu2ygGa
         RnvD3h92aW6dPQR1a6k+EFcHBwCi/shtI/jmBNKq/QsInOYxUEK+PLZGXGVFGECfslo+
         ASZQ3m9osSGJBDeojCHiSZuGAYmfGoKJhfreV3SSdX0LJZnnY1DIs7cyit2ZZI9NctDp
         Ae/9R1o6S1snmJKFsg2vesLerkrypn2qFmKx7duvjJs3yEk6RPODF6DLBAfi7cnEHhj0
         YGxg==
X-Forwarded-Encrypted: i=1; AFNElJ/KMxXSOMLCX2PXEQu64XoFQ0ZfRBcqJtHk33p9rxQ9JBGSKD8OEbqFPj6uawI2XpXiP73V8hP18iJiOpW3LA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1KjCgK1HVbrDyI2ut3hSqxWkR7Kx/QTUWf8JQk6isTZw8hEot
	D+fc0wT/K2uaC13uScJfoJ1CYjv1ev1VI8hgEW9Q3q+OyDeyV92pBrbT
X-Gm-Gg: Acq92OE4U4v3z2PPvcS/34ezSpi/AaDbaPtltWqTt+8CUwC1NHOsm+9gCcVpttYbfwg
	uY02WkzvKHxAp+01h9XDG+mRV26BC5n2tZUebHH77dLmjPhTTZlfbftfDOTDm6OUVTezrBRUZ+K
	zdKSJDYNZLIqkUxjbCUtR+3xXqJUmEza47hZ08oz5zTlfIM30yN3wU87Ta1Zqx2M8kvHRHtjkz2
	CKMD/WXP5znMUYm+xTv8XB7CbjGmohjk9jrGSLTNpbrmvWzX4Gi6klB8xkVIYcxFu8gy5Ahng0L
	bWocWdo66mPG/THE2Qj9xQDYNleC7vPD9PsGvHXg6a1UZI7baR64F9/C58+YjjHaT2m/CIv0bU1
	Gmaceta7WjE75ZylZs8draSHUFKceaX55yaGR/0WNXrHPc6NdVxWludOFrxngGmxoW56h3MWQT9
	ancRDa3QD23TH6qQ+LQqFUN6vP951famLTP7/n0vc0Yg==
X-Received: by 2002:a05:600d:8489:20b0:490:b724:507d with SMTP id 5b1f17b1804b1-490ec4cec11mr54479185e9.11.1781333908035;
        Fri, 12 Jun 2026 23:58:28 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:27 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 2/9] accel: rocket: Derive DMA width and core count from match data
Date: Sat, 13 Jun 2026 09:01:09 +0200
Message-Id: <20260613070116.438906-3-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235830_287559_F980502E 
X-CRM114-Status: GOOD (  18.55  )
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

From: Midgy BALON <midgy971@gmail.com>

The probe already has the per-SoC match data, which now records the core
count and DMA width.  Use it for the cores array allocation and the
device DMA mask instead of re-scanning the device tree for available core
nodes.

While at it, reject a device tree that declares more NPU core nodes than
the SoC has, so the fixed-size cores array can never be overrun.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_core.h   |  2 ++
 drivers/accel/rocket/rocket_device.c | 15 +++++----------
 drivers/accel/rocket/rocket_device.h |  3 ++-
 drivers/accel/rocket/rocket_drv.c    | 13 ++++++++++++-
 4 files changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
index 8ee105a0be40e..d6421251670dc 100644
--- a/drivers/accel/rocket/rocket_core.h
+++ b/drivers/accel/rocket/rocket_core.h
@@ -16,9 +16,11 @@ struct rocket_core;
 
 /**
  * struct rocket_soc_data - per-SoC configuration data
+ * @num_cores: Number of NPU cores in this SoC.
  * @dma_bits: Physical address width reachable by the NPU's AXI master.
  */
 struct rocket_soc_data {
+	unsigned int num_cores;
 	unsigned int dma_bits;
 };
 
diff --git a/drivers/accel/rocket/rocket_device.c b/drivers/accel/rocket/rocket_device.c
index 46e6ee1e72c5f..6186f4faa3a2a 100644
--- a/drivers/accel/rocket/rocket_device.c
+++ b/drivers/accel/rocket/rocket_device.c
@@ -6,18 +6,16 @@
 #include <linux/clk.h>
 #include <linux/dma-mapping.h>
 #include <linux/platform_device.h>
-#include <linux/of.h>
 
 #include "rocket_device.h"
 
 struct rocket_device *rocket_device_init(struct platform_device *pdev,
-					 const struct drm_driver *rocket_drm_driver)
+					 const struct drm_driver *rocket_drm_driver,
+					 const struct rocket_soc_data *soc_data)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *core_node;
 	struct rocket_device *rdev;
 	struct drm_device *ddev;
-	unsigned int num_cores = 0;
 	int err;
 
 	rdev = devm_drm_dev_alloc(dev, rocket_drm_driver, struct rocket_device, ddev);
@@ -27,17 +25,14 @@ struct rocket_device *rocket_device_init(struct platform_device *pdev,
 	ddev = &rdev->ddev;
 	dev_set_drvdata(dev, rdev);
 
-	for_each_compatible_node(core_node, NULL, "rockchip,rk3588-rknn-core")
-		if (of_device_is_available(core_node))
-			num_cores++;
-
-	rdev->cores = devm_kcalloc(dev, num_cores, sizeof(*rdev->cores), GFP_KERNEL);
+	rdev->cores = devm_kcalloc(dev, soc_data->num_cores, sizeof(*rdev->cores),
+				   GFP_KERNEL);
 	if (!rdev->cores)
 		return ERR_PTR(-ENOMEM);
 
 	dma_set_max_seg_size(dev, UINT_MAX);
 
-	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(40));
+	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(soc_data->dma_bits));
 	if (err)
 		return ERR_PTR(err);
 
diff --git a/drivers/accel/rocket/rocket_device.h b/drivers/accel/rocket/rocket_device.h
index ce662abc01d3d..2f74e078974e3 100644
--- a/drivers/accel/rocket/rocket_device.h
+++ b/drivers/accel/rocket/rocket_device.h
@@ -22,7 +22,8 @@ struct rocket_device {
 };
 
 struct rocket_device *rocket_device_init(struct platform_device *pdev,
-					 const struct drm_driver *rocket_drm_driver);
+					 const struct drm_driver *rocket_drm_driver,
+					 const struct rocket_soc_data *soc_data);
 void rocket_device_fini(struct rocket_device *rdev);
 #define to_rocket_device(drm_dev) \
 	((struct rocket_device *)(container_of((drm_dev), struct rocket_device, ddev)))
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 384c38e13acce..f0beed2d522c7 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -159,11 +159,15 @@ static const struct drm_driver rocket_drm_driver = {
 
 static int rocket_probe(struct platform_device *pdev)
 {
+	const struct rocket_soc_data *soc_data = of_device_get_match_data(&pdev->dev);
 	int ret;
 
+	if (!soc_data)
+		return -EINVAL;
+
 	if (rdev == NULL) {
 		/* First core probing, initialize DRM device. */
-		rdev = rocket_device_init(drm_dev, &rocket_drm_driver);
+		rdev = rocket_device_init(drm_dev, &rocket_drm_driver, soc_data);
 		if (IS_ERR(rdev)) {
 			dev_err(&pdev->dev, "failed to initialize rocket device\n");
 			return PTR_ERR(rdev);
@@ -172,6 +176,12 @@ static int rocket_probe(struct platform_device *pdev)
 
 	unsigned int core = rdev->num_cores;
 
+	if (core >= soc_data->num_cores) {
+		dev_err(&pdev->dev, "too many NPU core nodes (max %u)\n",
+			soc_data->num_cores);
+		return -EINVAL;
+	}
+
 	dev_set_drvdata(&pdev->dev, rdev);
 
 	rdev->cores[core].rdev = rdev;
@@ -214,6 +224,7 @@ static void rocket_remove(struct platform_device *pdev)
 }
 
 static const struct rocket_soc_data rk3588_soc_data = {
+	.num_cores = 3,
 	.dma_bits = 40,
 };
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
