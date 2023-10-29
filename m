Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8890C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Oct 2023 18:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nLn1Twej4EIUXuBjSz8rSVr0FV/7oLDX/qk3ljFeAY=; b=rSEGscb9Top9XA
	pdbdp4VN+lN4feJEQbQQn3zrFJ1Ssvut6EKnfatCmLIORUDkgTe3mhAFz8L1wIbYV0C5CvbVfXgZ4
	z4020NXw8VJRC8zkRpAeDM5vJIxGKdEJj9CvE06oqcblFq7Mo4kLUmdwVkBzwchsYFrDgcGAYjBKi
	BIJTPAJA12uROr+oZcDAcMgTHIlAVbjcEhqDoK40fVh8rdf1KFIvnzs5CFrdhqWh9ODm+SFt0Uh93
	kGQH559RmS/G3vl4HSGZ8Rw061M2nqzTRX0hBO3Blen6gk3v22lCTpLnqbvcyxHLKfYiXBFuujLfQ
	VqZwLBu4pSCSo51mknNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxAd0-0020bY-2J;
	Sun, 29 Oct 2023 18:35:14 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxAcy-0020Zw-1Z
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Oct 2023 18:35:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1698604508; bh=+VkvqM2bqlrxzxetawByEreK2Zj3wSKDmtEPq0Vc7Y8=;
 b=wtl0h261tTt0rh8HhhdtykE9AslfUXpwwUVpK+2HnyRoXKm7kEKAlt8U0VsogZHuFWn8fdoPs
 w80BgXY+9RCtjYP8/pUGVy+VnEP84uvyewyEsnIaMTn8c6+g7/JzrdgB3cc4fvVKIb6nuJ8ksia
 pw6aq9NXe2R0bffIghUnZViLhJHAGM0igovGnu1+pmXv4s8B9I7cICZv7BMDDb9S6puE9ZCUQ0v
 q8ZdrFAyGgCaZatimScJwxIfOVldH8XcuR3BvMn/fG+p8VKcbzaMdo+o4TJc4+aQfaT+vF9cLzr
 TgzDP30JiUaasv6qtkfFtPHycceSqElMN4UHG+3nfqEA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 09/10] media: rkvdec: Add get_fmt_opaque and valid_fmt ops
Date: Sun, 29 Oct 2023 18:34:16 +0000
Message-ID: <20231029183427.1781554-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231029183427.1781554-1-jonas@kwiboo.se>
References: <20231029183427.1781554-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 653ea5db8fe0ffca230b0f7d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231029_113512_564769_0B9EFFDA 
X-CRM114-Status: GOOD (  18.92  )
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

Add a valid_fmt() ops to validate if a CAPTURE format is supported.

Expectation is that the valid_fmt() ops is a deterministic function and
the return value from get_fmt_opaque() ops is passed as input to the
valid_fmt() ops.

The CAPTURE format is reset when queue is not busy and format validation
fail.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- New patch

 drivers/staging/media/rkvdec/rkvdec.c | 79 +++++++++++++++++++++++----
 drivers/staging/media/rkvdec/rkvdec.h |  3 +
 2 files changed, 71 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index bd3568928060..5c7e1b91e908 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -27,17 +27,23 @@
 #include "rkvdec.h"
 #include "rkvdec-regs.h"
 
-static u32 rkvdec_decoded_fmts(struct rkvdec_ctx *ctx, int index)
+static u32 rkvdec_decoded_fmts(struct rkvdec_ctx *ctx, int index, u32 opaque)
 {
 	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	unsigned int i, j;
 
 	if (WARN_ON(!desc))
 		return 0;
 
-	if (index >= desc->num_decoded_fmts)
-		return 0;
+	for (i = 0, j = 0; i < desc->num_decoded_fmts; i++) {
+		if (!desc->ops->valid_fmt ||
+		    desc->ops->valid_fmt(ctx, desc->decoded_fmts[i], opaque)) {
+			if (index == j++)
+				return desc->decoded_fmts[i];
+		}
+	}
 
-	return desc->decoded_fmts[index];
+	return 0;
 }
 
 static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
