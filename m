From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH] media: staging: rkisp1: stats: use consistent bus_info string
Date: Thu,  6 Feb 2020 19:07:09 -0300
Message-ID: <20200206220712.1243438-2-helen.koike@collabora.com>
References: <20200206220712.1243438-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200206220712.1243438-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org, mchehab@kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com, Helen Koike <helen.koike@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Stats entity is using a slightly different bus_info string
"platform: rkisp1" (with a space) instead of "platform:rkisp1" used by
the rest of rkisp1 code.
This causes errors when using v4l2-util tools that uses the bus_info
string to identify the device.

Fixes: 9a28dbd65a88 ("media: staging: rkisp1: add capture device for statistics")

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-stats.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index d98ea15837de..7f461477497a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -70,8 +70,7 @@ static int rkisp1_stats_querycap(struct file *file,
 
 	strscpy(cap->driver, RKISP1_DRIVER_NAME, sizeof(cap->driver));
 	strscpy(cap->card, vdev->name, sizeof(cap->card));
-	strscpy(cap->bus_info, "platform: " RKISP1_DRIVER_NAME,
-		sizeof(cap->bus_info));
+	strscpy(cap->bus_info, RKISP1_BUS_INFO, sizeof(cap->bus_info));
 
 	return 0;
 }
-- 
2.24.0
