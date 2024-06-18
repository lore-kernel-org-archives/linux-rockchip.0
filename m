Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31FAEC2BA15
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 19:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZVtI0X0PWLdJiILxO4CR8/EpPz2Lowo/DpJskL1/bw=; b=dckIJr2z5DxKTc
	1wL0apcjcOfUK/33/Ae8ddt3TZ70/w7ohbZw1sbdlbCN1Yex0i8k0Pjd6rXfgrDoRbqZZV7vIdxhL
	aNfdhG7swqBvoTVny1FfhlYtsTHn9TWvpHdYfkJSbZYX7lY7NHqAYeFTx0ytwDPiTKjv4rw51N+vA
	WXSZYd2h2if8e6T6EY14AZVQ6HlXdWstBEPlY5dBfkOW9lBVCtYw2/5f0VqUZ9UXbzI24RmOx8rvA
	2ArmATzKmzfjl19shzdfW0Wj8TUmcUe/WQfXIFhXZgbchrxybbvlVAAKGg2bibFjV1VyCrYXwzkRw
	FUvG+PryfHuj3CbOuAOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJeo9-0000000GPD2-3O08;
	Tue, 18 Jun 2024 19:47:57 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJeo5-0000000GP9B-0drq
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 19:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718740053; bh=IsCrJeIVgqZQ0uPS4re4coKeRrjUqPudPG7JrJTjDNM=;
 b=v4Epk34Vs1PPeN2oMrpkyEtTjxjKR2VGNq7PwU4R5xFAwlMnpj5UxiOm7QesS+Z0CQTtJNimX
 zPCBm5OFXgugdwjqaz8taBbmRY0DQrJrLe1yx0NWhPuRo3s2vGbeHrJKU7XLnmNMkvsNP3ZMmB5
 NqanWpyrLZ8KiB6maOgJMGqC39xiST/Rx81V72ERLIftB81Pax1Zyv6YUR3VmxRU4veaOlDtylD
 YVA7lQUcQm1KNsWxltxYiIkOdwb3CxXyDeKRafoOYtk5HJbT1JHfFqeY60PASy1tajxX8H4ZOQ/
 EfwODraRGbXgNYCgO8GNAlbcbvjYZxx0HqQnhBxpZeaw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, Detlev Casanova
 <detlev.casanova@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v5 08/10] media: rkvdec: Add image format concept
Date: Tue, 18 Jun 2024 19:46:32 +0000
Message-ID: <20240618194647.742037-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240618194647.742037-1-jonas@kwiboo.se>
References: <20240618194647.742037-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6671e45164ade33c9005a001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_124753_338850_887BBF18 
X-CRM114-Status: GOOD (  14.83  )
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

Add an enum rkvdec_image_fmt used to signal an image format, e.g.
4:2:0 8-bit, 4:2:0 10-bit or any.

Tag each supported CAPUTRE format with an image format and use this tag
to filter out unsupported CAPTURE formats.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Christopher Obbard <chris.obbard@collabora.com>
---
v5:
- Collect t-b tags

v4:
- Change fmt_opaque into an image format
- Split patch into two

v3:
- New patch

 drivers/staging/media/rkvdec/rkvdec.c | 45 ++++++++++++++++++++-------
 drivers/staging/media/rkvdec/rkvdec.h | 13 +++++++-
 2 files changed, 45 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index efbf9aa578ae..d8fb2d935ffc 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -27,26 +27,42 @@
 #include "rkvdec.h"
 #include "rkvdec-regs.h"
 
-static u32 rkvdec_enum_decoded_fmt(struct rkvdec_ctx *ctx, int index)
+static inline bool rkvdec_image_fmt_match(enum rkvdec_image_fmt fmt1,
+					  enum rkvdec_image_fmt fmt2)
+{
+	return fmt1 == fmt2 || fmt2 == RKVDEC_IMG_FMT_ANY ||
+	       fmt1 == RKVDEC_IMG_FMT_ANY;
+}
+
+static u32 rkvdec_enum_decoded_fmt(struct rkvdec_ctx *ctx, int index,
+				   enum rkvdec_image_fmt image_fmt)
 {
 	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	unsigned int i, j;
 
 	if (WARN_ON(!desc))
 		return 0;
 
-	if (index >= desc->num_decoded_fmts)
-		return 0;
+	for (i = 0, j = 0; i < desc->num_decoded_fmts; i++) {
+		if (rkvdec_image_fmt_match(desc->decoded_fmts[i].image_fmt,
+					   image_fmt) &&
+		    index == j++)
+			return desc->decoded_fmts[i].fourcc;
+	}
 
-	return desc->decoded_fmts[index];
+	return 0;
 }
 
