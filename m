From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/9] media: rkvdec: h264: Fix reference frame_num wrap for
 second field
Date: Wed, 01 Jul 2020 21:56:21 +0000 (UTC)
Message-ID: <20200701215616.30874-3-jonas@kwiboo.se>
References: <20200701215616.30874-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200701215616.30874-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hans.verkuil@cisco.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

When decoding the second field in a complementary field pair the second
field is sharing the same frame_num with the first field.

Currently the frame_num for the first field is wrapped when it matches the
field being decoded, this cause issues to decode the second field in a
complementary field pair.

Fix this by using inclusive comparison, less than or equal.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index 7b66e2743a4f..f0cfed84d60d 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -754,7 +754,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
 			continue;
 
 		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ||
-		    dpb[i].frame_num < sl_params->frame_num) {
+		    dpb[i].frame_num <= sl_params->frame_num) {
 			p[i] = dpb[i].frame_num;
 			continue;
 		}
-- 
2.17.1
