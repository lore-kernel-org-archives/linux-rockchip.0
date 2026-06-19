Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92A5FCD98E6
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 05:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtVGLYWC9W2g51du3ziTpTLq6biOkiYkdfOhu8zjEHE=; b=482AfRfKkxDvAg
	2LyIIYyBxgArJROImLvvZTIbrc2HxiM7BKXhq5F36D1ruqSLWOwtGkdCKEh7vF1QRv8fRTblEf22z
	IOYYJmg/ivVCCkIwT8lk+63p043AaqnztilWp+kcUYEBbKp6gfPWyP9bdwwkfkEsgu3SlosSXo/C4
	hZuDbmbgzlfadMek4E2tgPbOSjQe4m68/ue7sWjupqEjq9XVtVVLB37zOq4tf9vtbjqy3I1e4ANmg
	FfdJdeBeQfdnLgjuNOet7U87rr1cEQDnYOgHI+dP8u8Z95pISwUwOEgmBy82+leMjUA8LUAq5G1Nj
	zNPpBHpqYJgk8x5l35cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waRlC-000000020PE-14Fj;
	Fri, 19 Jun 2026 05:27:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waRl8-000000020J9-1AoI;
	Fri, 19 Jun 2026 05:27:19 +0000
Received: from neptunite.hamster-moth.ts.net (unknown [IPv6:2404:7a81:160:2100:327:f131:c148:b7f8])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 18D68265D;
	Fri, 19 Jun 2026 07:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1781846801;
	bh=+wpYmpN4QK9Kq9mMomSq53WN7ciVuPzh1+gRYFGNSz8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lRG4CZUkbnngDwhcB9kJZrhruawJeGexWa4Hf/pmGMeyhKgnIFMyfvVx0IO2NV8bB
	 48tY580oHCQyfmcR60qZ9uMq+goVAIIGWKioZU3roLwLnn08w4NM26+RgIk4RoaER6
	 pEXEGGBqjZ5hzvlAvCIj4GK68chIZisv9bIdqsB0=
From: Paul Elder <paul.elder@ideasonboard.com>
To: laurent.pinchart@ideasonboard.com
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	michael.riesch@collabora.com,
	xuhf@rock-chips.com,
	stefan.klug@ideasonboard.com,
	kieran.bingham@ideasonboard.com,
	dan.scally@ideasonboard.com,
	jacopo.mondi@ideasonboard.com,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hverkuil+cisco@kernel.org,
	nicolas.dufresne@collabora.com,
	ribalda@chromium.org,
	sakari.ailus@linux.intel.com
Subject: [RFC PATCH 4/6] media: rkisp2: Use shared media graph
Date: Fri, 19 Jun 2026 14:26:31 +0900
Message-ID: <20260619052637.1110672-5-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260619052637.1110672-1-paul.elder@ideasonboard.com>
References: <20260619052637.1110672-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_222718_471151_EB6F91FC 
X-CRM114-Status: GOOD (  15.29  )
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

Make rkisp2 use shared media graph. This allows it to be in the same
media graph as rkcif on the rk3588, opening to door to allowing the
entire capture pipeline to run in inline mode.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp2/rkisp2-common.h  |  2 +-
 .../platform/rockchip/rkisp2/rkisp2-dev.c     | 42 ++++++++++---------
 2 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp2/rkisp2-common.h b/drivers/media/platform/rockchip/rkisp2/rkisp2-common.h
