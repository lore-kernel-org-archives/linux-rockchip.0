Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8287FC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 20:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mAC991pdC4RuRBrqUhwwQb0chCo1h82CY3bFthRFCQ=; b=lqO1tlqKx3oaze
	vRyTjxbzorf5nXx/BoNiQ8Z4rsBRjWPPSI3bsCnNbghGcR8JohjPDXdyiCv8aJJm6DyvoYUOkqf69
	cm/qVaad/W3nSfKh/v1LYq1Ad8qNRsIkNUN2L9MWO+YLEef5ok3Jgg6vE8wShoGBdzbMND+RubPfU
	BHKhpvIa80EYdjyE4DREzkyJI01ENwFM4EsGqRAVZy1Gx+6WNLh7bn3aCmsbIMEokNMtSXw3IB5aD
	+8wfTK9B3SclazLxgDpJ3DKBhQAkT9EuHw+Lyy4HxeX5oxAXZl0H7UqTFSwZ5dhtlEp4oE85NLZee
	F4VM9E+BPdFaR13h21aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w4J-0046Kg-7D; Thu, 16 Jun 2022 20:26:19 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w3R-0045u1-8a; Thu, 16 Jun 2022 20:25:27 +0000
Received: by mail-ed1-x52a.google.com with SMTP id z7so3658526edm.13;
        Thu, 16 Jun 2022 13:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A6KqKZ7uot2Ti/Mxo6VH4v5VDRPNALBpJAKMaXAmJb0=;
        b=LTFssOTa4s6Pf6wMOjiCKYZHMa1p3F0ZAqSNV20WVcEJ61AGcwbIzqvNwSNC0dYyyM
         8+kJ7uG2bHuJ8+gOTqKT5E5w+IRK6i0KTyhp/BHXaguLf0Z7VVTn+d1zGpo6zMQNBa8p
         xtpHRCFSohZKSiJTdx/ntlBJD+mYYxNsr2YXdx+TpFWZO9Z6fXq2km5fLVDXe7wt4O8y
         4+vFrY8jH153Rg0VbnOl+F3iW2XtW3mEQ/6VsCQxnlpyexnPOGHRquiOkY4MCqZjDxKk
         B/SONzgJESVAJCjhTkKPSPAfeLgIMm1a2gFfIN4T/m+bnrOc9EzIw7JeH8IQDO4Kxr4H
         tIlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A6KqKZ7uot2Ti/Mxo6VH4v5VDRPNALBpJAKMaXAmJb0=;
        b=e5FI2lbqqzAI3eVhH2EFZue6guRoISOcD9P3RKnlrZbT5hbs9jWgc8ez+NZ/kJ/rQF
         +vn2IfEOPDRGXBuRzwmlm1qnvfypW3KEKzTn7OU577PubYA+WyMlZOg4A6Ru2ys4suFy
         CwxHS4UVvivbOg2fmcg4N4r36K15psgh58mCg9qNGJpzjQI5anyVtNWCznnEECO5lUmj
         ONG6MhOie+OojUMBNEOVgR1Hw5Ve6p6Wg2/n80CvhqBpsejyyW5C/9T/782yNMr/0NcQ
         hWXbzyzk1DTYata16xgb4LZoW9WOPiVIehNOcoU1bqBcWZPl4n+Wqe0z1byoeTGwGBkg
         F8Vw==
X-Gm-Message-State: AJIora9yfTsLcpEMM9vZ/L0r1FTqJ/0TdTx2gNHeGTWX+m1D+W9ZD/1X
	cGoemN8sBJJ96qiJs4lmn2g=
X-Google-Smtp-Source: AGRyM1u8BA1IP6qhWrhcmVCCBE3lwQ/GJARS79CFPZtMWpc4320rddwwS+Eoz6ZUpXMPEuy7GNJj5A==
X-Received: by 2002:a05:6402:17d0:b0:42d:ccc1:f4e4 with SMTP id s16-20020a05640217d000b0042dccc1f4e4mr8811433edy.150.1655411121486;
        Thu, 16 Jun 2022 13:25:21 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906329500b006fe8a4ec62fsm1186760ejw.4.2022.06.16.13.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:25:21 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com,
	nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH v2 2/7] media: hantro: Support format filtering by depth
Date: Thu, 16 Jun 2022 22:25:08 +0200
Message-Id: <20220616202513.351039-3-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220616202513.351039-1-jernej.skrabec@gmail.com>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_132525_417492_B2D20AF2 
X-CRM114-Status: GOOD (  19.55  )
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

In preparation for supporting 10-bit formats, add mechanism which will
filter formats based on pixel depth.

