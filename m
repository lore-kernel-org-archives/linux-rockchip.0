Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FDADC369DC
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 19:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8QSfol8v6LYBooJjJdvyf0rQ8W/WlANR5tDIUGTZ0M=; b=JqwxvQaTeRm+R5
	oE9gHYH9e8s9Z4huhW5JNcPP+WniU/EB8Fc+qX0ec973gJlEuz/QCgAaqZwhakB2Ku9jqFcM35hAL
	tmu6pg/HAOOW25nus/TrPodCXKHL/nJz5DraechS0j1U+g+3nU0yWzS9xiG11URffg5pfsdE8a7+2
	mkph264okFXu/xvwsXCUcPoVeg1NS+CTQvirzY9n3ZXdTBgiEtthDU7mV8YbR35OH+Je7r9wzNztE
	3KUD8kcJO2oF1XEMzttpPimG6vnAPZPPzeAthp8GGZbVuABToM7KA/YW6zKoPAcziZPH+GBFoSur0
	Kx0EBKMCfeZV2O8pyc/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAa14-0000000GX7N-29D5;
	Thu, 01 May 2025 19:56:18 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAa11-0000000GX5H-3yfM
	for linux-rockchip@lists.infradead.org;
	Thu, 01 May 2025 19:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1746129374;
	bh=f616yrOSy1JlqMAl6xMN5xGmnBssOqtti51vKKOA0CM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=m7md2BkW2DHpZt4+nsAq0kOCuce+O/vkMXlaXvuPfxq9vfZiNkBpFA64WOpu4Q+nG
	 0wZboUJeboZqO9Sfcy3oD385sUD0o/pjxp72wFAG0CWfHK49wfge9soS6FNCwxSve2
	 Q8mDJYLAzAcZKHuieSxMCqkHssYiCNwJAi/yikT3n66/d3rcEWt5/eAfgmumAOkfh4
	 N/X7GElDOUrWLOBvyH2GLSBu4joF0SGmbSebK8RhPUPlbt78vz3nm2Xgv9IPGfwt2F
	 VtbUH3XgwQhCun2mC3y/eVvqdDs0Pqo7fGsIg1vFSJVp8Wr7rSRevzPzTfglQI+3L4
	 F9HmTGtraAUtQ==
Received: from [192.168.13.3] (unknown [IPv6:2606:6d00:17:8242::c73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4837D17E1503;
	Thu,  1 May 2025 21:56:13 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 01 May 2025 15:55:50 -0400
Subject: [PATCH v10 4/4] media: rkvdec: h264: Support High 10 and 4:2:2
 profiles
MIME-Version: 1.0
Message-Id: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-4-c380ba452108@collabora.com>
References: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
In-Reply-To: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_125616_139221_2B50B415 
X-CRM114-Status: GOOD (  17.98  )
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

From: Jonas Karlman <jonas@kwiboo.se>

Add support and enable decoding of H264 High 10 and 4:2:2 profiles.

Decoded CAPTURE buffer width is aligned to 64 pixels to accommodate HW
requirement of 10-bit format buffers, fixes decoding of all the 4:2:2
and 10bit 4:2:2 flusters tests except two stream that present some
visual artifacts.

- Hi422FREXT17_SONY_A
- Hi422FREXT19_SONY_A

The get_image_fmt() ops is implemented to select an image format
required for the provided SPS control, and returns RKVDEC_IMG_FMT_ANY
for other controls.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 37 ++++++++++++++++++++++-------
 drivers/staging/media/rkvdec/rkvdec.c      | 38 +++++++++++++++++++++++-------
 drivers/staging/media/rkvdec/rkvdec.h      |  3 +++
 3 files changed, 60 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 8bce8902b8dda39bb2058c8504bd52ccae6b4204..d14b4d173448dbcce4ab978a83806064b100ca24 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -1027,24 +1027,42 @@ static int rkvdec_h264_adjust_fmt(struct rkvdec_ctx *ctx,
 	return 0;
 }
 
+static enum rkvdec_image_fmt rkvdec_h264_get_image_fmt(struct rkvdec_ctx *ctx,
+						       struct v4l2_ctrl *ctrl)
+{
+	const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
+
+	if (ctrl->id != V4L2_CID_STATELESS_H264_SPS)
+		return RKVDEC_IMG_FMT_ANY;
+
+	if (sps->bit_depth_luma_minus8 == 0) {
+		if (sps->chroma_format_idc == 2)
+			return RKVDEC_IMG_FMT_422_8BIT;
+		else
+			return RKVDEC_IMG_FMT_420_8BIT;
+	} else if (sps->bit_depth_luma_minus8 == 2) {
+		if (sps->chroma_format_idc == 2)
+			return RKVDEC_IMG_FMT_422_10BIT;
+		else
+			return RKVDEC_IMG_FMT_420_10BIT;
+	}
+
+	return RKVDEC_IMG_FMT_ANY;
+}
+
 static int rkvdec_h264_validate_sps(struct rkvdec_ctx *ctx,
 				    const struct v4l2_ctrl_h264_sps *sps)
 {
 	unsigned int width, height;
 
-	/*
-	 * TODO: The hardware supports 10-bit and 4:2:2 profiles,
-	 * but it's currently broken in the driver.
-	 * Reject them for now, until it's fixed.
-	 */
-	if (sps->chroma_format_idc > 1)
-		/* Only 4:0:0 and 4:2:0 are supported */
+	if (sps->chroma_format_idc > 2)
+		/* Only 4:0:0, 4:2:0 and 4:2:2 are supported */
 		return -EINVAL;
 	if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
 		/* Luma and chroma bit depth mismatch */
 		return -EINVAL;
-	if (sps->bit_depth_luma_minus8 != 0)
-		/* Only 8-bit is supported */
+	if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
+		/* Only 8-bit and 10-bit is supported */
 		return -EINVAL;
 
 	width = (sps->pic_width_in_mbs_minus1 + 1) * 16;
@@ -1190,4 +1208,5 @@ const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
 	.stop = rkvdec_h264_stop,
 	.run = rkvdec_h264_run,
 	.try_ctrl = rkvdec_h264_try_ctrl,
+	.get_image_fmt = rkvdec_h264_get_image_fmt,
 };
diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index f7eb67520ab0edd9ac1da3d0daf2af1bc6d37a09..3367902f22de3415d3040ae3ae28e7a3f38e910c 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -186,9 +186,10 @@ static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
 	{
 		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
 		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE,
-		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
+		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_422_INTRA,
 		.cfg.menu_skip_mask =
-			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),
+			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED) |
+			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_444_PREDICTIVE),
 		.cfg.def = V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
 	},
 	{
@@ -203,11 +204,23 @@ static const struct rkvdec_ctrls rkvdec_h264_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_h264_ctrl_descs),
 };
 
