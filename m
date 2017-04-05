From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH v3 7/9] drm/rockchip: Shutdown all crtcs when unbinding drm
Date: Wed,  5 Apr 2017 16:29:25 +0800
Message-ID: <1491380967-28570-8-git-send-email-jeffy.chen@rock-chips.com>
References: <1491380967-28570-1-git-send-email-jeffy.chen@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1491380967-28570-1-git-send-email-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
---

Changes in v3:
Address Daniel Vetter <daniel@ffwll.ch>'s comments.
Update commit message.

Changes in v2: None

 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index f24968f..c6b1b7f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -199,6 +199,7 @@ static void rockchip_drm_unbind(struct device *dev)
 	rockchip_drm_fbdev_fini(drm_dev);
 	drm_kms_helper_poll_fini(drm_dev);
 
+	drm_atomic_helper_shutdown(drm_dev);
 	drm_vblank_cleanup(drm_dev);
 	component_unbind_all(dev, drm_dev);
 	drm_mode_config_cleanup(drm_dev);
-- 
2.1.4
