From: Wambui Karuga <wambui.karugax@gmail.com>
Subject: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
Date: Thu,  7 Nov 2019 12:29:45 +0300
Message-ID: <20191107092945.15513-1-wambui.karugax@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Replace the use of the dev_err macro with the DRM_DEV_ERROR
DRM helper macro.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index bc073ec5c183..5f23cf702cb4 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 	}
 
 	if (!dsi->cdata) {
-		dev_err(dev, "no dsi-config for %s node\n", np->name);
+		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
 		return -EINVAL;
 	}
 
-- 
2.17.1
