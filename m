From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 1/4] media: staging: rkisp1: cap: don't set next buffer from rkisp1_vb2_buf_queue
Date: Tue, 14 Jul 2020 14:38:29 +0200
Message-ID: <20200714123832.28011-2-dafna.hirschfeld@collabora.com>
References: <20200714123832.28011-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200714123832.28011-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The function 'rkisp1_vb2_buf_queue' sets the next buffer directly
in case the capture is already streaming but no frame yet arrived
from the sensor. This is an optimization that tries to avoid
dropping a frame.
The call atomic_read(&cap->rkisp1->isp.frame_sequence) is used
to check if a frame arrived. Reading the 'frame_sequence' should
be avoided outside irq handlers to avoid race conditions.

This patch removes this optimization. Dropping of the first
frames can be avoided if userspace queues the buffers before
start streaming. If userspace starts queueing buffers
only after calling 'streamon' he risks frame drops anyway.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 793ec884c894..572b0949c81f 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -743,18 +743,7 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
 		     ispbuf->buff_addr[RKISP1_PLANE_CB]);
 
 	spin_lock_irqsave(&cap->buf.lock, flags);
-
-	/*
-	 * If there's no next buffer assigned, queue this buffer directly
-	 * as the next buffer, and update the memory interface.
-	 */
-	if (cap->is_streaming && !cap->buf.next &&
-	    atomic_read(&cap->rkisp1->isp.frame_sequence) == -1) {
-		cap->buf.next = ispbuf;
-		rkisp1_set_next_buf(cap);
-	} else {
-		list_add_tail(&ispbuf->queue, &cap->buf.queue);
-	}
+	list_add_tail(&ispbuf->queue, &cap->buf.queue);
 	spin_unlock_irqrestore(&cap->buf.lock, flags);
 }
 
-- 
2.17.1
