Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D8F3CDB487
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2baZaAkJ33YpkkYNPKn+cEn80jTOpOPpDA86O6Gt/s=; b=UlXV/L8fLLmmLq
	QahWoou8ImhKcueXmcsQliVvnbVK9OWsbiW1iz9Mvgx1os59Hdivx0bCKVKKvTcjP/qQR0gYcMaqX
	gpwVUMttDwoTCEBTtBlgRVz1ltqVELDhsSIMpbt+HTWrW6TK+K4YuoitcRPeXkb6/MxX4G8aB0Lir
	zkISw1pGeVa8c/lQK3RsnTgXo+YkxpVkUMX2/J8eYjgeuHOuDDsLp4Gu6CjMjOXNwai0fnO6derAX
	OZ8Y7YEGEqWQwLCiSH+Cetv9d2pfFpXK2kK828TkTPwrLZ7o8usrqT+kCgVXCZWLtv60DKRUJyEnE
	oqgPBF6yb9Q3+q5d6dJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFup-003Fv5-1p;
	Fri, 13 Oct 2023 11:01:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFuh-003FlF-2c
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 11:01:08 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qrFuU-0006xJ-4j; Fri, 13 Oct 2023 13:00:50 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Oct 2023 13:00:25 +0200
Subject: [PATCH v2 04/13] media: rockchip: rga: split src and dst buffer
 setup
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v2-4-bbfa6abf8bbf@pengutronix.de>
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
X-CRM114-CacheID: sfid-20231013_040103_886216_8DF90FBF 
X-CRM114-Status: GOOD (  13.95  )
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

Split the register setup for the source and destination video buffers
into separate functions.

This is a cleanup to make the code more readable by separating the
offset calculation for the different buffers and prepares the driver for
using pre-calculated offsets of planes.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2: None
---
 drivers/media/platform/rockchip/rga/rga-hw.c | 94 ++++++++++++++++++++--------
 1 file changed, 68 insertions(+), 26 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index b391d97d4632..836ec7721b21 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -163,7 +163,7 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	struct rockchip_rga *rga = ctx->rga;
 	u32 *dest = rga->cmdbuf_virt;
 	unsigned int scale_dst_w, scale_dst_h;
-	unsigned int src_h, src_w, src_x, src_y, dst_h, dst_w, dst_x, dst_y;
+	unsigned int src_h, src_w, dst_h, dst_w;
 	union rga_src_info src_info;
 	union rga_dst_info dst_info;
 	union rga_src_x_factor x_factor;
@@ -173,18 +173,10 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	union rga_dst_vir_info dst_vir_info;
 	union rga_dst_act_info dst_act_info;
 
-	struct rga_addr_offset *dst_offset;
-	struct rga_corners_addr_offset offsets;
-	struct rga_corners_addr_offset src_offsets;
-
 	src_h = ctx->in.crop.height;
 	src_w = ctx->in.crop.width;
-	src_x = ctx->in.crop.left;
-	src_y = ctx->in.crop.top;
 	dst_h = ctx->out.crop.height;
 	dst_w = ctx->out.crop.width;
-	dst_x = ctx->out.crop.left;
-	dst_y = ctx->out.crop.top;
 
 	src_info.val = dest[(RGA_SRC_INFO - RGA_MODE_BASE_REG) >> 2];
 	dst_info.val = dest[(RGA_DST_INFO - RGA_MODE_BASE_REG) >> 2];
@@ -312,32 +304,85 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	dst_act_info.data.act_height = dst_h - 1;
 	dst_act_info.data.act_width = dst_w - 1;
 
+	dest[(RGA_SRC_X_FACTOR - RGA_MODE_BASE_REG) >> 2] = x_factor.val;
+	dest[(RGA_SRC_Y_FACTOR - RGA_MODE_BASE_REG) >> 2] = y_factor.val;
+	dest[(RGA_SRC_VIR_INFO - RGA_MODE_BASE_REG) >> 2] = src_vir_info.val;
+	dest[(RGA_SRC_ACT_INFO - RGA_MODE_BASE_REG) >> 2] = src_act_info.val;
+
+	dest[(RGA_SRC_INFO - RGA_MODE_BASE_REG) >> 2] = src_info.val;
+
+	dest[(RGA_DST_VIR_INFO - RGA_MODE_BASE_REG) >> 2] = dst_vir_info.val;
+	dest[(RGA_DST_ACT_INFO - RGA_MODE_BASE_REG) >> 2] = dst_act_info.val;
+
+	dest[(RGA_DST_INFO - RGA_MODE_BASE_REG) >> 2] = dst_info.val;
+}
+
+static void rga_cmd_set_src_info(struct rga_ctx *ctx)
+{
+	struct rga_corners_addr_offset src_offsets;
+	struct rockchip_rga *rga = ctx->rga;
+	u32 *dest = rga->cmdbuf_virt;
+	unsigned int src_h, src_w, src_x, src_y;
+
+	src_h = ctx->in.crop.height;
+	src_w = ctx->in.crop.width;
+	src_x = ctx->in.crop.left;
+	src_y = ctx->in.crop.top;
+
 	/*
 	 * Calculate the source framebuffer base address with offset pixel.
 	 */
 	src_offsets = rga_get_addr_offset(&ctx->in, src_x, src_y,
 					  src_w, src_h);
 
-	/*
-	 * Configure the dest framebuffer base address with pixel offset.
-	 */
-	offsets = rga_get_addr_offset(&ctx->out, dst_x, dst_y, dst_w, dst_h);
-	dst_offset = rga_lookup_draw_pos(&offsets, src_info.data.rot_mode,
-					 src_info.data.mir_mode);
-
 	dest[(RGA_SRC_Y_RGB_BASE_ADDR - RGA_MODE_BASE_REG) >> 2] =
 		src_offsets.left_top.y_off;
 	dest[(RGA_SRC_CB_BASE_ADDR - RGA_MODE_BASE_REG) >> 2] =
 		src_offsets.left_top.u_off;
 	dest[(RGA_SRC_CR_BASE_ADDR - RGA_MODE_BASE_REG) >> 2] =
 		src_offsets.left_top.v_off;
+}
 
