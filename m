Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ADCEEDE9BC
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbBqiN2j05PQxcsXz+uIozHzOK/ik5wEiWs2JWD9xC8=; b=s/htjRnIUBUBgP
	MioPKrzqRgMPNEAStbsN1+3ttm/SCRYY2raf3P0bR+rgLYKKn77i/TxJ8BypGpp2/fIbCI7mTy8IS
	XhcTjhsuDJthXaRnV03TRgXv+Q397Lu7fbCJMJnPE25aymx2ZS9mZR4tGb4jtkVH73M6ry60uIJqM
	Z+f6wOsNI+pHjOhGwfWVx4F4KM+Ti0RgNFO/Dfw0/OVvBMdt/xIj62hZ3UEEv1zI0qvln7ioia1hj
	6yldhKab4Csq72SfUh0OwWvBZ6XC8Ndt5OyB+P3tJFUAt9vS5EnMBEbKvq5v+Belrma++yHDXCZKB
	sgtdKR3s2jK9fm7PreCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfq-008MRv-3B;
	Thu, 14 Sep 2023 12:42:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfq-008MRE-0s
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Sep 2023 12:42:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Lrasu7O03bAx40bFkkMewQTb4lDPV19XvsVZJ8bEvHY=; b=hWCPFk1LfmYAjHcKAdRoxP6dW6
	2qNXlFl5K16EJGLEOf2638+UC1pVrcXfeItgh1g3XKUVGQI3izIkEMYYbr0BagqmoV5+XLfZtSdQY
	F/t4yOewKJiHFeMh9n6bVhlJr3ajlAFUQnKDdxnWnYxzpKMO52PL63FTUc5ARmg5QotLoIR0F6C6H
	zsNnb1izTupp3Q/2B/VL8ARjuNqXd3Gri3oNwsVMd3YxwylKKHzS9/G3zer2GCw5WgVyXNfZ3rIlu
	ILM+fP0F7Mvl5PfzrtISH+T3zrTRhb9cRgKwJJuOShVTNxTKXoVUhu2c3faoPWj7msklYPGEd8iKK
	jaktWVmg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf5-007seW-30
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:42:20 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qglet-0008Mc-G4; Thu, 14 Sep 2023 14:41:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 14 Sep 2023 14:40:43 +0200
Subject: [PATCH 11/13] media: rockchip: rga: switch to multi-planar API
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v1-11-abfd77260ae3@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230914_134138_089401_21B6B78A 
X-CRM114-Status: GOOD (  16.52  )
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

Switch to the multi-planar API, which allows to handle buffers with
separate planes.

The RGA driver doesn't expose multi-planar formats, yet. The existing
contiguous planar formats can be used with the multi-planar API as well,
but the multi-planar API is required for multi-planar formats.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga.c | 60 +++++++++++++++----------------
 1 file changed, 29 insertions(+), 31 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 516069d720fa..db2160407b83 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -93,7 +93,7 @@ queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 	struct rga_ctx *ctx = priv;
 	int ret;
 
-	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
+	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
 	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	src_vq->drv_priv = ctx;
 	src_vq->ops = &rga_qops;
@@ -107,7 +107,7 @@ queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
 	if (ret)
 		return ret;
 
-	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
+	dst_vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 	dst_vq->io_modes = VB2_MMAP | VB2_DMABUF;
 	dst_vq->drv_priv = ctx;
 	dst_vq->ops = &rga_qops;
@@ -443,7 +443,7 @@ static int vidioc_enum_fmt(struct file *file, void *prv, struct v4l2_fmtdesc *f)
 
 static int vidioc_g_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
-	struct v4l2_pix_format *pix_fmt = &f->fmt.pix;
+	struct v4l2_pix_format_mplane *pix_fmt = &f->fmt.pix_mp;
 	struct rga_ctx *ctx = prv;
 	struct vb2_queue *vq;
 	struct rga_frame *frm;
@@ -455,12 +455,9 @@ static int vidioc_g_fmt(struct file *file, void *prv, struct v4l2_format *f)
 	if (IS_ERR(frm))
 		return PTR_ERR(frm);
 
-	pix_fmt->width = frm->width;
-	pix_fmt->height = frm->height;
+	v4l2_fill_pixfmt_mp(pix_fmt, frm->fmt->fourcc, frm->width, frm->height);
+
 	pix_fmt->field = V4L2_FIELD_NONE;
-	pix_fmt->pixelformat = frm->fmt->fourcc;
-	pix_fmt->bytesperline = frm->stride;
-	pix_fmt->sizeimage = frm->size;
 	pix_fmt->colorspace = frm->colorspace;
 
 	return 0;
@@ -468,41 +465,33 @@ static int vidioc_g_fmt(struct file *file, void *prv, struct v4l2_format *f)
 
 static int vidioc_try_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
-	struct v4l2_pix_format *pix_fmt = &f->fmt.pix;
+	struct v4l2_pix_format_mplane *pix_fmt = &f->fmt.pix_mp;
 	struct rga_fmt *fmt;
 
