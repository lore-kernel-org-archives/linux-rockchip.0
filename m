From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] arm64: defconfig: enable rockchip graphics
Date: Thu, 24 Aug 2017 17:02:10 +0200
Message-ID: <20170824150210.10949-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Enable the graphics-related options needed by Rockchip boards.
This includes the pwm-backlight which will be needed by the internal
displays used on Gru Chrome-devices.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm64/configs/defconfig | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b4ca115b3be1..0789c7a66969 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -358,6 +358,12 @@ CONFIG_DRM_EXYNOS_DSI=y
 # CONFIG_DRM_EXYNOS_DP is not set
 CONFIG_DRM_EXYNOS_HDMI=y
 CONFIG_DRM_EXYNOS_MIC=y
+CONFIG_DRM_ROCKCHIP=m
+CONFIG_ROCKCHIP_ANALOGIX_DP=y
+CONFIG_ROCKCHIP_CDN_DP=y
+CONFIG_ROCKCHIP_DW_HDMI=y
+CONFIG_ROCKCHIP_DW_MIPI_DSI=y
+CONFIG_ROCKCHIP_INNO_HDMI=y
 CONFIG_DRM_RCAR_DU=m
 CONFIG_DRM_RCAR_LVDS=y
 CONFIG_DRM_RCAR_VSP=y
@@ -370,6 +376,7 @@ CONFIG_DRM_MESON=m
 CONFIG_FB=y
 CONFIG_FB_ARMCLCD=y
 CONFIG_BACKLIGHT_GENERIC=m
+CONFIG_BACKLIGHT_PWM=m
 CONFIG_BACKLIGHT_LP855X=m
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_LOGO=y
@@ -482,6 +489,7 @@ CONFIG_ARM_MHU=y
 CONFIG_PLATFORM_MHU=y
 CONFIG_BCM2835_MBOX=y
 CONFIG_HI6220_MBOX=y
+CONFIG_ROCKCHIP_IOMMU=y
 CONFIG_ARM_SMMU=y
 CONFIG_ARM_SMMU_V3=y
 CONFIG_RPMSG_QCOM_SMD=y
-- 
2.14.1
