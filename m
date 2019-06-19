From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: [PATCH 2/9] media: hantro: Move copy_metadata() before doing a decode operation
Date: Wed, 19 Jun 2019 14:15:33 +0200
Message-ID: <20190619121540.29320-3-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190619121540.29320-1-boris.brezillon@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Ezequiel Garcia <ezequiel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Some decoders use intra slice/frame references. The capture buffer
pointed by these references might be new and thus have invalid
timestamp which prevents the decoder logic from retrieving the
vb2_buffer object based on the output buf timestamp.
Copy all metadata (including the timestamp) before starting the decode
operation.

Suggested-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index ab0aa7408a7d..28b0fed89dcb 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -109,8 +109,6 @@ static void hantro_job_finish(struct hantro_dev *vpu,
 	src->sequence = ctx->sequence_out++;
 	dst->sequence = ctx->sequence_cap++;
 
-	v4l2_m2m_buf_copy_metadata(src, dst, true);
-
 	ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
 	if (ret)
 		result = VB2_BUF_STATE_ERROR;
@@ -154,8 +152,12 @@ void hantro_watchdog(struct work_struct *work)
 static void device_run(void *priv)
 {
 	struct hantro_ctx *ctx = priv;
+	struct vb2_v4l2_buffer *src, *dst;
 	int ret;
 
+	src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
 		goto err_cancel_job;
@@ -163,6 +165,8 @@ static void device_run(void *priv)
 	if (ret < 0)
 		goto err_cancel_job;
 
+	v4l2_m2m_buf_copy_metadata(src, dst, true);
+
 	ctx->codec_ops->run(ctx);
 	return;
 
-- 
2.20.1
