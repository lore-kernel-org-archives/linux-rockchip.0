Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A8F7CCA47A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgMGwOE5ziqIdgPSNj9iHTg/J57ZFK0BBRMiF5/yJiU=; b=JtG9a1oGybPg3P
	sabOoqJbFYpRARa+ihmV30rV/1YLtKG1dbKrO3Qw3PMYC2XPJHAAa6eivmaRYnJhdH8hDFHAnkaIO
	PLEoEDEOOVWviVsBRvwcJd+vcEpfo71HuVFQ0Hf6grKQBC5S7ElTv0R9+vnKHULoeXExSkyJjzAa6
	aKfb79lWhHAciZXyqgP8BusqDR1GHcAGTJlcPEk13gOTAeXd2HWa/kxXWlerHd2tNo7eVOs2PMIpT
	7gz1dc5DV4CEh+vadxx9U3F2jOnK8Irx3PCQbsM2A2FMZzySECEDA6/c/V8Z1/PuK609P4t8r5XJt
	Bfq1U0lvL9kg2roPoNvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bya-00AtmN-G7; Tue, 14 Jun 2022 19:13:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1By2-00AtaF-CQ
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:47 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 068AA825;
	Tue, 14 Jun 2022 21:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233965;
	bh=JZYZDIgU+Gckh67qts/TBvqvAJZkut3JlM+0PM/Pgo0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NHwHkPRKW3sgYSC+3woTshC56JAcUFX2y7GMWVkSMH/sh1DkO3j/IZTCGdRm4kTVs
	 GM2nfCV88U5aXEETZrGfG5gWpbjOpsoptbWQnQP72KnPyw1Q7bTQCqBeK0J/9r+X62
	 ayJXJdTrixaKk/hxplvZBAVUMK7hr8AoeFXJAUD0=
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
Subject: [PATCH 14/55] media: rkisp1: Create internal links at probe time
Date: Wed, 15 Jun 2022 04:10:46 +0900
Message-Id: <20220614191127.3420492-15-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121246_613715_BF73DEFE 
X-CRM114-Status: GOOD (  14.13  )
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

There's no need to wait until all async subdevs are bound before
creating internal links. Create them at probe time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 105 ++++++++----------
 1 file changed, 49 insertions(+), 56 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 4501aea265cb..7bb1235cddea 100644
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
-			&rkisp1->capture_devs[i].vnode.vdev.entity;;
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
-
-	ret = rkisp1_create_links(rkisp1);
-	if (ret)
-		return ret;
-
-	ret = v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
-	if (ret)
-		return ret;
-
-	dev_dbg(rkisp1->dev, "Async subdev notifier completed\n");
 
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
+			&rkisp1->capture_devs[i].vnode.vdev.entity;;
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
