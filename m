Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89617C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZS5DEJTk9iN89dDk47672+lhwjp30ThEH5/N9ab2XA=; b=1/ktppjAyM8jww
	xB7jN+9iwZn1pErSVssap2FdAbtTnq+8OZ/PJwXVI9YmtkFNGbNAmV4s+qO56L9m+lDHYuWSDh4Yx
	N2fMq1MiFqgl4JlKOg6QHfV3gzkfNSEw12JZAlsSFjvm3o9LkfDxOlriMFlZxnBCkQ1oKGOlAmCf/
	xTMf0YBNja24amc3LQHTx7Izy+2thTvkn8H2ISSyTIOi5HZXhKEEZ9DSu8f12O+3OpCfGhE/OtWcS
	ULwoEDFOejwH6ytixgAPPUeOnEYs0XuyBYbTlXAkFtqHQGA2y7PWuQgjRcMnXUfdN+zrQKCQHIPwj
	JTyJlxvBmesgJAf36JXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KK-0028TJ-Kz; Fri, 01 Jul 2022 00:16:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GP-0020Ja-7N
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:08 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4C72129C2;
	Fri,  1 Jul 2022 01:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630475;
	bh=9iYJDYOcoybSSWilvt8kFrCDq+BQruA7N6Nbnxahh6M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iEzT1XnvA//fviNoRtt5AZC5biBmNWNgLN5qYJdo6MyYPFutJgos4cnTJCsoK7ZK6
	 gxP3lSfrhdZBkCb+BOA0gi3U5fYjIKtXshMGR3ckkb1+H1puJDmjsdX3s6uNLzvSw6
	 ozZtmfMxzP96y4456p6W5+zycYcUJL8XFM+jfY+Q=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 28/55] media: rkisp1: isp: Rename rkisp1_device.active_sensor to source
Date: Fri,  1 Jul 2022 02:06:46 +0300
Message-Id: <20220630230713.10580-29-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160757_460842_CF7A5BA5 
X-CRM114-Status: GOOD (  15.08  )
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

The active_sensor field of the rkisp1_device structure points to the ASD
data for the active source. The source may however not be a sensor, so
the naming is a bit confusing. Furthermore, the driver doesn't need to
access the full ASD from the active_sensor field, only the subdev
pointer is needed, when stopping streaming.

Rename the field to source, and turn it into a v4l2_subdev pointer.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  4 +--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 27 +++++++++----------
 2 files changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index d07c5c8e5b0d..ee9e724f4bf2 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -410,7 +410,7 @@ struct rkisp1_debug {
  * @v4l2_dev:	   v4l2_device variable
  * @media_dev:	   media_device variable
  * @notifier:	   a notifier to register on the v4l2-async API to be notified on the sensor
- * @active_sensor: sensor in-use, set when streaming on
+ * @source:        source subdev in-use, set when starting streaming
  * @csi:	   internal CSI-2 receiver
  * @isp:	   ISP sub-device
  * @resizer_devs:  resizer sub-devices
@@ -430,7 +430,7 @@ struct rkisp1_device {
 	struct v4l2_device v4l2_dev;
 	struct media_device media_dev;
 	struct v4l2_async_notifier notifier;
-	struct rkisp1_sensor_async *active_sensor;
+	struct v4l2_subdev *source;
 	struct rkisp1_csi csi;
 	struct rkisp1_isp isp;
 	struct rkisp1_resizer resizer_devs[2];
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 501996fffca0..944b6ea11853 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -58,7 +58,7 @@
  * Helpers
  */
 
-static struct v4l2_subdev *rkisp1_get_remote_sensor(struct v4l2_subdev *sd)
+static struct v4l2_subdev *rkisp1_get_remote_source(struct v4l2_subdev *sd)
 {
 	struct media_pad *local, *remote;
 	struct media_entity *sensor_me;
@@ -749,12 +749,11 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	struct rkisp1_device *rkisp1 =
 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
 	struct rkisp1_isp *isp = &rkisp1->isp;
-	struct v4l2_subdev *sensor_sd;
+	struct rkisp1_sensor_async *asd;
 	int ret;
 
 	if (!enable) {
-		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
-				 false);
+		v4l2_subdev_call(rkisp1->source, video, s_stream, false);
 
 		rkisp1_csi_stop(&rkisp1->csi);
 		rkisp1_isp_stop(rkisp1);
@@ -762,35 +761,33 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		return 0;
 	}
 
-	sensor_sd = rkisp1_get_remote_sensor(sd);
-	if (!sensor_sd) {
-		dev_warn(rkisp1->dev, "No link between isp and sensor\n");
+	rkisp1->source = rkisp1_get_remote_source(sd);
+	if (!rkisp1->source) {
+		dev_warn(rkisp1->dev, "No link between isp and source\n");
 		return -ENODEV;
 	}
 
-	rkisp1->active_sensor = container_of(sensor_sd->asd,
-					     struct rkisp1_sensor_async, asd);
+	asd = container_of(rkisp1->source->asd, struct rkisp1_sensor_async,
+			   asd);
 
-	if (rkisp1->active_sensor->mbus_type != V4L2_MBUS_CSI2_DPHY)
+	if (asd->mbus_type != V4L2_MBUS_CSI2_DPHY)
 		return -EINVAL;
 
 	rkisp1->isp.frame_sequence = -1;
 	mutex_lock(&isp->ops_lock);
-	ret = rkisp1_config_cif(rkisp1, rkisp1->active_sensor->mbus_type,
-				rkisp1->active_sensor->mbus_flags);
+	ret = rkisp1_config_cif(rkisp1, asd->mbus_type, asd->mbus_flags);
 	if (ret)
 		goto mutex_unlock;
 
 	rkisp1_isp_start(rkisp1);
 
-	ret = rkisp1_csi_start(&rkisp1->csi, rkisp1->active_sensor);
+	ret = rkisp1_csi_start(&rkisp1->csi, asd);
 	if (ret) {
 		rkisp1_isp_stop(rkisp1);
 		goto mutex_unlock;
 	}
 
-	ret = v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
-			       true);
+	ret = v4l2_subdev_call(rkisp1->source, video, s_stream, true);
 	if (ret) {
 		rkisp1_isp_stop(rkisp1);
 		rkisp1_csi_stop(&rkisp1->csi);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
