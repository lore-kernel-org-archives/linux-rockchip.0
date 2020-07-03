From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v5 7/7] media: staging: rkisp1: rsz: set flags to 0 in enum_mbus_code cb
Date: Fri,  3 Jul 2020 19:10:19 +0200
Message-ID: <20200703171019.19270-8-dafna.hirschfeld@collabora.com>
References: <20200703171019.19270-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200703171019.19270-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The resizer calls the enum_mbus_code cb on the source pad of
the isp entity since they support the same formats.
The only difference is that the isp entity allows setting the
quantization and sets the flag V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION.
The resizer should therefore set the flags to 0.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 8bc907ffa09b..31b5ac1f27a9 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -444,6 +444,7 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
 
 	/* restore pad */
 	code->pad = pad;
+	code->flags = 0;
 	return ret;
 }
 
-- 
2.17.1
