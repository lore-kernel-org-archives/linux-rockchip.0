From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH] media: staging: rkisp1: rsz: don't ignore set format in bayer mainpath
Date: Thu,  6 Feb 2020 19:07:10 -0300
Message-ID: <20200206220712.1243438-3-helen.koike@collabora.com>
References: <20200206220712.1243438-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200206220712.1243438-1-helen.koike@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org, mchehab@kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com, Helen Koike <helen.koike@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Fix issue when, in case of raw bayer format in mainpath,
VIDIOC_SUBDEV_S_FMT ioctl didn't have any effect, is wasn't updating the
format of the pad.

There is no crop for mainpath bayer raw data. Remove leftover check in
set_format, since check is already done in crop rkisp1_rsz_set_sink_crop()
function.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 8cdc29c1a178..d986953d268b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -537,15 +537,6 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 	if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
 		rsz->fmt_type = mbus_info->fmt_type;
 
-	if (rsz->id == RKISP1_MAINPATH &&
-	    mbus_info->fmt_type == RKISP1_FMT_BAYER) {
-		sink_crop->left = 0;
-		sink_crop->top = 0;
-		sink_crop->width = sink_fmt->width;
-		sink_crop->height = sink_fmt->height;
-		return;
-	}
-
 	/* Propagete to source pad */
 	src_fmt->code = sink_fmt->code;
 
-- 
2.24.0
