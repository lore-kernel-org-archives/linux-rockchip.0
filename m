From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.0 126/262] media: rockchip/vpu: Correct return type
 for mem2mem buffer helpers
Date: Wed, 27 Mar 2019 13:59:41 -0400
Message-ID: <20190327180158.10245-126-sashal@kernel.org>
References: <20190327180158.10245-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <driverdev-devel-bounces@linuxdriverproject.org>
In-Reply-To: <20190327180158.10245-1-sashal@kernel.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>,
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>,
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: devel@driverdev.osuosl.org, Sasha Levin <sashal@kernel.org>, linux-rockchip@lists.infradead.org, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Ezequiel Garcia <ezequiel@collabora.com>

[ Upstream commit 29701c3612fa025d5e8dc64c7a4ae8dc4763912e ]

Fix the assigned type of mem2mem buffer handling API.
Namely, these functions:

 v4l2_m2m_next_buf
 v4l2_m2m_last_buf
 v4l2_m2m_buf_remove
 v4l2_m2m_next_src_buf
 v4l2_m2m_next_dst_buf
 v4l2_m2m_last_src_buf
 v4l2_m2m_last_dst_buf
 v4l2_m2m_src_buf_remove
 v4l2_m2m_dst_buf_remove

return a struct vb2_v4l2_buffer, and not a struct vb2_buffer.

Fixing this is necessary to fix the mem2mem buffer handling API,
changing the return to the correct struct vb2_v4l2_buffer instead
of a void pointer.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c | 6 +++---
 drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
index 5282236d1bb1..06daea66fb49 100644
--- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
@@ -80,7 +80,7 @@ rk3288_vpu_jpeg_enc_set_qtable(struct rockchip_vpu_dev *vpu,
 void rk3288_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 {
 	struct rockchip_vpu_dev *vpu = ctx->dev;
-	struct vb2_buffer *src_buf, *dst_buf;
+	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct rockchip_vpu_jpeg_ctx jpeg_ctx;
 	u32 reg;
 
@@ -88,7 +88,7 @@ void rk3288_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
-	jpeg_ctx.buffer = vb2_plane_vaddr(dst_buf, 0);
+	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
 	jpeg_ctx.width = ctx->dst_fmt.width;
 	jpeg_ctx.height = ctx->dst_fmt.height;
 	jpeg_ctx.quality = ctx->jpeg_quality;
@@ -99,7 +99,7 @@ void rk3288_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 			   VEPU_REG_ENC_CTRL);
 
 	rk3288_vpu_set_src_img_ctrl(vpu, ctx);
-	rk3288_vpu_jpeg_enc_set_buffers(vpu, ctx, src_buf);
+	rk3288_vpu_jpeg_enc_set_buffers(vpu, ctx, &src_buf->vb2_buf);
 	rk3288_vpu_jpeg_enc_set_qtable(vpu,
 				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
 				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
index dbc86d95fe3b..3d438797692e 100644
--- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
@@ -111,7 +111,7 @@ rk3399_vpu_jpeg_enc_set_qtable(struct rockchip_vpu_dev *vpu,
 void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 {
 	struct rockchip_vpu_dev *vpu = ctx->dev;
-	struct vb2_buffer *src_buf, *dst_buf;
+	struct vb2_v4l2_buffer *src_buf, *dst_buf;
 	struct rockchip_vpu_jpeg_ctx jpeg_ctx;
 	u32 reg;
 
@@ -119,7 +119,7 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 
 	memset(&jpeg_ctx, 0, sizeof(jpeg_ctx));
-	jpeg_ctx.buffer = vb2_plane_vaddr(dst_buf, 0);
+	jpeg_ctx.buffer = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
 	jpeg_ctx.width = ctx->dst_fmt.width;
 	jpeg_ctx.height = ctx->dst_fmt.height;
 	jpeg_ctx.quality = ctx->jpeg_quality;
@@ -130,7 +130,7 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
 			   VEPU_REG_ENCODE_START);
 
 	rk3399_vpu_set_src_img_ctrl(vpu, ctx);
-	rk3399_vpu_jpeg_enc_set_buffers(vpu, ctx, src_buf);
+	rk3399_vpu_jpeg_enc_set_buffers(vpu, ctx, &src_buf->vb2_buf);
 	rk3399_vpu_jpeg_enc_set_qtable(vpu,
 				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
 				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
-- 
2.19.1
