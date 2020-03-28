From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 3/3] media: staging: rkisp1: cap: enable RGB capture format with YUV media bus
Date: Sat, 28 Mar 2020 11:56:06 +0100
Message-ID: <20200328105606.13660-4-dafna.hirschfeld@collabora.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

In selfpath, RGB capture formats are received in the sink pad as YUV
and are converted to RGB only when writing to memory. So the validation
function should accept YUV bus formats with RGB capture encoding.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index b7681b806b4c..3abf38362f5a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1227,6 +1227,9 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		media_entity_to_v4l2_subdev(link->source->entity);
 	struct rkisp1_capture *cap = video_get_drvdata(vdev);
 	struct rkisp1_isp *isp = &cap->rkisp1->isp;
+	enum rkisp1_fmt_pix_type cap_fmt =
+		rkisp1_pixel_enc_to_fmt_pix(cap->pix.info);
+	enum rkisp1_fmt_pix_type isp_fmt = isp->src_fmt->fmt_type;
 	struct v4l2_subdev_format sd_fmt;
 	int ret;
 
@@ -1237,8 +1240,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		return -EPIPE;
 	}
 
-	if (rkisp1_pixel_enc_to_fmt_pix(cap->pix.info) !=
-	    isp->src_fmt->fmt_type) {
+	if ((cap_fmt == RKISP1_FMT_BAYER && isp_fmt == RKISP1_FMT_YUV) ||
+	    (cap_fmt != RKISP1_FMT_BAYER && isp_fmt == RKISP1_FMT_BAYER)) {
 		dev_err(cap->rkisp1->dev,
 			"format type mismatch in link '%s:%d->%s:%d'\n",
 			link->source->entity->name, link->source->index,
-- 
2.17.1
