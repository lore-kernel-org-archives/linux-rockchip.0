Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45AC3C636CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Feb 2023 10:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GBxv8MHdcW7GGqupW2hUW22sbScGNUIljpvUk1PvtA=; b=BfXhie4qoyDBY9
	KmL9uhbB5kV52d2iPeCH7+9oAU5BMafJX11Zp4vPJFRao8L4ndnxJzrpkO/1Dnb+aGTaFQRaEnCMR
	PXnVmsMNBrYcFP4LdjU76s8miknIVI3QFZR0wUoCy6G9RabpHVP4fv/fw/DFXfCKNGCBswqdCI5Y+
	EDb6sL3b7izv90dNlUE1jEzkqimZiAg5oNVfSL+9/jCon4x8JaJXJq/oqEJEfDnPoAfVfm3Pp1NvH
	eDM3QjQ85mdmM383vC4q+wa3yYfNrJ9KDudcM5UL2JvAzCIy0qm2Wpx18+dzOzmMlLwmt/N0GYbCw
	8PR6EdO74HhU4ZD0w3lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU3ja-003iDl-0f; Mon, 20 Feb 2023 10:49:26 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU3jA-003i0u-PZ; Mon, 20 Feb 2023 10:49:03 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d30c:b155:96fb:dcc])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 35FD6660213E;
	Mon, 20 Feb 2023 10:48:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1676890139;
	bh=2xaNocEAF4qvDyOTrQtHPsoGywHnve83vDJYytz3whU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HVIizSRM6iS0VMRitcUVQDPtRkF7uHKIILgHsO799PkW3NTyM1hB6jFH+9GY214vI
	 GEZgweR2KsZo0rTCPF26hE0vhfc2IVJlWrIzOcNdQTCkivd0ccnWk5y4LraF2wy0dr
	 NQDpQRs0ZBpiwHutqHKrA7n7Ma6JJ9sKv++AxvhCVMfFL4xfFzzl+C/Y92QDUnPJj9
	 CmENkqkCubhJiBnpEl+jWL5vB6aBhkfi5/ppSTSX0A+vTsakNfpNjKFn8STdICauMw
	 Opc178TdEtFYvKw1l4t+QRTnT1lNW5r/gucal4+rGHSa/1rwR3IWfxPDNwilgYRCYt
	 gh77Hd2iTCCBQ==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk,
	robert.mader@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: [PATCH v9 4/6] media: verisilicon: Do not change context bit depth before validating the format
Date: Mon, 20 Feb 2023 11:48:47 +0100
Message-Id: <20230220104849.398203-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_024901_108767_CDB795AE 
X-CRM114-Status: GOOD (  18.42  )
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

It is needed to check if the proposed pixels format is valid before
updating context bit depth and other internal states.
Stop using ctx->bit_depth to check format depth match and return
result to the caller.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 .../platform/verisilicon/hantro_postproc.c    |  2 +-
 .../media/platform/verisilicon/hantro_v4l2.c  | 51 ++++++++++---------
 .../media/platform/verisilicon/hantro_v4l2.h  |  3 +-
 3 files changed, 30 insertions(+), 26 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index 09d8cf942689..6437423ccf3a 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -197,7 +197,7 @@ int hantro_postproc_alloc(struct hantro_ctx *ctx)
 	unsigned int i, buf_size;
 
 	/* this should always pick native format */
-	fmt = hantro_get_default_fmt(ctx, false);
+	fmt = hantro_get_default_fmt(ctx, false, ctx->bit_depth);
 	if (!fmt)
 		return -EINVAL;
 	v4l2_fill_pixfmt_mp(&pix_mp, fmt->fourcc, ctx->src_fmt.width,
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index d94c99f875c8..d238d407f986 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -28,6 +28,8 @@
 #include "hantro_hw.h"
 #include "hantro_v4l2.h"
 
+#define  HANTRO_DEFAULT_BIT_DEPTH 8
+
 static int hantro_set_fmt_out(struct hantro_ctx *ctx,
 			      struct v4l2_pix_format_mplane *pix_mp);
 static int hantro_set_fmt_cap(struct hantro_ctx *ctx,
@@ -76,18 +78,13 @@ int hantro_get_format_depth(u32 fourcc)
 }
 
 static bool
-hantro_check_depth_match(const struct hantro_ctx *ctx,
-			 const struct hantro_fmt *fmt)
+hantro_check_depth_match(const struct hantro_fmt *fmt, int bit_depth)
 {
-	int fmt_depth, ctx_depth = 8;
+	int fmt_depth;
 
 	if (!fmt->match_depth && !fmt->postprocessed)
 		return true;
 
-	/* 0 means default depth, which is 8 */
-	if (ctx->bit_depth)
-		ctx_depth = ctx->bit_depth;
-
 	fmt_depth = hantro_get_format_depth(fmt->fourcc);
 
 	/*
@@ -95,9 +92,9 @@ hantro_check_depth_match(const struct hantro_ctx *ctx,
 	 * It may be possible to relax that on some HW.
 	 */
 	if (!fmt->match_depth)
-		return fmt_depth <= ctx_depth;
+		return fmt_depth <= bit_depth;
 
-	return fmt_depth == ctx_depth;
+	return fmt_depth == bit_depth;
 }
 
 static const struct hantro_fmt *
@@ -119,7 +116,7 @@ hantro_find_format(const struct hantro_ctx *ctx, u32 fourcc)
 }
 
 const struct hantro_fmt *
-hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
+hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream, int bit_depth)
 {
 	const struct hantro_fmt *formats;
 	unsigned int i, num_fmts;
@@ -128,7 +125,7 @@ hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
 	for (i = 0; i < num_fmts; i++) {
 		if (bitstream == (formats[i].codec_mode !=
 				  HANTRO_MODE_NONE) &&
-		    hantro_check_depth_match(ctx, &formats[i]))
+		    hantro_check_depth_match(&formats[i], bit_depth))
 			return &formats[i];
 	}
 	return NULL;
@@ -204,7 +201,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 
 		if (skip_mode_none == mode_none)
 			continue;
-		if (!hantro_check_depth_match(ctx, fmt))
+		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
 			continue;
 		if (j == f->index) {
 			f->pixelformat = fmt->fourcc;
@@ -224,7 +221,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	for (i = 0; i < num_fmts; i++) {
 		fmt = &formats[i];
 
-		if (!hantro_check_depth_match(ctx, fmt))
+		if (!hantro_check_depth_match(fmt, ctx->bit_depth))
 			continue;
 		if (j == f->index) {
 			f->pixelformat = fmt->fourcc;
@@ -292,7 +289,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 
 	fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	if (!fmt) {
-		fmt = hantro_get_default_fmt(ctx, coded);
+		fmt = hantro_get_default_fmt(ctx, coded, HANTRO_DEFAULT_BIT_DEPTH);
 		pix_mp->pixelformat = fmt->fourcc;
 	}
 
@@ -380,7 +377,7 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 	const struct hantro_fmt *vpu_fmt;
 	struct v4l2_pix_format_mplane fmt;
 
-	vpu_fmt = hantro_get_default_fmt(ctx, true);
+	vpu_fmt = hantro_get_default_fmt(ctx, true, HANTRO_DEFAULT_BIT_DEPTH);
 	if (!vpu_fmt)
 		return;
 
@@ -393,15 +390,16 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 		hantro_set_fmt_out(ctx, &fmt);
 }
 
-static void
-hantro_reset_raw_fmt(struct hantro_ctx *ctx)
+int
+hantro_reset_raw_fmt(struct hantro_ctx *ctx, int bit_depth)
 {
 	const struct hantro_fmt *raw_vpu_fmt;
 	struct v4l2_pix_format_mplane raw_fmt, *encoded_fmt;
+	int ret;
 
-	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
+	raw_vpu_fmt = hantro_get_default_fmt(ctx, false, bit_depth);
 	if (!raw_vpu_fmt)
-		return;
+		return -EINVAL;
 
 	if (ctx->is_encoder)
 		encoded_fmt = &ctx->dst_fmt;
@@ -412,15 +410,20 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
 	raw_fmt.width = encoded_fmt->width;
 	raw_fmt.height = encoded_fmt->height;
 	if (ctx->is_encoder)
-		hantro_set_fmt_out(ctx, &raw_fmt);
+		ret = hantro_set_fmt_out(ctx, &raw_fmt);
 	else
-		hantro_set_fmt_cap(ctx, &raw_fmt);
+		ret = hantro_set_fmt_cap(ctx, &raw_fmt);
+
+	if (!ret)
+		ctx->bit_depth = bit_depth;
+
+	return ret;
 }
 
 void hantro_reset_fmts(struct hantro_ctx *ctx)
 {
 	hantro_reset_encoded_fmt(ctx);
-	hantro_reset_raw_fmt(ctx);
+	hantro_reset_raw_fmt(ctx, HANTRO_DEFAULT_BIT_DEPTH);
 }
 
 static void
@@ -520,7 +523,7 @@ static int hantro_set_fmt_out(struct hantro_ctx *ctx,
 	 * changes to the raw format.
 	 */
 	if (!ctx->is_encoder)
-		hantro_reset_raw_fmt(ctx);
+		hantro_reset_raw_fmt(ctx, hantro_get_format_depth(pix_mp->pixelformat));
 
 	/* Colorimetry information are always propagated. */
 	ctx->dst_fmt.colorspace = pix_mp->colorspace;
@@ -583,7 +586,7 @@ static int hantro_set_fmt_cap(struct hantro_ctx *ctx,
 	 * changes to the raw format.
 	 */
 	if (ctx->is_encoder)
-		hantro_reset_raw_fmt(ctx);
+		hantro_reset_raw_fmt(ctx, HANTRO_DEFAULT_BIT_DEPTH);
 
 	/* Colorimetry information are always propagated. */
 	ctx->src_fmt.colorspace = pix_mp->colorspace;
diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.h b/drivers/media/platform/verisilicon/hantro_v4l2.h
index 64f6f57e9d7a..9ea2fef57dcd 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.h
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.h
@@ -21,9 +21,10 @@
 extern const struct v4l2_ioctl_ops hantro_ioctl_ops;
 extern const struct vb2_ops hantro_queue_ops;
 
+int hantro_reset_raw_fmt(struct hantro_ctx *ctx, int bit_depth);
 void hantro_reset_fmts(struct hantro_ctx *ctx);
 int hantro_get_format_depth(u32 fourcc);
 const struct hantro_fmt *
-hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream);
+hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream, int bit_depth);
 
 #endif /* HANTRO_V4L2_H_ */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
