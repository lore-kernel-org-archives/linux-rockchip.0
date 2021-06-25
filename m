Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA13AC48BC2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 14:13:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B97EC61948
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 14:13:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B97EC61948
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5zZVs6g9gvxKlRwVHixH+1QzVFd8fEFjvVIC581DuE=; b=MofwOrRVWrlW2D
	M3+S8BCai2rG7Kt5RQ7E6O7YsRMHfzi1LPIV6t+8x2EubcbAcXOt+qbJPLcKDBbrt++IbRVIAxilX
	G7wpwY+rZpYAiSky3+CZ5iaZC3GGZsCJqk1B+ff45BL6DxI2P1yFCvXqFKc4DC5EQIZaT+ZBN5uaC
	0y2qwmU/+8xwsANp3CS5NMn5ydB4NDCKb/Hj9m0XYFkqLD0RjQUz+kZr6Fu7ChEy3ZNGXpZMTTUxr
	ZyT4ha2orH8axQ+9Rm8E0Ek8JfM6504Qcb3Wkgk37e/MgVBJvtCg83CJpaI9w0bgqMkPmXrUN3IaN
	2Jf+s6NpRh1snZZ6RzWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwmah-001qhG-9b; Fri, 25 Jun 2021 14:13:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwmZ4-001pv1-8X; Fri, 25 Jun 2021 14:12:16 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:42b6:51ca:7d52:50ad])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8F9231F4474C;
 Fri, 25 Jun 2021 15:12:11 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk,
 jernej.skrabec@gmail.com, nicolas@ndufresne.ca, cphealy@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 5/9] media: hantro: hevc: Allow to produce 10-bit frames
Date: Fri, 25 Jun 2021 16:11:39 +0200
Message-Id: <20210625141143.577998-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210625141143.577998-1-benjamin.gaignard@collabora.com>
References: <20210625141143.577998-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_071214_662400_0B974E51 
X-CRM114-Status: GOOD (  18.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

If Hantro driver receive an 10-bit encoded bitstream allow it
to produce 10-bit frames.
Check that we are not try to produce 10-bit frames from a 8-bit
encoded bitstream.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 4:
 - Make sure that 10 bits output format (i.e. P010) is only enumerated
   when encoded input stream is 10 bits.

 .../staging/media/hantro/hantro_g2_hevc_dec.c | 18 ++++++++---
 drivers/staging/media/hantro/hantro_hevc.c    |  2 +-
 drivers/staging/media/hantro/hantro_v4l2.c    | 31 +++++++++++++++++++
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  4 +++
 4 files changed, 50 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 907e453ac9b2..3b273f31e9ce 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -143,6 +143,16 @@ static bool is_8bit_dst_format(struct hantro_ctx *ctx)
 	}
 }
 
+static int get_dst_format(struct hantro_ctx *ctx)
+{
+	switch (ctx->vpu_dst_fmt->fourcc) {
+	case V4L2_PIX_FMT_P010:
+		return 0x1;
+	default:
+		return 0x0;
+	}
+}
+
 static void set_params(struct hantro_ctx *ctx)
 {
 	const struct hantro_hevc_dec_ctrls *ctrls = &ctx->hevc_dec.ctrls;
@@ -158,8 +168,8 @@ static void set_params(struct hantro_ctx *ctx)
 	hantro_reg_write(vpu, &g2_bit_depth_y_minus8, sps->bit_depth_luma_minus8);
 	hantro_reg_write(vpu, &g2_bit_depth_c_minus8, sps->bit_depth_chroma_minus8);
 
-	hantro_reg_write(vpu, &g2_output_8_bits, 1);
-	hantro_reg_write(vpu, &g2_output_format, 0);
+	hantro_reg_write(vpu, &g2_output_8_bits, is_8bit_dst_format(ctx));
+	hantro_reg_write(vpu, &g2_output_format, get_dst_format(ctx));
 
 	hantro_reg_write(vpu, &g2_hdr_skip_length, ctrls->hevc_hdr_skip_length);
 
@@ -540,7 +550,7 @@ static size_t hantro_hevc_output_chroma_offset(struct hantro_ctx *ctx)
 	int bytes_per_pixel = is_8bit_dst_format(ctx) ? 1 : 2;
 
 	return sps->pic_width_in_luma_samples *
-		sps->pic_height_in_luma_samples * bytes_per_pixel;
+	       sps->pic_height_in_luma_samples * bytes_per_pixel;
 }
 
 static void set_buffers(struct hantro_ctx *ctx)
@@ -627,7 +637,7 @@ int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx)
 	/* Compress buffers */
 	hantro_reg_write(vpu, &g2_ref_compress_bypass, 0);
 
-	/* use NV12 as output format */
+	/* Use raster-scan as output format */
 	hantro_reg_write(vpu, &g2_out_rs_e, 1);
 
 	/* Bus width and max burst */
diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index 3d6606ff3340..4e816ea73018 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -25,7 +25,7 @@
 
 #define UNUSED_REF	-1
 
-#define G2_ALIGN		16
+#define G2_ALIGN	16
 
 #define CBS_SIZE	16	/* compression table size in bytes */
 #define CBS_LUMA 	8	/* luminance CBS is composed of 1 8x8 coded block */
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index bcb0bdff4a9a..d5fe808d858b 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -141,6 +141,34 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 	return 0;
 }
 
+static bool hantro_hevc_check_possible_formats(struct hantro_ctx *ctx,
+					       const struct hantro_fmt *fmt)
+{
+	const struct v4l2_ctrl_hevc_sps *sps;
+
+	/*
+	 * For HEVC check if the format is allowed given the luma depth
+	 * because the hardware can only produce 10 bits output frames
+	 * from 10 bits inputs streams.
+	 * It possible to produce 8 bits output frames from 10 bits inputs
+	 * streams.
+	 */
+	if (ctx->vpu_src_fmt->fourcc != V4L2_PIX_FMT_HEVC_SLICE)
+		return true;
+
+	sps = hantro_get_ctrl(ctx, V4L2_CID_MPEG_VIDEO_HEVC_SPS);
+	if (!sps)
+		return false;
+
+	if (sps->bit_depth_luma_minus8 == 2)
+		return true;
+
+	if (fmt->fourcc == V4L2_PIX_FMT_P010)
+		return false;
+
+	return true;
+}
+
 static int vidioc_enum_fmt(struct file *file, void *priv,
 			   struct v4l2_fmtdesc *f, bool capture)
 
@@ -168,6 +196,9 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 
 		if (skip_mode_none == mode_none)
 			continue;
+		if (capture &&
+		    !hantro_hevc_check_possible_formats(ctx, &formats[i]))
+			continue;
 		if (j == f->index) {
 			fmt = &formats[i];
 			f->pixelformat = fmt->fourcc;
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index ab6ac620f0d0..65bcf46740d7 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -135,6 +135,10 @@ static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.codec_mode = HANTRO_MODE_NONE,
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010,
+		.codec_mode = HANTRO_MODE_NONE,
+	},
 	{
 		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
 		.codec_mode = HANTRO_MODE_HEVC_DEC,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
