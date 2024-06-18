Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16E1C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 19:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kb1mgYq4E42E1WFYCnX/B4Wnl1YAdnVn+DiTAL33ZPg=; b=U6YwxwwYcoYILD
	OljXFSgWELhI3kTPPd+huM0t+khwCSRJbzwiyqsSzf/lNuKlK7Ulb4Ye9FlYgGoHPLEaMCrS84p81
	cGanc7Bvp3zcEYHaEyDnZwSoo42PUiKIMyUoa+R+4IKdLNS9Kb4JlQ+6iLJub01b6U/KtQXlihiB9
	aL2HJBlbMtHnNIQjX5WTgO7bw9L5KpS7YKHX1KWyJxzRzYxSapVTbL7RIcPi267Nvf+32GPcQqrOH
	D5nKAKZEgGL+DLJnt6bgLng6eNaclBgcF7rwSXvWO1mL+fWx43Ig3VN6dqcplJaA3HD0Z0WbA5JAt
	ONREydf4b9H1DuxIRnhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJeo5-0000000GPAg-3vOP;
	Tue, 18 Jun 2024 19:47:53 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJeo1-0000000GP6Q-03Zb
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 19:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718740047; bh=jH6RohZozfKa9VCBBYd0/7XL1yNeMYaa06+5jZ6rl28=;
 b=voF/aOBp3bJsRLbYPrhtrQJZYHHbsohfhODZSVtprCBlaNGWf8wKb1dBw8tc3pmNGcceNOXXj
 IvB86ECMmonTuhFTm3igVs3f3MtOz44gk9RCI5SL2VLWK1DMlSEkcdyImWDekigVxsm/Xu6n1Zn
 Q0Cfe6cNryEe2Oiae3qeqIpXrchBeVktBNYLsda6coLxhXsAIKiczyS30bpZdEX/kndetyCfN5m
 LB7hmE9PikXrioAa35K1yIqy7stJFqfpwXoQ3jZYBbp/1g4JXvEIANamBoclNwDiNetU6erqvuu
 cwK2INRmOn2QrzgjoFDHPqm5u6Sj9Pfu0h29QkDDJzlg==
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
Subject: [PATCH v5 07/10] media: rkvdec: Extract decoded format enumeration into helper
Date: Tue, 18 Jun 2024 19:46:31 +0000
Message-ID: <20240618194647.742037-8-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 6671e44c64ade33c90059fef
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_124749_214517_E1709A43 
X-CRM114-Status: GOOD (  14.51  )
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
v5:
- Update commit message
- Collect r-b and t-b tags

v4:
- Rename rkvdec_decoded_fmts() to rkvdec_enum_decoded_fmt()
- Rename rkvdec_valid_fmt() to rkvdec_is_valid_fmt()

v3:
- New patch

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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
