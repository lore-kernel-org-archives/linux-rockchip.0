Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3927C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrPHbi8dnaR69tOtcTarcJTy5qeUbMY1QX0DralYJdU=; b=HafD3PMxio0e9g
	to5jTeas2bSJp62joOMIQyJOGqSYUFO8w1RfCsOSaqb3V2Fo3mYgMJeHM9mm0Qqou38TfYkRxe8bk
	xZ6uuXLn9+EhiBxIfwVUrveLIz2IvlE2VtRSsToPEacUtO7mrIWRsnEOvBrJUv4YJbB0/7UNbJoWO
	WBog1QMBgI7lz4BnCAXE+D995/68QYi96Ikcew1YP+w05Fciofgdcvzh/78GCc3XNHmp+mk9Qjp+8
	xsPv3wrhHQ7AQdzaOxLhHB+izMMTJNnNWqOGca9zdPJphlk/Mfh71saxiTGN5yAQFkWVctK4vpX5g
	htg1eClv4Z0ZWbef0yVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAszh-001h7D-7m; Mon, 11 Jul 2022 12:58:33 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslM-001YJu-Vg
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:47 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1C3AD271F;
	Mon, 11 Jul 2022 14:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543423;
	bh=s/wS9dU4q25Tf96ydcprk7i/r+toXRGqefc63x1MSiM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TO/32WW3IZkJcH/kyaYO7dEpoVbXjn2RKvsrTpfMzG3QamGyZ0Grvfg0j2NPjmdjY
	 j7Fbef61kmVOvzvp3daGvJ5t0YcAThFaonMdLhFkJA5YAjz0846xvSf1aapIgsPt3w
	 qZb78HzWgDSjdhRi1VCZV/rs2UBtj1vM2pLVREis=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 39/46] media: rkisp1: csi: Implement a V4L2 subdev for the CSI receiver
Date: Mon, 11 Jul 2022 15:42:41 +0300
Message-Id: <20220711124248.2683-40-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054345_377607_985E98F4 
X-CRM114-Status: GOOD (  27.95  )
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

The CSI receiver is a component separate from the ISP or the resizers.
It is actually optional, not all device model include a CSI receiver. On
some SoCs CSI-2 support can be provided through an external CSI-2
receiver, connected to the ISP's parallel input.

To support those use cases, create a V4L2 subdev to model the CSI
receiver. It will allow the driver to handle both internal and external
CSI receivers the same way.

The next commit will plumb the CSI subdev to the rest of the driver,
replacing direct function calls.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v2:

- Store source subdev instead of asd in rkisp1_csi
- Store sink format info in rkisp1_csi and use it instead of
  isp->sink_fmt
- Fix v4l2-compliance failures with rkisp1_csi_enum_mbus_code()
- Handle source s_stream errors
- Fix s/IS_ERR/PTR_ERR/
- Drop forward declaration of struct v4l2_subdev in rkisp1-csi.h
- Add lockdep assertion
- Rename ops_lock to lock

Changes since v1:

- Rename RKISP1_CSI_PAD_MAX to RKISP1_CSI_PAD_NUM
- Simplify format propagation
- Fix usage of uninitialized variables
- White space fixes
---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  19 ++
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 306 +++++++++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-csi.h     |   3 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |   5 +
 4 files changed, 329 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 5301461d3ea3..3465d35cf102 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -68,6 +68,13 @@ enum rkisp1_rsz_pad {
 	RKISP1_RSZ_PAD_MAX
 };
 
