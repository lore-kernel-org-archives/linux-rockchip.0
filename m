Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5503D606A330
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 20:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=z4Z6XcND;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=obIktoh5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SoxYPxCNT+PH4p7JRBKNN5MeaiSSGNVDkYuwsyv8F54=; b=z4Z6XcNDp3zS5suB4ZStL3+3lO
	iv3rGidRbQldzyZh+TJI0S8NVtV/7jdFfivL0jXahKgFnuMykADjtt21kowdngani4TEP2MEiFwEb
	8nezxNsO/Q6AJVqFdfjKLJhuKOgzDEQvKUruhr2NW8TOy53en/oep1A8hw1r5Ds4ACtvAAQmi9cCM
	FK6j2KGlDGaQorFnflrPQBqMeNKNJ9ppEk/I4agC0Ye2xI7XZB38Ke73CYhbTE3kkD0M4/8yCEWzk
	JCxZR3V+D0pdfH33Qmp73xChVEreH45BkfKBTlCkNNiIc/JD9NYpf8TpmdHzViAL8OvolL4dMtaNQ
	gIJdSCjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTmM0-0000000AE0D-2l9y;
	Wed, 18 Nov 2026 20:34:04 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTmLs-0000000ADuc-1BVc
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 20:33:57 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2efb772d4c0so955605ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 12:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795034035; x=1795638835; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=y75oxAwlO6c2EjPrPmHn9WTGzz0GY9XzQAVscbqDFeA=;
        b=obIktoh5/Wz+4NpmiNCeeNMuqy0ivRLyApvbBxJQJfsZUIOM+D27XQv6dbiRNPulvw
         f/vc2D3HpP6SLeSx/VuSYPyzul7DKgPfirMg0Sk8lwMQbJ6hkCKT+98iKmFvSoh2gXTz
         WSEcqx9t6BBE8hb4+41YgUXAjrdD+WxbmV9EL7iaTz9x0HZOkPTOjS6V+eCBsYvFZ6Rl
         iSP2tQ0uSlK8SFgmqvHX29wxh5LJN5GOf1p5ncYpARGvY+nwA6iG81V/JsZ2PqOgfR/l
         ZqVG46pHpQsqavyuGAptK3mXuNxeTqZrbwPl/NdLbvH+WqWtorTS0uEQjA5Mpyq61UPV
         2PLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795034035; x=1795638835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=y75oxAwlO6c2EjPrPmHn9WTGzz0GY9XzQAVscbqDFeA=;
        b=MpC8AivY3sASXdJXsQNhAQp0E8/KXRSMDyZrpz4tyox85f5RKIxV9ftzVEcPGL2Q5F
         tU2VKPcZVLHWwuUFjMS3xWor2/vinqNU8qCydBkd/ElWI9XaIWduJe9ewpSaZx6FtOKL
         gBM33dGNIT8L9dcK7EWokTUbzXnVzwXAJIqotjznHqQv0o9q0x9EI+E2sGIKcnxgJlws
         SXEDwMV2TsB/ZlRQwWLO+2TZDRTwMCfUAkQvBMoNm0iiZLq0O3BJ8hLdQRq1YeSmMtGJ
         H48LMFXq1x0QG3NZ+pZmg18o0BxSl0tFQwPDBvyoXxLCAz5UQ/lWbtSnkfOEsvPL3mvn
         gJRw==
X-Forwarded-Encrypted: i=1; AL+hErEnweyosIzYBQl/q3rqp8Q+h6Wb0/06yF+jJLty5xtuaeReThqLFEQ/6PH03Nyfmxel5uRm8YpG0D4+PRij/w==@lists.infradead.org
X-Gm-Message-State: APuU4Z8u7d1zDJXSjHhT9jIA21iNQRJvK+BoFrY3Rz59tIFZwL5i4kA2
	uwcBZhvRtpJAUM5yMHgQJGko5cgG9ke3HW87JuwKP9uDmAHMBnXDvrCM
X-Gm-Gg: AZFdTZcA7n8LAKGgCBvAhfJYsHUx1Hv1a1cu85+MScGfVltL9RT/0VDkOInmVmmZjJq
	HvOLLdKFbo10HOVNYVK0KL5q7IVx4bCEgzheEjIdG9v7nEP0iimHm8p4jNZkqQYrObbspHjvRzI
	Oz0VBmEL8xP4phEQxcRGSCOMhE0BPu2R9wP865IkSFgZEpy8F0IPtRHn6DAZ+1Y+EyQCIE7/65o
	6lw67oqzq2SZ79+CsZZJH+cznt8+3SJwzAEmM35rKjJSv5yE0GlwcchPdVeSpeIFkB16KU+77kd
	61eD633ozHe55UY+o1CpBdrNqb5+Y16wZE6Id04Uk0KdbiCQESIAT8y4c5e+iaYh5S/0fAoEfBM
	ZOEbtrI6LixWQcBi2pLtMiyaYrbHyDu2PvUvdaIOoLNmFGu+sWwgKFH+smN3kZ3RoNTpco6USTz
	BHLYkZZl4iSrVQmWkHLy9TOPpyEYrbGQPUQCFPS3WeKF737/ygZxBmyjsUquZPG9WGGdRBpM+FW
	IKLNygjt+4xBGykarl3pQneFQ1RQ0vqyT+49sDkeXkifD+aIHiq96fHkhKvZTZTuuoSklRrxuq8
	1NhZiXzvU05C9cs6IqzMiAb3IC6/ksS6va4x/tjGs88zD7NIzrcb36XWpzf5S9L+6EbyDw/igiU
	a25Mp7CM=
