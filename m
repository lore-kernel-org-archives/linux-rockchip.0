From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v4 07/11] media: cedrus: Specify the required H264 start code
Date: Thu,  8 Aug 2019 07:34:28 -0300
Message-ID: <20190808103432.12062-8-ezequiel@collabora.com>
References: <20190808103432.12062-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190808103432.12062-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

The cedrus VPU expects V4L2_PIX_FMT_H264_SLICE buffers to contain
H264 slices with no start code. Expose this to userspace with
the newly added menu control.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
Changes in v4:
* New patch.
---
 drivers/staging/media/sunxi/cedrus/cedrus.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 7bdc413bf727..10be2bd9507e 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -77,6 +77,26 @@ static const struct cedrus_control cedrus_controls[] = {
 		.codec		= CEDRUS_CODEC_H264,
 		.required	= true,
 	},
+	{
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE,
+			.max	= V4L2_MPEG_VIDEO_H264_SLICE_BASED_DECODING,
+			.def	= V4L2_MPEG_VIDEO_H264_SLICE_BASED_DECODING,
+			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING),
+		},
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= false,
+	},
+	{
+		.cfg = {
+			.id	= V4L2_CID_MPEG_VIDEO_H264_STARTCODE,
+			.max	= V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
+			.def	= V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
+			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE),
+		},
+		.codec		= CEDRUS_CODEC_H264,
+		.required	= false,
+	},
 };
 
 #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
-- 
2.22.0
