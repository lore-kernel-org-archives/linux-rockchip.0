Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70D62EDE9BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSPI3Js05tK78au1IS2qlc6NgPKmzrCGLrmoVN/bqJM=; b=by+Prars4XYqLp
	5AxlxzyVYtfTwQoFMlMNngsR8f0e3iUMZXkIgOMUFH9Oqo/Y48HqNvoSkMDIXpUhIkrZs8Tp5uQjD
	5wtJDgAtRR9k4W+74Mm/1h2Zn4y1vyGajMkO/B/LF8BnjTwOlLN57QduG7iqhnAj3N75SuwrZzoIo
	vTWE8wbPV22GFxenVYQzZxvNVCh7DRPetC5zMPpAxB2w+Vph6zjpIWRsrbWvdw8KSwBjgjpHio5RM
	iIJqbJ1OrjGonLGKB8UzeOoaeid3LxQF3X+qrLfbSA7AZq2Tka4aDtk07/MJ1HJ02TSOwvDqjkK9S
	j1Brs7IOpC7kABOO29rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfH-008LrM-2w;
	Thu, 14 Sep 2023 12:41:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf6-008LgG-0i
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:41:39 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qglet-0008Mc-1e; Thu, 14 Sep 2023 14:41:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 14 Sep 2023 14:40:37 +0200
Subject: [PATCH 05/13] media: rockchip: rga: pre-calculate plane offsets
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v1-5-abfd77260ae3@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230914_054136_257295_AAD76AA0 
X-CRM114-Status: GOOD (  16.93  )
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

Calculate the plane offsets and store them with the video buffer while
creating the buffer mapping.

This allows the driver to more freely handle the memory of the DMA
mapping as the offsets and the mapping can be kept in sync.

The driver still has to update the offsets to respect the configured
cropping and rotation, but this calculation is now separated from the
calculation of the plane offsets.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 15 ++++++++++++
 drivers/media/platform/rockchip/rga/rga-hw.c  | 33 ++++++++++++---------------
 drivers/media/platform/rockchip/rga/rga.h     |  9 ++++++++
 3 files changed, 38 insertions(+), 19 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index e8dcc0d5cb90..137f4f4be14c 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -76,6 +76,18 @@ static int rga_buf_init(struct vb2_buffer *vb)
 	return 0;
 }
 
+static int get_plane_offset(struct rga_frame *f, int plane)
+{
+	if (plane == 0)
+		return 0;
+	if (plane == 1)
+		return f->width * f->height;
+	if (plane == 2)
+		return f->width * f->height + (f->width * f->height / f->fmt->uv_factor);
+
+	return -EINVAL;
+}
+
 static int rga_buf_prepare(struct vb2_buffer *vb)
 {
 	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
@@ -97,6 +109,9 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
 		dev_err(rga->dev, "Failed to map buffer");
 		return n_desc;
 	}
