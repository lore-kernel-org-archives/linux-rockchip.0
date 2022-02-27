Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ECF6C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZrJaj3/B4ctYt21YZ+fcITUJAzR1Toi/GFNHv+3BDU=; b=EFLtGVgK2GnePP
	cYmpw6vdUr9Wd2KpdkL1c3LmB/TPcTrCNapdMp6WrTH6py8fZipPDiX92f8v0GDa0a13k6MfkPcm1
	rONY2IpCua6+j7+jV0PGGWmK17ET54PKopRG0YM7zTWkNz2/qufYrIHjU9JE/t7cnXX0HRhhUKutb
	kvTqlWzPCve70QnYuurIee49S0t0f2JVfupRpz9EHQEduC14YXBKPMi1KxXMQ/jy2cAZahjTT0+ex
	/pkW2jV58mekuGhOfLfg5c8aF9EKPdPIcqhpBUJre+4uSsIdtNW+5f/3hc/gfur3Do4ZJJQ/UJP6V
	bvNuY5WEmr6JEyJN/ljQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKt3-009UX3-5e; Sun, 27 Feb 2022 14:51:01 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKsc-009UFp-6o; Sun, 27 Feb 2022 14:50:36 +0000
Received: by mail-ej1-x636.google.com with SMTP id p15so20054392ejc.7;
 Sun, 27 Feb 2022 06:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yvrOVZNjXQyBUoPy6U7DgZ3tOvIxB5qxIwEMbzSMThQ=;
 b=LS8iUC/yQ7XC7WOXpHLYu3ehoe12LzROQTpkmx9FVArheOQ/gQsb54Gu9Gj9md2OFN
 HAiZRU0mjPKQvGEOGNF6khsmywBQZef1GfBBq4zRgRjeKczgJP8qJUYaWBHedupTzo7M
 O4h6nX2XKZnmRQdcgtaq+Le8lWkI0SU+zB+5ePIrfp/TKOKMpLdvWwuYSBEA8IZ+qaWj
 O5NMKnB6+LtlNCTlFzGfUoWL3wOlUnYwnK669ux4i9bVkq+jcWO52b3erMfiM6kaEhHG
 19PFMLhcEAGWw+RpOeEjrJEumDWMZ47oU64F3MHIjWP6a3CctBcXQWtSFqB2Z19N/oXP
 JO4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yvrOVZNjXQyBUoPy6U7DgZ3tOvIxB5qxIwEMbzSMThQ=;
 b=43aJf854yPc3TmaG79I97IQ5q0wc73LdUqurrTETyqur2BlaI11rs7nVo02BZwS4XD
 sh2EpZf8RVSSMm4nZQs5yONbXrRFwWcal1Bl05J8wC78SVyiBSh3CoNAwWnfZLhKvU/g
 KXfKTLSOfCnlclfXu35TEocm5YOiK2l1/kI4qbeb9clgz3XE7DNvJoblEv1+7mRlNq4O
 XBCayoWr6QTJ40y9/+jsQRQrC+IM327a2Zl/Fc7EdWdp8GwZY9ZkDtZMA4pwpLV0/JUg
 dWKrtOd7g+s0f50pu8FsG63EpO4LE8vR/cODaOYWNh1Yglcw3Pn33GOgs8wOr8OZ9Nfu
 2cKA==
X-Gm-Message-State: AOAM53016BsNm9u60HJZg+24lkDG90pAoOAvZm6ERzJ5zHbTQTILOFZ3
 jRiUEYPVQ+YzyQzxcJmzA3s=
X-Google-Smtp-Source: ABdhPJzkK0ZwrCSbOnr9zXlDGIC2dvBZjaNz6tG92sdPu2oQhHwSzUvuErAG+ybhThg47RBrJvQCwg==
X-Received: by 2002:a17:906:b052:b0:6ce:88a5:e42a with SMTP id
 bj18-20020a170906b05200b006ce88a5e42amr12468891ejb.237.1645973432598; 
 Sun, 27 Feb 2022 06:50:32 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:32 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 3/8] media: hantro: Support format filtering by depth
Date: Sun, 27 Feb 2022 15:49:21 +0100
Message-Id: <20220227144926.3006585-4-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065034_277973_A193AB46 
X-CRM114-Status: GOOD (  19.02  )
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
index 06d0f3597694..c6525ee8d89a 100644
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
@@ -278,6 +280,7 @@ struct hantro_ctx {
  * @enc_fmt:	Format identifier for encoder registers.
  * @frmsize:	Supported range of frame sizes (only for bitstream formats).
  * @postprocessed: Indicates if this format needs the post-processor.
+ * @match_depth: Indicates if format bit depth must match video bit depth
  */
 struct hantro_fmt {
 	char *name;
@@ -288,6 +291,7 @@ struct hantro_fmt {
 	enum hantro_enc_fmt enc_fmt;
 	struct v4l2_frmsize_stepwise frmsize;
 	bool postprocessed;
+	bool match_depth;
 };
 
 struct hantro_reg {
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index e595905b3bd7..1214fa2f64ae 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -64,6 +64,42 @@ hantro_get_postproc_formats(const struct hantro_ctx *ctx,
 	return ctx->dev->variant->postproc_fmts;
 }
 
+int hantro_get_formath_depth(u32 fourcc)
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
+	fmt_depth = hantro_get_formath_depth(fmt->fourcc);
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
@@ -163,11 +200,13 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
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
@@ -183,8 +222,11 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
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
index 18bc682c8556..f4a5905ed518 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.h
+++ b/drivers/staging/media/hantro/hantro_v4l2.h
@@ -22,5 +22,6 @@ extern const struct v4l2_ioctl_ops hantro_ioctl_ops;
 extern const struct vb2_ops hantro_queue_ops;
 
 void hantro_reset_fmts(struct hantro_ctx *ctx);
+int hantro_get_formath_depth(u32 fourcc);
 
 #endif /* HANTRO_V4L2_H_ */
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
