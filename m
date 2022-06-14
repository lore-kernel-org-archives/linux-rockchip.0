Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AFDFCCA47A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqjYCABHLEXB5KDFqv8i0ZYenStwLrrl/+myEpJCKAY=; b=aarOA4G9TjeRcb
	bRVhXXxPjlwqK2dw3Z4cthoawPHGhscvKCl2upj/fH5pwN0nKm8E85m6vTJp6xU8O/PfOyZaDsRQc
	B6cE30tNn5qw3Pd1DVve8BtOLdrfLAb99/VGRRJTD2pVkvwi/FpUO5Q/oNcif/8VoimOkcW8okaIu
	o2QSysNm09GW82FiyBdHid7OW/53ifrSixGXJqViSMtaep7hNsscsTCCSxm/Va8LItZoW4fOoLSiH
	+iaU1wI+8OvHyfpicJ9dOWvSKQP7mH/l+wrYNEKqa8WdsVqoWGI55RnEsXcim58N1YN/xHv8jRUDx
	GqWhI/b/FfLWWsK30KcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bya-00Atlr-4C; Tue, 14 Jun 2022 19:13:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bxy-00AtZN-Ib
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:44 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0583DEF1;
	Tue, 14 Jun 2022 21:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233961;
	bh=fCDJB0TqsmD2OS4rT6TXU6SyBYYpwaytCRpPvzdgB6U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XpLCIkR7EwsNtxU7R/2BExbvEkeuQRk8t6Eg+NCJgWdxiSafMtElot+j5XYeg82uq
	 2DlH4/Lt+8kfClm6d8SJkp4GRKUY5qM1xUdJgeuGIUksqNY7XpsqZrBnZSzu3Ov0y+
	 WOI+tI0LHPUCybzutmgv5gN6r7C9VrqPdFcA56Zc=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 13/55] media: rkisp1: Create link from sensor to ISP at notifier bound time
