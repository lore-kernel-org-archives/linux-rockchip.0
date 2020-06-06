From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v4l-utils 3/4] v4l2-ctl: subdev: Add support for the CSC API in the subdevices
Date: Sat,  6 Jun 2020 12:55:37 +0200
Message-ID: <20200606105538.30147-4-dafna.hirschfeld@collabora.com>
References: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, skhan@linuxfoundation.org, p.zabel@pengutronix.de
List-Id: linux-rockchip.vger.kernel.org

The CSC API allows userspace to configure the quantization and
(ycbcr/hsv)_enc fields when setting the formats, so those fields
are not read only in userspace. This patch adds support for
this API in subevices.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 utils/v4l2-ctl/v4l2-ctl-subdev.cpp | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/utils/v4l2-ctl/v4l2-ctl-subdev.cpp b/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
index c0f36eab..bc9ee101 100644
--- a/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
+++ b/utils/v4l2-ctl/v4l2-ctl-subdev.cpp
@@ -428,10 +428,14 @@ void subdev_set(cv4l_fd &_fd)
 				fmt.format.colorspace = ffmt.colorspace;
 			if (set_fmt & FmtXferFunc)
 				fmt.format.xfer_func = ffmt.xfer_func;
-			if (set_fmt & FmtYCbCr)
+			if (set_fmt & FmtYCbCr) {
 				fmt.format.ycbcr_enc = ffmt.ycbcr_enc;
-			if (set_fmt & FmtQuantization)
+				fmt.format.flags |= V4L2_MBUS_FRAMEFMT_SET_CSC;
+			}
+			if (set_fmt & FmtQuantization) {
 				fmt.format.quantization = ffmt.quantization;
+				fmt.format.flags |= V4L2_MBUS_FRAMEFMT_SET_CSC;
+			}
 
 			if (options[OptSetSubDevFormat])
 				printf("Note: --set-subdev-fmt is only for testing.\n"
-- 
2.17.1
