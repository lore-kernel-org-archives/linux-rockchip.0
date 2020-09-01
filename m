Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 184D2C433E6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 11:58:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C76C720767
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 11:58:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="dkjsBjRN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C76C720767
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ReCyvls92LoBQ+yPB2sYUja1ZJBIOn6wZd0piyB4NxE=; b=dkjsBjRNYQI9cuA5fQEf7WBJ0h
	7BU7qb7c4Aa/w6vyYmMCPaJEK0V8wX+zQx9FJy55xXlDp5Kr7YtR9hQ6oGEGqkJ4PoOdyM1HG0/K4
	xNEIaBECovnMbcEW4I3nLjsLNTEK8vlICtpNsVB0Nf+UqKL+9Wjt5Ritl9wVPAm3/y6yCfPHvc763
	fQDiMcuKITYnfhnI/b1sWOZy2iusFi/Kw/zdAiJYr2143PykzN0V5Aint6dDGlqYBlVALJg4S/liP
	DpePBSWpTBIa37Nxsj8UC1HAC7t8V2yWfkMZ22YWbHlrkMd8sLDR1tYpD5Ozn2Z+Sh5HFOFgS26+x
	D4BvTAMw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kD4HB-0004hK-7M; Tue, 01 Sep 2020 11:16:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD4H3-0004aY-3L
 for linux-rockchip@lists.infradead.org; Tue, 01 Sep 2020 11:16:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 5B9F426017C
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 06/10] media: staging: rkisp1: add a helper function to
 enumerate supported mbus formats on capture
Date: Tue,  1 Sep 2020 13:16:08 +0200
Message-Id: <20200901111612.10552-7-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_071625_373029_08CE478C 
X-CRM114-Status: GOOD (  21.38  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add a function 'rkisp1_cap_enum_mbus_codes' that receive
a pointer to 'v4l2_subdev_mbus_code_enum' and returns the
next supported mbus format of the capture. The function
assumes that pixel formats with identical 'mbus' are grouped
together in the hardcoded arrays, therefore the order of the
entries in the array 'rkisp1_sp_fmts' are adjusted.
This function is a helper for the media bus enumeration of
the source pad of the resizer entity.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 86 +++++++++++++------
 drivers/staging/media/rkisp1/rkisp1-common.h  | 11 +++
 2 files changed, 70 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index d23c9adc8201..531381e1801a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -84,6 +84,10 @@ struct rkisp1_capture_config {
 	} mi;
 };
 
+/*
+ * The supported pixel formats for mainpath. NOTE, pixel formats with identical 'mbus'
+ * are grouped together. This is assumed and used by the function rkisp1_cap_enum_mbus_codes
+ */
 static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 	/* yuv422 */
 	{
@@ -112,6 +116,13 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
+	/* yuv400 */
+	{
+		.fourcc = V4L2_PIX_FMT_GREY,
+		.uv_swap = 0,
+		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	},
 	/* yuv420 */
 	{
 		.fourcc = V4L2_PIX_FMT_NV21,
@@ -144,13 +155,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	},
-	/* yuv400 */
-	{
-		.fourcc = V4L2_PIX_FMT_GREY,
-		.uv_swap = 0,
-		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
-		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
-	},
 	/* raw */
 	{
 		.fourcc = V4L2_PIX_FMT_SRGGB8,
@@ -203,6 +207,10 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
 	},
 };
 
+/*
+ * The supported pixel formats for selfpath. NOTE, pixel formats with identical 'mbus'
+ * are grouped together. This is assumed and used by the function rkisp1_cap_enum_mbus_codes
+ */
 static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 	/* yuv422 */
 	{
@@ -236,6 +244,26 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
 		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
 	},
+	/* yuv400 */
+	{
+		.fourcc = V4L2_PIX_FMT_GREY,
+		.uv_swap = 0,
+		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV400,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	},
+	/* rgb */
+	{
+		.fourcc = V4L2_PIX_FMT_XBGR32,
+		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	}, {
+		.fourcc = V4L2_PIX_FMT_RGB565,
+		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
+		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
+		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
+	},
 	/* yuv420 */
 	{
 		.fourcc = V4L2_PIX_FMT_NV21,
@@ -274,26 +302,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
 		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV420,
 		.mbus = MEDIA_BUS_FMT_YUYV8_1_5X8,
 	},
-	/* yuv400 */
-	{
-		.fourcc = V4L2_PIX_FMT_GREY,
-		.uv_swap = 0,
-		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV400,
-		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
-	},
-	/* rgb */
-	{
-		.fourcc = V4L2_PIX_FMT_XBGR32,
-		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB888,
-		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
-	}, {
-		.fourcc = V4L2_PIX_FMT_RGB565,
-		.write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
-		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
-		.mbus = MEDIA_BUS_FMT_YUYV8_2X8,
-	},
 };
 
 static const struct rkisp1_capture_config rkisp1_capture_config_mp = {
@@ -334,6 +342,30 @@ rkisp1_vdev_to_node(struct video_device *vdev)
 	return container_of(vdev, struct rkisp1_vdev_node, vdev);
 }
 
+int rkisp1_cap_enum_mbus_codes(struct rkisp1_capture *cap,
+			       struct v4l2_subdev_mbus_code_enum *code)
+{
+	const struct rkisp1_capture_fmt_cfg *fmts = cap->config->fmts;
+	/*
+	 * initialize curr_mbus to non existing mbus code 0 to ensure it is
+	 * different from fmts[0].mbus
+	 */
+	u32 curr_mbus = 0;
+	int i, n = 0;
+
+	for (i = 0; i < cap->config->fmt_size; i++) {
+		if (fmts[i].mbus == curr_mbus)
+			continue;
+
+		curr_mbus = fmts[i].mbus;
+		if (n++ == code->index) {
+			code->code = curr_mbus;
+			return 0;
+		}
+	}
+	return -EINVAL;
+}
+
 /* ----------------------------------------------------------------------------
  * Stream operations for self-picture path (sp) and main-picture path (mp)
  */
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 992d8ec4c448..8cdfcaab268e 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -410,6 +410,17 @@ static inline u32 rkisp1_read(struct rkisp1_device *rkisp1, unsigned int addr)
 	return readl(rkisp1->base_addr + addr);
 }
 
+/*
+ * rkisp1_cap_enum_mbus_codes - A helper function that return the i'th supported mbus code
+ *				of the capture entity. This is used to enumerate the supported
+ *				mbus codes on the source pad of the resizer.
+ *
+ * @cap:  the capture entity
+ * @code: the mbus code, the function reads the code->index and fills the code->code
+ */
+int rkisp1_cap_enum_mbus_codes(struct rkisp1_capture *cap,
+			       struct v4l2_subdev_mbus_code_enum *code);
+
 /*
  * rkisp1_sd_adjust_crop_rect - adjust a rectangle to fit into another rectangle.
  *
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