Date: Wed, 15 Jun 2022 04:10:45 +0900
Message-Id: <20220614191127.3420492-14-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121242_809001_28E26BD5 
X-CRM114-Status: GOOD (  17.08  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Links from sensors to the ISP can be created as sensors are bound. Move
the link creation from rkisp1_create_links() to the bound notifier, and
clean up the rkisp1_create_links() function while at it.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 87 ++++++++-----------
 2 files changed, 40 insertions(+), 49 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index c7d5c57607bd..ba11baf75fa9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -116,6 +116,7 @@ struct rkisp1_info {
  *				of the v4l2-async API
  *
  * @asd:		async_subdev variable for the sensor
+ * @index:		index of the sensor (counting sensor found in DT)
  * @lanes:		number of lanes
  * @mbus_type:		type of bus (currently only CSI2 is supported)
  * @mbus_flags:		media bus (V4L2_MBUS_*) flags
@@ -125,6 +126,7 @@ struct rkisp1_info {
  */
 struct rkisp1_sensor_async {
 	struct v4l2_async_subdev asd;
+	unsigned int index;
 	unsigned int lanes;
 	enum v4l2_mbus_type mbus_type;
 	unsigned int mbus_flags;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 7fc617d51f44..4501aea265cb 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -111,72 +111,46 @@ struct rkisp1_isr_data {
 
 static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 {
-	struct media_entity *source, *sink;
-	unsigned int flags, source_pad;
-	struct v4l2_subdev *sd;
 	unsigned int i;
 	int ret;
 
-	/* sensor links */
-	flags = MEDIA_LNK_FL_ENABLED;
-	list_for_each_entry(sd, &rkisp1->v4l2_dev.subdevs, list) {
-		if (sd == &rkisp1->isp.sd ||
-		    sd == &rkisp1->resizer_devs[RKISP1_MAINPATH].sd ||
-		    sd == &rkisp1->resizer_devs[RKISP1_SELFPATH].sd)
-			continue;
-
-		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
-						  MEDIA_PAD_FL_SOURCE);
-		if (ret < 0) {
-			dev_err(rkisp1->dev, "failed to find src pad for %s\n",
-				sd->name);
-			return ret;
-		}
-		source_pad = ret;
-
-		ret = media_create_pad_link(&sd->entity, source_pad,
-					    &rkisp1->isp.sd.entity,
-					    RKISP1_ISP_PAD_SINK_VIDEO,
-					    flags);
-		if (ret)
-			return ret;
-
-		flags = 0;
-	}
-
-	flags = MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE;
-
 	/* create ISP->RSZ->CAP links */
 	for (i = 0; i < 2; i++) {
-		source = &rkisp1->isp.sd.entity;
-		sink = &rkisp1->resizer_devs[i].sd.entity;
-		ret = media_create_pad_link(source, RKISP1_ISP_PAD_SOURCE_VIDEO,
-					    sink, RKISP1_RSZ_PAD_SINK,
+		struct media_entity *resizer =
+			&rkisp1->resizer_devs[i].sd.entity;
+		struct media_entity *capture =
+			&rkisp1->capture_devs[i].vnode.vdev.entity;;
+
+		ret = media_create_pad_link(&rkisp1->isp.sd.entity,
+					    RKISP1_ISP_PAD_SOURCE_VIDEO,
+					    resizer, RKISP1_RSZ_PAD_SINK,
 					    MEDIA_LNK_FL_ENABLED);
 		if (ret)
 			return ret;
 
-		source = sink;
-		sink = &rkisp1->capture_devs[i].vnode.vdev.entity;
-		ret = media_create_pad_link(source, RKISP1_RSZ_PAD_SRC,
-					    sink, 0, flags);
+		ret = media_create_pad_link(resizer, RKISP1_RSZ_PAD_SRC,
+					    capture, 0,
+					    MEDIA_LNK_FL_ENABLED |
+					    MEDIA_LNK_FL_IMMUTABLE);
 		if (ret)
 			return ret;
 	}
 
 	/* params links */
-	source = &rkisp1->params.vnode.vdev.entity;
-	sink = &rkisp1->isp.sd.entity;
-	ret = media_create_pad_link(source, 0, sink,
-				    RKISP1_ISP_PAD_SINK_PARAMS, flags);
+	ret = media_create_pad_link(&rkisp1->params.vnode.vdev.entity, 0,
+				    &rkisp1->isp.sd.entity,
+				    RKISP1_ISP_PAD_SINK_PARAMS,
+				    MEDIA_LNK_FL_ENABLED |
+				    MEDIA_LNK_FL_IMMUTABLE);
 	if (ret)
 		return ret;
 
 	/* 3A stats links */
-	source = &rkisp1->isp.sd.entity;
-	sink = &rkisp1->stats.vnode.vdev.entity;
-	return media_create_pad_link(source, RKISP1_ISP_PAD_SOURCE_STATS,
-				     sink, 0, flags);
+	return media_create_pad_link(&rkisp1->isp.sd.entity,
+				     RKISP1_ISP_PAD_SOURCE_STATS,
+				     &rkisp1->stats.vnode.vdev.entity, 0,
+				     MEDIA_LNK_FL_ENABLED |
+				     MEDIA_LNK_FL_IMMUTABLE);
 }
 
 static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
@@ -187,6 +161,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 		container_of(notifier, struct rkisp1_device, notifier);
 	struct rkisp1_sensor_async *s_asd =
 		container_of(asd, struct rkisp1_sensor_async, asd);
+	int source_pad;
 
 	s_asd->pixel_rate_ctrl = v4l2_ctrl_find(sd->ctrl_handler,
 						V4L2_CID_PIXEL_RATE);
@@ -206,7 +181,19 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 
 	phy_init(s_asd->dphy);
 
-	return 0;
+	/* Create the link to the sensor. */
+	source_pad = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
+						 MEDIA_PAD_FL_SOURCE);
+	if (source_pad < 0) {
+		dev_err(rkisp1->dev, "failed to find source pad for %s\n",
+			sd->name);
+		return source_pad;
+	}
+
+	return media_create_pad_link(&sd->entity, source_pad,
+				     &rkisp1->isp.sd.entity,
+				     RKISP1_ISP_PAD_SINK_VIDEO,
+				     !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
 }
 
 static void rkisp1_subdev_notifier_unbind(struct v4l2_async_notifier *notifier,
@@ -248,6 +235,7 @@ static int rkisp1_subdev_notifier(struct rkisp1_device *rkisp1)
 {
 	struct v4l2_async_notifier *ntf = &rkisp1->notifier;
 	unsigned int next_id = 0;
+	unsigned int index = 0;
 	int ret;
 
 	v4l2_async_nf_init(ntf);
@@ -277,6 +265,7 @@ static int rkisp1_subdev_notifier(struct rkisp1_device *rkisp1)
 			goto err_parse;
 		}
 
+		rk_asd->index = index++;
 		rk_asd->mbus_type = vep.bus_type;
 		rk_asd->mbus_flags = vep.bus.mipi_csi2.flags;
 		rk_asd->lanes = vep.bus.mipi_csi2.num_data_lanes;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