-static bool rkvdec_is_valid_fmt(struct rkvdec_ctx *ctx, u32 fourcc)
+static bool rkvdec_is_valid_fmt(struct rkvdec_ctx *ctx, u32 fourcc,
+				enum rkvdec_image_fmt image_fmt)
 {
 	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
 	unsigned int i;
 
 	for (i = 0; i < desc->num_decoded_fmts; i++) {
-		if (desc->decoded_fmts[i] == fourcc)
+		if (rkvdec_image_fmt_match(desc->decoded_fmts[i].image_fmt,
+					   image_fmt) &&
+		    desc->decoded_fmts[i].fourcc == fourcc)
 			return true;
 	}
 
@@ -80,7 +96,7 @@ static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
 	struct v4l2_format *f = &ctx->decoded_fmt;
 	u32 fourcc;
 
-	fourcc = rkvdec_enum_decoded_fmt(ctx, 0);
+	fourcc = rkvdec_enum_decoded_fmt(ctx, 0, ctx->image_fmt);
 	rkvdec_reset_fmt(ctx, f, fourcc);
 	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
@@ -149,8 +165,11 @@ static const struct rkvdec_ctrls rkvdec_h264_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_h264_ctrl_descs),
 };
 
-static const u32 rkvdec_h264_vp9_decoded_fmts[] = {
-	V4L2_PIX_FMT_NV12,
+static const struct rkvdec_decoded_fmt_desc rkvdec_h264_vp9_decoded_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_NV12,
+		.image_fmt = RKVDEC_IMG_FMT_420_8BIT,
+	},
 };
 
 static const struct rkvdec_ctrl_desc rkvdec_vp9_ctrl_descs[] = {
@@ -282,8 +301,9 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 	if (WARN_ON(!coded_desc))
 		return -EINVAL;
 
-	if (!rkvdec_is_valid_fmt(ctx, pix_mp->pixelformat))
-		pix_mp->pixelformat = rkvdec_enum_decoded_fmt(ctx, 0);
+	if (!rkvdec_is_valid_fmt(ctx, pix_mp->pixelformat, ctx->image_fmt))
+		pix_mp->pixelformat = rkvdec_enum_decoded_fmt(ctx, 0,
+							      ctx->image_fmt);
 
 	/* Always apply the frmsize constraint of the coded end. */
 	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
@@ -400,6 +420,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	 *
 	 * Note that this will propagates any size changes to the decoded format.
 	 */
+	ctx->image_fmt = RKVDEC_IMG_FMT_ANY;
 	rkvdec_reset_decoded_fmt(ctx);
 
 	/* Propagate colorspace information to capture. */
@@ -449,7 +470,7 @@ static int rkvdec_enum_capture_fmt(struct file *file, void *priv,
 	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
 	u32 fourcc;
 
-	fourcc = rkvdec_enum_decoded_fmt(ctx, f->index);
+	fourcc = rkvdec_enum_decoded_fmt(ctx, f->index, ctx->image_fmt);
 	if (!fourcc)
 		return -EINVAL;
 
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 633335ebb9c4..6f8cf50c5d99 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -75,13 +75,23 @@ struct rkvdec_coded_fmt_ops {
 	int (*try_ctrl)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
 };
 
+enum rkvdec_image_fmt {
+	RKVDEC_IMG_FMT_ANY = 0,
+	RKVDEC_IMG_FMT_420_8BIT,
+};
+
+struct rkvdec_decoded_fmt_desc {
+	u32 fourcc;
+	enum rkvdec_image_fmt image_fmt;
+};
+
 struct rkvdec_coded_fmt_desc {
 	u32 fourcc;
 	struct v4l2_frmsize_stepwise frmsize;
 	const struct rkvdec_ctrls *ctrls;
 	const struct rkvdec_coded_fmt_ops *ops;
 	unsigned int num_decoded_fmts;
-	const u32 *decoded_fmts;
+	const struct rkvdec_decoded_fmt_desc *decoded_fmts;
 	u32 subsystem_flags;
 };
 
@@ -104,6 +114,7 @@ struct rkvdec_ctx {
 	const struct rkvdec_coded_fmt_desc *coded_fmt_desc;
 	struct v4l2_ctrl_handler ctrl_hdl;
 	struct rkvdec_dev *dev;
+	enum rkvdec_image_fmt image_fmt;
 	void *priv;
 };
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
