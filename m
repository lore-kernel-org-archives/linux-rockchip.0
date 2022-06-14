Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35FEFC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ga9Fv//7FZeD6xow1sUkrJmE5z73IWq14VjC2cL52c=; b=JgRviCsJ5HWjTc
	JnQRU2OWaydpAC8n7BdbjKZiQNUwTI7XKRbfG64orDlORENttDVGk8+eD3KMI5cW6mbGq6cAfawu3
	iGHTXkQvliGl8UU0yqSa6JwKL+N1UQ/G6liZS43bOhP4pkz29LqqiNu3SnQjzRvtYmrTmhwQ+6NIt
	1IIWia7V/pBKmzvU37ds7vD0FDwhBnnlqwo1ygwtFPE4EWDmpjAbivyToQtFiGMGhpJC4UJgiZgRk
	Jj3r20NHX85R1WhmecYr41eOcb1Eqtm2wucraZdTjVbhSgT1JQiaVtKvbsHoSEn1BHNgUmbiDsMhH
	QydgRX4KXr8aGOEW21PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bz4-00AuSA-Qu; Tue, 14 Jun 2022 19:13:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byp-00Au8Q-IS
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:44 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 54A8D825;
	Tue, 14 Jun 2022 21:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234013;
	bh=tZdsTEOzZ0A5HJGR1F3OoUPE4i5dFnHw09rTYGtqYNY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H3o3JQ6onfS3TdxMjM53jlS9xIRc2tJEMvBYdiAsB86sVSvE8Rl6DUBM6ba1Ifu3r
	 YzrzMK7aXr8v9+k0InuJmFEJ9VDBgGlqFKHAfJ6R2cXOn8ZvWiYeD5yLd6eua02IyB
	 8ruz/fc7n2x/F0a/Dj5dqw1uu4LRi6GqQun9TiBY=
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
Subject: [PATCH 26/55] media: rkisp1: isp: Pass mbus type and flags to rkisp1_config_cif()
Date: Wed, 15 Jun 2022 04:10:58 +0900
Message-Id: <20220614191127.3420492-27-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121335_818750_CCCE51EC 
X-CRM114-Status: GOOD (  11.54  )
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

To prepare for the removal of the active_sensor field from the
rkisp1_device structure, pass the media bus type of flag to the
rkisp1_config_cif() function instead of accessing them through
active_sensor.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index a234cf29ec67..f6d1c93dd99d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -136,15 +136,14 @@ static void rkisp1_config_ism(struct rkisp1_device *rkisp1)
 /*
  * configure ISP blocks with input format, size......
  */
-static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
+static int rkisp1_config_isp(struct rkisp1_device *rkisp1,
+			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
 {
 	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0;
 	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
-	struct rkisp1_sensor_async *sensor;
 	struct v4l2_mbus_framefmt *sink_frm;
 	struct v4l2_rect *sink_crop;
 
-	sensor = rkisp1->active_sensor;
 	sink_fmt = rkisp1->isp.sink_fmt;
 	src_fmt = rkisp1->isp.src_fmt;
 	sink_frm = rkisp1_isp_get_pad_fmt(&rkisp1->isp, NULL,
@@ -157,7 +156,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 	if (sink_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 		acq_mult = 1;
 		if (src_fmt->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
-			if (sensor->mbus_type == V4L2_MBUS_BT656)
+			if (mbus_type == V4L2_MBUS_BT656)
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_RAW_PICT_ITU656;
 			else
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_RAW_PICT;
@@ -165,17 +164,17 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 			rkisp1_write(rkisp1, RKISP1_CIF_ISP_DEMOSAIC,
 				     RKISP1_CIF_ISP_DEMOSAIC_TH(0xc));
 
-			if (sensor->mbus_type == V4L2_MBUS_BT656)
+			if (mbus_type == V4L2_MBUS_BT656)
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_BAYER_ITU656;
 			else
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_BAYER_ITU601;
 		}
 	} else if (sink_fmt->pixel_enc == V4L2_PIXEL_ENC_YUV) {
 		acq_mult = 2;
-		if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY) {
+		if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
 			isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU601;
 		} else {
-			if (sensor->mbus_type == V4L2_MBUS_BT656)
+			if (mbus_type == V4L2_MBUS_BT656)
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU656;
 			else
 				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU601;
@@ -185,17 +184,16 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
 	}
 
 	/* Set up input acquisition properties */
-	if (sensor->mbus_type == V4L2_MBUS_BT656 ||
-	    sensor->mbus_type == V4L2_MBUS_PARALLEL) {
-		if (sensor->mbus_flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
+	if (mbus_type == V4L2_MBUS_BT656 || mbus_type == V4L2_MBUS_PARALLEL) {
+		if (mbus_flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
 			signal = RKISP1_CIF_ISP_ACQ_PROP_POS_EDGE;
 	}
 
-	if (sensor->mbus_type == V4L2_MBUS_PARALLEL) {
-		if (sensor->mbus_flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
+	if (mbus_type == V4L2_MBUS_PARALLEL) {
+		if (mbus_flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
 			signal |= RKISP1_CIF_ISP_ACQ_PROP_VSYNC_LOW;
 
-		if (sensor->mbus_flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
+		if (mbus_flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
 			signal |= RKISP1_CIF_ISP_ACQ_PROP_HSYNC_LOW;
 	}
 
@@ -265,17 +263,17 @@ static int rkisp1_config_dvp(struct rkisp1_device *rkisp1)
 }
 
 /* Configure MUX */
-static int rkisp1_config_path(struct rkisp1_device *rkisp1)
+static int rkisp1_config_path(struct rkisp1_device *rkisp1,
+			      enum v4l2_mbus_type mbus_type)
 {
-	struct rkisp1_sensor_async *sensor = rkisp1->active_sensor;
 	u32 dpcl = rkisp1_read(rkisp1, RKISP1_CIF_VI_DPCL);
 	int ret = 0;
 
-	if (sensor->mbus_type == V4L2_MBUS_BT656 ||
-	    sensor->mbus_type == V4L2_MBUS_PARALLEL) {
+	if (mbus_type == V4L2_MBUS_BT656 ||
+	    mbus_type == V4L2_MBUS_PARALLEL) {
 		ret = rkisp1_config_dvp(rkisp1);
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
-	} else if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY) {
+	} else if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
 	}
 
@@ -285,14 +283,15 @@ static int rkisp1_config_path(struct rkisp1_device *rkisp1)
 }
 
 /* Hardware configure Entry */
-static int rkisp1_config_cif(struct rkisp1_device *rkisp1)
+static int rkisp1_config_cif(struct rkisp1_device *rkisp1,
+			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
 {
 	int ret;
 
-	ret = rkisp1_config_isp(rkisp1);
+	ret = rkisp1_config_isp(rkisp1, mbus_type, mbus_flags);
 	if (ret)
 		return ret;
-	ret = rkisp1_config_path(rkisp1);
+	ret = rkisp1_config_path(rkisp1, mbus_type);
 	if (ret)
 		return ret;
 	rkisp1_config_ism(rkisp1);
@@ -777,7 +776,8 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 
 	rkisp1->isp.frame_sequence = -1;
 	mutex_lock(&isp->ops_lock);
-	ret = rkisp1_config_cif(rkisp1);
+	ret = rkisp1_config_cif(rkisp1, rkisp1->active_sensor->mbus_type,
+				rkisp1->active_sensor->mbus_flags);
 	if (ret)
 		goto mutex_unlock;
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
