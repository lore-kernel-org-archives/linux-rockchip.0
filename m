Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF577EB64DC
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jul 2023 07:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X4TfsuoUBqmm706Nk/4aYWfZUkX5JeYMmh3Ywk4cmHw=; b=hz0OaOG8xfJ8Mq
	T0DwmtyUOZKODQzZWQKo8qQLv1NNbhoTKFlKln++XVgFtGNmI2/iZ5mkliZW1ILIY3XY2xWwVRQ6L
	Cfyu4tAq53BQ/ouQFM9b0PRoiSgr2p7fFUXOBe6vRF9baChT0Qdz44UgpVK/dD7AyMrXAFL9H6t7q
	QNtLN3Dt9XUqUl6SaEaJI4a0HmqmMXcSJuk2huJPdsMxnNzkUhHJv9hTvqYtgxDD3jYSDQ2jPhJBZ
	JxyaDB1spyd5K3deVX+TwrpaaLuh7SaIt0IZQFfYbf0q9unxkgl5ouOjr/Ww5N7jdlhz9fVBHz58a
	1DXXIvcNHC9oMVRllkSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHJD3-000l37-1c;
	Thu, 06 Jul 2023 07:15:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHJD1-000l11-27
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Jul 2023 07:15:24 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qHJCq-0003MB-PE; Thu, 06 Jul 2023 09:15:12 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	benjamin.gaignard@collabora.com
Cc: m.szyprowski@samsung.com,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	kernel@pengutronix.de,
	mtr@pengutronix.de
Subject: [PATCH] media: verisilicon: Fix TRY_FMT on encoder OUTPUT
Date: Thu,  6 Jul 2023 09:15:10 +0200
Message-Id: <20230706071510.1717684-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_001523_699752_3D039D3B 
X-CRM114-Status: GOOD (  14.98  )
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

Commit f100ce3bbd6a ("media: verisilicon: Fix crash when probing
encoder") removed vpu_fmt from hantro_try_fmt(), since it was
initialized from vpu_dst_fmt, which may not be initialized, when TRY_FMT
is called. It was replaced by fmt, which is found using the pixelformat.

For the encoder, this changed the fmt to contain the raw format instead
of the coded format. The format constraints as of fmt->frmsize are only
valid for the coded format and are 0 for the raw formats. Therefore, the
size of a encoder OUTPUT device is constrained to 0 and the
v4l2-compliance tests for G_FMT, TRY_FMT, and SET_FMT fail.

Bring back vpu_fmt to use the coded format on an encoder OUTPUT device,
but initialize it using the currently set pixelformat on dst_fmt, which
is the coded format on an encoder.

Fixes: f100ce3bbd6a ("media: verisilicon: Fix crash when probing encoder")
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index e871c078dd59..b3ae037a50f6 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -297,6 +297,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 			  enum v4l2_buf_type type)
 {
 	const struct hantro_fmt *fmt;
+	const struct hantro_fmt *vpu_fmt;
 	bool capture = V4L2_TYPE_IS_CAPTURE(type);
 	bool coded;
 
@@ -316,19 +317,23 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 
 	if (coded) {
 		pix_mp->num_planes = 1;
-	} else if (!ctx->is_encoder) {
+		vpu_fmt = fmt;
+	} else if (ctx->is_encoder) {
+		vpu_fmt = hantro_find_format(ctx, ctx->dst_fmt.pixelformat);
+	} else {
 		/*
 		 * Width/height on the CAPTURE end of a decoder are ignored and
 		 * replaced by the OUTPUT ones.
 		 */
 		pix_mp->width = ctx->src_fmt.width;
 		pix_mp->height = ctx->src_fmt.height;
+		vpu_fmt = fmt;
 	}
 
 	pix_mp->field = V4L2_FIELD_NONE;
 
 	v4l2_apply_frmsize_constraints(&pix_mp->width, &pix_mp->height,
-				       &fmt->frmsize);
+				       &vpu_fmt->frmsize);
 
 	if (!coded) {
 		/* Fill remaining fields */
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
