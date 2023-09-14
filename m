Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94A13CA0EF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1uf3lM2kCke9HoicsTrMuVrdKmoj+woQen2bBuIw9Y=; b=0ox/W27TLpwrAJ
	Mcup72wQ2qJOMEQbEiMgNliGIHHA7ECu0KSeZpRTep3FCZLaLA/nHHL3TP9cb9PKamVmgDcbYXukv
	26I649ALBv/+PL/mTpSou1FWDYMeQwhdbJv7d+12NVa3/6Hh/0HLd0YiJLBLB/W7d1h1ReqORgW33
	HWs6p34SKbgCm6MMQFBFKd3OEdKU0XJf3TXnASUe/cdNuBojI1blqIogVyGVV9TJpAvNqJRzpf01O
	mA/1EZ5uI9ESiKNvnvY9EuF9IbjT5k9FeD8zYzRDUOh2pOO/9KFsbYg1gnobpkTnE5jeLj5ImkP7x
	PgR4iiXlnALnLCsavHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfJ-008Lst-0h;
	Thu, 14 Sep 2023 12:41:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfA-008Lk2-0Z
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Sep 2023 12:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Pi7Q3A2duNrC8i4QkYJ1mq/ohudCSbgt3G0y8x5xc3E=; b=ZzDUW9+kqkQGfxxxJ4iAhM1zcE
	/qQv6LB3HsIfAFn3gpQ093vFF3m+7aNKVEBN7VLHLo0dXUZI3z7gQqzGw8uCf9LbfRNehbDVIdCU5
	cNU/7pGMguGVbDPzGTF2YhZTDiCuGwkJkk4TDQNFkRORG7Fk+RWc7XH3DnJ6noPSBmfkuXLEizw+v
	dp/bWh1jRLpvCF5+jQ6wul2EYT1rXzvYqAX99ZSM7c8yhXXCEQsJVr97OMrmWBu7cM5hSHQbvHt7Z
	AAiZgeBLKHGAjjmEUnAO6XpYZUjVt0R808VbNdmTZri0mm4JKYRqh0aGV2hACXz9CNzFJ/UaoMWfy
	5UX3jLgA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf5-007se4-11
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:41:38 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qglet-0008Mc-Bk; Thu, 14 Sep 2023 14:41:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 14 Sep 2023 14:40:41 +0200
Subject: [PATCH 09/13] media: rockchip: rga: add local variable for
 pix_format
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v1-9-abfd77260ae3@pengutronix.de>
References: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_134136_921861_CBFD65FC 
X-CRM114-Status: GOOD (  12.21  )
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

The local variable allows to simplify the accessed to the format and
makes it easier to change the type of the format.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga.c | 55 ++++++++++++++++++-------------
 1 file changed, 32 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 4579023af2ff..303ee762bec4 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -446,6 +446,7 @@ static int vidioc_enum_fmt(struct file *file, void *prv, struct v4l2_fmtdesc *f)
 
 static int vidioc_g_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
+	struct v4l2_pix_format *pix_fmt = &f->fmt.pix;
 	struct rga_ctx *ctx = prv;
 	struct vb2_queue *vq;
 	struct rga_frame *frm;
@@ -457,47 +458,49 @@ static int vidioc_g_fmt(struct file *file, void *prv, struct v4l2_format *f)
 	if (IS_ERR(frm))
 		return PTR_ERR(frm);
 
-	f->fmt.pix.width = frm->width;
-	f->fmt.pix.height = frm->height;
-	f->fmt.pix.field = V4L2_FIELD_NONE;
-	f->fmt.pix.pixelformat = frm->fmt->fourcc;
-	f->fmt.pix.bytesperline = frm->stride;
-	f->fmt.pix.sizeimage = frm->size;
-	f->fmt.pix.colorspace = frm->colorspace;
+	pix_fmt->width = frm->width;
+	pix_fmt->height = frm->height;
+	pix_fmt->field = V4L2_FIELD_NONE;
+	pix_fmt->pixelformat = frm->fmt->fourcc;
+	pix_fmt->bytesperline = frm->stride;
+	pix_fmt->sizeimage = frm->size;
+	pix_fmt->colorspace = frm->colorspace;
 
 	return 0;
 }
 
 static int vidioc_try_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
