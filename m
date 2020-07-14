From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 4/4] media: staging: rkisp1: cap: in stream start, replace calls to rkisp1_handle_buffer with rkisp1_set_next_buf
Date: Tue, 14 Jul 2020 14:38:32 +0200
Message-ID: <20200714123832.28011-5-dafna.hirschfeld@collabora.com>
References: <20200714123832.28011-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200714123832.28011-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The function 'rkisp1_stream_start' calls 'rkisp1_handle_buffer'
in order to update the 'buf.curr' and 'buf.next' fields and
configure the device before streaming starts. This cause a wrong
increment of the debugs field 'frame_drop'. This patch replaces
the call to 'rkisp1_handle_buffer' with a call to
'rkisp1_set_next_buf'.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 7f400aefe550..c05280950ea0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -916,7 +916,7 @@ static void rkisp1_stream_start(struct rkisp1_capture *cap)
 	cap->ops->config(cap);
 
 	/* Setup a buffer for the next frame */
-	rkisp1_handle_buffer(cap);
+	rkisp1_set_next_buf(cap);
 	cap->ops->enable(cap);
 	/* It's safe to config ACTIVE and SHADOW regs for the
 	 * first stream. While when the second is starting, do NOT
@@ -931,7 +931,7 @@ static void rkisp1_stream_start(struct rkisp1_capture *cap)
 		/* force cfg update */
 		rkisp1_write(rkisp1,
 			     RKISP1_CIF_MI_INIT_SOFT_UPD, RKISP1_CIF_MI_INIT);
-		rkisp1_handle_buffer(cap);
+		rkisp1_set_next_buf(cap);
 	}
 	cap->is_streaming = true;
 }
-- 
2.17.1
