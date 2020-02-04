From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] media: staging: rkisp1: improve inner documentation in rkisp1-isp.c
Date: Tue,  4 Feb 2020 22:44:46 +0100
Message-ID: <20200204214446.20381-3-dafna.hirschfeld@collabora.com>
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Improve the documentation in the beginning of the file
rkisp1-isp1.c

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-isp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 2b0513e826fe..844556389b0b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -28,9 +28,9 @@
 #define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
 
 /*
- * NOTE: MIPI controller and input MUX are also configured in this file,
- * because ISP Subdev is not only describe ISP submodule(input size,format,
- * output size, format), but also a virtual route device.
+ * NOTE: MIPI controller and input MUX are also configured in this file.
+ * This is because ISP Subdev describes not only ISP submodule (input size,
+ * format, output size, format), but also a virtual route device.
  */
 
 /*
-- 
2.17.1