+	struct v4l2_pix_format *pix_fmt = &f->fmt.pix;
 	struct rga_fmt *fmt;
 
 	fmt = rga_fmt_find(f->fmt.pix.pixelformat);
 	if (!fmt)
 		fmt = &formats[0];
 
-	f->fmt.pix.pixelformat = fmt->fourcc;
+	pix_fmt->pixelformat = fmt->fourcc;
 
-	f->fmt.pix.field = V4L2_FIELD_NONE;
+	pix_fmt->field = V4L2_FIELD_NONE;
 
-	f->fmt.pix.width = clamp(f->fmt.pix.width,
-				 (u32)MIN_WIDTH, (u32)MAX_WIDTH);
-	f->fmt.pix.height = clamp(f->fmt.pix.height,
-				  (u32)MIN_HEIGHT, (u32)MAX_HEIGHT);
+	pix_fmt->width = clamp(pix_fmt->width,
+			       (u32)MIN_WIDTH, (u32)MAX_WIDTH);
+	pix_fmt->height = clamp(pix_fmt->height,
+				(u32)MIN_HEIGHT, (u32)MAX_HEIGHT);
 
 	if (fmt->hw_format >= RGA_COLOR_FMT_YUV422SP)
-		f->fmt.pix.bytesperline = f->fmt.pix.width;
+		pix_fmt->bytesperline = pix_fmt->width;
 	else
-		f->fmt.pix.bytesperline = (f->fmt.pix.width * fmt->depth) >> 3;
+		pix_fmt->bytesperline = (pix_fmt->width * fmt->depth) >> 3;
 
-	f->fmt.pix.sizeimage =
-		f->fmt.pix.height * (f->fmt.pix.width * fmt->depth) >> 3;
+	pix_fmt->sizeimage =
+		pix_fmt->height * (pix_fmt->width * fmt->depth) >> 3;
 
 	return 0;
 }
 
 static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
+	struct v4l2_pix_format *pix_fmt = &f->fmt.pix;
 	struct rga_ctx *ctx = prv;
 	struct rockchip_rga *rga = ctx->rga;
 	struct vb2_queue *vq;
@@ -518,12 +521,12 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 	frm = rga_get_frame(ctx, f->type);
 	if (IS_ERR(frm))
 		return PTR_ERR(frm);
-	frm->width = f->fmt.pix.width;
-	frm->height = f->fmt.pix.height;
-	frm->size = f->fmt.pix.sizeimage;
-	frm->fmt = rga_fmt_find(f->fmt.pix.pixelformat);
-	frm->stride = f->fmt.pix.bytesperline;
-	frm->colorspace = f->fmt.pix.colorspace;
+	frm->width = pix_fmt->width;
+	frm->height = pix_fmt->height;
+	frm->size = pix_fmt->sizeimage;
+	frm->fmt = rga_fmt_find(pix_fmt->pixelformat);
+	frm->stride = pix_fmt->bytesperline;
+	frm->colorspace = pix_fmt->colorspace;
 
 	/* Reset crop settings */
 	frm->crop.left = 0;
@@ -531,6 +534,12 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 	frm->crop.width = frm->width;
 	frm->crop.height = frm->height;
 
+	v4l2_dbg(debug, 1, &rga->v4l2_dev,
+		 "[%s] fmt - %p4cc %dx%d (stride %d, sizeimage %d)\n",
+		  V4L2_TYPE_IS_OUTPUT(f->type) ? "OUTPUT" : "CAPTURE",
+		  &frm->fmt->fourcc, frm->width, frm->height,
+		  frm->stride, frm->size);
+
 	return 0;
 }
 

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
