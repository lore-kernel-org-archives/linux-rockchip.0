Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2581ECE587
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 19:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiF/7Dxt485mk6cy10IK00EXwz1lQQLoAfckeZmnyvA=; b=a+r9mm2sfCTtjU
	MQFAtKaNssNisMRF4YXTx0L+7sOkg14PvpRyNB9Pi+Jx7sgOl/IlS2XkoCKLJikDTFxEOsiwWlZGO
	Cyw3knNFOK52hXXOc6Z6wEfMwmCbW9qY7kJvOLWGk2TIjYTeBQGT8/rRlnbpA2LFOJddelcE3UbEg
	hT1eAtDRqwJU3Q7SnzWP94mpGfRCP8zQWWJwwLuXZMOrBETFVSm1fWxZtSk0CVRreDX60H3VbPilN
	z6OUM9m0z+bRbKhX2qRcABoDXfyq1eMN7kC3c75Ymg9H6OYZgUODIECELqGPvSwlRWixiZBi7L0bS
	hvTOXUqCyrbJNHP6shrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snk1o-0000000358p-0ai2;
	Mon, 09 Sep 2024 19:26:24 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snk1k-0000000356x-1pVy
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 19:26:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725909973; bh=swR1AJEuZ87sGHxtc8yhQwZrTbWgXwgW+7Td6xgxK5Q=;
 b=l0U5yh4rj9V46im2Lq4tI5JIOP2Z/FoIuTkzm8BRZiKVNVstkJROCNeO9vYSkNh3ScBStzG6j
 hVA25L0wwDnPDdpIb6sn1WlVRirrM3g9OlFE7W3cOw0QBpH24Szm3yhMW9Zp6kZZfapScQ+0Fj+
 mAE4qebMOSiffVL22JW9lyz4MlvV5XH9r5+C5i46EcrsHDoy3GjZIsfwTJbq6sb4CjdU+1AQYw8
 BWXRgsq6dUZMkls517wRMcXYtkXvDGSH2M+rOdk8pCAXRyMmuPyj3EixX/ADukQnDJ/3eGlZ7Ct
 5HeapiSDLpem98bxXmqO7dlkmek7QXZwu1PQASI5d6vw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v6 07/11] media: rkvdec: Extract decoded format enumeration into helper
Date: Mon,  9 Sep 2024 19:25:05 +0000
Message-ID: <20240909192522.1076704-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240909192522.1076704-1-jonas@kwiboo.se>
References: <20240909192522.1076704-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66df4bd2c680cb8b7d2dc20a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_122620_628425_7328D2B6 
X-CRM114-Status: GOOD (  15.17  )
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

Add a rkvdec_is_valid_fmt() helper that check if a fourcc is a supported
CAPTURE format, and a rkvdec_enum_decoded_fmt() helper that enumerates
valid formats.

This moves current code into helper functions in preparation for adding
CAPTURE format filtering and validation in next patch.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Christopher Obbard <chris.obbard@collabora.com>
---
v6:
- No change

v5:
- Update commit message
- Collect r-b and t-b tags

v4:
- Rename rkvdec_decoded_fmts() to rkvdec_enum_decoded_fmt()
- Rename rkvdec_valid_fmt() to rkvdec_is_valid_fmt()

v3:
- New patch
---
 drivers/staging/media/rkvdec/rkvdec.c | 49 +++++++++++++++++++--------
 1 file changed, 35 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 7e59db3fc24d..efbf9aa578ae 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -27,6 +27,32 @@
 #include "rkvdec.h"
 #include "rkvdec-regs.h"
 
+static u32 rkvdec_enum_decoded_fmt(struct rkvdec_ctx *ctx, int index)
+{
+	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+
+	if (WARN_ON(!desc))
+		return 0;
+
+	if (index >= desc->num_decoded_fmts)
+		return 0;
+
+	return desc->decoded_fmts[index];
+}
+
+static bool rkvdec_is_valid_fmt(struct rkvdec_ctx *ctx, u32 fourcc)
+{
+	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
+	unsigned int i;
+
+	for (i = 0; i < desc->num_decoded_fmts; i++) {
+		if (desc->decoded_fmts[i] == fourcc)
+			return true;
+	}
+
+	return false;
+}
+
 static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
 				       struct v4l2_pix_format_mplane *pix_mp)
 {
@@ -52,8 +78,10 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
 static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
 {
 	struct v4l2_format *f = &ctx->decoded_fmt;
+	u32 fourcc;
 
-	rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
+	fourcc = rkvdec_enum_decoded_fmt(ctx, 0);
+	rkvdec_reset_fmt(ctx, f, fourcc);
 	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
 	f->fmt.pix_mp.height = ctx->coded_fmt.fmt.pix_mp.height;
@@ -244,7 +272,6 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
 	const struct rkvdec_coded_fmt_desc *coded_desc;
-	unsigned int i;
 
 	/*
 	 * The codec context should point to a coded format desc, if the format
@@ -255,13 +282,8 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 	if (WARN_ON(!coded_desc))
 		return -EINVAL;
 
-	for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
-		if (coded_desc->decoded_fmts[i] == pix_mp->pixelformat)
-			break;
-	}
-
-	if (i == coded_desc->num_decoded_fmts)
-		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
+	if (!rkvdec_is_valid_fmt(ctx, pix_mp->pixelformat))
+		pix_mp->pixelformat = rkvdec_enum_decoded_fmt(ctx, 0);
 
 	/* Always apply the frmsize constraint of the coded end. */
 	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
@@ -425,14 +447,13 @@ static int rkvdec_enum_capture_fmt(struct file *file, void *priv,
 				   struct v4l2_fmtdesc *f)
 {
 	struct rkvdec_ctx *ctx = fh_to_rkvdec_ctx(priv);
+	u32 fourcc;
 
-	if (WARN_ON(!ctx->coded_fmt_desc))
-		return -EINVAL;
-
-	if (f->index >= ctx->coded_fmt_desc->num_decoded_fmts)
+	fourcc = rkvdec_enum_decoded_fmt(ctx, f->index);
+	if (!fourcc)
 		return -EINVAL;
 
-	f->pixelformat = ctx->coded_fmt_desc->decoded_fmts[f->index];
+	f->pixelformat = fourcc;
 	return 0;
 }
 
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
