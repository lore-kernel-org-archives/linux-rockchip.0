Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3C69EDE9BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jt0Cm1qFNYEYoB/Y4GKOKExKZ3dPiOxk6/fWCjgsl2I=; b=CPOM24pR92RLZL
	kVjePft9xIa/H3JoiEkb779ROgEjSmpD2WMd7gjpPHBoua6ulUTdg0PG6AMgEgLSRYug6uJ1Ymejs
	Bsezu4fYqRnlYWKJQEs0jE9a7/2q5aXibfw6CYSQIQRrcwNGXyi2yg25D2DQp+piQ3Pwnr1z283eZ
	fcIxRBaFV1yrkjlF+oxNDxqAGLwGnphtzIa2oA89tTCZvd4liN7/SpMrm/nhF2lorcN9golh7x/hH
	S7ExlobXM3VndXrxuRZAhC9TEwdfU10vfMAjKRfCyIJmmvVgfon1xJTeUGgE8nTBFcfTw5pL4z+9j
	ZT8KgIQpjL7AiF4VQWHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfI-008LsY-2X;
	Thu, 14 Sep 2023 12:41:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfA-008Lk1-0X
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Sep 2023 12:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XX7vOeV0kxULW7U+Do8IC6/SQnvfZZHlylRl1VUyvZ0=; b=jsGa08Nhc3sgmTvYMplLtqHdY3
	1YIMvDHnrsxEZWL3HriUdQbySmf/3K+dIcm7W+QHsyR37DVYjVpr0ci6kVeGA3SOXf2wEcwRvF+hc
	tgFlC273Mn5Q/79zhqA6vOa/cBp4S40KHYXRsacVagOrkLUpO/5hnPYaokYwXS7tnh20tckfy5L8L
	yFiMpoAWxmHuCf0vbWPn4+kv0BlvHUNlkMooTo2NlaHWJBPf9lK6Cn0Q9cffzX8xK61Xoz5e66Z6B
	0c4bDFv/0qzn7nZq2q5DrkPZa8X51lkeuXAQg1kpxbKeIe7wCk7ciwD2GrvtJnl5PpUM647KGi8Ph
	LuTNBzoQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf5-007se5-1f
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:41:38 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qglet-0008Mc-7S; Thu, 14 Sep 2023 14:41:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 14 Sep 2023 14:40:40 +0200
Subject: [PATCH 08/13] media: rockchip: rga: use pixelformat to find format
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v1-8-abfd77260ae3@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230914_134137_097396_3DEF923D 
X-CRM114-Status: GOOD (  14.58  )
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

Use the pixelformat instead of the v4l2_format to find the rga_fmt. This
avoids knowing the structure and type of v4l2_format in rga_fmt_find and
simplifies the function.

Also cleanup the users of the function. In try_fmt always return the
found pixel format to make sure that the pixel format is always set.
Thus, we can be sure that we will find the rga_fmt in s_fmt and can drop
the check if a given format has been found.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 49403498bc17..4579023af2ff 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -318,12 +318,12 @@ static struct rga_fmt formats[] = {
 
 #define NUM_FORMATS ARRAY_SIZE(formats)
 
-static struct rga_fmt *rga_fmt_find(struct v4l2_format *f)
+static struct rga_fmt *rga_fmt_find(u32 pixelformat)
 {
 	unsigned int i;
 
 	for (i = 0; i < NUM_FORMATS; i++) {
-		if (formats[i].fourcc == f->fmt.pix.pixelformat)
+		if (formats[i].fourcc == pixelformat)
 			return &formats[i];
 	}
 	return NULL;
@@ -472,11 +472,11 @@ static int vidioc_try_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
 	struct rga_fmt *fmt;
 
-	fmt = rga_fmt_find(f);
-	if (!fmt) {
+	fmt = rga_fmt_find(f->fmt.pix.pixelformat);
+	if (!fmt)
 		fmt = &formats[0];
-		f->fmt.pix.pixelformat = fmt->fourcc;
-	}
+
+	f->fmt.pix.pixelformat = fmt->fourcc;
 
 	f->fmt.pix.field = V4L2_FIELD_NONE;
 
@@ -502,7 +502,6 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 	struct rockchip_rga *rga = ctx->rga;
 	struct vb2_queue *vq;
 	struct rga_frame *frm;
-	struct rga_fmt *fmt;
 	int ret = 0;
 
 	/* Adjust all values accordingly to the hardware capabilities
@@ -519,13 +518,10 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 	frm = rga_get_frame(ctx, f->type);
 	if (IS_ERR(frm))
 		return PTR_ERR(frm);
-	fmt = rga_fmt_find(f);
-	if (!fmt)
-		return -EINVAL;
 	frm->width = f->fmt.pix.width;
 	frm->height = f->fmt.pix.height;
 	frm->size = f->fmt.pix.sizeimage;
-	frm->fmt = fmt;
+	frm->fmt = rga_fmt_find(f->fmt.pix.pixelformat);
 	frm->stride = f->fmt.pix.bytesperline;
 	frm->colorspace = f->fmt.pix.colorspace;
 

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
