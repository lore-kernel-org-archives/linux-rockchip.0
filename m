From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 2/6] hantro: h264: Rename scaling list handling function
Date: Thu, 25 Jun 2020 13:35:21 -0300
Message-ID: <20200625163525.5119-3-ezequiel@collabora.com>
References: <20200625163525.5119-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200625163525.5119-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Commit e17f08e3166 ("media: hantro: Do not reorder
H264 scaling list") removed the scaling list reordering,
which was wrong and not needed.

However, the name of the function stayed, which is
confusing for anyone reading the code. Rename
from "reorder" to "assemble" which is cleaner.

This is just a cosmetic cleanup.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro_h264.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index dd935d7009bf..194d05848077 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -193,7 +193,7 @@ static const u32 h264_cabac_table[] = {
 };
 
 static void
-reorder_scaling_list(struct hantro_ctx *ctx)
+assemble_scaling_list(struct hantro_ctx *ctx)
 {
 	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
 	const struct v4l2_ctrl_h264_scaling_matrix *scaling = ctrls->scaling;
@@ -235,7 +235,7 @@ static void prepare_table(struct hantro_ctx *ctx)
 	tbl->poc[32] = dec_param->top_field_order_cnt;
 	tbl->poc[33] = dec_param->bottom_field_order_cnt;
 
-	reorder_scaling_list(ctx);
+	assemble_scaling_list(ctx);
 }
 
 static bool dpb_entry_match(const struct v4l2_h264_dpb_entry *a,
-- 
2.26.0.rc2