index 1eafdb5db5d8..ecf0f5e22064 100644
--- a/drivers/media/platform/rockchip/rkisp2/rkisp2-common.h
+++ b/drivers/media/platform/rockchip/rkisp2/rkisp2-common.h
@@ -432,7 +432,7 @@ struct rkisp2_device {
 	struct regmap *gasket;
 	unsigned int gasket_id;
 	struct v4l2_device v4l2_dev;
-	struct media_device media_dev;
+	struct media_device *media_dev;
 	struct v4l2_async_notifier notifier;
 	struct v4l2_subdev *source;
 	struct rkisp2_isp isp;
diff --git a/drivers/media/platform/rockchip/rkisp2/rkisp2-dev.c b/drivers/media/platform/rockchip/rkisp2/rkisp2-dev.c
index 4042bf43d287..f74b7aae3159 100644
--- a/drivers/media/platform/rockchip/rkisp2/rkisp2-dev.c
+++ b/drivers/media/platform/rockchip/rkisp2/rkisp2-dev.c
@@ -20,6 +20,7 @@
 #include <linux/platform_device.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/pm_runtime.h>
+#include <media/mc-shared-graph.h>
 #include <media/v4l2-fwnode.h>
 #include <media/v4l2-mc.h>
 
@@ -117,7 +118,7 @@ static int rkisp2_create_links(struct rkisp2_device *rkisp2)
 			ret = media_create_pad_link(
 				source, 0, &rkisp2->isp.sd.entity,
 				RKISP2_ISP_PAD_SINK_VIDEO,
-				MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
+				MEDIA_LNK_FL_ENABLED);
 		} else {
 			ret = media_create_pad_link(source, 0,
 						    &rkisp2->isp.sd.entity,
@@ -147,6 +148,12 @@ static int rkisp2_create_links(struct rkisp2_device *rkisp2)
 	if (ret)
 		return ret;
 
+	ret = media_device_shared_join_link_sink(rkisp2->media_dev, rkisp2->dev,
+						 &rkisp2->isp.sd.entity,
+						 RKISP2_ISP_PAD_SINK_VIDEO, 0);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
@@ -233,6 +240,7 @@ static int rkisp2_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rkisp2_device *rkisp2;
 	struct v4l2_device *v4l2_dev;
+	struct media_device *mdev;
 	unsigned int i;
 	int ret, irq;
 	u32 cif_id;
@@ -298,29 +306,28 @@ static int rkisp2_probe(struct platform_device *pdev)
 
 	pm_runtime_put(&pdev->dev);
 
-	rkisp2->media_dev.hw_revision = info->isp_ver;
-	strscpy(rkisp2->media_dev.model, RKISP2_DRIVER_NAME,
-		sizeof(rkisp2->media_dev.model));
-	rkisp2->media_dev.dev = &pdev->dev;
-	strscpy(rkisp2->media_dev.bus_info, RKISP2_BUS_INFO,
-		sizeof(rkisp2->media_dev.bus_info));
-	media_device_init(&rkisp2->media_dev);
+	mdev = media_device_shared_join(rkisp2->dev);
+	if (IS_ERR(mdev))
+		goto err_pm_runtime_disable;
+
+	rkisp2->media_dev = mdev;
+	rkisp2->media_dev->hw_revision = info->isp_ver;
+	strscpy(rkisp2->media_dev->model, RKISP2_DRIVER_NAME,
+		sizeof(rkisp2->media_dev->model));
+	strscpy(rkisp2->media_dev->bus_info, RKISP2_BUS_INFO,
+		sizeof(rkisp2->media_dev->bus_info));
 
 	v4l2_dev = &rkisp2->v4l2_dev;
-	v4l2_dev->mdev = &rkisp2->media_dev;
+	v4l2_dev->mdev = rkisp2->media_dev;
 	strscpy(v4l2_dev->name, RKISP2_DRIVER_NAME, sizeof(v4l2_dev->name));
 
 	ret = v4l2_device_register(rkisp2->dev, &rkisp2->v4l2_dev);
 	if (ret)
 		goto err_media_dev_cleanup;
 
-	ret = media_device_register(&rkisp2->media_dev);
-	if (ret)
-		goto err_unreg_v4l2_dev;
-
 	ret = rkisp2_entities_register(rkisp2);
 	if (ret)
-		goto err_unreg_media_dev;
+		goto err_unreg_v4l2_dev;
 
 	ret = v4l2_device_register_subdev_nodes(&rkisp2->v4l2_dev);
 	if (ret)
@@ -332,12 +339,10 @@ static int rkisp2_probe(struct platform_device *pdev)
 
 err_unreg_entities:
 	rkisp2_entities_unregister(rkisp2);
-err_unreg_media_dev:
-	media_device_unregister(&rkisp2->media_dev);
 err_unreg_v4l2_dev:
 	v4l2_device_unregister(&rkisp2->v4l2_dev);
 err_media_dev_cleanup:
-	media_device_cleanup(&rkisp2->media_dev);
+	media_device_shared_leave(rkisp2->media_dev, rkisp2->dev);
 err_pm_runtime_disable:
 	pm_runtime_disable(&pdev->dev);
 	return ret;
@@ -353,10 +358,9 @@ static void rkisp2_remove(struct platform_device *pdev)
 	rkisp2_entities_unregister(rkisp2);
 	rkisp2_debug_cleanup(rkisp2);
 
-	media_device_unregister(&rkisp2->media_dev);
 	v4l2_device_unregister(&rkisp2->v4l2_dev);
 
-	media_device_cleanup(&rkisp2->media_dev);
+	media_device_shared_leave(rkisp2->media_dev, rkisp2->dev);
 
 	pm_runtime_disable(&pdev->dev);
 }
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
