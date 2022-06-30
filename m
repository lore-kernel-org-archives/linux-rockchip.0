Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45315CCA48C
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k5qEqlChcNHgyFLRtLmBgOx5WIy+a62ka8zsRZMYkWs=; b=EQ8BzsLoDrt85P
	N24F6Wi/tGZq14Ww8Qa93046GJVL52abWeEt9l/TmoLSPwJuCZkF17aQLjER6q1yzkCXudl4u10DJ
	bAfF8aySyw70noUzNH4fBTrR4o05FVXfHtpyM8IdIzZc7fNEW+vLg4CbdE27P5hf5cIDZAqLOfUFF
	l48gDp2+9xyDdU5vDb51xFFU6zmSOAYM+blV0/7MgzPU7WG81J3y+DGuQXgDL5k1HNIrbKq8vYmun
	bbuKJ/7iQZZ3iM7FIycrs37+LU8EnnOZ6MWNuAvGBpZVHv0aVgDhO41cVBsrzvWFVwVeTTYwFtHYd
	VcDawB013DVZo4ldW1dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gy-0020l3-Hz; Thu, 30 Jun 2022 23:08:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GW-0020R3-TL
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:18 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 16B0A2A4A;
	Fri,  1 Jul 2022 01:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630483;
	bh=PhQ8vvQ1crfvDFORquTMofqyl+ze8p+uEBxJ3XJvdoM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QSvCWlOxEGqtZBuWV0Br2zDsN9Kf8JolWy8o/k47EpiTFOe1RuCI8gBbiZu5KYLnP
	 eU/WEvPDua7dB427YDEIIdLrNFN99fRPFgVTKGDGSmZtKInxCN/iwEPjt65p/QzxOO
	 8joIJKZ8fhDkTRrQdLVhSCcJZ6H4+lum4Cbx09aU=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 40/55] media: rkisp1: csi: Plumb the CSI RX subdev
Date: Fri,  1 Jul 2022 02:06:58 +0300
Message-Id: <20220630230713.10580-41-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160805_128106_EA831D60 
X-CRM114-Status: GOOD (  21.89  )
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

Connect the CSI receiver subdevice between the sensors and the ISP. This
includes:

- Calling the subdevice via the v4l2 subdev API
- Moving the async notifier for the sensor from the ISP to the CSI
  receiver
- In the ISP, create a media link to the CSI receiver, and remove the
  media link creation to the sensor
- In the CSI receiver, create a media link to the sensor

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Clarify commit message
- Update the media device topology
- Fix white space
---
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 34 ++++++++-
 .../platform/rockchip/rkisp1/rkisp1-csi.h     |  6 +-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 70 ++++++++++---------
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 21 +-----
 4 files changed, 75 insertions(+), 56 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 173a0550af5c..6d904bbef424 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -44,6 +44,34 @@ rkisp1_csi_get_pad_fmt(struct rkisp1_csi *csi,
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
@@ -120,8 +148,8 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
 		     val & (~RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA));
 }
 
-int rkisp1_csi_start(struct rkisp1_csi *csi,
-		     const struct rkisp1_sensor_async *sensor)
+static int rkisp1_csi_start(struct rkisp1_csi *csi,
+			    const struct rkisp1_sensor_async *sensor)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	union phy_configure_opts opts;
@@ -157,7 +185,7 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
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
index 5428e19e818f..c3a7ab70bbef 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -17,6 +17,7 @@
 #include <linux/pinctrl/consumer.h>
 #include <linux/pm_runtime.h>
 #include <media/v4l2-fwnode.h>
+#include <media/v4l2-mc.h>
 
 #include "rkisp1-common.h"
 #include "rkisp1-csi.h"
@@ -67,18 +68,28 @@
  *
  * Media Topology
  * --------------
- *      +----------+     +----------+
- *      | Sensor 2 |     | Sensor X |
- *      ------------ ... ------------
- *      |    0     |     |    0     |
- *      +----------+     +----------+      +-----------+
- *                  \      |               |  params   |
- *                   \     |               | (output)  |
- *    +----------+    \    |               +-----------+
- *    | Sensor 1 |     v   v                     |
- *    ------------      +------+------+          |
- *    |    0     |----->|  0   |  1   |<---------+
- *    +----------+      |------+------|
+ *
+ *          +----------+       +----------+
+ *          | Sensor 1 |       | Sensor X |
+ *          ------------  ...  ------------
+ *          |    0     |       |    0     |
+ *          +----------+       +----------+
+ *               |                  |
+ *                \----\       /----/
+ *                     |       |
+ *                     v       v
+ *                  +-------------+
+ *                  |      0      |
+ *                  ---------------
+ *                  |  CSI-2 RX   |
+ *                  ---------------         +-----------+
+ *                  |      1      |         |  params   |
+ *                  +-------------+         | (output)  |
+ *                         |               +-----------+
+ *                         v                     |
+ *                      +------+------+          |
+ *                      |  0   |  1   |<---------+
+ *                      |------+------|
  *                      |     ISP     |
  *                      |------+------|
  *        +-------------|  2   |  3   |----------+
@@ -119,17 +130,8 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
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
@@ -138,10 +140,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 		return source_pad;
 	}
 
-	return media_create_pad_link(&sd->entity, source_pad,
-				     &rkisp1->isp.sd.entity,
-				     RKISP1_ISP_PAD_SINK_VIDEO,
-				     !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
+	return rkisp1_csi_link_sensor(rkisp1, sd, s_asd, source_pad);
 }
 
 static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
@@ -283,6 +282,14 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
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
@@ -364,13 +371,6 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
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
@@ -534,10 +534,16 @@ static int rkisp1_probe(struct platform_device *pdev)
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
index d7e2802d11f5..ea0bbccb5aee 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -16,7 +16,6 @@
 #include <media/v4l2-event.h>
 
 #include "rkisp1-common.h"
-#include "rkisp1-csi.h"
 
 #define RKISP1_DEF_SINK_PAD_FMT MEDIA_BUS_FMT_SRGGB10_1X10
 #define RKISP1_DEF_SRC_PAD_FMT MEDIA_BUS_FMT_YUYV8_2X8
@@ -728,17 +727,13 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 {
 	struct rkisp1_isp *isp = to_rkisp1_isp(sd);
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
-	const struct rkisp1_sensor_async *asd;
 	struct media_pad *source_pad;
 	struct media_pad *sink_pad;
 	int ret;
 
 	if (!enable) {
 		v4l2_subdev_call(rkisp1->source, video, s_stream, false);
-
-		rkisp1_csi_stop(&rkisp1->csi);
 		rkisp1_isp_stop(isp);
-
 		return 0;
 	}
 
@@ -756,30 +751,20 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
