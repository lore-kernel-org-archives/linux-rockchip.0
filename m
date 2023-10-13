Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EEE9CDB485
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5paJ2VYjsvL7b6aAagYENtWNrqKUS+N4d/znDbgTiFk=; b=XcAvFdWang1l2c
	Q2pqCkFRrZ/cmGu8hN4u25d9OpIZatzzSSXn8DclrrbiOsmBoRDH0EaFaeA/EsdD/kh/eGYEsxVc8
	aLdpGs6AXQQ3jMIyon+JOAz6MiojCIeu1YyBPPy676GuD/XWhCUM10xe6sZ3GGbdMyQR4GcszuRN/
	eOUF55oj67TcyCCy5j9/4WNr3y88dbqvuEba77KJqJ7WeQia8eEKGWpF9iyMUQ1fzuEGZ/4T+dc1b
	Yy0mmr5C25JV+Ox8ckVQqVCGMNgonNv3f/IVvXYnR0VEZANONVuibezRa51sjvOAjcFhxEF3pc9j/
	7xBnyOqheeBkU8CI4T8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFup-003FuR-0X;
	Fri, 13 Oct 2023 11:01:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFuh-003FlJ-2i
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 11:01:07 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qrFuU-0006xJ-CR; Fri, 13 Oct 2023 13:00:50 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Oct 2023 13:00:29 +0200
Subject: [PATCH v2 08/13] media: rockchip: rga: use pixelformat to find
 format
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v2-8-bbfa6abf8bbf@pengutronix.de>
References: <20230914-rockchip-rga-multiplanar-v2-0-bbfa6abf8bbf@pengutronix.de>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v2-0-bbfa6abf8bbf@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_040103_931896_392471D7 
X-CRM114-Status: GOOD (  15.03  )
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
Changes in v2: None
---
 drivers/media/platform/rockchip/rga/rga.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 792084918798..8ae68890a8f7 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -320,12 +320,12 @@ static struct rga_fmt formats[] = {
 
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
@@ -474,11 +474,11 @@ static int vidioc_try_fmt(struct file *file, void *prv, struct v4l2_format *f)
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
 
@@ -504,7 +504,6 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
 	struct rockchip_rga *rga = ctx->rga;
 	struct vb2_queue *vq;
 	struct rga_frame *frm;
-	struct rga_fmt *fmt;
 	int ret = 0;
 
 	/* Adjust all values accordingly to the hardware capabilities
@@ -521,13 +520,10 @@ static int vidioc_s_fmt(struct file *file, void *prv, struct v4l2_format *f)
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
