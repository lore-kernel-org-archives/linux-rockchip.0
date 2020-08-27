Return-Path: <SRS0=CWnh=CF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2BAC433E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2020 19:46:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B8A7207DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2020 19:46:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZH63Zr5/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B8A7207DF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZlJOboPMw/ezXobKmifczMXCu+z1rFwba5wceZLyu40=; b=ZH63Zr5/2dfQ6/sUWmwpdAHURj
	hggis7bwRqayLcNy+JOCmBjru+r3wLdfEyhM3OzftRZL/bZ8eGwENzZcOFtL30dBihy2oVan9Ba0W
	b3tLzDnncSMFobYspY0w1d9fq2JiUizuOl+CjHo80TGGSXws5mhMperxLrT9lrDa8dwdYoG7M1k+u
	OjctGFS4TrQQThVWbpHb0f3OnezRDIQGzH4c9Pdi24MPyBGn2K9LJw268UiOrY0BekLHnxVWsxf5q
	9yiB0PNxcIjU1JKt4TCCWTW3ICcICG2z/Cs0BX+zhyMwWhqhVTjPIynKVAU/AWTM9+u+O3GacVaT6
	Q8qEVWZQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kBNqx-0004lr-Ps; Thu, 27 Aug 2020 19:46:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBNqr-0004gY-Ri
 for linux-rockchip@lists.infradead.org; Thu, 27 Aug 2020 19:46:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id D7B0129A968
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v7 3/6] media: vivid: Add support to the CSC API
Date: Thu, 27 Aug 2020 21:46:09 +0200
Message-Id: <20200827194612.13502-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827194612.13502-1-dafna.hirschfeld@collabora.com>
References: <20200827194612.13502-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200827_154626_083548_5BDCF9D7 
X-CRM114-Status: GOOD (  17.62  )
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

The CSC API (Colorspace conversion) allows userspace to try
to configure the colorspace, transfer function, Y'CbCr/HSV encoding
and the quantization for capture devices. This patch adds support
to the CSC API in vivid.
Using the CSC API, userspace is allowed to do the following:

- Set the colorspace.
- Set the xfer_func.
- Set the ycbcr_enc function for YUV formats.
- Set the hsv_enc function for HSV formats
- Set the quantization for YUV and RGB formats.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 .../media/test-drivers/vivid/vivid-vid-cap.c  | 38 ++++++++++++++++---
 .../test-drivers/vivid/vivid-vid-common.c     | 25 ++++++++++++
 include/media/v4l2-common.h                   | 29 ++++++++++++++
 3 files changed, 86 insertions(+), 6 deletions(-)

