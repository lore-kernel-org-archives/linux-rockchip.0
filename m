Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA1ECCA487
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3z3as0KXIOKYQN4V3pxs+y5ejJTAVZIZLJIev5eLag=; b=haNPQpX3Sx0ir8
	T+YhCd7h8uhZiD0+7bBw0HPmMhjltgCojAOtYxJNM/sTQC5+ez2+yi+si8GZzxR3C2jHjaMm/z9x1
	ICa6CVOFVO6fPd4kVxiR6hl+LL/WQovE/hQMQ6r+8eVwHCxQn6qYqWXt/kt/OzaZhMTqhpEiliRnU
	PMw1bGVMDyeHZniiF78IQ/kbASOQzd3qX7uUcsKscS5ywLeZX+hPYgxklIfBwR2f+EwnoPjjjd2KY
	Om4kud7QaQQXPoBWE9STZIIi4wSfkaWr0fjW0vAqxutLSF+5rG2MDy9FrCyCqoyd7cqzcC/FxMOzm
	RKHx6xyx8L9Xdn+U2jqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gv-0020hW-8B; Thu, 30 Jun 2022 23:08:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GR-0020Lk-1R
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:10 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3E0A8832;
	Fri,  1 Jul 2022 01:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630477;
	bh=tdBLf2BQH7PLu6tO4XCe5/G14bXqsTCua82lSsTN5js=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ky/hnvxiQJGuaRozYlgb/8+oydCewU9uB4cfyFwpD6MWdWaheKHn8xoM4X6VdZwvv
	 WA+CQU+7suA+u9eUGkNJbtP11aYTskb3K2A3DhYxqhHEKWTdlqDGAiFQ/G+381Wgvo
	 GBjJJMuF/6IevcnairC6WDEaVVbz0z0PJhlP8DFI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 31/55] media: rkisp1: isp: Pass rkisp1_isp pointer to internal ISP functions
Date: Fri,  1 Jul 2022 02:06:49 +0300
Message-Id: <20220630230713.10580-32-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160759_314793_E493159C 
X-CRM114-Status: GOOD (  13.43  )
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

