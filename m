From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] media: staging: rkisp1: fix test of return value of media_entity_get_fwnode_pad
Date: Tue,  4 Feb 2020 22:44:45 +0100
Message-ID: <20200204214446.20381-2-dafna.hirschfeld@collabora.com>
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

media_entity_get_fwnode_pad returns negative value on error
and the pad numeber on success. Therefore change the error test
from 'if (ret)' to 'if (ret < 0)' .

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 21837d4dc9e1..9d866396a5de 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -128,7 +128,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
 
 		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
 						  MEDIA_PAD_FL_SOURCE);
-		if (ret) {
+		if (ret < 0) {
 			dev_err(sd->dev, "failed to find src pad for %s\n",
 				sd->name);
 			return ret;
-- 
2.17.1
