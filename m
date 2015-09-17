From: Luis de Bethencourt <luis@debethencourt.com>
Subject: [PATCH 4/5] drm/rockchip: Fix module autoload for OF platform driver
Date: Thu, 17 Sep 2015 16:22:09 +0200
Message-ID: <20150917142209.GA20192@goodgumbo.baconseed.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This platform driver has a OF device ID table but the OF module
alias information is not created so module autoloading won't work.

Signed-off-by: Luis de Bethencourt <luisbg@osg.samsung.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 5d8ae5e..5897851 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -374,6 +374,7 @@ static const struct of_device_id vop_driver_dt_match[] = {
 	  .data = &rk3288_vop },
 	{},
 };
+MODULE_DEVICE_TABLE(of, vop_driver_dt_match);
 
 static inline void vop_writel(struct vop *vop, uint32_t offset, uint32_t v)
 {
-- 
2.4.6
