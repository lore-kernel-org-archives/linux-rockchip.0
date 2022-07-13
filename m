Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C81C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 16:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilMWL/FASokPJYuLpl6oLhBa8wzGXOV2mgvao+CXLW4=; b=ZYxI/YlNRER35X
	xVJT5YEFlWik4nfFGeOp9AKPX0olU4OS8QnZrVMRp9voafhc/VTMy2jkVuQPAmgd3GwJSIo+inloe
	7CWx+3KIGlo1+wu32nxqi2vuyLzUSrcTfgLmLk20KE7YR1TAXThJ8Em2lPAW3Wbeg/bhNvm/5rjVF
	RTRQ6SquzUKOnoy6S6LTBkY3bhsP+rtkwEdv8dwgLdhUpqJOeATDovpYOZ15nCsHgrtIdT8ouRWlE
	fdTPf5x3FVznyJoWp4XTvhorehTAeL38HCjgLFRJjjnLpf5e/nUR38wFBOX+UYiZ5bcmUvNV2TH8/
	hAouAzoMNTG/Yr1AenZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBfIp-005gS8-NT; Wed, 13 Jul 2022 16:33:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBfIX-005gH5-Md
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 16:33:15 +0000
Received: from localhost (dynamic-002-247-252-243.2.247.pool.telefonica.de [2.247.252.243])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2C3D46601926;
	Wed, 13 Jul 2022 17:33:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1657729992;
	bh=H45vKIVxYSOqYRL43Uz5XTwJe8yBD2CscZqG1frIUiY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DVP/8OabOAVdwWtbUamryVmHMiU9imIDdQD/mdYFbP8mAUCazpTc1qPjmeSrtqx8n
	 jvq9kx5xIFzHL0H/6OXZYYq/GRnrRpR+JTL6f3ZKEoEiV4JjwFmlV1P3NpHfTP8iR4
	 5k4qcpDN4g4Xp5sTt4ajt8Z6i4t4ex7Iq2RqgD7wpBf5wY9Y0SzpqGDSSMuu28shk6
	 QgdZop99S4uetfY/+iAuSL/kt5tUpgR8Ndzfn0F/hMr5bTyz/qSRBzdk/X9cv7kkPd
	 54G4ehGJLgUHFJx/pNLCXkdzEBdlgWTqNUpswi11hLSwTz5kSS1XuG1OIarDAE5iAi
	 qi1IxfylXDNcw==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: linux-media@vger.kernel.org
Cc: jernej.skrabec@gmail.com,
	knaerzche@gmail.com,
	kernel@collabora.com,
	bob.beckett@collabora.com,
	ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	nicolas.dufresne@collabora.com,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Yury Norov <yury.norov@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: [PATCH 5/6] staging: media: rkvdec: Enable S_CTRL IOCTL
Date: Wed, 13 Jul 2022 18:32:03 +0200
Message-Id: <20220713163201.136202-3-sebastian.fricke@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220713163201.136202-1-sebastian.fricke@collabora.com>
References: <20220713163201.136202-1-sebastian.fricke@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_093314_021908_CDDF5A21 
X-CRM114-Status: GOOD (  13.49  )
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

Enable user-space to set the SPS of the current byte-stream on the
decoder. This action will trigger the decoder to pick the optimal
pixel-format for the capture queue.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec.c | 60 ++++++++++++++++++++-------
 1 file changed, 46 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 2625e0a736f4..f84579f764ab 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -27,6 +27,17 @@
 #include "rkvdec.h"
 #include "rkvdec-regs.h"
 
+static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
+				       struct v4l2_pix_format_mplane *pix_mp)
+{
+	v4l2_fill_pixfmt_mp(pix_mp, pix_mp->pixelformat,
+			    pix_mp->width, pix_mp->height);
+	pix_mp->plane_fmt[0].sizeimage += 128 *
+		DIV_ROUND_UP(pix_mp->width, 16) *
+		DIV_ROUND_UP(pix_mp->height, 16);
+	pix_mp->field = V4L2_FIELD_NONE;
+}
+
 /*
  * Fetch the optimal pixel-format directly from the codec variation. If the
  * valid_fmt callback is not implemented, then the context variable valid_fmt
@@ -44,6 +55,27 @@ static int rkvdec_get_valid_fmt(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+static int rkvdec_set_valid_fmt(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
+{
+	struct v4l2_pix_format_mplane *pix_mp;
+
+	switch (ctrl->id) {
+	case V4L2_CID_STATELESS_H264_SPS:
+	case V4L2_CID_STATELESS_VP9_FRAME:
+	case V4L2_CID_STATELESS_HEVC_SPS:
+		ctx->valid_fmt = rkvdec_get_valid_fmt(ctx, ctrl);
+
+		pix_mp = &ctx->decoded_fmt.fmt.pix_mp;
+		pix_mp->pixelformat = ctx->valid_fmt;
+		rkvdec_fill_decoded_pixfmt(ctx, pix_mp);
+		break;
+	default:
+		dev_err(ctx->dev->dev, "Unsupported stateless control ID: %x\n", ctrl->id);
+		return -EINVAL;
+	};
+	return 0;
+}
+
 static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 {
 	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
@@ -58,8 +90,18 @@ static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
 	return 0;
 }
 
+static int rkvdec_s_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
+
+	if (!ctx->valid_fmt)
+		return rkvdec_set_valid_fmt(ctx, ctrl);
+	return 0;
+}
+
 static const struct v4l2_ctrl_ops rkvdec_ctrl_ops = {
 	.try_ctrl = rkvdec_try_ctrl,
+	.s_ctrl = rkvdec_s_ctrl,
 };
 
 static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
@@ -213,13 +255,9 @@ static void rkvdec_reset_decoded_fmt(struct rkvdec_ctx *ctx)
 	ctx->valid_fmt = 0;
 	rkvdec_reset_fmt(ctx, f, ctx->coded_fmt_desc->decoded_fmts[0]);
 	f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
-	v4l2_fill_pixfmt_mp(&f->fmt.pix_mp,
-			    ctx->coded_fmt_desc->decoded_fmts[0],
-			    ctx->coded_fmt.fmt.pix_mp.width,
-			    ctx->coded_fmt.fmt.pix_mp.height);
-	f->fmt.pix_mp.plane_fmt[0].sizeimage += 128 *
-		DIV_ROUND_UP(f->fmt.pix_mp.width, 16) *
-		DIV_ROUND_UP(f->fmt.pix_mp.height, 16);
+	f->fmt.pix_mp.width = ctx->coded_fmt.fmt.pix_mp.width;
+	f->fmt.pix_mp.height = ctx->coded_fmt.fmt.pix_mp.height;
+	rkvdec_fill_decoded_pixfmt(ctx, &f->fmt.pix_mp);
 }
 
 static int rkvdec_enum_framesizes(struct file *file, void *priv,
@@ -288,13 +326,7 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 				       &pix_mp->height,
 				       &coded_desc->frmsize);
 
-	v4l2_fill_pixfmt_mp(pix_mp, pix_mp->pixelformat,
-			    pix_mp->width, pix_mp->height);
-	pix_mp->plane_fmt[0].sizeimage +=
-		128 *
-		DIV_ROUND_UP(pix_mp->width, 16) *
-		DIV_ROUND_UP(pix_mp->height, 16);
-	pix_mp->field = V4L2_FIELD_NONE;
+	rkvdec_fill_decoded_pixfmt(ctx, pix_mp);
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
