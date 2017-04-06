From: Your Name <you@example.com>
Subject: [PATCH v4 11/12] drm/rockchip: Shutdown all crtcs when unbinding drm
Date: Thu,  6 Apr 2017 20:22:22 +0800
Message-ID: <1491481343-11025-12-git-send-email-you@example.com>
References: <1491481343-11025-1-git-send-email-you@example.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1491481343-11025-1-git-send-email-you@example.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, dianders@chromium.org, tfiga@chromium.org, seanpaul@chromium.org, zyw@rock-chips.com, mark.yao@rock-chips.com, Jeffy Chen <jeffy.chen@rock-chips.com>, Your Name <you@example.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Your Name <you@example.com>
---

Changes in v4: None
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
