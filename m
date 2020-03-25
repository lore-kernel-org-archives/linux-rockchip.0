From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v4l-utils] v4l2-compliance: don't test pad's dimensions if it's MEDIA_PAD_FL_METADATA
Date: Wed, 25 Mar 2020 22:43:57 +0100
Message-ID: <20200325214357.30722-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Pads with the flag MEDIA_PAD_FL_METADATA transmit metadata
which has no dimension, so don't test the width and hight
returned by S/G_FMT for that pads.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
This patch completes the patchset sent to linux-media:
"media: staging: rkisp1: Fix formats for metadata pads"
https://patchwork.kernel.org/project/linux-media/list/?series=261673
It compiles only when the media.h file is synced with
this patchset so that the flag MEDIA_PAD_FL_METADATA
is added.

 utils/v4l2-compliance/v4l2-test-subdevs.cpp | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/utils/v4l2-compliance/v4l2-test-subdevs.cpp b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
index 489639fb..ca527529 100644
--- a/utils/v4l2-compliance/v4l2-test-subdevs.cpp
+++ b/utils/v4l2-compliance/v4l2-test-subdevs.cpp
@@ -305,11 +305,13 @@ int testSubDevFrameInterval(struct node *node, unsigned pad)
 	return 0;
 }
 
-static int checkMBusFrameFmt(struct node *node, struct v4l2_mbus_framefmt &fmt)
+static int checkMBusFrameFmt(struct node *node, struct v4l2_mbus_framefmt &fmt, unsigned pad)
 {
 	fail_on_test(check_0(fmt.reserved, sizeof(fmt.reserved)));
-	fail_on_test(fmt.width == 0 || fmt.width > 65536);
-	fail_on_test(fmt.height == 0 || fmt.height > 65536);
+	if (!(node->pads[pad].flags & MEDIA_PAD_FL_METADATA)) {
+		fail_on_test(fmt.width == 0 || fmt.width > 65536);
+		fail_on_test(fmt.height == 0 || fmt.height > 65536);
+	}
 	fail_on_test(fmt.code == 0 || fmt.code == ~0U);
 	fail_on_test(fmt.field == ~0U);
 	if (!node->is_passthrough_subdev) {
@@ -353,7 +355,7 @@ int testSubDevFormat(struct node *node, unsigned which, unsigned pad)
 	fail_on_test(check_0(fmt.reserved, sizeof(fmt.reserved)));
 	fail_on_test(fmt.which != which);
 	fail_on_test(fmt.pad != pad);
-	fail_on_test(checkMBusFrameFmt(node, fmt.format));
+	fail_on_test(checkMBusFrameFmt(node, fmt.format, pad));
 	s_fmt = fmt;
 	memset(s_fmt.reserved, 0xff, sizeof(s_fmt.reserved));
 	memset(s_fmt.format.reserved, 0xff, sizeof(s_fmt.format.reserved));
@@ -366,7 +368,7 @@ int testSubDevFormat(struct node *node, unsigned which, unsigned pad)
 		return 0;
 	}
 	fail_on_test(check_0(s_fmt.reserved, sizeof(s_fmt.reserved)));
-	fail_on_test(checkMBusFrameFmt(node, s_fmt.format));
+	fail_on_test(checkMBusFrameFmt(node, s_fmt.format, pad));
 	fail_on_test(s_fmt.format.width != fmt.format.width);
 	fail_on_test(s_fmt.format.height != fmt.format.height);
 	fail_on_test(s_fmt.format.code != fmt.format.code);
-- 
2.17.1
