From: Brian Norris <briannorris@chromium.org>
Subject: [PATCH] drm/rockchip: analogix_dp: drop unnecessary probe deferral "error" print
Date: Wed, 17 Aug 2016 14:10:09 -0700
Message-ID: <1471468209-31192-1-git-send-email-briannorris@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Sean Paul <seanpaul@chromium.org>, Yakir Yang <ykk@rock-chips.com>, Brian Norris <briannorris@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

This driver is the only user of of_drm_find_panel() which prints an
error before doing probe deferral, yielding messages like this on boot,
before eventually succeeding:

[    2.234271] [drm:rockchip_dp_probe] *ERROR* failed to find panel
...
[    4.797539] [drm:rockchip_dp_probe] *ERROR* failed to find panel
...

Let's just drop the message.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 89aadbf465f8..045fcc46827c 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -381,10 +381,8 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 
 		panel = of_drm_find_panel(panel_node);
 		of_node_put(panel_node);
-		if (!panel) {
-			DRM_ERROR("failed to find panel\n");
+		if (!panel)
 			return -EPROBE_DEFER;
-		}
 	}
 
 	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
-- 
2.8.0.rc3.226.g39d4020