X-Received: by 2002:a17:903:2b0d:b0:2ef:d8ce:83e6 with SMTP id d9443c01a7336-2eff6f850b2mr56986735ad.0.1795034035036;
        Wed, 18 Nov 2026 12:33:55 -0800 (PST)
Received: from FAIZEL-KB.. ([2001:569:52f5:4b00:cfaf:4885:b023:6316])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2eff6116331sm19166825ad.22.2026.11.18.12.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 12:33:54 -0800 (PST)
From: Faizel K B <faizel.kb@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	libcamera-devel@lists.libcamera.org,
	Robert Mader <robert.mader@collabora.com>,
	Faizel K B <faizel.kb@gmail.com>
Subject: [PATCH v2 2/2] media: rockchip: rkcif: Honour the requested bytesperline
Date: Wed, 18 Nov 2026 13:31:34 -0700
Message-ID: <20261118203134.315591-3-faizel.kb@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261118203134.315591-1-faizel.kb@gmail.com>
References: <20261118203134.315591-1-faizel.kb@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_123356_331046_97B47DBC 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The DMA uses bytesperline as the line stride, which must be a multiple
of 8 bytes, but v4l2_fill_pixfmt_mp() doesn't align it. Any larger
bytesperline requested by userspace is also replaced with the minimum.

Align bytesperline to 8 bytes and honour the largest value requested
for any plane, up to the limit of the line width register. The Y and
UV planes share the same line width. On the DVP, program the line width
from bytesperline, keeping the current value as the minimum.

This allows DMA-BUF importers that need a larger stride alignment to
use the buffers directly.

Signed-off-by: Faizel K B <faizel.kb@gmail.com>
---
 .../rockchip/rkcif/rkcif-capture-dvp.c        |  4 ++
 .../rockchip/rkcif/rkcif-capture-mipi.c       |  3 ++
 .../platform/rockchip/rkcif/rkcif-common.h    |  1 +
 .../platform/rockchip/rkcif/rkcif-stream.c    | 48 ++++++++++++++++++-
 4 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-dvp.c b/drivers/media/platform/rockchip/rkcif/rkcif-capture-dvp.c
index dbaf7636aeeb..64a37d6877e2 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-dvp.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-dvp.c
@@ -20,6 +20,8 @@
 #include "rkcif-regs.h"
 #include "rkcif-stream.h"
 
+#define RKCIF_DVP_MAX_BYTESPERLINE 0x7ff8 /* VIR_LINE_WIDTH: 15 bits */
+
 static const struct rkcif_output_fmt dvp_out_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV16,
@@ -689,6 +691,7 @@ static int rkcif_dvp_start_streaming(struct rkcif_stream *stream)
 	val = stream->pix.width;
 	if (active_in_fmt->fmt_type == RKCIF_FMT_TYPE_RAW)
 		val = stream->pix.width * 2;
+	val = max(val, stream->pix.plane_fmt[0].bytesperline);
 	rkcif_dvp_write(rkcif, RKCIF_DVP_VIR_LINE_WIDTH, val);
 
 	val = RKCIF_XY_COORD(stream->pix.width, stream->pix.height);
@@ -827,6 +830,7 @@ int rkcif_dvp_register(struct rkcif_device *rkcif)
 		stream->interface = interface;
 		stream->out_fmts = rkcif->match_data->dvp->out_fmts;
 		stream->out_fmts_num = rkcif->match_data->dvp->out_fmts_num;
+		stream->max_bytesperline = RKCIF_DVP_MAX_BYTESPERLINE;
 		stream->queue_buffer = rkcif_dvp_queue_buffer;
 		stream->start_streaming = rkcif_dvp_start_streaming;
 		stream->stop_streaming = rkcif_dvp_stop_streaming;
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
index 53e62d059764..d5eaedd2c43b 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
@@ -24,6 +24,8 @@
 #include "rkcif-regs.h"
 #include "rkcif-stream.h"
 
+#define RKCIF_MIPI_MAX_BYTESPERLINE 0xffff8 /* VLW: 20 bits */
+
 #define RK3568_MIPI_CTRL0_HIGH_ALIGN  BIT(31)
 #define RK3568_MIPI_CTRL0_UV_SWAP_EN  BIT(7)
 #define RK3568_MIPI_CTRL0_COMPACT_EN  BIT(6)
