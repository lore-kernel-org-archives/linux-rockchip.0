From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH] media: staging: rkisp1: isp: do not set invalid mbus code for pad
Date: Thu,  6 Feb 2020 19:07:12 -0300
Message-ID: <20200206220712.1243438-5-helen.koike@collabora.com>
References: <20200206220712.1243438-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200206220712.1243438-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org, mchehab@kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com, Helen Koike <helen.koike@collabora.com>, Wojciech Zabolotny <wzab01@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

When setting source pad, check if the given mbus code is indeed valid
for source pad, if not, then set the default code.
Same for sink pad.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")

Reported-by: Wojciech Zabolotny <wzab01@gmail.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-isp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 328c7ea60971..db892620a567 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -683,7 +683,7 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
 
 	src_fmt->code = format->code;
 	mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
-	if (!mbus_info) {
+	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {
 		src_fmt->code = RKISP1_DEF_SRC_PAD_FMT;
 		mbus_info = rkisp1_isp_mbus_info_get(src_fmt->code);
 	}
@@ -767,7 +767,7 @@ static void rkisp1_isp_set_sink_fmt(struct rkisp1_isp *isp,
 					  which);
 	sink_fmt->code = format->code;
 	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
-	if (!mbus_info) {
+	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SINK)) {
 		sink_fmt->code = RKISP1_DEF_SINK_PAD_FMT;
 		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
 	}
-- 
2.24.0