Replace the rkisp1_device pointer argument to the internal functions of
the ISP implementation with a rkisp1_isp object. This makes the code
flow more logical, as the functions operate on the ISP object.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 60 +++++++++++--------
 1 file changed, 34 insertions(+), 26 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 3f9541fc4a2f..9b32ae585de8 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -109,12 +109,13 @@ rkisp1_isp_get_pad_crop(struct rkisp1_isp *isp,
  * This should only be called when configuring CIF
  * or at the frame end interrupt
  */
-static void rkisp1_config_ism(struct rkisp1_device *rkisp1)
+static void rkisp1_config_ism(struct rkisp1_isp *isp)
 {
 	struct v4l2_rect *src_crop =
-		rkisp1_isp_get_pad_crop(&rkisp1->isp, NULL,
+		rkisp1_isp_get_pad_crop(isp, NULL,
 					RKISP1_ISP_PAD_SOURCE_VIDEO,
 					V4L2_SUBDEV_FORMAT_ACTIVE);
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 val;
 
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IS_RECENTER, 0);
@@ -136,20 +137,21 @@ static void rkisp1_config_ism(struct rkisp1_device *rkisp1)
 /*
  * configure ISP blocks with input format, size......
  */
-static int rkisp1_config_isp(struct rkisp1_device *rkisp1,
+static int rkisp1_config_isp(struct rkisp1_isp *isp,
 			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
 {
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0;
 	const struct rkisp1_mbus_info *src_fmt, *sink_fmt;
 	struct v4l2_mbus_framefmt *sink_frm;
 	struct v4l2_rect *sink_crop;
 
-	sink_fmt = rkisp1->isp.sink_fmt;
-	src_fmt = rkisp1->isp.src_fmt;
-	sink_frm = rkisp1_isp_get_pad_fmt(&rkisp1->isp, NULL,
+	sink_fmt = isp->sink_fmt;
+	src_fmt = isp->src_fmt;
+	sink_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
 					  RKISP1_ISP_PAD_SINK_VIDEO,
 					  V4L2_SUBDEV_FORMAT_ACTIVE);
-	sink_crop = rkisp1_isp_get_pad_crop(&rkisp1->isp, NULL,
+	sink_crop = rkisp1_isp_get_pad_crop(isp, NULL,
 					    RKISP1_ISP_PAD_SINK_VIDEO,
 					    V4L2_SUBDEV_FORMAT_ACTIVE);
 
@@ -226,7 +228,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1,
 	} else {
 		struct v4l2_mbus_framefmt *src_frm;
 
-		src_frm = rkisp1_isp_get_pad_fmt(&rkisp1->isp, NULL,
+		src_frm = rkisp1_isp_get_pad_fmt(isp, NULL,
 						 RKISP1_ISP_PAD_SINK_VIDEO,
 						 V4L2_SUBDEV_FORMAT_ACTIVE);
 		rkisp1_params_configure(&rkisp1->params, sink_fmt->bayer_pat,
@@ -236,9 +238,10 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1,
 	return 0;
 }
 
-static int rkisp1_config_dvp(struct rkisp1_device *rkisp1)
+static int rkisp1_config_dvp(struct rkisp1_isp *isp)
 {
-	const struct rkisp1_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
+	const struct rkisp1_mbus_info *sink_fmt = isp->sink_fmt;
 	u32 val, input_sel;
 
 	switch (sink_fmt->bus_width) {
@@ -263,15 +266,16 @@ static int rkisp1_config_dvp(struct rkisp1_device *rkisp1)
 }
 
 /* Configure MUX */
-static int rkisp1_config_path(struct rkisp1_device *rkisp1,
+static int rkisp1_config_path(struct rkisp1_isp *isp,
 			      enum v4l2_mbus_type mbus_type)
 {
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 dpcl = rkisp1_read(rkisp1, RKISP1_CIF_VI_DPCL);
 	int ret = 0;
 
 	if (mbus_type == V4L2_MBUS_BT656 ||
 	    mbus_type == V4L2_MBUS_PARALLEL) {
-		ret = rkisp1_config_dvp(rkisp1);
+		ret = rkisp1_config_dvp(isp);
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
 	} else if (mbus_type == V4L2_MBUS_CSI2_DPHY) {
 		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
@@ -283,24 +287,25 @@ static int rkisp1_config_path(struct rkisp1_device *rkisp1,
 }
 
 /* Hardware configure Entry */
-static int rkisp1_config_cif(struct rkisp1_device *rkisp1,
+static int rkisp1_config_cif(struct rkisp1_isp *isp,
 			     enum v4l2_mbus_type mbus_type, u32 mbus_flags)
 {
 	int ret;
 
-	ret = rkisp1_config_isp(rkisp1, mbus_type, mbus_flags);
+	ret = rkisp1_config_isp(isp, mbus_type, mbus_flags);
 	if (ret)
 		return ret;
-	ret = rkisp1_config_path(rkisp1, mbus_type);
+	ret = rkisp1_config_path(isp, mbus_type);
 	if (ret)
 		return ret;
-	rkisp1_config_ism(rkisp1);
+	rkisp1_config_ism(isp);
 
 	return 0;
 }
 
-static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
+static void rkisp1_isp_stop(struct rkisp1_isp *isp)
 {
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 val;
 
 	/*
@@ -332,8 +337,10 @@ static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
 	rkisp1_write(rkisp1, RKISP1_CIF_VI_IRCL, 0x0);
 }
 
-static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
+static void rkisp1_config_clk(struct rkisp1_isp *isp)
 {
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
+
 	u32 val = RKISP1_CIF_VI_ICCL_ISP_CLK | RKISP1_CIF_VI_ICCL_CP_CLK |
 		  RKISP1_CIF_VI_ICCL_MRSZ_CLK | RKISP1_CIF_VI_ICCL_SRSZ_CLK |
 		  RKISP1_CIF_VI_ICCL_JPEG_CLK | RKISP1_CIF_VI_ICCL_MI_CLK |
@@ -352,11 +359,12 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
 	}
 }
 
-static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
+static void rkisp1_isp_start(struct rkisp1_isp *isp)
 {
+	struct rkisp1_device *rkisp1 = isp->rkisp1;
 	u32 val;
 
-	rkisp1_config_clk(rkisp1);
+	rkisp1_config_clk(isp);
 
 	/* Activate ISP */
 	val = rkisp1_read(rkisp1, RKISP1_CIF_ISP_CTRL);
@@ -758,7 +766,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		v4l2_subdev_call(rkisp1->source, video, s_stream, false);
 
 		rkisp1_csi_stop(&rkisp1->csi);
-		rkisp1_isp_stop(rkisp1);
+		rkisp1_isp_stop(isp);
 
 		return 0;
 	}
@@ -775,23 +783,23 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	if (asd->mbus_type != V4L2_MBUS_CSI2_DPHY)
 		return -EINVAL;
 
-	rkisp1->isp.frame_sequence = -1;
+	isp->frame_sequence = -1;
 	mutex_lock(&isp->ops_lock);
-	ret = rkisp1_config_cif(rkisp1, asd->mbus_type, asd->mbus_flags);
+	ret = rkisp1_config_cif(isp, asd->mbus_type, asd->mbus_flags);
 	if (ret)
 		goto mutex_unlock;
 
-	rkisp1_isp_start(rkisp1);
+	rkisp1_isp_start(isp);
 
 	ret = rkisp1_csi_start(&rkisp1->csi, asd);
 	if (ret) {
-		rkisp1_isp_stop(rkisp1);
+		rkisp1_isp_stop(isp);
 		goto mutex_unlock;
 	}
 
 	ret = v4l2_subdev_call(rkisp1->source, video, s_stream, true);
 	if (ret) {
-		rkisp1_isp_stop(rkisp1);
+		rkisp1_isp_stop(isp);
 		rkisp1_csi_stop(&rkisp1->csi);
 		goto mutex_unlock;
 	}
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
