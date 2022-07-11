Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BD87C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wtZGfjrpXRyqA50qggOXt0uO5eXvYjZD2YJ/ffw+Sk=; b=sROq6BKDmJJVO2
	xA2upKXNyw34XhkHQoDjyt84mqhGhH/qHndBnDmAXtdhq/5i8c0c6lRTrpVWEjFLW5JA+MWr/QFX4
	UUn3r7O0VIjV9PnMk/l0DLH1VwoauOoak3AbJslgtqwnH7zYQKRgr3PtCqFS9Lj37S0gEzizW3LS1
	SoKRfsbECho7y0g+k2eKcAVum0HGh89//XImZeZYI//f4VsJy2y3fbYa7+oGfO/taafGepdqOpMAk
	0QHzxKpmBNykwanQsKvxiFHLFVo/azTRHv5Hn59WiRsyp8Xrub+D8mp5AMnph9oH1wWZ+hFNS2eGA
	Bw/qhwQ3uBW/ejnVh+Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsyF-001fhB-QU; Mon, 11 Jul 2022 12:57:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl8-001Y8w-WF
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:32 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E1F5E73E;
	Mon, 11 Jul 2022 14:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543409;
	bh=7akQRhqjaIOI8GSplWzL9Bz5bUU/ul/ouOuAGlxzL4o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=duGhtjtInNEcaczbeKRabsBMTLakeIP6uIDhFMvTgDIWAKZZ1fM7Wb/SNNPDwTq0C
	 QHfQ4+86gwpUNZFIvPRkoA+nU1ilOvt4p7GX9Qz2rc/KLdk3LNvBVTq1CO8nBXakbz
	 wHKcJDm9F5d0rmim1LwPVwdEK+JukmOcMvNi/hYY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 16/46] media: rkisp1: Create internal links at probe time
Date: Mon, 11 Jul 2022 15:42:18 +0300
Message-Id: <20220711124248.2683-17-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054331_250295_E3146A9F 
X-CRM114-Status: GOOD (  14.70  )
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

There's no need to wait until all async subdevs are bound before
creating internal links. Create them at probe time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 105 ++++++++----------
 1 file changed, 49 insertions(+), 56 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 1b3c3881ca89..4400dc0117a5 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -109,50 +109,6 @@ struct rkisp1_isr_data {
  * Sensor DT bindings
  */
 
-static int rkisp1_create_links(struct rkisp1_device *rkisp1)
-{
-	unsigned int i;
-	int ret;
-
-	/* create ISP->RSZ->CAP links */
-	for (i = 0; i < 2; i++) {
-		struct media_entity *resizer =
-			&rkisp1->resizer_devs[i].sd.entity;
-		struct media_entity *capture =
-			&rkisp1->capture_devs[i].vnode.vdev.entity;
-
-		ret = media_create_pad_link(&rkisp1->isp.sd.entity,
-					    RKISP1_ISP_PAD_SOURCE_VIDEO,
-					    resizer, RKISP1_RSZ_PAD_SINK,
-					    MEDIA_LNK_FL_ENABLED);
-		if (ret)
-			return ret;
-
-		ret = media_create_pad_link(resizer, RKISP1_RSZ_PAD_SRC,
-					    capture, 0,
-					    MEDIA_LNK_FL_ENABLED |
-					    MEDIA_LNK_FL_IMMUTABLE);
-		if (ret)
-			return ret;
-	}
-
-	/* params links */
-	ret = media_create_pad_link(&rkisp1->params.vnode.vdev.entity, 0,
-				    &rkisp1->isp.sd.entity,
-				    RKISP1_ISP_PAD_SINK_PARAMS,
-				    MEDIA_LNK_FL_ENABLED |
-				    MEDIA_LNK_FL_IMMUTABLE);
-	if (ret)
-		return ret;
-
-	/* 3A stats links */
-	return media_create_pad_link(&rkisp1->isp.sd.entity,
-				     RKISP1_ISP_PAD_SOURCE_STATS,
-				     &rkisp1->stats.vnode.vdev.entity, 0,
-				     MEDIA_LNK_FL_ENABLED |
-				     MEDIA_LNK_FL_IMMUTABLE);
-}
-
 static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 					struct v4l2_subdev *sd,
 					struct v4l2_async_subdev *asd)
@@ -210,19 +166,8 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
 {
 	struct rkisp1_device *rkisp1 =
 		container_of(notifier, struct rkisp1_device, notifier);
-	int ret;
 
-	ret = rkisp1_create_links(rkisp1);
-	if (ret)
-		return ret;
-
-	ret = v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
-	if (ret)
-		return ret;
-
-	dev_dbg(rkisp1->dev, "Async subdev notifier completed\n");
-
-	return 0;
+	return v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
 }
 
 static const struct v4l2_async_notifier_operations rkisp1_subdev_notifier_ops = {
@@ -332,6 +277,50 @@ static const struct dev_pm_ops rkisp1_pm_ops = {
  * Core
  */
 
+static int rkisp1_create_links(struct rkisp1_device *rkisp1)
+{
+	unsigned int i;
+	int ret;
+
+	/* create ISP->RSZ->CAP links */
+	for (i = 0; i < 2; i++) {
+		struct media_entity *resizer =
+			&rkisp1->resizer_devs[i].sd.entity;
+		struct media_entity *capture =
+			&rkisp1->capture_devs[i].vnode.vdev.entity;
+
+		ret = media_create_pad_link(&rkisp1->isp.sd.entity,
+					    RKISP1_ISP_PAD_SOURCE_VIDEO,
+					    resizer, RKISP1_RSZ_PAD_SINK,
+					    MEDIA_LNK_FL_ENABLED);
+		if (ret)
+			return ret;
+
+		ret = media_create_pad_link(resizer, RKISP1_RSZ_PAD_SRC,
+					    capture, 0,
+					    MEDIA_LNK_FL_ENABLED |
+					    MEDIA_LNK_FL_IMMUTABLE);
+		if (ret)
+			return ret;
+	}
+
+	/* params links */
+	ret = media_create_pad_link(&rkisp1->params.vnode.vdev.entity, 0,
+				    &rkisp1->isp.sd.entity,
+				    RKISP1_ISP_PAD_SINK_PARAMS,
+				    MEDIA_LNK_FL_ENABLED |
+				    MEDIA_LNK_FL_IMMUTABLE);
+	if (ret)
+		return ret;
+
+	/* 3A stats links */
+	return media_create_pad_link(&rkisp1->isp.sd.entity,
+				     RKISP1_ISP_PAD_SOURCE_STATS,
+				     &rkisp1->stats.vnode.vdev.entity, 0,
+				     MEDIA_LNK_FL_ENABLED |
+				     MEDIA_LNK_FL_IMMUTABLE);
+}
+
 static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
 {
 	rkisp1_params_unregister(rkisp1);
@@ -365,6 +354,10 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 	if (ret)
 		goto error;
 
+	ret = rkisp1_create_links(rkisp1);
+	if (ret)
+		goto error;
+
 	ret = rkisp1_subdev_notifier(rkisp1);
 	if (ret) {
 		dev_err(rkisp1->dev,
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