@@ -1026,6 +1028,7 @@ int rkcif_mipi_register(struct rkcif_device *rkcif)
 			stream->interface = interface;
 			stream->out_fmts = mipi_out_fmts;
 			stream->out_fmts_num = ARRAY_SIZE(mipi_out_fmts);
+			stream->max_bytesperline = RKCIF_MIPI_MAX_BYTESPERLINE;
 			stream->queue_buffer = rkcif_mipi_queue_buffer;
 			stream->start_streaming = rkcif_mipi_start_streaming;
 			stream->stop_streaming = rkcif_mipi_stop_streaming;
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-common.h b/drivers/media/platform/rockchip/rkcif/rkcif-common.h
index 08a213438d34..63e5a221cd73 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-common.h
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-common.h
@@ -145,6 +145,7 @@ struct rkcif_stream {
 	struct rkcif_interface *interface;
 	const struct rkcif_output_fmt *out_fmts;
 	unsigned int out_fmts_num;
+	u32 max_bytesperline;
 
 	/* in ping-pong mode, two buffers can be provided to the HW */
 	struct rkcif_buffer *buffers[2];
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
index b117ba57bc75..f700b40ab099 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
@@ -23,6 +23,7 @@
 #define CIF_MIN_HEIGHT	 64
 #define CIF_MAX_WIDTH	 8192
 #define CIF_MAX_HEIGHT	 8192
+#define CIF_BYTESPERLINE_ALIGN 8
 
 static inline struct rkcif_buffer *to_rkcif_buffer(struct vb2_v4l2_buffer *vb)
 {
@@ -334,20 +335,63 @@ static const struct vb2_ops rkcif_stream_vb2_ops = {
 	.stop_streaming = rkcif_stream_stop_streaming,
 };
 
+static u32 rkcif_stream_plane_lines(const struct v4l2_format_info *info,
+				    unsigned int plane, u32 height)
+{
+	return plane ? DIV_ROUND_UP(height, info->vdiv) : height;
+}
+
+static void rkcif_stream_set_bytesperline(struct rkcif_stream *stream,
+					  struct v4l2_pix_format_mplane *pix,
+					  u32 req_bpl)
+{
+	const struct v4l2_format_info *info = v4l2_format_info(pix->pixelformat);
+	u32 bpl = pix->plane_fmt[0].bytesperline;
+	u32 total_lines = 0, max_bpl;
+	unsigned int i;
+
+	for (i = 0; i < info->comp_planes; i++)
+		total_lines += rkcif_stream_plane_lines(info, i, pix->height);
+
+	max_bpl = min(stream->max_bytesperline,
+		      ALIGN_DOWN(U32_MAX / total_lines, CIF_BYTESPERLINE_ALIGN));
+	if (req_bpl > bpl && req_bpl <= max_bpl)
+		bpl = ALIGN(req_bpl, CIF_BYTESPERLINE_ALIGN);
+
+	/* The Y and UV planes share the same line width. */
+	if (info->mem_planes == 1) {
+		pix->plane_fmt[0].bytesperline = bpl;
+		pix->plane_fmt[0].sizeimage = bpl * total_lines;
+	} else {
+		for (i = 0; i < info->mem_planes; i++) {
+			pix->plane_fmt[i].bytesperline = bpl;
+			pix->plane_fmt[i].sizeimage =
+				bpl * rkcif_stream_plane_lines(info, i,
+							       pix->height);
+		}
+	}
+}
+
 static int rkcif_stream_fill_format(struct rkcif_stream *stream,
 				    struct v4l2_pix_format_mplane *pix)
 {
 	const struct rkcif_output_fmt *fmt;
-	u32 height, width;
+	u32 height, width, req_bpl = 0;
+	unsigned int i;
 	int ret;
 
 	fmt = rkcif_stream_find_output_fmt(stream, true, pix->pixelformat);
 	height = clamp_t(u32, pix->height, CIF_MIN_HEIGHT, CIF_MAX_HEIGHT);
 	width = clamp_t(u32, pix->width, CIF_MIN_WIDTH, CIF_MAX_WIDTH);
-	ret = v4l2_fill_pixfmt_mp(pix, fmt->fourcc, width, height);
+	for (i = 0; i < pix->num_planes; i++)
+		req_bpl = max(req_bpl, pix->plane_fmt[i].bytesperline);
+	ret = v4l2_fill_pixfmt_mp_aligned(pix, fmt->fourcc, width, height,
+					  CIF_BYTESPERLINE_ALIGN);
 	if (ret)
 		return ret;
 
+	rkcif_stream_set_bytesperline(stream, pix, req_bpl);
+
 	pix->field = V4L2_FIELD_NONE;
 
 	return 0;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
