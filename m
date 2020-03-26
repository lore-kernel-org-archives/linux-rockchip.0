From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 3/4] media: staging: rkisp1: cap: support uv swapped plane formats
Date: Thu, 26 Mar 2020 21:16:09 +0100
Message-ID: <20200326201610.31762-4-dafna.hirschfeld@collabora.com>
References: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Plane formats with the u and v planes swapped can be
supported by changing the address of the cb and cr in
the buffer.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index fa2849209433..2d274e8f565b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -41,6 +41,10 @@
 	(((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA) ||	\
 	 ((write_format) == RKISP1_MI_CTRL_SP_WRITE_SPLA))
 
+#define RKISP1_IS_PLANAR(write_format)					\
+	(((write_format) == RKISP1_MI_CTRL_SP_WRITE_PLA) ||		\
+	 ((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8))
+
 enum rkisp1_plane {
 	RKISP1_PLANE_Y	= 0,
 	RKISP1_PLANE_CB	= 1,
@@ -788,6 +792,19 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
 			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CB);
 	}
 
+	/*
+	 * uv swap can be supported for plane formats by switching
+	 * the address of cb and cr
+	 */
+	if (RKISP1_IS_PLANAR(cap->pix.cfg->write_format) &&
+	    cap->pix.cfg->uv_swap) {
+		ispbuf->buff_addr[RKISP1_PLANE_CR] =
+			ispbuf->buff_addr[RKISP1_PLANE_CB];
+		ispbuf->buff_addr[RKISP1_PLANE_CB] =
+			ispbuf->buff_addr[RKISP1_PLANE_CR] +
+			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR);
+	}
+
 	spin_lock_irqsave(&cap->buf.lock, flags);
 
 	/*
-- 
2.17.1
