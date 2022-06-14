Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA96CC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25F+FqX4PyEZQbKOu/ZkdHNrXc+k3Pu2ldfq+JJVWVE=; b=25TxYETW7qon/f
	81nJT/VeCoi61OCFtfr03yfFTZx/4DV6GS8K1giXQgQP12pJm6EO6240z8FOqSQE+cZyQ1hcK0oYt
	BJ+mv1fCuvB4pEkGrt4d9XoTH3Rs+F6F0d6IiRadafMRC/kE2YL3jZ1ikJq+PQJGtLYvcKXRVQstG
	IVAnZ5R/MXr7JXzktLLzGxJSBjUBFk+PdPnvVgUV2TGwWzT7Tcx48EU2YfR3SODAfzt8zUKteWXBe
	JuiQEVotCObpAD27yKDrHY/eLD5Bcl7DFD45ex4KYDxm+RF7EXbfoCgVo6OMwpjnfnaSfNaPht88Y
	Kprtplmw085fv8/6xqKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bzr-00AvED-Ap; Tue, 14 Jun 2022 19:14:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bzo-00AvB0-0N
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:38 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C9E9F825;
	Tue, 14 Jun 2022 21:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234074;
	bh=qbUKKlAVPblPV/pI5UUGyESkZeMPGJdVzC0EImNhNCQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HOeCrhf0+lGnb+Or7Y6tnvAbkPOSELAhg4TW05S13XYzWxqUdpLQBd2oH2oHqISbz
	 BxPjUNYAz4hAdDynZt6BDC7qD3qJKDBRwtntykf0okFfriW8kUtAnmuVm5XdSxrPoV
	 942ZqpKJ1DXt6d+Kpxe7/6/vPTwCtD3Mfvy+vHNo=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH 41/55] media: rkisp1: csi: Plumb the CSI RX subdev
Date: Wed, 15 Jun 2022 04:11:13 +0900
Message-Id: <20220614191127.3420492-42-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121436_328931_A5121B4B 
X-CRM114-Status: GOOD (  19.82  )
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

Connect the CSI receiver subdevice into the rest of the driver. This
includes:
- calling the subdevice via the v4l2 subdev API
- moving the async notifier for the sensor from the ISP to the CSI
  receiver
- in the ISP, create a media link to the CSI receiver, and remove the
  media link creation to the sensor
- in the CSI receiver, create a media link to the sensor

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 34 ++++++++++++++++--
 .../platform/rockchip/rkisp1/rkisp1-csi.h     |  6 ++--
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 36 +++++++++----------
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 21 ++---------
 4 files changed, 53 insertions(+), 44 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 8182694a6fe0..96712b467dde 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -43,6 +43,34 @@ rkisp1_csi_get_pad_fmt(struct rkisp1_csi *csi,
 		return v4l2_subdev_get_try_format(&csi->sd, &state, pad);
 }
 
+int rkisp1_csi_link_sensor(struct rkisp1_device *rkisp1, struct v4l2_subdev *sd,
+			   struct rkisp1_sensor_async *s_asd,
+			   unsigned int source_pad)
+{
+	struct rkisp1_csi *csi = &rkisp1->csi;
+	int ret;		
+
+	s_asd->pixel_rate_ctrl = v4l2_ctrl_find(sd->ctrl_handler,
+						V4L2_CID_PIXEL_RATE);
+	if (!s_asd->pixel_rate_ctrl) {
+		dev_err(rkisp1->dev, "No pixel rate control in subdev %s\n",
+			sd->name);
+		return -EINVAL;
+	}
+
+	/* Create the link from the sensor to the CSI receiver. */
+	ret = media_create_pad_link(&sd->entity, source_pad,
+				    &csi->sd.entity, RKISP1_CSI_PAD_SINK,
+				    !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
+	if (ret) {
+		dev_err(csi->rkisp1->dev, "failed to link src pad of %s\n",
+			sd->name);
+		return ret;
+	}
+
+	return 0;
+}
+
 static int rkisp1_csi_config(struct rkisp1_csi *csi,
 			     const struct rkisp1_sensor_async *sensor)
 {
@@ -118,8 +146,8 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
 		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
 }
 
-int rkisp1_csi_start(struct rkisp1_csi *csi,
-		     const struct rkisp1_sensor_async *sensor)
+static int rkisp1_csi_start(struct rkisp1_csi *csi,
+			    const struct rkisp1_sensor_async *sensor)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	union phy_configure_opts opts;
@@ -155,7 +183,7 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
 	return 0;
 }
 
