From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 1/3] media: staging: rkisp1: params: don't reference the vb2 buffer after calling vb2_buffer_done
Date: Thu, 25 Jun 2020 19:42:55 +0200
Message-ID: <20200625174257.22216-2-dafna.hirschfeld@collabora.com>
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The driver should not reference the buffer pointer of vb2_buffer
after calling 'vb2_buffer_done' on that buffer since the call passes
the buffer to userspace.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 797e79de659c..762c2259b807 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1457,9 +1457,9 @@ static void rkisp1_params_vb2_buf_queue(struct vb2_buffer *vb)
 		new_params = (struct rkisp1_params_cfg *)
 			(vb2_plane_vaddr(vb, 0));
 		vbuf->sequence = frame_sequence;
-		vb2_buffer_done(&params_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
 		params->is_first_params = false;
 		params->cur_params = *new_params;
+		vb2_buffer_done(&params_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
 		return;
 	}
 
-- 
2.17.1