-	fmt = rga_fmt_find(f->fmt.pix.pixelformat);
+	fmt = rga_fmt_find(pix_fmt->pixelformat);
 	if (!fmt)
 		fmt = &formats[0];
 
-	pix_fmt->pixelformat = fmt->fourcc;
-
-	pix_fmt->field = V4L2_FIELD_NONE;
-
 	pix_fmt->width = clamp(pix_fmt->width,
 			       (u32)MIN_WIDTH, (u32)MAX_WIDTH);
 	pix_fmt->height = clamp(pix_fmt->height,
 				(u32)MIN_HEIGHT, (u32)MAX_HEIGHT);
 
-	if (fmt->hw_format >= RGA_COLOR_FMT_YUV422SP)
-		pix_fmt->bytesperline = pix_fmt->width;
-	else
-		pix_fmt->bytesperline = (pix_fmt->width * fmt->depth) >> 3;
-
-	pix_fmt->sizeimage =
-		pix_fmt->height * (pix_fmt->width * fmt->depth) >> 3;
+	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt->height);
+	pix_fmt->field = V4L2_FIELD_NONE;
 
 	return 0;
 }
 
 static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 {
-	struct v4l2_pix_format *pix_fmt = &f->fmt.pix;
+	struct v4l2_pix_format_mplane *pix_fmt = &f->fmt.pix_mp;
 	struct rga_ctx *ctx = prv;
 	struct rockchip_rga *rga = ctx->rga;
 	struct vb2_queue *vq;
 	struct rga_frame *frm;
 	int ret = 0;
+	int i;
 
 	/* Adjust all values accordingly to the hardware capabilities
 	 * and chosen format.
@@ -520,9 +509,11 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 		return PTR_ERR(frm);
 	frm->width = pix_fmt->width;
 	frm->height = pix_fmt->height;
-	frm->size = pix_fmt->sizeimage;
+	frm->size = 0;
+	for (i = 0; i < pix_fmt->num_planes; i++)
+		frm->size += pix_fmt->plane_fmt[i].sizeimage;
 	frm->fmt = rga_fmt_find(pix_fmt->pixelformat);
-	frm->stride = pix_fmt->bytesperline;
+	frm->stride = pix_fmt->plane_fmt[0].bytesperline;
 	frm->colorspace = pix_fmt->colorspace;
 
 	/* Reset crop settings */
@@ -537,6 +528,13 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 		  &frm->fmt->fourcc, frm->width, frm->height,
 		  frm->stride, frm->size);
 
+	for (i = 0; i < pix_fmt->num_planes; i++) {
+		v4l2_dbg(debug, 1, &rga->v4l2_dev,
+			 "plane[%d]: size %d, bytesperline %d\n",
+			 i, pix_fmt->plane_fmt[i].sizeimage,
+			 pix_fmt->plane_fmt[i].bytesperline);
+	}
+
 	return 0;
 }
 
@@ -647,14 +645,14 @@ static const struct v4l2_ioctl_ops rga_ioctl_ops = {
 	.vidioc_querycap = vidioc_querycap,
 
 	.vidioc_enum_fmt_vid_cap = vidioc_enum_fmt,
-	.vidioc_g_fmt_vid_cap = vidioc_g_fmt,
-	.vidioc_try_fmt_vid_cap = vidioc_try_fmt,
-	.vidioc_s_fmt_vid_cap = vidioc_s_fmt,
+	.vidioc_g_fmt_vid_cap_mplane = vidioc_g_fmt,
+	.vidioc_try_fmt_vid_cap_mplane = vidioc_try_fmt,
+	.vidioc_s_fmt_vid_cap_mplane = vidioc_s_fmt,
 
 	.vidioc_enum_fmt_vid_out = vidioc_enum_fmt,
-	.vidioc_g_fmt_vid_out = vidioc_g_fmt,
-	.vidioc_try_fmt_vid_out = vidioc_try_fmt,
-	.vidioc_s_fmt_vid_out = vidioc_s_fmt,
+	.vidioc_g_fmt_vid_out_mplane = vidioc_g_fmt,
+	.vidioc_try_fmt_vid_out_mplane = vidioc_try_fmt,
+	.vidioc_s_fmt_vid_out_mplane = vidioc_s_fmt,
 
 	.vidioc_reqbufs = v4l2_m2m_ioctl_reqbufs,
 	.vidioc_querybuf = v4l2_m2m_ioctl_querybuf,
@@ -681,7 +679,7 @@ static const struct video_device rga_videodev = {
 	.minor = -1,
 	.release = video_device_release,
 	.vfl_dir = VFL_DIR_M2M,
-	.device_caps = V4L2_CAP_VIDEO_M2M | V4L2_CAP_STREAMING,
+	.device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING,
 };
 
 static int rga_enable_clocks(struct rockchip_rga *rga)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
