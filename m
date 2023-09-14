Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B309CA0EF3
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TKZIWb2fI2UP1ygdekMqcIu2jTJWHpHQvwAE4ypgVQ=; b=Tw6Tm5BraGbz04
	BbrJzmkhKYfkAIsyw/cNihc5oung7OsNyIh5fYB28C9ZBH+YtsYaR3ym+G3TGOTQ9rXYqOYqfL+YD
	/m6eDarXSfNjj+QVDJMfztNKQRElw80QhJsKOqmq1wEdga7Kou7sBi/n1k1Lj13jFNsM9Zp/WmwiZ
	GFnQ3L5V4soAYkfZJqViGUybflpb/lm9cz8p58Yj1ArUplwuQQ9xQauwoPPQOEawuZEPBYnKg8Ufp
	eCnNT5dWFzlf2l0KSgr2AAe+Sa4C3elFzHiMXr3jbSM5vJk6N176g1vWe5kRgoQN0tAdFPX+Gxyt/
	2r6Ww+vlU8KkhWjImmKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfK-008LvI-2o;
	Thu, 14 Sep 2023 12:41:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfD-008LmW-1Q
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Sep 2023 12:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=IvaNns+jNBFjVmZEAP1LItgS+lmharW1+qmtS1FQ9eE=; b=C81rmAVmN+WUiejzzkjEd6un6I
	iMhRf+oGJghvFvQy93cyoJ/OMkprCB51LoQApXCn0MYMNZi7RpMLgkke5loCPcUwwvgCskJFp30n1
	lmBVUE5RO4QaTFQ8wXtep1ahU2xLdej7c9tMkw9+iUZW+NRgXEtQrVF4IPWoyTQ4BamK0j9G9IJlM
	ReG+e+C5PuzFuc+X8ztWleVzmlpCfqJo9Msryo0KFQO6i5ETyT0aFB5wGkA8gr4M/cWgljrXQ55/E
	VJBkg8eZHorM2CtRskRVAsQ+/Y6ow+rYgHNQ0wjHWLp7MUO4YJMh6Qr4vyN6qfTOWC8rtCFuey2Er
	9JDCYncw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf6-007seX-0o
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:41:40 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qglet-0008Mc-Ds; Thu, 14 Sep 2023 14:41:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 14 Sep 2023 14:40:42 +0200
Subject: [PATCH 10/13] media: rockchip: rga: use macros for testing buffer
 type
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v1-10-abfd77260ae3@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230914_134138_089401_FFF2834B 
X-CRM114-Status: GOOD (  12.18  )
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
 drivers/media/platform/rockchip/rga/rga.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 303ee762bec4..516069d720fa 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -342,14 +342,11 @@ static struct rga_frame def_frame = {
 
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
@@ -557,21 +554,21 @@ static int vidioc_g_selection(struct file *file, void *prv,
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
@@ -609,7 +606,7 @@ static int vidioc_s_selection(struct file *file, void *prv,
 		 * COMPOSE target is only valid for capture buffer type, return
 		 * error for output buffer type
 		 */
-		if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+		if (!V4L2_TYPE_IS_CAPTURE(s->type))
 			return -EINVAL;
 		break;
 	case V4L2_SEL_TGT_CROP:
@@ -617,7 +614,7 @@ static int vidioc_s_selection(struct file *file, void *prv,
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
