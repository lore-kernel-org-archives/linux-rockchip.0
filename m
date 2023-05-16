Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0822EC7EE24
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 09:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HhCCq4ZNTSlYZzIBlzxTTtUajGWNdxoDe2r4i3GzrVs=; b=SD/DqvyiieVZcj
	JTM4eKz6jAJHeGH1B6j168Be5IscOZCRJQG7yALxNBy5Kn5Yr/FBZqOk437ffs84575D/uSUkEX4w
	fLBlBhhZNq7O4PcgL0vhm2txGctoDFaOma6jF4y8fB4aqTTH/IrvC/tXYp6sAcFeesVrbnb5+FM1r
	g+A8aMuoBPuE0HSDNN48mUuvhZ+RATp0du5DNoHr0fPZnC9FdNOgZNnFzjxQ/ymfhPmWMKk6eKXJg
	ZV/CT4wPIUncbRNkEVhFI3cX2ASBUW7VMHLdQFpP0uuRTqDuzGAah2ORgmMV4ktZ7OfsI1buFIQfg
	uvI8JTdnD34n7liN60ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyqjF-0050KL-0Q;
	Tue, 16 May 2023 09:12:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyqjC-0050Ho-1N
	for linux-rockchip@lists.infradead.org;
	Tue, 16 May 2023 09:12:19 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1pyqj5-0005XH-4k; Tue, 16 May 2023 11:12:11 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	m.tretter@pengutronix.de
Subject: [PATCH] media: verisilicon: Fix null pointer dereference in try_fmt
Date: Tue, 16 May 2023 11:12:09 +0200
Message-Id: <20230516091209.3098262-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_021218_464469_64F9EB9D 
X-CRM114-Status: GOOD (  11.35  )
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

Since commit db6f68b51e5c ("media: verisilicon: Do not set context
src/dst formats in reset functions"), vpu_src_fmt is not set in the
reset function, but only set in hantro_set_fmt_out, which calls
hantro_try_fmt before setting the format. Therefore, hantro_try_fmt
might be called with vpu_src_fmt still being null.

Add a test if the format is actually set before checking the format.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Fixes: db6f68b51e5c ("media: verisilicon: Do not set context src/dst formats in reset functions")
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 835518534e3b..ec37d2646fde 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -313,17 +313,20 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 		/* Fill remaining fields */
 		v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, pix_mp->width,
 				    pix_mp->height);
-		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE &&
+		if (ctx->vpu_src_fmt &&
+		    ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE &&
 		    !hantro_needs_postproc(ctx, fmt))
 			pix_mp->plane_fmt[0].sizeimage +=
 				hantro_h264_mv_size(pix_mp->width,
 						    pix_mp->height);
-		else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME &&
+		else if (ctx->vpu_src_fmt &&
+			 ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_VP9_FRAME &&
 			 !hantro_needs_postproc(ctx, fmt))
 			pix_mp->plane_fmt[0].sizeimage +=
 				hantro_vp9_mv_size(pix_mp->width,
 						   pix_mp->height);
-		else if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE &&
+		else if (ctx->vpu_src_fmt &&
+			 ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE &&
 			 !hantro_needs_postproc(ctx, fmt))
 			pix_mp->plane_fmt[0].sizeimage +=
 				hantro_hevc_mv_size(pix_mp->width,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
