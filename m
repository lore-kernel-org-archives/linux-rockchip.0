Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D76ACD6E78
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sC89Kd/Ybj0Y9JBG0AhUJZch0JDNkr/GRgM31gYQIJs=; b=lUvkDdK7OPeSPF
	9CynJmYKDfK1M1m9ELMIJepMIutchYY98jGc+MTmHps6bzvjXJosYzhp83wT2iKSkY6vqgRiTMBBs
	B5+aBPKIft8njsyuph4B9xS8kG9ITF8mK5y34fjpBtRi4qvG/lrRLzJoP6fzY0frX8LAa5oMprMGq
	F9/ZeDfgdMRdWYrSvcdKjiUJt54dRUPvxraLwRF0IgfXu2JnEc/s1cljJeBRfsetlYXuyVoslCRgy
	IrI4MMr9UNHr6k5NtEB12srcmowcoJbVpPJ3TvuphZC/Z3KU17sic98nawfEtxkOiM9Kif8Ic7Rej
	HMA5lI7Z88kvDSFiLvsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VO-0000000GpmW-1DKJ;
	Thu, 04 Jun 2026 13:53:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VM-0000000Gpjc-1JLz
	for linux-rockchip@bombadil.infradead.org;
	Thu, 04 Jun 2026 13:53:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9Un/RS4Nm0nYyy9KkMqgz4u8u1TfsaZHefTb9UE6rtQ=; b=jEzkBiOdy08imiBUhUJ65aMoVU
	cqWgT+tkrBmfTZ+EgKkGjFLVb4N+7zYAuBJ3cUkrayiqvzUZ92N12WfAdaboc0jSNxW5qaa6k2DCu
	lsao33MEcM37ZwlcJBZHSErosPT7OytPU0waeDmFzPb/nbMPAP81+hyJHzg4Vw5hYCSNSNWs/Nva4
	rw9EYQDup/4LSptgyONzssJACcQHDF7FB1jsMp9/0FVE9asWssCKjJbXlTI23lkZqNb7JbSaHWFmx
	i7GI0ixMPGg9m6xJ25dq4iNFPEzVdIJz//VxbA1xvvkbhgXneoZebd6zN+dMtpoYJvvAklbf4Oqjn
	b9ktlROg==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wV8VJ-0000000EOqQ-0wxs
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:03 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-490ac10e337so4348215e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581180; x=1781185980; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Un/RS4Nm0nYyy9KkMqgz4u8u1TfsaZHefTb9UE6rtQ=;
        b=UOC+AdLr7tjTLscsS2oowM5GlOVlhWVPaWuibzDnqymlMreMfrPcfEFJHSgnQa0tt4
         o/E/+N15st8s8HwowOUrR+R1dZFxlYVZO+O7BdWFAeSoS3y7XR9fn+CeSv9R1xj+owSP
         7+IFVfTbiWO9Jg55wDV6/VdF+9YH4dswhGfUOuYAScCOmIYhY7JCKiXyKQj4NU+TbGnh
         cDRyL/owKl9q0KytdfBMe/d0tjvmBI/mNltx5QhjGohWqZj5w9s1EPRQQqmBhdrEav5C
         6VNRPQjRVfA9URMH5avnpUBxkfOFJwxOsd3+2s3cylKYbeFb+0oaeYyH2VvldxZ78GBZ
         BXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581180; x=1781185980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9Un/RS4Nm0nYyy9KkMqgz4u8u1TfsaZHefTb9UE6rtQ=;
        b=UIQFsRi3t6gp6M81+5TkeZrVUj1hW61Ky5v+eLwUyGZdvQORwKesoRHARFpkWFjydY
         ehmWreGBF3MIAEzujW+98Kv3mCNq0q+gEchUItKuqNQ0GkwqXnfMpNY2KHtayF3/hWmj
         3RNwlhYQDOSsN4BNr/k0kQ4+z05DLRr7wocKmfnIfpeBHkc6BayRs9lA3c/ABrCqAV28
         dsGdXukvZ2T6zIyRk0U/6gbOBoXVwdOO6ft4QKDN94IIs+6gxcKRl+TR4ZQAMpZJKBO2
         HvirhJZ08iEvyvCzEfH/G6vNMgxeucE3ZngBLuOZQlilhqRMdeTMfU7vy4GLViNsZtEZ
         DUYQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Gdqul0SFizWSJoDmfxEhxbJRpGJyUYAjMzITJTrvl4CDxPfeZ9Mk3eIDqfWUWRdc4zZ6t/4iJiJmYw0BUTw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTu8NwnydiD7Z+u20g3BX3s6aHSeu8oSb2Eql9xmwmAYyP3GT4
	nBc9KNikzwWgsr7DhtAhis1I2vIBQaI6cnjm7cZpA1pQ5UxH0AdH4YOx
X-Gm-Gg: Acq92OH/4mupx9nim3xmFpmr1TfFpxsxHIW4IsuJi6l7iQRLBKo43ZyRdU1HnFwlw2E
	Sh8JyI+KCWy9en6Z6llsmi1vJrJpmpDL0RWKaIX0p/OChnGrdEtVhCMCGedcsfb8hF3w4K4EA/c
	W5iVQ5J9kznJTs740wVtqhiWTTof/wYTn4dUTYaeAAg9sjRI3T+ogOR8Sr1To5qpea4UZwIHxvi
	k0xyeBd6GFwA6X8DsXufvf/2RYGzh9SI0Gy/wvBSmOcLB85LONhoaY26ZzfDR7Fi8PVBRgs6uQA
	5rCj/XQalHKqIuWwohfb3xgZVkn/CfA/HbYNvPP/CE/kFeW980pEQkLmFVF8JoLa2n3TyhhRYXo
	cPRl/8fs/xfd91ajxY+2nBj8ait078lsAeJstRA8YpFWC/mJJ4tXxpjpesH5m5zPYdSNShSQCRs
	ktdQuFAjXOaNgafSylLiyroRxywPmzsRLK10LKPOBny+jjPmPwkQh3dCRHRZlVb0M=
X-Received: by 2002:a05:600c:1551:b0:490:5466:8576 with SMTP id 5b1f17b1804b1-490b5e9fca9mr132980675e9.1.1780581179316;
        Thu, 04 Jun 2026 06:52:59 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:52:58 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org
Cc: robin.murphy@arm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 2/9] accel: rocket: Derive DMA width and core count from match data
Date: Thu,  4 Jun 2026 13:52:48 +0000
Message-Id: <20260604135255.62682-3-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_145301_365885_BE8D46C2 
X-CRM114-Status: GOOD (  17.53  )
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

The probe already has the per-SoC match data, which now records the core
count and DMA width.  Use it for the cores array allocation and the
device DMA mask instead of re-scanning the device tree for available core
nodes.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_core.h   |  2 ++
 drivers/accel/rocket/rocket_device.c | 15 +++++----------
 drivers/accel/rocket/rocket_device.h |  3 ++-
 drivers/accel/rocket/rocket_drv.c    |  7 ++++++-
 4 files changed, 15 insertions(+), 12 deletions(-)

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
index 384c38e13acce..c18840e5aff76 100644
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
@@ -214,6 +218,7 @@ static void rocket_remove(struct platform_device *pdev)
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