-	dest[(RGA_SRC_X_FACTOR - RGA_MODE_BASE_REG) >> 2] = x_factor.val;
-	dest[(RGA_SRC_Y_FACTOR - RGA_MODE_BASE_REG) >> 2] = y_factor.val;
-	dest[(RGA_SRC_VIR_INFO - RGA_MODE_BASE_REG) >> 2] = src_vir_info.val;
-	dest[(RGA_SRC_ACT_INFO - RGA_MODE_BASE_REG) >> 2] = src_act_info.val;
+static void rga_cmd_set_dst_info(struct rga_ctx *ctx)
+{
+	struct rga_addr_offset *dst_offset;
+	struct rga_corners_addr_offset offsets;
+	struct rockchip_rga *rga = ctx->rga;
+	u32 *dest = rga->cmdbuf_virt;
+	unsigned int dst_h, dst_w, dst_x, dst_y;
+	unsigned int mir_mode = 0;
+	unsigned int rot_mode = 0;
 
-	dest[(RGA_SRC_INFO - RGA_MODE_BASE_REG) >> 2] = src_info.val;
+	dst_h = ctx->out.crop.height;
+	dst_w = ctx->out.crop.width;
+	dst_x = ctx->out.crop.left;
+	dst_y = ctx->out.crop.top;
+
+	if (ctx->vflip)
+		mir_mode |= RGA_SRC_MIRR_MODE_X;
+	if (ctx->hflip)
+		mir_mode |= RGA_SRC_MIRR_MODE_Y;
+
+	switch (ctx->rotate) {
+	case 90:
+		rot_mode = RGA_SRC_ROT_MODE_90_DEGREE;
+		break;
+	case 180:
+		rot_mode = RGA_SRC_ROT_MODE_180_DEGREE;
+		break;
+	case 270:
+		rot_mode = RGA_SRC_ROT_MODE_270_DEGREE;
+		break;
+	default:
+		rot_mode = RGA_SRC_ROT_MODE_0_DEGREE;
+		break;
+	}
+
+	/*
+	 * Configure the dest framebuffer base address with pixel offset.
+	 */
+	offsets = rga_get_addr_offset(&ctx->out, dst_x, dst_y, dst_w, dst_h);
+	dst_offset = rga_lookup_draw_pos(&offsets, mir_mode, rot_mode);
 
 	dest[(RGA_DST_Y_RGB_BASE_ADDR - RGA_MODE_BASE_REG) >> 2] =
 		dst_offset->y_off;
@@ -345,11 +390,6 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 		dst_offset->u_off;
 	dest[(RGA_DST_CR_BASE_ADDR - RGA_MODE_BASE_REG) >> 2] =
 		dst_offset->v_off;
-
-	dest[(RGA_DST_VIR_INFO - RGA_MODE_BASE_REG) >> 2] = dst_vir_info.val;
-	dest[(RGA_DST_ACT_INFO - RGA_MODE_BASE_REG) >> 2] = dst_act_info.val;
-
-	dest[(RGA_DST_INFO - RGA_MODE_BASE_REG) >> 2] = dst_info.val;
 }
 
 static void rga_cmd_set_mode(struct rga_ctx *ctx)
@@ -392,6 +432,8 @@ static void rga_cmd_set(struct rga_ctx *ctx,
 	rga_cmd_set_dst_addr(ctx, dst->dma_desc_pa);
 	rga_cmd_set_mode(ctx);
 
+	rga_cmd_set_src_info(ctx);
+	rga_cmd_set_dst_info(ctx);
 	rga_cmd_set_trans_info(ctx);
 
 	rga_write(rga, RGA_CMD_BASE, rga->cmdbuf_phy);

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