-static const struct rkvdec_decoded_fmt_desc rkvdec_h264_vp9_decoded_fmts[] = {
+static const struct rkvdec_decoded_fmt_desc rkvdec_h264_decoded_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.image_fmt = RKVDEC_IMG_FMT_420_8BIT,
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_NV15,
+		.image_fmt = RKVDEC_IMG_FMT_420_10BIT,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_NV16,
+		.image_fmt = RKVDEC_IMG_FMT_422_8BIT,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_NV20,
+		.image_fmt = RKVDEC_IMG_FMT_422_10BIT,
+	},
 };
 
 static const struct rkvdec_ctrl_desc rkvdec_vp9_ctrl_descs[] = {
@@ -230,21 +243,28 @@ static const struct rkvdec_ctrls rkvdec_vp9_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_vp9_ctrl_descs),
 };
 
+static const struct rkvdec_decoded_fmt_desc rkvdec_vp9_decoded_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_NV12,
+		.image_fmt = RKVDEC_IMG_FMT_420_8BIT,
+	},
+};
+
 static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_H264_SLICE,
 		.frmsize = {
-			.min_width = 48,
+			.min_width = 64,
 			.max_width = 4096,
-			.step_width = 16,
+			.step_width = 64,
 			.min_height = 48,
 			.max_height = 2560,
 			.step_height = 16,
 		},
 		.ctrls = &rkvdec_h264_ctrls,
 		.ops = &rkvdec_h264_fmt_ops,
-		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_vp9_decoded_fmts),
-		.decoded_fmts = rkvdec_h264_vp9_decoded_fmts,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_decoded_fmts),
+		.decoded_fmts = rkvdec_h264_decoded_fmts,
 		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
 	},
 	{
@@ -259,8 +279,8 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 		},
 		.ctrls = &rkvdec_vp9_ctrls,
 		.ops = &rkvdec_vp9_fmt_ops,
-		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_vp9_decoded_fmts),
-		.decoded_fmts = rkvdec_h264_vp9_decoded_fmts,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_vp9_decoded_fmts),
+		.decoded_fmts = rkvdec_vp9_decoded_fmts,
 	}
 };
 
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index e466a2753ccfc13738e0a672bc578e521af2c3f2..9a9f4fced7a184b952d341d75c7faedaa75163d6 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -80,6 +80,9 @@ struct rkvdec_coded_fmt_ops {
 enum rkvdec_image_fmt {
 	RKVDEC_IMG_FMT_ANY = 0,
 	RKVDEC_IMG_FMT_420_8BIT,
+	RKVDEC_IMG_FMT_420_10BIT,
+	RKVDEC_IMG_FMT_422_8BIT,
+	RKVDEC_IMG_FMT_422_10BIT,
 };
 
 struct rkvdec_decoded_fmt_desc {

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
