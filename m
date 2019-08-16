From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v7 05/11] media: uapi: h264: Get rid of the p0/b0/b1 ref-lists
Date: Fri, 16 Aug 2019 13:01:26 -0300
Message-ID: <20190816160132.7352-6-ezequiel@collabora.com>
References: <20190816160132.7352-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190816160132.7352-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

From: Boris Brezillon <boris.brezillon@collabora.com>

Those lists can be extracted from the dpb, let's simplify userspace
life and build that list kernel-side (generic helpers will be provided
for drivers that need this list).

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
---
Changes in v7:
* None.
Changes in v6:
* None.
Changes in v5:
* None.
Changes in v4:
* Add R-b
* Remove the reflist from the struct
Changes in v3:
* None
Changes in v2:
* None
---
 Documentation/media/uapi/v4l/ext-ctrls-codec.rst | 9 ---------
 include/media/h264-ctrls.h                       | 3 ---
 2 files changed, 12 deletions(-)

diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
index 3703c705286f..94aea8fb1999 100644
--- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
+++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
@@ -1945,15 +1945,6 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
     * - __u16
       - ``nal_ref_idc``
       - NAL reference ID value coming from the NAL Unit header
-    * - __u8
-      - ``ref_pic_list_p0[32]``
-      - Backward reference list used by P-frames in the original bitstream order
-    * - __u8
-      - ``ref_pic_list_b0[32]``
-      - Backward reference list used by B-frames in the original bitstream order
-    * - __u8
-      - ``ref_pic_list_b1[32]``
-      - Forward reference list used by B-frames in the original bitstream order
     * - __s32
       - ``top_field_order_cnt``
       - Picture Order Count for the coded top field
diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
index ba2876a64cf6..e877bf1d537c 100644
--- a/include/media/h264-ctrls.h
+++ b/include/media/h264-ctrls.h
@@ -202,9 +202,6 @@ struct v4l2_ctrl_h264_decode_params {
 	struct v4l2_h264_dpb_entry dpb[16];
 	__u16 num_slices;
 	__u16 nal_ref_idc;
-	__u8 ref_pic_list_p0[32];
-	__u8 ref_pic_list_b0[32];
-	__u8 ref_pic_list_b1[32];
 	__s32 top_field_order_cnt;
 	__s32 bottom_field_order_cnt;
 	__u32 flags; /* V4L2_H264_DECODE_PARAM_FLAG_* */
-- 
2.22.0