-void rkisp1_csi_stop(struct rkisp1_csi *csi)
+static void rkisp1_csi_stop(struct rkisp1_csi *csi)
 {
 	rkisp1_csi_disable(csi);
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
index ddf8e5e08f55..eadcd24f65fb 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
@@ -21,8 +21,8 @@ void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
 int rkisp1_csi_register(struct rkisp1_device *rkisp1);
 void rkisp1_csi_unregister(struct rkisp1_device *rkisp1);
 
-int rkisp1_csi_start(struct rkisp1_csi *csi,
-		     const struct rkisp1_sensor_async *sensor);
-void rkisp1_csi_stop(struct rkisp1_csi *csi);
+int rkisp1_csi_link_sensor(struct rkisp1_device *rkisp1, struct v4l2_subdev *sd,
+			   struct rkisp1_sensor_async *s_asd,
+			   unsigned int source_pad);
 
 #endif /* _RKISP1_CSI_H */
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index faf2cd4c8149..a3e182c86bdd 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -17,6 +17,7 @@
 #include <linux/pinctrl/consumer.h>
 #include <linux/pm_runtime.h>
 #include <media/v4l2-fwnode.h>
+#include <media/v4l2-mc.h>
 
 #include "rkisp1-common.h"
 #include "rkisp1-csi.h"
@@ -119,17 +120,8 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 		container_of(asd, struct rkisp1_sensor_async, asd);
 	int source_pad;
 
-	s_asd->pixel_rate_ctrl = v4l2_ctrl_find(sd->ctrl_handler,
-						V4L2_CID_PIXEL_RATE);
-	if (!s_asd->pixel_rate_ctrl) {
-		dev_err(rkisp1->dev, "No pixel rate control in subdev %s\n",
-			sd->name);
-		return -EINVAL;
-	}
-
 	s_asd->sd = sd;
 
-	/* Create the link to the sensor. */
 	source_pad = media_entity_get_fwnode_pad(&sd->entity, s_asd->source_ep,
 						 MEDIA_PAD_FL_SOURCE);
 	if (source_pad < 0) {
@@ -138,10 +130,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 		return source_pad;
 	}
 
-	return media_create_pad_link(&sd->entity, source_pad,
-				     &rkisp1->isp.sd.entity,
-				     RKISP1_ISP_PAD_SINK_VIDEO,
-				     !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
+	return rkisp1_csi_link_sensor(rkisp1, sd, s_asd, source_pad);
 }
 
 static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
@@ -283,6 +272,14 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 	unsigned int i;
 	int ret;
 
+	/* Link the CSI receiver to the ISP. */
+	ret = media_create_pad_link(&rkisp1->csi.sd.entity, RKISP1_CSI_PAD_SRC,
+				    &rkisp1->isp.sd.entity,
+				    RKISP1_ISP_PAD_SINK_VIDEO,
+				    MEDIA_LNK_FL_ENABLED);
+	if (ret)
+		return ret;
+
 	/* create ISP->RSZ->CAP links */
 	for (i = 0; i < 2; i++) {
 		struct media_entity *resizer =
@@ -364,13 +361,6 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 	if (ret)
 		goto error;
 
-	ret = rkisp1_subdev_notifier_register(rkisp1);
-	if (ret) {
-		dev_err(rkisp1->dev,
-			"Failed to register subdev notifier(%d)\n", ret);
-		goto error;
-	}
-
 	return 0;
 
 error:
@@ -534,10 +524,16 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_cleanup_csi;
 
+	ret = rkisp1_subdev_notifier_register(rkisp1);
+	if (ret)
+		goto err_unreg_entities;
+
 	rkisp1_debug_init(rkisp1);
 
 	return 0;
 
+err_unreg_entities:
+	rkisp1_entities_unregister(rkisp1);
 err_cleanup_csi:
 	rkisp1_csi_cleanup(rkisp1);
 err_unreg_media_dev:
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 5afb8be311c7..260c9ce0dca4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -16,7 +16,6 @@
 #include <media/v4l2-event.h>
 
 #include "rkisp1-common.h"
-#include "rkisp1-csi.h"
 
 #define RKISP1_DEF_SINK_PAD_FMT MEDIA_BUS_FMT_SRGGB10_1X10
 #define RKISP1_DEF_SRC_PAD_FMT MEDIA_BUS_FMT_YUYV8_2X8
@@ -728,16 +727,12 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 {
 	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
-	const struct rkisp1_sensor_async *asd;
 	struct media_pad *source_pad;
 	int ret;
 
 	if (!enable) {
 		v4l2_subdev_call(rkisp1->source, video, s_stream, false);
-
-		rkisp1_csi_stop(&rkisp1->csi);
 		rkisp1_isp_stop(isp);
-
 		return 0;
 	}
 
@@ -754,30 +749,20 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		return -EPIPE;
 	}
 
-	asd = container_of(rkisp1->source->asd, struct rkisp1_sensor_async,
-			   asd);
-
-	if (asd->mbus_type != V4L2_MBUS_CSI2_DPHY)
-		return -EINVAL;
+	if (rkisp1->source != &rkisp1->csi.sd)
+		return -EPIPE;
 
 	isp->frame_sequence = -1;
 	mutex_lock(&isp->ops_lock);
-	ret = rkisp1_config_cif(isp, asd->mbus_type, asd->mbus_flags);
+	ret = rkisp1_config_cif(isp, V4L2_MBUS_CSI2_DPHY, 0);
 	if (ret)
 		goto mutex_unlock;
 
 	rkisp1_isp_start(isp);
 
-	ret = rkisp1_csi_start(&rkisp1->csi, asd);
-	if (ret) {
-		rkisp1_isp_stop(isp);
-		goto mutex_unlock;
-	}
-
 	ret = v4l2_subdev_call(rkisp1->source, video, s_stream, true);
 	if (ret) {
 		rkisp1_isp_stop(isp);
-		rkisp1_csi_stop(&rkisp1->csi);
 		goto mutex_unlock;
 	}
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
