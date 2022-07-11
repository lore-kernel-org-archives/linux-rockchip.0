Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 100CAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+aQRa+3HPQjITgHA87RYPbT2lTrLMOONR5Gl2+B4RY=; b=BB+fdyvpSYvu/e
	tN5T/BPwTjliV8HXb4VGtsnySUAaAIuxUqqLBX0ootSB0Tc0vtCev42ye1qs9HYW7UlrklkKWwFNV
	56BI6U41YbH3CtF6urxVhfuFep03tJWmce5QVBwVxk47uQ+teiXbJhYYV+MiR9Km/1fV0/4R6rkNE
	NAzBmJzQ2zTvxvUwXdve6rjXnXm5uD1zI6D3yX5Dk+RSVI1qf+rJWQ/zS3tHhPI7CkHqCN+onRlFt
	EXX3HNKtM+A0UVJsHKcoEcKJulyOGPeIq0g8i49RBz0FFVd4jIdH5ngzvMmRdcRFiYQjWdaVZl8CU
	I1+oF64h0EhExzPGcN1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAszv-001hNd-I3; Mon, 11 Jul 2022 12:58:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslP-001YM5-Nm
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:50 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 94F3B307A;
	Mon, 11 Jul 2022 14:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543426;
	bh=erkWmAuQUBnC7XZagyJcRVUQFMV+/NXHdyLNpVICqhM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=s+S9uk/CjuooN4K8NQkivVF5Sg9gB06X2bW1BwylzYjMKJ0/6JRVVkRdTegxP1TBT
	 A3hQrrn7zaBJmdRILWbfafvd5AVg1wl+RwKGg61BPsGw9jWZKN848vSq3MT/9odu4d
	 u/3pnlSk+TxtTRTYQdoO23lZNUwEuZzXv8XO8vyE=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 43/46] media: rkisp1: Support the ISP parallel input