@@ -67,7 +73,7 @@ static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
 {
 	struct v4l2_format *f = &ctx->decoded_fmt;
 
-	rkvdec_reset_fmt(ctx, f, rkvdec_decoded_fmts(ctx, 0));
+	rkvdec_reset_fmt(ctx, f, rkvdec_decoded_fmts(ctx, 0, ctx->fmt_opaque));
 	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
 	f->fmt.pix_mp.height = ctx->coded_fmt.fmt.pix_mp.height;
@@ -78,15 +84,60 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
 	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	struct v4l2_pix_format_mplane *pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
+	struct vb2_queue *vq;
+	u32 opaque = 0;
+	int ret;
+
+	if (desc->ops->try_ctrl) {
+		ret = desc->ops->try_ctrl(ctx, ctrl);
+		if (ret)
+			return ret;
+	}
+
+	if (!desc->ops->valid_fmt)
+		return 0;
+
+	if (desc->ops->get_fmt_opaque) {
+		opaque = desc->ops->get_fmt_opaque(ctx, ctrl);
+		if (ctx->fmt_opaque == opaque)
+			return 0;
+	}
+
+	if (desc->ops->valid_fmt(ctx, pix_mp->pixelformat, opaque))
+		return 0;
+
+	/* format change not allowed when queue is busy */
+	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+			     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
+	if (vb2_is_busy(vq))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
+	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	u32 opaque;
+
+	if (!desc->ops->get_fmt_opaque)
+		return 0;
 
-	if (desc->ops->try_ctrl)
-		return desc->ops->try_ctrl(ctx, ctrl);
+	opaque = desc->ops->get_fmt_opaque(ctx, ctrl);
+	if (ctx->fmt_opaque == opaque)
+		return 0;
+
+	ctx->fmt_opaque = opaque;
+	rkvdec_reset_decoded_fmt(ctx);
 
 	return 0;
 }
 
 static const struct v4l2_ctrl_ops rkvdec_ctrl_ops = {
 	.try_ctrl = rkvdec_try_ctrl,
+	.s_ctrl = rkvdec_s_ctrl,
 };
 
 static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
@@ -252,11 +303,15 @@ static int rkvdec_querycap(struct file *file, void *priv,
 	return 0;
 }
 
-static bool rkvdec_valid_fmt(struct rkvdec_ctx *ctx, u32 fourcc)
+static bool rkvdec_valid_fmt(struct rkvdec_ctx *ctx, u32 fourcc, u32 opaque)
 {
 	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
 	unsigned int i;
 
+	if (desc->ops->valid_fmt)
+		return desc->ops->valid_fmt(ctx, fourcc, opaque);
+
+	/* All decoded_fmts are valid without a valid_fmt ops */
 	for (i = 0; i < desc->num_decoded_fmts; i++) {
 		if (desc->decoded_fmts[i] == fourcc)
 			return true;
@@ -281,8 +336,9 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 	if (WARN_ON(!coded_desc))
 		return -EINVAL;
 
-	if (!rkvdec_valid_fmt(ctx, pix_mp->pixelformat))
-		pix_mp->pixelformat = rkvdec_decoded_fmts(ctx, 0);
+	if (!rkvdec_valid_fmt(ctx, pix_mp->pixelformat, ctx->fmt_opaque))
+		pix_mp->pixelformat = rkvdec_decoded_fmts(ctx, 0,
+							  ctx->fmt_opaque);
 
 	/* Always apply the frmsize constraint of the coded end. */
 	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
@@ -398,6 +454,7 @@ static int rkvdec_s_output_fmt(struct file *file, void *priv,
 	 *
 	 * Note that this will propagates any size changes to the decoded format.
 	 */
+	ctx->fmt_opaque = 0;
 	rkvdec_reset_decoded_fmt(ctx);
 
 	/* Propagate colorspace information to capture. */
@@ -447,7 +504,7 @@ static int rkvdec_enum_capture_fmt(struct file *file, void *priv,
 	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
 	u32 fourcc;
 
-	fourcc = rkvdec_decoded_fmts(ctx, f->index);
+	fourcc = rkvdec_decoded_fmts(ctx, f->index, ctx->fmt_opaque);
 	if (!fourcc)
 		return -EINVAL;
 
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 633335ebb9c4..2e423ed6ce85 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -66,6 +66,8 @@ vb2_to_rkvdec_decoded_buf(struct vb2_buffer *buf)
 struct rkvdec_coded_fmt_ops {
 	int (*adjust_fmt)(struct rkvdec_ctx *ctx,
 			  struct v4l2_format *f);
+	u32 (*get_fmt_opaque)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
+	bool (*valid_fmt)(struct rkvdec_ctx *ctx, u32 fourcc, u32 opaque);
 	int (*start)(struct rkvdec_ctx *ctx);
 	void (*stop)(struct rkvdec_ctx *ctx);
 	int (*run)(struct rkvdec_ctx *ctx);
@@ -104,6 +106,7 @@ struct rkvdec_ctx {
 	const struct rkvdec_coded_fmt_desc *coded_fmt_desc;
 	struct v4l2_ctrl_handler ctrl_hdl;
 	struct rkvdec_dev *dev;
+	u32 fmt_opaque;
 	void *priv;
 };
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
