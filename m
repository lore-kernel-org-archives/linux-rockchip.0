From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 6/6] hantro: Make sure we don't use post-processor on an encoder
Date: Thu, 25 Jun 2020 13:35:25 -0300
Message-ID: <20200625163525.5119-7-ezequiel@collabora.com>
References: <20200625163525.5119-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625163525.5119-1-ezequiel@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Commit 986eee3a5234f fixed hantro_needs_postproc condition,
but missed one case. Encoders don't have any post-processor
hardware block, so also can't be disabled.

Fix it.

Fixes: 986eee3a5234f ("media: hantro: Prevent encoders from using post-processing")
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 0936f0c41af9..b622bbe181c1 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -122,10 +122,12 @@ void hantro_start_prepare_run(struct hantro_ctx *ctx)
 	v4l2_ctrl_request_setup(src_buf->vb2_buf.req_obj.req,
 				&ctx->ctrl_handler);
 
-	if (hantro_needs_postproc(ctx, ctx->vpu_dst_fmt))
-		hantro_postproc_enable(ctx);
-	else
-		hantro_postproc_disable(ctx);
+	if (!hantro_is_encoder_ctx(ctx)) {
+		if (hantro_needs_postproc(ctx, ctx->vpu_dst_fmt))
+			hantro_postproc_enable(ctx);
+		else
+			hantro_postproc_disable(ctx);
+	}
 }
 
 void hantro_end_prepare_run(struct hantro_ctx *ctx)
-- 
2.26.0.rc2