Date: Mon, 11 Jul 2022 15:42:45 +0300
Message-Id: <20220711124248.2683-44-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054347_993350_DF0166DC 
X-CRM114-Status: GOOD (  20.80  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

The ISP has a parallel input, exposed through port 1 in the device tree
node. While the driver supports configuring the ISP for the parallel and
BT.656 input modes, the DT parsing code, the subdev bound handler and
the ISP stream start handler only support the CSI input. Extend them to
support the parallel input.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  2 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 68 ++++++++++++++++---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 18 ++++-
 3 files changed, 77 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 3465d35cf102..6e5db7f7b647 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -130,6 +130,7 @@ struct rkisp1_info {
  * @mbus_flags:		media bus (V4L2_MBUS_*) flags
  * @sd:			a pointer to v4l2_subdev struct of the sensor
  * @pixel_rate_ctrl:	pixel rate of the sensor, used to initialize the phy
+ * @port:		port number (0: MIPI, 1: Parallel)
  */
 struct rkisp1_sensor_async {
 	struct v4l2_async_subdev asd;
@@ -140,6 +141,7 @@ struct rkisp1_sensor_async {
 	unsigned int mbus_flags;
 	struct v4l2_subdev *sd;
 	struct v4l2_ctrl *pixel_rate_ctrl;
+	unsigned int port;
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 0eb37ba557ce..1dcade2fd2a7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -129,6 +129,7 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 	struct rkisp1_sensor_async *s_asd =
 		container_of(asd, struct rkisp1_sensor_async, asd);
 	int source_pad;
+	int ret;
 
 	s_asd->sd = sd;
 
@@ -140,7 +141,20 @@ static int rkisp1_subdev_notifier_bound(struct v4l2_async_notifier *notifier,
 		return source_pad;
 	}
 
-	return rkisp1_csi_link_sensor(rkisp1, sd, s_asd, source_pad);
+	if (s_asd->port == 0)
+		return rkisp1_csi_link_sensor(rkisp1, sd, s_asd, source_pad);
+
+	ret = media_create_pad_link(&sd->entity, source_pad,
+				    &rkisp1->isp.sd.entity,
+				    RKISP1_ISP_PAD_SINK_VIDEO,
+				    !s_asd->index ? MEDIA_LNK_FL_ENABLED : 0);
+	if (ret) {
+		dev_err(rkisp1->dev, "failed to link source pad of %s\n",
+			sd->name);
+		return ret;
+	}
+
+	return 0;
 }
 
 static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
@@ -178,12 +192,33 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 	ntf->ops = &rkisp1_subdev_notifier_ops;
 
 	fwnode_graph_for_each_endpoint(fwnode, ep) {
-		struct v4l2_fwnode_endpoint vep = {
-			.bus_type = V4L2_MBUS_CSI2_DPHY
-		};
+		struct fwnode_handle *port;
+		struct v4l2_fwnode_endpoint vep = { };
 		struct rkisp1_sensor_async *rk_asd;
 		struct fwnode_handle *source;
+		u32 reg = 0;
 
+		/* Select the bus type based on the port. */
+		port = fwnode_get_parent(ep);
+		fwnode_property_read_u32(port, "reg", &reg);
+		fwnode_handle_put(port);
+
+		switch (reg) {
+		case 0:
+			vep.bus_type = V4L2_MBUS_CSI2_DPHY;
+			break;
+
+		case 1:
+			/*
+			 * Parallel port. The bus-type property in DT is
+			 * mandatory for port 1, it will be used to determine if
+			 * it's PARALLEL or BT656.
+			 */
+			vep.bus_type = V4L2_MBUS_UNKNOWN;
+			break;
+		}
+
+		/* Parse the endpoint and validate the bus type. */
 		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
 		if (ret) {
 			dev_err(rkisp1->dev, "failed to parse endpoint %pfw\n",
@@ -191,6 +226,17 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 			break;
 		}
 
+		if (vep.base.port == 1) {
+			if (vep.bus_type != V4L2_MBUS_PARALLEL &&
+			    vep.bus_type != V4L2_MBUS_BT656) {
+				dev_err(rkisp1->dev,
+					"port 1 must be parallel or BT656\n");
+				ret = -EINVAL;
+				break;
+			}
+		}
+
+		/* Add the async subdev to the notifier. */
 		source = fwnode_graph_get_remote_endpoint(ep);
 		if (!source) {
 			dev_err(rkisp1->dev,
@@ -211,11 +257,17 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
 		rk_asd->index = index++;
 		rk_asd->source_ep = source;
 		rk_asd->mbus_type = vep.bus_type;
-		rk_asd->mbus_flags = vep.bus.mipi_csi2.flags;
-		rk_asd->lanes = vep.bus.mipi_csi2.num_data_lanes;
+		rk_asd->port = vep.base.port;
 
-		dev_dbg(rkisp1->dev, "registered ep id %d with %d lanes\n",
-			vep.base.id, rk_asd->lanes);
+		if (vep.bus_type == V4L2_MBUS_CSI2_DPHY) {
+			rk_asd->mbus_flags = vep.bus.mipi_csi2.flags;
+			rk_asd->lanes = vep.bus.mipi_csi2.num_data_lanes;
+		} else {
+			rk_asd->mbus_flags = vep.bus.parallel.flags;
+		}
+
+		dev_dbg(rkisp1->dev, "registered ep id %d, bus type %u, %u lanes\n",
+			vep.base.id, rk_asd->mbus_type, rk_asd->lanes);
 	}
 
 	if (ret) {
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index ea0bbccb5aee..383a3ec83ca9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -729,6 +729,8 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	struct media_pad *source_pad;
 	struct media_pad *sink_pad;
+	enum v4l2_mbus_type mbus_type;
+	u32 mbus_flags;
 	int ret;
 
 	if (!enable) {
@@ -751,12 +753,22 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		return -EPIPE;
 	}
 
-	if (rkisp1->source != &rkisp1->csi.sd)
-		return -EPIPE;
+	if (rkisp1->source == &rkisp1->csi.sd) {
+		mbus_type = V4L2_MBUS_CSI2_DPHY;
+		mbus_flags = 0;
+	} else {
+		const struct rkisp1_sensor_async *asd;
+
+		asd = container_of(rkisp1->source->asd,
+				   struct rkisp1_sensor_async, asd);
+
+		mbus_type = asd->mbus_type;
+		mbus_flags = asd->mbus_flags;
+	}
 
 	isp->frame_sequence = -1;
 	mutex_lock(&isp->ops_lock);
-	ret = rkisp1_config_cif(isp, V4L2_MBUS_CSI2_DPHY, 0);
+	ret = rkisp1_config_cif(isp, mbus_type, mbus_flags);
 	if (ret)
 		goto mutex_unlock;
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
