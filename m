From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH 7/9] drm/rockchip: Force disable all crtc when unload
Date: Sat,  1 Apr 2017 18:44:00 +0800
Message-ID: <1491043442-20626-8-git-send-email-jeffy.chen@rock-chips.com>
References: <1491043442-20626-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1491043442-20626-1-git-send-email-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index a5d83cb..5dbf011 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -246,6 +246,7 @@ static void rockchip_drm_unbind(struct device *dev)
 	rockchip_drm_fbdev_fini(drm_dev);
 	drm_kms_helper_poll_fini(drm_dev);
 
+	drm_crtc_force_disable_all(drm_dev);
 	drm_vblank_cleanup(drm_dev);
 	component_unbind_all(dev, drm_dev);
 	drm_mode_config_cleanup(drm_dev);
-- 
2.1.4
