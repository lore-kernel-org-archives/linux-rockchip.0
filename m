Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E1ACCCA480
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZyBQ8rof/G7IPn5+jyPSCxNp1bSb3vMRJwa2BHXOwY=; b=eNjdAUD+cvMQZ3
	L9IJxmOJ8Smlmmbas7L9jJkMC4j5M/pne+BQxUPnDUYhe7W/BBjZoPyXrN/7e0rkzMwR/x14mbK8v
	YFcVNonm7NjdaByq+mewEYLGQfkSMWogaV6DnXi2MOmzGJDQouFN5fYboK3lnRua9OJuyO0jjodLG
	2UY4rV2r3W4NAsQURdKZWgyovPBIHWzY+DMcYyd2YcG2b+Y4lveTkQacNwyX5n/I18fg4tJ1VvhqQ
	cBONkkGWfhlwGi8NqH/iS/4G/ScPZXIB59SjVEsyZyf99nuVyTJsSix6t9MyRwYBhtDPjVKruIrDh
	6Q4lX41FVxyexy8HLCdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KK-0028SW-2p; Fri, 01 Jul 2022 00:16:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GO-0020JM-Es
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:08 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A82A629BE;
	Fri,  1 Jul 2022 01:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630475;
	bh=RlK4exWAqaRYJVUJdirlFjjAHNRwMV6rEZlQMI1az98=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=py82ELKeqjE/G7EP+UQi2UCTE5Xym4jKOj6FpTmkK3sO2a9trMLXe9b2mpOhCfUlx
	 OtNueB/aqfcygOsDXY5aBZaFm+cZ1DL9ch8wLya0Wo/m8o347yz2/8t8rPQL6uNbvA
	 DEDLzse9zZ//iGBu69xDhUHCX1QbRSL8oxmhUtzw=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 27/55] media: rkisp1: isp: Pass mbus type and flags to rkisp1_config_cif()
Date: Fri,  1 Jul 2022 02:06:45 +0300
Message-Id: <20220630230713.10580-28-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160756_726897_D5509C7F 
X-CRM114-Status: GOOD (  12.11  )
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

To prepare for the removal of the active_sensor field from the
rkisp1_device structure, pass the media bus type of flag to the
rkisp1_config_cif() function instead of accessing them through
active_sensor.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index faf80197edbf..501996fffca0 100644
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
