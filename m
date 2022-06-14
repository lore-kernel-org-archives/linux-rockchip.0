Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9131CCCA47A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tmhe3apCsULA3aawwMKhD9PZeZzL2hw5vaaMliDhqbQ=; b=sWQ8Vl2eLkZHiz
	v5+hB2mDGWQQbyM0asNHNxRfiDBUh+RdKbK46b2e9HWxDkd4VKYMBtgkTqWpqgbveXFAQN+s9SgVO
	O8G6Z8zoewlhTyauo3pVpQUAnenYdNsT5rNaDKd+jZdhDnsV7GM/RafokdGCmaN1cqV4w1+32TXv+
	Nna9H+Zj2fU1qnAohxDnM6K8tEdBdvzQQjiSNTrVi7nhNR9gFB8ADP8qQULFhCmkfbhkytAUeLqLX
	DNARuOZgHu1q2Eppp9o392d+6BP9KwXcjCKmKaFIjpaVzOz8+yn1/bPxDORlGvQCKS5NyEGsEBmAu
	lJa1hmzixa2s1k9lp25w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzE-00AucQ-0y; Tue, 14 Jun 2022 19:14:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzA-00AuYW-QS
	for linux-rockchip@bombadil.infradead.org; Tue, 14 Jun 2022 19:13:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DhbigM9KB/3lH8Ex04x9SFgkYmJSCXBiZMwM8xZqMw0=; b=Y52DB+c73/yNbFHn8aDKA+e60I
	MCdTZAqqmlsae3dkshmOzjBHODPjjcWHMD6qFu/fR49fB4zg9LZ3Ak480kjGCpqd9ZeQsvsoVqnuf
	XV5IjfB9XPYYv0Os4v1OrfTnDnwXwiVmPwty/EowgNofcky+duBQ17NurN/naNSfHSwZCf36snSsI
	iYNvKNslZtMFbwR1dcbFji3QR3aFTS/uvcU9awEXdrGdsuKBxZCSVEHgs77cn7ZKCA3IFw06p6IoQ
	ZnEZa7iyrs72Om16lZSvLqsXGTKDG+2UryymQLNcUEvN5Bz+eYn3WGQNDECaX4VJKGu8W1Ioxmc7g
	Z0b51aTg==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byy-007wFk-Ds
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:54 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 76E259E5;
	Tue, 14 Jun 2022 21:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234017;
	bh=Eecg3Ahmdygu1oP8pI41z4Bd/FJGnoaSXWK5oiZILZ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Fjvsn82AbVPduS3k8p+Au1d7hLmlLtfD3AfJ70oWRJXwUajZ6yy+lBpqC3kD1hBw0
	 FyXoLsJ5DVagd3r0NBBZWd6Qb/PAtaBrFQ0k6tTEcx3I9yW7qQlNaKChJPt4jmpTjP
	 XtkzHGaJhK9EiRVqA+pDQTDsklRIT8SBkiY7Jh8c=
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
Subject: [PATCH 27/55] media: rkisp1: isp: Rename rkisp1_device.active_sensor to source
Date: Wed, 15 Jun 2022 04:10:59 +0900
Message-Id: <20220614191127.3420492-28-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_201344_822441_576EF568 
X-CRM114-Status: GOOD (  14.81  )
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

The active_sensor field of the rkisp1_device structure points to the ASD
data for the active source. The source may however not be a sensor, so
the naming is a bit confusing. Furthermore, the driver doesn't need to
access the full ASD from the active_sensor field, only the subdev
pointer is needed, when stopping streaming.

Rename the field to source, and turn it into a v4l2_subdev pointer.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  4 +--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 27 +++++++++----------
 2 files changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index dbf1baca623a..7a6f55a31bb0 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -419,7 +419,7 @@ struct rkisp1_debug {
  * @v4l2_dev:	   v4l2_device variable
  * @media_dev:	   media_device variable
  * @notifier:	   a notifier to register on the v4l2-async API to be notified on the sensor
- * @active_sensor: sensor in-use, set when streaming on
+ * @source:        source subdev in-use, set when starting streaming
  * @csi:	   internal CSI-2 receiver
  * @isp:	   ISP sub-device
  * @resizer_devs:  resizer sub-devices
@@ -439,7 +439,7 @@ struct rkisp1_device {
 	struct v4l2_device v4l2_dev;
 	struct media_device media_dev;
 	struct v4l2_async_notifier notifier;
-	struct rkisp1_sensor_async *active_sensor;
+	struct v4l2_subdev *source;
 	struct rkisp1_csi csi;
 	struct rkisp1_isp isp;
 	struct rkisp1_resizer resizer_devs[2];
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index f6d1c93dd99d..4f12fc0b7694 100644
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
