From: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [RFC PATCH 6/7] drm/rockchip: remove redundant "depends on RESET_CONTROLLER"
Date: Thu,  5 Nov 2015 20:15:27 +0900
Message-ID: <1446722128-11961-7-git-send-email-yamada.masahiro@socionext.com>
References: <1446722128-11961-1-git-send-email-yamada.masahiro@socionext.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446722128-11961-1-git-send-email-yamada.masahiro@socionext.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, Mark Yao <mark.yao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

ARCH_ROCKCHIP selects RESET_CONTROLLER.
The dependency "depends on RESET_CONTROLLER" is already met.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/gpu/drm/rockchip/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 35215f6..cb21e38 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -1,7 +1,6 @@
 config DRM_ROCKCHIP
 	tristate "DRM Support for Rockchip"
 	depends on DRM && ROCKCHIP_IOMMU
-	depends on RESET_CONTROLLER
 	select DRM_KMS_HELPER
 	select DRM_KMS_FB_HELPER
 	select DRM_PANEL
-- 
1.9.1
