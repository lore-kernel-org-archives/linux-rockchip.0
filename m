Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 810FEC433E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 08:18:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 491D920786
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 08:18:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TJg86rD5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 491D920786
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H66gyI58ITDv7xbL6FO3T5ox+DZFRAn+eGmM3CfdUyI=; b=TJg86rD53gNfiYg3/D+XzrMVGe
	X6L1CH+YbWLgmY9fASJvrVNosqHcgJ9iLzubowtMfcpkhVfFAdXyXAPtUll9ztaIUyf63c7x51wt4
	aOhD6p6lMwx9/nvoAFpXwfGXTHsDMYy7a3nJadQRWIMTKijpri6BQ9g1HfqwZi1MPRsRo2mgxye0f
	IVyyDGdWhLMguSizuLgC0R2LbfQhtvq2rm5HVcHTOMsGXIPbd/H5Svn4+WrU5uZL1GoAwgn3XirXw
	WtJjtAH0BJMQ/oj3YMMrxv0eugG1IQs8lVlsLI/Tsa8KbdgZRyKbxFkSJwAZuBJHqWdL/iXvfV6wV
	C3s5we3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7wpC-0004GW-0Y; Tue, 18 Aug 2020 08:18:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7wp1-0004AF-Dt
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 08:18:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 18540299011
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v6 5/6] media: staging: rkisp1: allow quantization setting by
 userspace on the isp source pad
Date: Tue, 18 Aug 2020 10:18:05 +0200
Message-Id: <20200818081807.23134-6-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200818081807.23134-1-dafna.hirschfeld@collabora.com>
References: <20200818081807.23134-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_041819_658188_02CF32AE 
X-CRM114-Status: GOOD (  19.33  )
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

The isp entity has hardware support to force full range quantization
for YUV formats. Use the subdev CSC API to allow userspace to set the
quantization for YUV formats on the isp entity.

- The flag V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION is set for
YUV formats during enumeration of the isp formats on the source pad.
- The full quantization is set on YUV formats if userspace asks it
on the isp entity using the flag V4L2_MBUS_FRAMEFMT_SET_CSC.

On the capture and the resizer, the quantization is read-only
and always set to the default quantization.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
Reviewed-by: Tomasz Figa <tfiga@chromium.org>
---
 drivers/staging/media/rkisp1/TODO             |  2 +-
 drivers/staging/media/rkisp1/rkisp1-capture.c | 10 ----------
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 20 +++++++++++++++----
 3 files changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index bdb1b8f73556..bdd1da43cb5e 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -1,7 +1,7 @@
 * Fix pad format size for statistics and parameters entities.
 * Fix checkpatch errors.
 * Review and comment every lock
-* Handle quantization
+* Add uapi docs. Remember to add documentation of how quantization is handled.
 * Document rkisp1-common.h
 * streaming paths (mainpath and selfpath) check if the other path is streaming
 in several places of the code, review this, specially that it doesn't seem it
diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index c05280950ea0..f355b2977009 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1069,8 +1069,6 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 			   const struct v4l2_format_info **fmt_info)
 {
 	const struct rkisp1_capture_config *config = cap->config;
-	struct rkisp1_capture *other_cap =
-			&cap->rkisp1->capture_devs[cap->id ^ 1];
 	const struct rkisp1_capture_fmt_cfg *fmt;
 	const struct v4l2_format_info *info;
 	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
@@ -1095,14 +1093,6 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 
 	info = rkisp1_fill_pixfmt(pixm, cap->id);
 
-	/* can not change quantization when stream-on */
-	if (other_cap->is_streaming)
-		pixm->quantization = other_cap->pix.fmt.quantization;
-	/* output full range by default, take effect in params */
-	else if (!pixm->quantization ||
-		 pixm->quantization > V4L2_QUANTIZATION_LIM_RANGE)
-		pixm->quantization = V4L2_QUANTIZATION_FULL_RANGE;
-
 	if (fmt_cfg)
 		*fmt_cfg = fmt;
 	if (fmt_info)
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 6ec1e9816e9f..1063f4505aaf 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -589,6 +589,10 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
 
 		if (code->index == pos - 1) {
 			code->code = fmt->mbus_code;
+			if (fmt->pixel_enc == V4L2_PIXEL_ENC_YUV &&
+			    dir == RKISP1_ISP_SD_SRC)
+				code->flags =
+					V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION;
 			return 0;
 		}
 	}
@@ -620,7 +624,6 @@ static int rkisp1_isp_init_config(struct v4l2_subdev *sd,
 					     RKISP1_ISP_PAD_SOURCE_VIDEO);
 	*src_fmt = *sink_fmt;
 	src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
-	src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
 
 	src_crop = v4l2_subdev_get_try_crop(sd, cfg,
 					    RKISP1_ISP_PAD_SOURCE_VIDEO);
@@ -663,9 +666,18 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
 		isp->src_fmt = mbus_info;
 	src_fmt->width  = src_crop->width;
 	src_fmt->height = src_crop->height;
-	src_fmt->quantization = format->quantization;
-	/* full range by default */
-	if (!src_fmt->quantization)
+
+	/*
+	 * The CSC API is used to allow userspace to force full
+	 * quantization on YUV formats.
+	 */
+	if (format->flags & V4L2_MBUS_FRAMEFMT_SET_CSC &&
+	    format->quantization == V4L2_QUANTIZATION_FULL_RANGE &&
+	    mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV)
+		src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
+	else if (mbus_info->pixel_enc == V4L2_PIXEL_ENC_YUV)
+		src_fmt->quantization = V4L2_QUANTIZATION_LIM_RANGE;
+	else
 		src_fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
 
 	*format = *src_fmt;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
