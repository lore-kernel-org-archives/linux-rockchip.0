Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51F90C021BC
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 10:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPdQ74SClAk/DTPKvjLJyKPB8g8qvyefgBZDTCICpLE=; b=xYEwPLKcD+jFNp
	Bj211HzTiJcgVuigThGmH1wkWvyWBST8AWalzQ4Q6zVw3Se+iBWvplVW1vgz9IdSdi9Opgp1rI1/J
	yrJL6Qd8BGFKboQxsM2v9chYFo6Mtc5cfyeTS48nvRGGGKzDHuceLb210++bD1VyX07UDYImpFoYC
	YZJj0Q6TpP5NrJpfQimxGk6jF6U3SzrRIWiYcXNsnUNjMj7S+VyhEZ29vXzH1b6f8xugjMUy4EGcb
	ooujemDec9trSsEuz8AoCOexQZLsX/DOb61splb4nC1LkOoUCM1nDfioOxfFxy918gT5K9GtiaIrM
	vk8F12Tl/XlFhVNGUikg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrlI-0000000GjLk-1xsj;
	Tue, 25 Feb 2025 10:02:00 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrRi-0000000GedP-40b4
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 09:41:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740476500; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=b1G1tij8w9MUsFuZwjNJ2J996DTQsiE+sqDZkt6emWKQQcTxdDElrRqQD93BXmpaejD3XFoIkvUqJWx0gPkTpWOHVzGXDUB0DLoueJduBhG2b6/S6gbNxF+cTW1GBULUliUoO/GO19LFENaXFUu4zmXK1clpRKdLUYzD6QHrpHQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740476500; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ydaNwD+QExLtqdUUDLYZNGa0VEDDTPQCaGJLdokEAl8=; 
	b=lYIHbqz5b0p065bgzQCedV9SAqeadHViTVIb66AavBKPjrPHu5v90Mhurv14ZjSW5X/SHGFTvdmk9EfXsKE/hY/2Grwf2fQGnIRjmeC1YBVbYLqU8/YdI0Z/s5UVLHT2SqNUb+uoP+O6nt/6X3M2cLqMLXQ5G2LxYRG90TuI9XE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.fricke@collabora.com;
	dmarc=pass header.from=<sebastian.fricke@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740476500;
	s=zohomail; d=collabora.com; i=sebastian.fricke@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=ydaNwD+QExLtqdUUDLYZNGa0VEDDTPQCaGJLdokEAl8=;
	b=F3o+DmJzzUuoHQJvR+212nn/N36QFIbvz0s2vkUamjcegnRsrNYJlbIcJ310YW7b
	pzGVCV78y09/X2IGae2SoqXF8e5suUoeHbOgK67sjknwjqYn3p6+/eWozOc1CbnFL6i
	VcbbAvG9YgcjrJY1vr245UnpsPddenW9CpiCTV/A=
Received: by mx.zohomail.com with SMTPS id 1740476498610405.11605187345197;
	Tue, 25 Feb 2025 01:41:38 -0800 (PST)
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Tue, 25 Feb 2025 10:40:27 +0100
Subject: [PATCH v7 06/12] media: rkvdec: Move rkvdec_reset_decoded_fmt
 helper
MIME-Version: 1.0
Message-Id: <20250225-rkvdec_h264_high10_and_422_support-v7-6-7992a68a4910@collabora.com>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
In-Reply-To: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 Alex Bee <knaerzche@gmail.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>, Jonas Karlman <jonas@kwiboo.se>, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476426; l=3227;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=3QFkEuQGNgb1BZvE0V8lmT5neA542UdT7PYjbWxjjM0=;
 b=aC/0vaGnjPQBM1T6M3cY3P/gToBjWStjuLJeKQunm2wkhfMBoiQg9BM9aJnfQp32y+eAp4LoDQ7h
 6+sRSJLTALU1rBfMC9AqMOR+CqJr9kvf/UMR5cwomBwr/NCHTlTf
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_014147_115913_F592C138 
X-CRM114-Status: GOOD (  10.02  )
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

Move rkvdec_reset_decoded_fmt() and the called rkvdec_reset_fmt() helper
functions in preparation for adding a new caller in an upcoming patch.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Christopher Obbard <chris.obbard@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 46 +++++++++++++++++------------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index e354360f4acc1fe9b7c4b90745f0a818fa2b7cab..1f8f98cf91dc205f4a9da2712c81e90b726a6e57 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -37,6 +37,29 @@ static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
 		DIV_ROUND_UP(pix_mp->height, 16);
 }
 
+static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
+			     u32 fourcc)
+{
+	memset(f, 0, sizeof(*f));
+	f->fmt.pix_mp.pixelformat = fourcc;
+	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
+	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
+	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
+	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
+}
+
+static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
+{
+	struct v4l2_format *f = &ctx->decoded_fmt;
+
+	rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
+	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
+	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
+	f->fmt.pix_mp.height = ctx->coded_fmt.fmt.pix_mp.height;
+	rkvdec_fill_decoded_pixfmt(ctx, &f->fmt.pix_mp);
+}
+
 static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
@@ -169,18 +192,6 @@ rkvdec_find_coded_fmt_desc(u32 fourcc)
 	return NULL;
 }
 
-static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
-			     u32 fourcc)
-{
-	memset(f, 0, sizeof(*f));
-	f->fmt.pix_mp.pixelformat = fourcc;
-	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
-	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
-	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
-	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
-	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
-}
-
 static void rkvdec_reset_coded_fmt(struct rkvdec_ctx *ctx)
 {
 	struct v4l2_format *f = &ctx->coded_fmt;
@@ -196,17 +207,6 @@ static void rkvdec_reset_coded_fmt(struct rkvdec_ctx *ctx)
 		ctx->coded_fmt_desc->ops->adjust_fmt(ctx, f);
 }
 
-static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
-{
-	struct v4l2_format *f = &ctx->decoded_fmt;
-
-	rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
-	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
-	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
-	f->fmt.pix_mp.height = ctx->coded_fmt.fmt.pix_mp.height;
-	rkvdec_fill_decoded_pixfmt(ctx, &f->fmt.pix_mp);
-}
-
 static int rkvdec_enum_framesizes(struct file *file, void *priv,
 				  struct v4l2_frmsizeenum *fsize)
 {

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