+	rbuf->offset.y_off = get_plane_offset(f, 0);
+	rbuf->offset.u_off = get_plane_offset(f, 1);
+	rbuf->offset.v_off = get_plane_offset(f, 2);
 
 	/* sync local MMU table for RGA */
 	dma_sync_single_for_device(rga->dev, rbuf->dma_desc_pa,
diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index 836ec7721b21..8cbee059100b 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -16,12 +16,6 @@ enum e_rga_start_pos {
 	RB = 3,
 };
 
-struct rga_addr_offset {
-	unsigned int y_off;
-	unsigned int u_off;
-	unsigned int v_off;
-};
-
 struct rga_corners_addr_offset {
 	struct rga_addr_offset left_top;
 	struct rga_addr_offset right_top;
@@ -43,8 +37,8 @@ static unsigned int rga_get_scaling(unsigned int src, unsigned int dst)
 }
 
 static struct rga_corners_addr_offset
-rga_get_addr_offset(struct rga_frame *frm, unsigned int x, unsigned int y,
-		    unsigned int w, unsigned int h)
+rga_get_addr_offset(struct rga_frame *frm, struct rga_addr_offset *offset,
+		    unsigned int x, unsigned int y, unsigned int w, unsigned int h)
 {
 	struct rga_corners_addr_offset offsets;
 	struct rga_addr_offset *lt, *lb, *rt, *rb;
@@ -62,10 +56,9 @@ rga_get_addr_offset(struct rga_frame *frm, unsigned int x, unsigned int y,
 	uv_stride = frm->stride / x_div;
 	pixel_width = frm->stride / frm->width;
 
-	lt->y_off = y * frm->stride + x * pixel_width;
-	lt->u_off =
-		frm->width * frm->height + (y / y_div) * uv_stride + x / x_div;
-	lt->v_off = lt->u_off + frm->width * frm->height / uv_factor;
+	lt->y_off = offset->y_off + y * frm->stride + x * pixel_width;
+	lt->u_off = offset->u_off + (y / y_div) * uv_stride + x / x_div;
+	lt->v_off = offset->v_off + (y / y_div) * uv_stride + x / x_div;
 
 	lb->y_off = lt->y_off + (h - 1) * frm->stride;
 	lb->u_off = lt->u_off + (h / y_div - 1) * uv_stride;
@@ -317,7 +310,8 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	dest[(RGA_DST_INFO - RGA_MODE_BASE_REG) >> 2] = dst_info.val;
 }
 
-static void rga_cmd_set_src_info(struct rga_ctx *ctx)
+static void rga_cmd_set_src_info(struct rga_ctx *ctx,
+				 struct rga_addr_offset *offset)
 {
 	struct rga_corners_addr_offset src_offsets;
 	struct rockchip_rga *rga = ctx->rga;
@@ -332,8 +326,8 @@ static void rga_cmd_set_src_info(struct rga_ctx *ctx)
 	/*
 	 * Calculate the source framebuffer base address with offset pixel.
 	 */
-	src_offsets = rga_get_addr_offset(&ctx->in, src_x, src_y,
-					  src_w, src_h);
+	src_offsets = rga_get_addr_offset(&ctx->in, offset,
+					  src_x, src_y, src_w, src_h);
 
 	dest[(RGA_SRC_Y_RGB_BASE_ADDR - RGA_MODE_BASE_REG) >> 2] =
 		src_offsets.left_top.y_off;
@@ -343,7 +337,8 @@ static void rga_cmd_set_src_info(struct rga_ctx *ctx)
 		src_offsets.left_top.v_off;
 }
 
-static void rga_cmd_set_dst_info(struct rga_ctx *ctx)
+static void rga_cmd_set_dst_info(struct rga_ctx *ctx,
+				 struct rga_addr_offset *offset)
 {
 	struct rga_addr_offset *dst_offset;
 	struct rga_corners_addr_offset offsets;
@@ -381,7 +376,7 @@ static void rga_cmd_set_dst_info(struct rga_ctx *ctx)
 	/*
 	 * Configure the dest framebuffer base address with pixel offset.
 	 */
-	offsets = rga_get_addr_offset(&ctx->out, dst_x, dst_y, dst_w, dst_h);
+	offsets = rga_get_addr_offset(&ctx->out, offset, dst_x, dst_y, dst_w, dst_h);
 	dst_offset = rga_lookup_draw_pos(&offsets, mir_mode, rot_mode);
 
 	dest[(RGA_DST_Y_RGB_BASE_ADDR - RGA_MODE_BASE_REG) >> 2] =
@@ -432,8 +427,8 @@ static void rga_cmd_set(struct rga_ctx *ctx,
 	rga_cmd_set_dst_addr(ctx, dst->dma_desc_pa);
 	rga_cmd_set_mode(ctx);
 
-	rga_cmd_set_src_info(ctx);
-	rga_cmd_set_dst_info(ctx);
+	rga_cmd_set_src_info(ctx, &src->offset);
+	rga_cmd_set_dst_info(ctx, &dst->offset);
 	rga_cmd_set_trans_info(ctx);
 
 	rga_write(rga, RGA_CMD_BASE, rga->cmdbuf_phy);
diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/platform/rockchip/rga/rga.h
index ae984d5a236d..d8e76ab9c7e4 100644
--- a/drivers/media/platform/rockchip/rga/rga.h
+++ b/drivers/media/platform/rockchip/rga/rga.h
@@ -87,6 +87,12 @@ struct rockchip_rga {
 	void *cmdbuf_virt;
 };
 
+struct rga_addr_offset {
+	unsigned int y_off;
+	unsigned int u_off;
+	unsigned int v_off;
+};
+
 struct rga_vb_buffer {
 	struct vb2_v4l2_buffer vb_buf;
 	struct list_head queue;
@@ -95,6 +101,9 @@ struct rga_vb_buffer {
 	struct rga_dma_desc *dma_desc;
 	dma_addr_t dma_desc_pa;
 	int n_desc;
+
+	/* Plane offsets of this buffer into the mapping */
+	struct rga_addr_offset offset;
 };
 
 static inline struct rga_vb_buffer *vb_to_rga(struct vb2_v4l2_buffer *vb)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