+/* enum for the csi receiver pads */
+enum rkisp1_csi_pad {
+	RKISP1_CSI_PAD_SINK,
+	RKISP1_CSI_PAD_SRC,
+	RKISP1_CSI_PAD_NUM
+};
+
 /* enum for the capture id */
 enum rkisp1_stream_id {
 	RKISP1_MAINPATH,
@@ -141,11 +148,23 @@ struct rkisp1_sensor_async {
  * @rkisp1: pointer to the rkisp1 device
  * @dphy: a pointer to the phy
  * @is_dphy_errctrl_disabled: if dphy errctrl is disabled (avoid endless interrupt)
+ * @sd: v4l2_subdev variable
+ * @pads: media pads
+ * @pad_cfg: configurations for the pads
+ * @sink_fmt: input format
+ * @lock: protects pad_cfg and sink_fmt
+ * @source: source in-use, set when starting streaming
  */
 struct rkisp1_csi {
 	struct rkisp1_device *rkisp1;
 	struct phy *dphy;
 	bool is_dphy_errctrl_disabled;
+	struct v4l2_subdev sd;
+	struct media_pad pads[RKISP1_CSI_PAD_NUM];
+	struct v4l2_subdev_pad_config pad_cfg[RKISP1_CSI_PAD_NUM];
+	const struct rkisp1_mbus_info *sink_fmt;
+	struct mutex lock;
+	struct v4l2_subdev *source;
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 81849c8e9c73..0c90f76ba9b3 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -11,19 +11,46 @@
 
 #include <linux/delay.h>
 #include <linux/device.h>
+#include <linux/lockdep.h>
 #include <linux/phy/phy.h>
 #include <linux/phy/phy-mipi-dphy.h>
 
 #include <media/v4l2-ctrls.h>
+#include <media/v4l2-fwnode.h>
 
 #include "rkisp1-common.h"
 #include "rkisp1-csi.h"
 
+#define RKISP1_CSI_DEV_NAME	RKISP1_DRIVER_NAME "_csi"
+
+#define RKISP1_CSI_DEF_FMT	MEDIA_BUS_FMT_SRGGB10_1X10
+
+static inline struct rkisp1_csi *to_rkisp1_csi(struct v4l2_subdev *sd)
+{
+	return container_of(sd, struct rkisp1_csi, sd);
+}
+
+static struct v4l2_mbus_framefmt *
+rkisp1_csi_get_pad_fmt(struct rkisp1_csi *csi,
+		       struct v4l2_subdev_state *sd_state,
+		       unsigned int pad, u32 which)
+{
+	struct v4l2_subdev_state state = {
+		.pads = csi->pad_cfg
+	};
+
+	lockdep_assert_held(&csi->lock);
+
+	if (which == V4L2_SUBDEV_FORMAT_TRY)
+		return v4l2_subdev_get_try_format(&csi->sd, sd_state, pad);
+	else
+		return v4l2_subdev_get_try_format(&csi->sd, &state, pad);
+}
+
 static int rkisp1_csi_config(struct rkisp1_csi *csi,
 			     const struct rkisp1_sensor_async *sensor)
 {
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
-	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
 	unsigned int lanes = sensor->lanes;
 	u32 mipi_ctrl;
 
@@ -43,7 +70,7 @@ static int rkisp1_csi_config(struct rkisp1_csi *csi,
 
 	/* Configure Data Type and Virtual Channel */
 	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_IMG_DATA_SEL,
-		     RKISP1_CIF_MIPI_DATA_SEL_DT(sink_fmt->mipi_dt) |
+		     RKISP1_CIF_MIPI_DATA_SEL_DT(csi->sink_fmt->mipi_dt) |
 		     RKISP1_CIF_MIPI_DATA_SEL_VC(0));
 
 	/* Clear MIPI interrupts */
@@ -114,8 +141,7 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
 		return -EINVAL;
 	}
 
-	phy_mipi_dphy_get_default_config(pixel_clock,
-					 rkisp1->isp.sink_fmt->bus_width,
+	phy_mipi_dphy_get_default_config(pixel_clock, csi->sink_fmt->bus_width,
 					 sensor->lanes, cfg);
 	phy_set_mode(csi->dphy, PHY_MODE_MIPI_DPHY);
 	phy_configure(csi->dphy, &opts);
@@ -186,6 +212,278 @@ irqreturn_t rkisp1_csi_isr(int irq, void *ctx)
 	return IRQ_HANDLED;
 }
 
+/* ----------------------------------------------------------------------------
+ * Subdev pad operations
+ */
+
+static int rkisp1_csi_enum_mbus_code(struct v4l2_subdev *sd,
+				     struct v4l2_subdev_state *sd_state,
+				     struct v4l2_subdev_mbus_code_enum *code)
+{
+	struct rkisp1_csi *csi = to_rkisp1_csi(sd);
+	unsigned int i;
+	int pos = 0;
+
+	if (code->pad == RKISP1_CSI_PAD_SRC) {
+		const struct v4l2_mbus_framefmt *sink_fmt;
+
+		if (code->index)
+			return -EINVAL;
+
+		mutex_lock(&csi->lock);
+
+		sink_fmt = rkisp1_csi_get_pad_fmt(csi, sd_state,
+						  RKISP1_CSI_PAD_SINK,
+						  code->which);
+		code->code = sink_fmt->code;
+
+		mutex_unlock(&csi->lock);
+
+		return 0;
+	}
+
+	for (i = 0; ; i++) {
+		const struct rkisp1_mbus_info *fmt =
+			rkisp1_mbus_info_get_by_index(i);
+
+		if (!fmt)
+			return -EINVAL;
+
+		if (!(fmt->direction & RKISP1_ISP_SD_SINK))
+			continue;
+
+		if (code->index == pos) {
+			code->code = fmt->mbus_code;
+			return 0;
+		}
+
+		pos++;
+	}
+
+	return -EINVAL;
+}
+
+static int rkisp1_csi_init_config(struct v4l2_subdev *sd,
+				  struct v4l2_subdev_state *sd_state)
+{
+	struct v4l2_mbus_framefmt *sink_fmt, *src_fmt;
+
+	sink_fmt = v4l2_subdev_get_try_format(sd, sd_state,
+					      RKISP1_CSI_PAD_SINK);
+	src_fmt = v4l2_subdev_get_try_format(sd, sd_state,
+					     RKISP1_CSI_PAD_SRC);
+
+	sink_fmt->width = RKISP1_DEFAULT_WIDTH;
+	sink_fmt->height = RKISP1_DEFAULT_HEIGHT;
+	sink_fmt->field = V4L2_FIELD_NONE;
+	sink_fmt->code = RKISP1_CSI_DEF_FMT;
+
+	*src_fmt = *sink_fmt;
+
+	return 0;
+}
+
+static int rkisp1_csi_get_fmt(struct v4l2_subdev *sd,
+			      struct v4l2_subdev_state *sd_state,
+			      struct v4l2_subdev_format *fmt)
+{
+	struct rkisp1_csi *csi = to_rkisp1_csi(sd);
+
+	mutex_lock(&csi->lock);
+	fmt->format = *rkisp1_csi_get_pad_fmt(csi, sd_state, fmt->pad,
+					      fmt->which);
+	mutex_unlock(&csi->lock);
+
+	return 0;
+}
+
+static int rkisp1_csi_set_fmt(struct v4l2_subdev *sd,
+			      struct v4l2_subdev_state *sd_state,
+			      struct v4l2_subdev_format *fmt)
+{
+	struct rkisp1_csi *csi = to_rkisp1_csi(sd);
+	const struct rkisp1_mbus_info *mbus_info;
+	struct v4l2_mbus_framefmt *sink_fmt, *src_fmt;
+
+	/* The format on the source pad always matches the sink pad. */
+	if (fmt->pad == RKISP1_CSI_PAD_SRC)
+		return rkisp1_csi_get_fmt(sd, sd_state, fmt);
+
+	mutex_lock(&csi->lock);
+
+	sink_fmt = rkisp1_csi_get_pad_fmt(csi, sd_state, RKISP1_CSI_PAD_SINK,
+					  fmt->which);
+
+	sink_fmt->code = fmt->format.code;
+
+	mbus_info = rkisp1_mbus_info_get_by_code(sink_fmt->code);
+	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SINK)) {
+		sink_fmt->code = RKISP1_CSI_DEF_FMT;
+		mbus_info = rkisp1_mbus_info_get_by_code(sink_fmt->code);
+	}
+
+	sink_fmt->width = clamp_t(u32, fmt->format.width,
+				  RKISP1_ISP_MIN_WIDTH,
+				  RKISP1_ISP_MAX_WIDTH);
+	sink_fmt->height = clamp_t(u32, fmt->format.height,
+				   RKISP1_ISP_MIN_HEIGHT,
+				   RKISP1_ISP_MAX_HEIGHT);
+
+	fmt->format = *sink_fmt;
+
+	if (fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		csi->sink_fmt = mbus_info;
+
+	/* Propagate the format to the source pad. */
+	src_fmt = rkisp1_csi_get_pad_fmt(csi, sd_state, RKISP1_CSI_PAD_SRC,
+					 fmt->which);
+	*src_fmt = *sink_fmt;
+
+	mutex_unlock(&csi->lock);
+
+	return 0;
+}
+
+/* ----------------------------------------------------------------------------
+ * Subdev video operations
+ */
+
+static int rkisp1_csi_s_stream(struct v4l2_subdev *sd, int enable)
+{
+	struct rkisp1_csi *csi = to_rkisp1_csi(sd);
+	struct rkisp1_device *rkisp1 = csi->rkisp1;
+	struct rkisp1_sensor_async *source_asd;
+	struct media_pad *source_pad;
+	struct v4l2_subdev *source;
+	int ret;
+
+	if (!enable) {
+		v4l2_subdev_call(csi->source, video, s_stream, false);
+
+		rkisp1_csi_stop(csi);
+
+		return 0;
+	}
+
+	source_pad = media_entity_remote_source_pad_unique(&sd->entity);
+	if (IS_ERR(source_pad)) {
+		dev_dbg(rkisp1->dev, "Failed to get source for CSI: %ld\n",
+			PTR_ERR(source_pad));
+		return -EPIPE;
+	}
+
+	source = media_entity_to_v4l2_subdev(source_pad->entity);
+	if (!source) {
+		/* This should really not happen, so is not worth a message. */
+		return -EPIPE;
+	}
+
+	source_asd = container_of(source->asd, struct rkisp1_sensor_async, asd);
+	if (source_asd->mbus_type != V4L2_MBUS_CSI2_DPHY)
+		return -EINVAL;
+
+	mutex_lock(&csi->lock);
+	ret = rkisp1_csi_start(csi, source_asd);
+	mutex_unlock(&csi->lock);
+	if (ret)
+		return ret;
+
+	ret = v4l2_subdev_call(source, video, s_stream, true);
+	if (ret) {
+		rkisp1_csi_stop(csi);
+		return ret;
+	}
+
+	csi->source = source;
+
+	return 0;
+}
+
+/* ----------------------------------------------------------------------------
+ * Registration
+ */
+
+static const struct media_entity_operations rkisp1_csi_media_ops = {
+	.link_validate = v4l2_subdev_link_validate,
+};
+
+static const struct v4l2_subdev_video_ops rkisp1_csi_video_ops = {
+	.s_stream = rkisp1_csi_s_stream,
+};
+
+static const struct v4l2_subdev_pad_ops rkisp1_csi_pad_ops = {
+	.enum_mbus_code = rkisp1_csi_enum_mbus_code,
+	.init_cfg = rkisp1_csi_init_config,
+	.get_fmt = rkisp1_csi_get_fmt,
+	.set_fmt = rkisp1_csi_set_fmt,
+};
+
+static const struct v4l2_subdev_ops rkisp1_csi_ops = {
+	.video = &rkisp1_csi_video_ops,
+	.pad = &rkisp1_csi_pad_ops,
+};
+
+int rkisp1_csi_register(struct rkisp1_device *rkisp1)
+{
+	struct rkisp1_csi *csi = &rkisp1->csi;
+	struct v4l2_subdev_state state = {};
+	struct media_pad *pads;
+	struct v4l2_subdev *sd;
+	int ret;
+
+	csi->rkisp1 = rkisp1;
+	mutex_init(&csi->lock);
+
+	sd = &csi->sd;
+	v4l2_subdev_init(sd, &rkisp1_csi_ops);
+	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
+	sd->entity.ops = &rkisp1_csi_media_ops;
+	sd->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
+	sd->owner = THIS_MODULE;
+	strscpy(sd->name, RKISP1_CSI_DEV_NAME, sizeof(sd->name));
+
+	pads = csi->pads;
+	pads[RKISP1_CSI_PAD_SINK].flags = MEDIA_PAD_FL_SINK |
+					  MEDIA_PAD_FL_MUST_CONNECT;
+	pads[RKISP1_CSI_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE |
+					 MEDIA_PAD_FL_MUST_CONNECT;
+
+	csi->sink_fmt = rkisp1_mbus_info_get_by_code(RKISP1_CSI_DEF_FMT);
+
+	ret = media_entity_pads_init(&sd->entity, RKISP1_CSI_PAD_NUM, pads);
+	if (ret)
+		goto error;
+
+	state.pads = csi->pad_cfg;
+	rkisp1_csi_init_config(sd, &state);
+
+	ret = v4l2_device_register_subdev(&csi->rkisp1->v4l2_dev, sd);
+	if (ret) {
+		dev_err(sd->dev, "Failed to register csi receiver subdev\n");
+		goto error;
+	}
+
+	return 0;
+
+error:
+	media_entity_cleanup(&sd->entity);
+	mutex_destroy(&csi->lock);
+	csi->rkisp1 = NULL;
+	return ret;
+}
+
+void rkisp1_csi_unregister(struct rkisp1_device *rkisp1)
+{
+	struct rkisp1_csi *csi = &rkisp1->csi;
+
+	if (!csi->rkisp1)
+		return;
+
+	v4l2_device_unregister_subdev(&csi->sd);
+	media_entity_cleanup(&csi->sd.entity);
+	mutex_destroy(&csi->lock);
+}
+
 int rkisp1_csi_init(struct rkisp1_device *rkisp1)
 {
 	struct rkisp1_csi *csi = &rkisp1->csi;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
index 96ac70bae595..f75babaac1cb 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h
@@ -18,6 +18,9 @@ struct rkisp1_sensor_async;
 int rkisp1_csi_init(struct rkisp1_device *rkisp1);
 void rkisp1_csi_cleanup(struct rkisp1_device *rkisp1);
 
+int rkisp1_csi_register(struct rkisp1_device *rkisp1);
+void rkisp1_csi_unregister(struct rkisp1_device *rkisp1);
+
 int rkisp1_csi_start(struct rkisp1_csi *csi,
 		     const struct rkisp1_sensor_async *sensor);
 void rkisp1_csi_stop(struct rkisp1_csi *csi);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 2c441665c017..5428e19e818f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -324,6 +324,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 
 static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
 {
+	rkisp1_csi_unregister(rkisp1);
 	rkisp1_params_unregister(rkisp1);
 	rkisp1_stats_unregister(rkisp1);
 	rkisp1_capture_devs_unregister(rkisp1);
@@ -355,6 +356,10 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 	if (ret)
 		goto error;
 
+	ret = rkisp1_csi_register(rkisp1);
+	if (ret)
+		goto error;
+
 	ret = rkisp1_create_links(rkisp1);
 	if (ret)
 		goto error;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
