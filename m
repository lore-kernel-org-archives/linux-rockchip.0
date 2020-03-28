From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 2/3] media: staging: rkisp1: rsz: change (hv)div only if capture format is YUV
Date: Sat, 28 Mar 2020 11:56:05 +0100
Message-ID: <20200328105606.13660-3-dafna.hirschfeld@collabora.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

RGB formats in selfpath should receive input format as YUV422.
The resizer input format is always YUV422 and therefore
if the capture format is RGB, the resizer should not change
the YUV rations.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 8704267a066f..5721eee29ecb 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -389,8 +389,18 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 			&rsz->rkisp1->capture_devs[rsz->id];
 		const struct v4l2_format_info *pixfmt_info = cap->pix.info;
 
-		hdiv = pixfmt_info->hdiv;
-		vdiv = pixfmt_info->vdiv;
+		/*
+		 * The resizer always get the input as YUV422
+		 * If the capture encoding is also YUV, then the resizer should
+		 * change the 4:2:2 sampling to the sampling of the capture
+		 * format (4:2:2 -> 4:2:0 for example).
+		 * If the capture format is RGB then the memory input should
+		 * be YUV422 so we don't change the default hdiv, vdiv
+		 */
+		if (v4l2_is_format_yuv(pixfmt_info)) {
+			hdiv = pixfmt_info->hdiv;
+			vdiv = pixfmt_info->vdiv;
+		}
 	}
 	src_c.width = src_y.width / hdiv;
 	src_c.height = src_y.height / vdiv;
-- 
2.17.1
