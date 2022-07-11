Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14AE2C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jClWWV1zmbwXpOZdvhq1m6Bg9H7h2xDlXRekKx6PFz8=; b=ZD3UzfYrqvdRoJ
	2fRn+ZzumD1er2tLtHPfBINzF/BYrExIwF95CUPNb/Sdbda2yO9UNd8urpJ4lug6CPiAx4vntRN6q
	VzWFnQxioOxcUQqnUuii2UxTPV/4VC2GteltMB9Dk8PuSEj/7qJ6kSKc7PpnyKOBfFipSQ7Qoc8mI
	tyyV9hL1E9EgGlv2SVEdWjmthgBF9M5XCV5AerBDv9sRP26ac6cRqQGnpx5a3hkgkoQBz7b3d0CL8
	hoAlRlZG/78svt487himOh5DRQd3NY5VJz7qLepmSY/JQ58H3/gNqiTr+svPB4CZXKpPRRh9UOH2p
	VzmxDJSNDYXnYEfbrPnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAszw-001hPA-JO; Mon, 11 Jul 2022 12:58:48 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslQ-001YMt-Ld
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:50 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CEE0E1B3F;
	Mon, 11 Jul 2022 14:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543427;
	bh=6SMlAvs+yRBz6lY+aRVcA8GR5qhX2rLh9MEc+kUtftU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fA5SdH3SSr3PZ2DwoUO4wzmoVSPFUPpzzVaTGiSJA/xROokmQgWsjUc0OKo+DHizu
	 TLqcowa4T7B+9GBn6ZPIGT86svZ+6lvcqXURwZTg4Tzx6zlrA8zZE5L01O7wCHOn6i
	 5pPp0W+l40Wb6TjCwSo0YtLMdnL3QZ5A//ymglpI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 45/46] media: rkisp1: Make the internal CSI-2 receiver optional
Date: Mon, 11 Jul 2022 15:42:47 +0300
Message-Id: <20220711124248.2683-46-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054348_912871_12FCFCFE 
X-CRM114-Status: GOOD (  12.90  )
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

Not all ISP versions integrate a MIPI CSI-2 receiver.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 50 +++++++++++++------
 1 file changed, 34 insertions(+), 16 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index bc278b49fefc..f2475c6235ea 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -205,6 +205,14 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 
 		switch (reg) {
 		case 0:
+			/* MIPI CSI-2 port */
+			if (!(rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)) {
+				dev_err(rkisp1->dev,
+					"internal CSI must be available for port 0\n");
+				ret = -EINVAL;
+				break;
+			}
+
 			vep.bus_type = V4L2_MBUS_CSI2_DPHY;
 			break;
 
@@ -330,13 +338,16 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 	unsigned int i;
 	int ret;
 
-	/* Link the CSI receiver to the ISP. */
-	ret = media_create_pad_link(&rkisp1->csi.sd.entity, RKISP1_CSI_PAD_SRC,
-				    &rkisp1->isp.sd.entity,
-				    RKISP1_ISP_PAD_SINK_VIDEO,
-				    MEDIA_LNK_FL_ENABLED);
-	if (ret)
-		return ret;
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+		/* Link the CSI receiver to the ISP. */
+		ret = media_create_pad_link(&rkisp1->csi.sd.entity,
+					    RKISP1_CSI_PAD_SRC,
+					    &rkisp1->isp.sd.entity,
+					    RKISP1_ISP_PAD_SINK_VIDEO,
+					    MEDIA_LNK_FL_ENABLED);
+		if (ret)
+			return ret;
+	}
 
 	/* create ISP->RSZ->CAP links */
 	for (i = 0; i < 2; i++) {
@@ -379,7 +390,8 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 
 static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
 {
-	rkisp1_csi_unregister(rkisp1);
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+		rkisp1_csi_unregister(rkisp1);
 	rkisp1_params_unregister(rkisp1);
 	rkisp1_stats_unregister(rkisp1);
 	rkisp1_capture_devs_unregister(rkisp1);
@@ -411,9 +423,11 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 	if (ret)
 		goto error;
 
-	ret = rkisp1_csi_register(rkisp1);
-	if (ret)
-		goto error;
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+		ret = rkisp1_csi_register(rkisp1);
+		if (ret)
+			goto error;
+	}
 
 	ret = rkisp1_create_links(rkisp1);
 	if (ret)
@@ -576,9 +590,11 @@ static int rkisp1_probe(struct platform_device *pdev)
 		goto err_unreg_v4l2_dev;
 	}
 
-	ret = rkisp1_csi_init(rkisp1);
-	if (ret)
-		goto err_unreg_media_dev;
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
+		ret = rkisp1_csi_init(rkisp1);
+		if (ret)
+			goto err_unreg_media_dev;
+	}
 
 	ret = rkisp1_entities_register(rkisp1);
 	if (ret)
@@ -595,7 +611,8 @@ static int rkisp1_probe(struct platform_device *pdev)
 err_unreg_entities:
 	rkisp1_entities_unregister(rkisp1);
 err_cleanup_csi:
-	rkisp1_csi_cleanup(rkisp1);
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+		rkisp1_csi_cleanup(rkisp1);
 err_unreg_media_dev:
 	media_device_unregister(&rkisp1->media_dev);
 err_unreg_v4l2_dev:
@@ -613,7 +630,8 @@ static int rkisp1_remove(struct platform_device *pdev)
 	v4l2_async_nf_cleanup(&rkisp1->notifier);
 
 	rkisp1_entities_unregister(rkisp1);
-	rkisp1_csi_cleanup(rkisp1);
+	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2)
+		rkisp1_csi_cleanup(rkisp1);
 	rkisp1_debug_cleanup(rkisp1);
 
 	media_device_unregister(&rkisp1->media_dev);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