diff --git a/drivers/media/test-drivers/vivid/vivid-vid-cap.c b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
index e94beef008c8..eadf28ab1e39 100644
--- a/drivers/media/test-drivers/vivid/vivid-vid-cap.c
+++ b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
@@ -560,6 +560,7 @@ int vivid_try_fmt_vid_cap(struct file *file, void *priv,
 	unsigned factor = 1;
 	unsigned w, h;
 	unsigned p;
+	bool user_set_csc = !!(mp->flags & V4L2_PIX_FMT_FLAG_SET_CSC);
 
 	fmt = vivid_get_format(dev, mp->pixelformat);
 	if (!fmt) {
@@ -633,13 +634,30 @@ int vivid_try_fmt_vid_cap(struct file *file, void *priv,
 			(fmt->bit_depth[p] / fmt->vdownsampling[p])) /
 			(fmt->bit_depth[0] / fmt->vdownsampling[0]);
 
-	mp->colorspace = vivid_colorspace_cap(dev);
-	if (fmt->color_enc == TGP_COLOR_ENC_HSV)
-		mp->hsv_enc = vivid_hsv_enc_cap(dev);
-	else
+	if (!user_set_csc || !v4l2_is_colorspace_valid(mp->colorspace))
+		mp->colorspace = vivid_colorspace_cap(dev);
+
+	if (!user_set_csc || !v4l2_is_xfer_func_valid(mp->xfer_func))
+		mp->xfer_func = vivid_xfer_func_cap(dev);
+
+	if (fmt->color_enc == TGP_COLOR_ENC_HSV) {
+		if (!user_set_csc || !v4l2_is_hsv_enc_valid(mp->hsv_enc))
+			mp->hsv_enc = vivid_hsv_enc_cap(dev);
+	} else if (fmt->color_enc == TGP_COLOR_ENC_YCBCR) {
+		if (!user_set_csc || !v4l2_is_ycbcr_enc_valid(mp->ycbcr_enc))
+			mp->ycbcr_enc = vivid_ycbcr_enc_cap(dev);
+	} else {
 		mp->ycbcr_enc = vivid_ycbcr_enc_cap(dev);
-	mp->xfer_func = vivid_xfer_func_cap(dev);
-	mp->quantization = vivid_quantization_cap(dev);
+	}
+
+	if (fmt->color_enc == TGP_COLOR_ENC_YCBCR ||
+	    fmt->color_enc == TGP_COLOR_ENC_RGB) {
+		if (!user_set_csc || !v4l2_is_quant_valid(mp->quantization))
+			mp->quantization = vivid_quantization_cap(dev);
+	} else {
+		mp->quantization = vivid_quantization_cap(dev);
+	}
+
 	memset(mp->reserved, 0, sizeof(mp->reserved));
 	return 0;
 }
@@ -769,6 +787,14 @@ int vivid_s_fmt_vid_cap(struct file *file, void *priv,
 	if (vivid_is_sdtv_cap(dev))
 		dev->tv_field_cap = mp->field;
 	tpg_update_mv_step(&dev->tpg);
+	dev->tpg.colorspace = mp->colorspace;
+	dev->tpg.xfer_func = mp->xfer_func;
+	if (dev->fmt_cap->color_enc == TGP_COLOR_ENC_YCBCR)
+		dev->tpg.ycbcr_enc = mp->ycbcr_enc;
+	else
+		dev->tpg.hsv_enc = mp->hsv_enc;
+	dev->tpg.quantization = mp->quantization;
+
 	return 0;
 }
 
diff --git a/drivers/media/test-drivers/vivid/vivid-vid-common.c b/drivers/media/test-drivers/vivid/vivid-vid-common.c
index 76b0be670ebb..19701fe72030 100644
--- a/drivers/media/test-drivers/vivid/vivid-vid-common.c
+++ b/drivers/media/test-drivers/vivid/vivid-vid-common.c
@@ -920,6 +920,31 @@ int vivid_enum_fmt_vid(struct file *file, void  *priv,
 	fmt = &vivid_formats[f->index];
 
 	f->pixelformat = fmt->fourcc;
+
+	if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
+	    f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
+		return 0;
+	/*
+	 * For capture devices, we support the CSC API.
+	 * We allow userspace to:
+	 * 1. set the colorspace
+	 * 2. set the xfer_func
+	 * 3. set the ycbcr_enc on YUV formats
+	 * 4. set the hsv_enc on HSV formats
+	 * 5. set the quantization on YUV and RGB formats
+	 */
+	f->flags |= V4L2_FMT_FLAG_CSC_COLORSPACE;
+	f->flags |= V4L2_FMT_FLAG_CSC_XFER_FUNC;
+
+	if (fmt->color_enc == TGP_COLOR_ENC_YCBCR) {
+		f->flags |= V4L2_FMT_FLAG_CSC_YCBCR_ENC;
+		f->flags |= V4L2_FMT_FLAG_CSC_QUANTIZATION;
+	} else if (fmt->color_enc == TGP_COLOR_ENC_HSV) {
+		f->flags |= V4L2_FMT_FLAG_CSC_HSV_ENC;
+	} else if (fmt->color_enc == TGP_COLOR_ENC_RGB) {
+		f->flags |= V4L2_FMT_FLAG_CSC_QUANTIZATION;
+	}
+
 	return 0;
 }
 
diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
index 150ee16ebd81..a3083529b698 100644
--- a/include/media/v4l2-common.h
+++ b/include/media/v4l2-common.h
@@ -539,4 +539,33 @@ static inline void v4l2_buffer_set_timestamp(struct v4l2_buffer *buf,
 	buf->timestamp.tv_usec = ts.tv_nsec / NSEC_PER_USEC;
 }
 
+static inline bool v4l2_is_colorspace_valid(__u32 colorspace)
+{
+	return colorspace > V4L2_COLORSPACE_DEFAULT &&
+	       colorspace <= V4L2_COLORSPACE_DCI_P3;
+}
+
+static inline bool v4l2_is_xfer_func_valid(__u32 xfer_func)
+{
+	return xfer_func > V4L2_XFER_FUNC_DEFAULT &&
+	       xfer_func <= V4L2_XFER_FUNC_SMPTE2084;
+}
+
+static inline bool v4l2_is_ycbcr_enc_valid(__u8 ycbcr_enc)
+{
+	return ycbcr_enc > V4L2_YCBCR_ENC_DEFAULT &&
+	       ycbcr_enc <= V4L2_YCBCR_ENC_SMPTE240M;
+}
+
+static inline bool v4l2_is_hsv_enc_valid(__u8 hsv_enc)
+{
+	return hsv_enc == V4L2_HSV_ENC_180 || hsv_enc == V4L2_HSV_ENC_256;
+}
+
+static inline bool v4l2_is_quant_valid(__u8 quantization)
+{
+	return quantization == V4L2_QUANTIZATION_FULL_RANGE ||
+	       quantization == V4L2_QUANTIZATION_LIM_RANGE;
+}
+
 #endif /* V4L2_COMMON_H_ */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
