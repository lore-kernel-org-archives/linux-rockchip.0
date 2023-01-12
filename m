Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2620CC677F1
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 12:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVrooTGltkPpT/n0ZvVb8U5qmV/AErXBG4cVjGtelsk=; b=l203ts8Jx1EKgE
	tzU6XqUqSZBRXRhNUwIhwhl23pYw7W9K3snOE0JK8f0fTtTUQlEiGHTweYN8ifHM5MIdvi4vwpDsS
	1ORP/D6OGs4DheQeX8AHk0MgN1cHbpJBO4830VzNZz/qKmAIYgVLa8Hq6kLRLFVsR1etZiDSw0UMb
	5hvZHFWwLaWzpzF56HHYOLNgoiVqDKLLaEJfnt3b+YwFrOYsMMY84JnNoG5U2iVW+nQx4JlWovN8a
	CleK7dbtCkaaWGlEPjnvs6UUMCycKpvN24pd2oVTkwQGgTplyOxPbS00oDbKMa27TEbEDUujujT7u
	upaR06eRyzxvocqqm7eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8X-00F3xt-Ew; Thu, 12 Jan 2023 12:56:53 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx8T-00F3uE-3W
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 12:56:52 +0000
Received: from localhost (89-26-75-29.goll.dyn.salzburg-online.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BA61F6602DB1;
	Thu, 12 Jan 2023 12:56:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673528207;
	bh=Da6QtFYOuId0q8spuTSgR9gP0GfvHSM7GfQl76avmIU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=dHzAuxLpAj79iY9LVET5QkBL9VPhVA1ioJQwPn2iFXHU4fDdFn9jzLrSF87VecJ2y
	 1g4/d6x53E0SC3CNDg90z3NYtWNIMSmbDKQL9hU958IXnDuafam/WNGpmJbUwSYfrB
	 7XAEnIX34wDmWKijisW8hShchRspOnId3nGqxD0wNFptvHvdLBIZ2hP5HxLP0mbtsB
	 8vfs4fP10dIJERtoHYCSiY6fm95Y2n60qeW6NRfZAfazo04rhOlRNAw44VAk+2TSC5
	 Y/yrD0dScreg28gKD8HaSfR1/oASNvZ/pY/7vp1xqbDHuvtoJq1cHwigZI9Im2CVlN
	 e0Za9curbjdng==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Thu, 12 Jan 2023 13:56:21 +0100
Subject: [PATCH v2 06/12] staging: media: rkvdec: Add a valid pixel format
 check as callback
MIME-Version: 1.0
Message-Id: <20230101-patch-series-v2-6-2-rc1-v2-6-fa1897efac14@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
In-Reply-To:  <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.11.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1673528186; l=3923;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=Da6QtFYOuId0q8spuTSgR9gP0GfvHSM7GfQl76avmIU=;
 b=Ei9OhrN5lMhBxVdjk4LBAl2cBQ2833Mt1irFmo2edGvikdXUqvhqqNyW0wxQ84YZ9drS3FRc9gZs
 0Ef1O9TjAyFyFdBeAO/IeTnNjUYTD+y6bGpxE1du+FdS0vTDEOur
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_045650_064994_8DADEECF 
X-CRM114-Status: GOOD (  18.48  )
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

Provide a callback for codec variant drivers to indicate the correct
output pixel-format. It will either utilize the SPS structure stored via
the S_CTRL IOCTL or return the default pixel-format.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 45 +++++++++++++++++++++++++++++------
 drivers/staging/media/rkvdec/rkvdec.h |  1 +
 2 files changed, 39 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index e0e95d06e216..a46f918926a2 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -38,6 +38,20 @@ static int rkvdec_queue_busy(struct rkvdec_ctx *ctx, enum v4l2_buf_type buf_type
 		return 0;
 }
 
+/*
+ * Use the current SPS, set by the user via the VIDIOC_S_CTRL IOCTL,
+ * to determine the optimal pixel-format. Each codec is responsible
+ * for choosing the appropriate pixel-format for a given parameter set.
+ */
+static int rkvdec_get_valid_fmt(struct rkvdec_ctx *ctx)
+{
+	const struct rkvdec_coded_fmt_desc *coded_desc = ctx->coded_fmt_desc;
+
+	if (coded_desc->ops->valid_fmt)
+		return coded_desc->ops->valid_fmt(ctx);
+	return ctx->coded_fmt_desc->decoded_fmts[0];
+}
+
 static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
@@ -200,8 +214,9 @@ static void rkvdec_reset_coded_fmt(struct rkvdec_ctx *ctx)
 static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
 {
 	struct v4l2_format *f = &ctx->decoded_fmt;
+	u32 valid_fmt = rkvdec_get_valid_fmt(ctx);
 
-	rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
+	rkvdec_reset_fmt(ctx, f, valid_fmt);
 	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	v4l2_fill_pixfmt_mp(&f->fmt.pix_mp,
 			    ctx->coded_fmt_desc->decoded_fmts[0],
@@ -260,13 +275,17 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 	if (WARN_ON(!coded_desc))
 		return -EINVAL;
 
-	for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
-		if (coded_desc->decoded_fmts[i] == pix_mp->pixelformat)
-			break;
-	}
+	if (ctx->sps) {
+		pix_mp->pixelformat = rkvdec_get_valid_fmt(ctx);
+	} else {
+		for (i = 0; i < coded_desc->num_decoded_fmts; i++) {
+			if (coded_desc->decoded_fmts[i] == pix_mp->pixelformat)
+				break;
+		}
 
-	if (i == coded_desc->num_decoded_fmts)
-		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
+		if (i == coded_desc->num_decoded_fmts)
+			pix_mp->pixelformat = coded_desc->decoded_fmts[0];
+	}
 
 	/* Always apply the frmsize constraint of the coded end. */
 	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
@@ -435,6 +454,18 @@ static int rkvdec_enum_capture_fmt(struct file *file, void *priv,
 	if (WARN_ON(!ctx->coded_fmt_desc))
 		return -EINVAL;
 
+	/*
+	 * According to the specification the driver can only return formats
+	 * that are supported by both the current encoded format and the
+	 * provided controls
+	 */
+	if (ctx->sps) {
+		if (f->index)
+			return -EINVAL;
+		f->pixelformat = rkvdec_get_valid_fmt(ctx);
+		return 0;
+	}
+
 	if (f->index >= ctx->coded_fmt_desc->num_decoded_fmts)
 		return -EINVAL;
 
diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
index 332126e7b812..e353a4403e5b 100644
--- a/drivers/staging/media/rkvdec/rkvdec.h
+++ b/drivers/staging/media/rkvdec/rkvdec.h
@@ -66,6 +66,7 @@ vb2_to_rkvdec_decoded_buf(struct vb2_buffer *buf)
 struct rkvdec_coded_fmt_ops {
 	int (*adjust_fmt)(struct rkvdec_ctx *ctx,
 			  struct v4l2_format *f);
+	u32 (*valid_fmt)(struct rkvdec_ctx *ctx);
 	int (*start)(struct rkvdec_ctx *ctx);
 	void (*stop)(struct rkvdec_ctx *ctx);
 	int (*run)(struct rkvdec_ctx *ctx);

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
