Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D859CDB485
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lG6nVrxHx7+xB+LoQ17Is4Gb2E9SkOZ4x/2yxbnErU8=; b=KFOD97mqoMnqM7
	gQu8ToGQ4GakqrquAIhgmNBQfrfoPrjIFl+nnYanvOV3zVno1j7at1YaRKQG7sq482FZPfKsGWHge
	/mGueDAGtF7ZL14cOp68o0nQvpAwwdLj5+F/O3/84Eee7gtvehgOJb7BB7u4CyvWtZv4PuTemFhbr
	D8PiCMws2vZ+vWm9EHSh0b8aeOyx5tuAJ8ymrkEm/q4eMjCoBDNbvwPRvy0k90nfyuPX3XpDJPLSl
	kvQ7Qo6XgR+4myeIGasEHwNEg/+cbKxAlTlTImKA+tUCuP1QrWahfxNgGvHb5JqVjstZUbhMSAfYY
	WrlZaSvFveFXpMRWNhuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFun-003Frt-1o;
	Fri, 13 Oct 2023 11:01:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFuh-003FlL-2c
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 11:01:06 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qrFuU-0006xJ-GA; Fri, 13 Oct 2023 13:00:50 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Oct 2023 13:00:31 +0200
Subject: [PATCH v2 10/13] media: rockchip: rga: use macros for testing
 buffer type
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v2-10-bbfa6abf8bbf@pengutronix.de>
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
X-CRM114-CacheID: sfid-20231013_040103_875474_5DDBE26A 
X-CRM114-Status: GOOD (  12.43  )
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

Use the provided V4L2_TYPE_IS_{OUTPUT,CAPTURE} macros to check if the
buffer or queue is OUTPUT or CAPTURE. The macros work also work for the
_MPLANE buffer and queue types and make it easier to switch to the
multi-planar API.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2: None
---
 drivers/media/platform/rockchip/rga/rga.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index f5d0d87cce22..91be87e01dab 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -344,14 +344,11 @@ static struct rga_frame def_frame = {
 
 struct rga_frame *rga_get_frame(struct rga_ctx *ctx, enum v4l2_buf_type type)
 {
-	switch (type) {
-	case V4L2_BUF_TYPE_VIDEO_OUTPUT:
+	if (V4L2_TYPE_IS_OUTPUT(type))
 		return &ctx->in;
-	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
+	if (V4L2_TYPE_IS_CAPTURE(type))
 		return &ctx->out;
-	default:
-		return ERR_PTR(-EINVAL);
-	}
+	return ERR_PTR(-EINVAL);
 }
 
 static int rga_open(struct file *file)
@@ -559,21 +556,21 @@ static int vidioc_g_selection(struct file *file, void *prv,
 	switch (s->target) {
 	case V4L2_SEL_TGT_COMPOSE_DEFAULT:
 	case V4L2_SEL_TGT_COMPOSE_BOUNDS:
-		if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+		if (!V4L2_TYPE_IS_CAPTURE(s->type))
 			return -EINVAL;
 		break;
 	case V4L2_SEL_TGT_CROP_DEFAULT:
 	case V4L2_SEL_TGT_CROP_BOUNDS:
-		if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+		if (!V4L2_TYPE_IS_OUTPUT(s->type))
 			return -EINVAL;
 		break;
 	case V4L2_SEL_TGT_COMPOSE:
-		if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+		if (!V4L2_TYPE_IS_CAPTURE(s->type))
 			return -EINVAL;
 		use_frame = true;
 		break;
 	case V4L2_SEL_TGT_CROP:
-		if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+		if (!V4L2_TYPE_IS_OUTPUT(s->type))
 			return -EINVAL;
 		use_frame = true;
 		break;
@@ -611,7 +608,7 @@ static int vidioc_s_selection(struct file *file, void *prv,
 		 * COMPOSE target is only valid for capture buffer type, return
 		 * error for output buffer type
 		 */
-		if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+		if (!V4L2_TYPE_IS_CAPTURE(s->type))
 			return -EINVAL;
 		break;
 	case V4L2_SEL_TGT_CROP:
@@ -619,7 +616,7 @@ static int vidioc_s_selection(struct file *file, void *prv,
 		 * CROP target is only valid for output buffer type, return
 		 * error for capture buffer type
 		 */
-		if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
+		if (!V4L2_TYPE_IS_OUTPUT(s->type))
 			return -EINVAL;
 		break;
 	/*

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
