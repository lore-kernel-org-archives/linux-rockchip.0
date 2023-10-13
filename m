Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 255D0CDB483
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNLJBP1cwFwMSa47+mKenJBDOYuW17vAzHamJwTefSw=; b=Va2YJYX68glDI6
	A64984N1HUsQj/vusjuHBTM+OFnlRBW3boY4gbvgQSbX/1ncoNmIzvueGhU681BYx3kJIBf4EEmIB
	VuDacGZVvFJgrBEj10/Pk8lDKlB5gTuu7Sxz1+oo9N0kyNXeqwxPaXiJAPCKusBe+9CHkv+nRYtoL
	i/3Jly8OeqI4RsvZUvHEYKsy/JmpoMjrSEhcPz5P3/1JS/3Iu1Jm1rqhtNvnOhROgi913bHJpWxoS
	W1FDimgGGiiSJrXVQDJfMtOpppLEtgZwwLuEykXFhXh2FpBS3oPI2coUJUOTUG1ykHta0eM/JaCet
	pXHCY8O6Hf294Fctv56g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFum-003Fq7-0W;
	Fri, 13 Oct 2023 11:01:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFuh-003FlI-2b
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 11:01:06 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qrFuU-0006xJ-AV; Fri, 13 Oct 2023 13:00:50 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Oct 2023 13:00:28 +0200
Subject: [PATCH v2 07/13] media: rockchip: rga: use clamp() to clamp size
 to limits
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v2-7-bbfa6abf8bbf@pengutronix.de>
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
X-CRM114-CacheID: sfid-20231013_040103_852085_12835A8E 
X-CRM114-Status: GOOD (  10.72  )
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

The try_fmt should limit the width and height to the know limits of the
RGA. Use the clamp() helper instead of open coding the clamping.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2: None
---
 drivers/media/platform/rockchip/rga/rga.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index ea566c11734a..792084918798 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -482,15 +482,10 @@ static int vidioc_try_fmt(struct file *file, void *prv, struct v4l2_format *f)
 
 	f->fmt.pix.field = V4L2_FIELD_NONE;
 
-	if (f->fmt.pix.width > MAX_WIDTH)
-		f->fmt.pix.width = MAX_WIDTH;
-	if (f->fmt.pix.height > MAX_HEIGHT)
-		f->fmt.pix.height = MAX_HEIGHT;
-
-	if (f->fmt.pix.width < MIN_WIDTH)
-		f->fmt.pix.width = MIN_WIDTH;
-	if (f->fmt.pix.height < MIN_HEIGHT)
-		f->fmt.pix.height = MIN_HEIGHT;
+	f->fmt.pix.width = clamp(f->fmt.pix.width,
+				 (u32)MIN_WIDTH, (u32)MAX_WIDTH);
+	f->fmt.pix.height = clamp(f->fmt.pix.height,
+				  (u32)MIN_HEIGHT, (u32)MAX_HEIGHT);
 
 	if (fmt->hw_format >= RGA_COLOR_FMT_YUV422SP)
 		f->fmt.pix.bytesperline = f->fmt.pix.width;

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