Hantro G2 supports only one decoding format natively and that is based
on bit depth of current video frame. Additionally, it makes no sense to
upconvert bitness, so filter those out too.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/hantro.h      |  4 ++
 drivers/staging/media/hantro/hantro_v4l2.c | 48 ++++++++++++++++++++--
 drivers/staging/media/hantro/hantro_v4l2.h |  1 +
 3 files changed, 50 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 26308bb29adc..2989ebc631cc 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -227,6 +227,7 @@ struct hantro_dev {
  *
  * @ctrl_handler:	Control handler used to register controls.
  * @jpeg_quality:	User-specified JPEG compression quality.
+ * @bit_depth:		Bit depth of current frame
  *
  * @codec_ops:		Set of operations related to codec mode.
  * @postproc:		Post-processing context.
@@ -252,6 +253,7 @@ struct hantro_ctx {
 
 	struct v4l2_ctrl_handler ctrl_handler;
 	int jpeg_quality;
+	int bit_depth;
 
 	const struct hantro_codec_ops *codec_ops;
 	struct hantro_postproc_ctx postproc;
@@ -277,6 +279,7 @@ struct hantro_ctx {
  * @enc_fmt:	Format identifier for encoder registers.
  * @frmsize:	Supported range of frame sizes (only for bitstream formats).
  * @postprocessed: Indicates if this format needs the post-processor.
+ * @match_depth: Indicates if format bit depth must match video bit depth
  */
 struct hantro_fmt {
 	char *name;
@@ -287,6 +290,7 @@ struct hantro_fmt {
 	enum hantro_enc_fmt enc_fmt;
 	struct v4l2_frmsize_stepwise frmsize;
 	bool postprocessed;
+	bool match_depth;
 };
 
 struct hantro_reg {
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 29cc61d53b71..334f18a4120d 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -64,6 +64,42 @@ hantro_get_postproc_formats(const struct hantro_ctx *ctx,
 	return ctx->dev->variant->postproc_fmts;
 }
 
+int hantro_get_format_depth(u32 fourcc)
+{
+	switch (fourcc) {
+	case V4L2_PIX_FMT_P010:
+	case V4L2_PIX_FMT_P010_4L4:
+		return 10;
+	default:
+		return 8;
+	}
+}
+
+static bool
+hantro_check_depth_match(const struct hantro_ctx *ctx,
+			 const struct hantro_fmt *fmt)
+{
+	int fmt_depth, ctx_depth = 8;
+
+	if (!fmt->match_depth && !fmt->postprocessed)
+		return true;
+
+	/* 0 means default depth, which is 8 */
+	if (ctx->bit_depth)
+		ctx_depth = ctx->bit_depth;
+
+	fmt_depth = hantro_get_format_depth(fmt->fourcc);
+
+	/*
+	 * Allow only downconversion for postproc formats for now.
+	 * It may be possible to relax that on some HW.
+	 */
+	if (!fmt->match_depth)
+		return fmt_depth <= ctx_depth;
+
+	return fmt_depth == ctx_depth;
+}
+
 static const struct hantro_fmt *
 hantro_find_format(const struct hantro_ctx *ctx, u32 fourcc)
 {
@@ -91,7 +127,8 @@ hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
 	formats = hantro_get_formats(ctx, &num_fmts);
 	for (i = 0; i < num_fmts; i++) {
 		if (bitstream == (formats[i].codec_mode !=
-				  HANTRO_MODE_NONE))
+				  HANTRO_MODE_NONE) &&
+		    hantro_check_depth_match(ctx, &formats[i]))
 			return &formats[i];
 	}
 	return NULL;
@@ -162,11 +199,13 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	formats = hantro_get_formats(ctx, &num_fmts);
 	for (i = 0; i < num_fmts; i++) {
 		bool mode_none = formats[i].codec_mode == HANTRO_MODE_NONE;
+		fmt = &formats[i];
 
 		if (skip_mode_none == mode_none)
 			continue;
+		if (!hantro_check_depth_match(ctx, fmt))
+			continue;
 		if (j == f->index) {
-			fmt = &formats[i];
 			f->pixelformat = fmt->fourcc;
 			return 0;
 		}
@@ -182,8 +221,11 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 		return -EINVAL;
 	formats = hantro_get_postproc_formats(ctx, &num_fmts);
 	for (i = 0; i < num_fmts; i++) {
+		fmt = &formats[i];
+
+		if (!hantro_check_depth_match(ctx, fmt))
+			continue;
 		if (j == f->index) {
-			fmt = &formats[i];
 			f->pixelformat = fmt->fourcc;
 			return 0;
 		}
diff --git a/drivers/staging/media/hantro/hantro_v4l2.h b/drivers/staging/media/hantro/hantro_v4l2.h
index 18bc682c8556..b17e84c82582 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.h
+++ b/drivers/staging/media/hantro/hantro_v4l2.h
@@ -22,5 +22,6 @@ extern const struct v4l2_ioctl_ops hantro_ioctl_ops;
 extern const struct vb2_ops hantro_queue_ops;
 
 void hantro_reset_fmts(struct hantro_ctx *ctx);
+int hantro_get_format_depth(u32 fourcc);
 
 #endif /* HANTRO_V4L2_H_ */
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
