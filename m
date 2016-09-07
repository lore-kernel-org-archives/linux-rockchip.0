From: Baoyou Xie <baoyou.xie@linaro.org>
Subject: [PATCH] drm/rockchip: add missing header dependencies
Date: Wed,  7 Sep 2016 18:53:00 +0800
Message-ID: <1473245580-538-1-git-send-email-baoyou.xie@linaro.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, airlied@linux.ie, heiko@sntech.de
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, arnd@arndb.de, baoyou.xie@linaro.org, xie.baoyou@zte.com.cn
List-Id: linux-rockchip.vger.kernel.org

We get 2 warnings when building kernel with W=1:
drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c:130:5: warning: no previous prototype for 'rockchip_drm_fbdev_init' [-Wmissing-prototypes]
drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c:173:6: warning: no previous prototype for 'rockchip_drm_fbdev_fini' [-Wmissing-prototypes]

In fact, these functions are declared
in drivers/gpu/drm/rockchip/rockchip_drm_fbdev.h,
so this patch adds missing header dependencies.

Signed-off-by: Baoyou Xie <baoyou.xie@linaro.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
index 207e01d..a16c69f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c
@@ -20,6 +20,7 @@
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_gem.h"
 #include "rockchip_drm_fb.h"
+#include "rockchip_drm_fbdev.h"
 
 #define PREFERRED_BPP		32
 #define to_drm_private(x) \
-- 
2.7.4
