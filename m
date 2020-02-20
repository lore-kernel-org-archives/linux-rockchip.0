From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] media: staging: rkisp1: capture: remove support to userptr memory
Date: Thu, 20 Feb 2020 19:56:03 +0100
Message-ID: <20200220185603.26968-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

The dma_contig memory operations which is used by the capture
should not support userptr. Therefore remove it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 5f97af5cd95f..a006cd03228d 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1349,7 +1349,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
 
 	q = &node->buf_queue;
 	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
-	q->io_modes = VB2_MMAP | VB2_DMABUF | VB2_USERPTR;
+	q->io_modes = VB2_MMAP | VB2_DMABUF;
 	q->drv_priv = cap;
 	q->ops = &rkisp1_vb2_ops;
 	q->mem_ops = &vb2_dma_contig_memops;
-- 
2.17.1
