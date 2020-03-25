From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 3/7] hantro: Use v4l2_m2m_buf_done_and_job_finish
Date: Wed, 25 Mar 2020 18:34:34 -0300
Message-ID: <20200325213439.16509-4-ezequiel@collabora.com>
References: <20200325213439.16509-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200325213439.16509-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>, Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Let the core sort out the nuances of returning buffers
to userspace, by using the v4l2_m2m_buf_done_and_job_finish
helper.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
--
 drivers/staging/media/hantro/hantro_drv.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index ace13973e2d0..d0097c5fe7d9 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -101,8 +101,8 @@ static void hantro_job_finish(struct hantro_dev *vpu,
 	pm_runtime_put_autosuspend(vpu->dev);
 	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
 
-	src = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
-	dst = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
+	src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
+	dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 
 	if (WARN_ON(!src))
 		return;
@@ -112,14 +112,14 @@ static void hantro_job_finish(struct hantro_dev *vpu,
 	src->sequence = ctx->sequence_out++;
 	dst->sequence = ctx->sequence_cap++;
 
-	ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
-	if (ret)
-		result = VB2_BUF_STATE_ERROR;
-
-	v4l2_m2m_buf_done(src, result);
-	v4l2_m2m_buf_done(dst, result);
+	if (ctx->buf_finish) {
+		ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
+		if (ret)
+			result = VB2_BUF_STATE_ERROR;
+	}
 
-	v4l2_m2m_job_finish(vpu->m2m_dev, ctx->fh.m2m_ctx);
+	v4l2_m2m_buf_done_and_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx,
+					 result);
 }
 
 void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
-- 
2.26.0.rc2
