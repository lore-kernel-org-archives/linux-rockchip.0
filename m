From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Subject: [PATCH v2 4/5] ARM: multi_v7_defconfig: Enable the Rockchip USB 2.0 phy
Date: Thu, 24 Sep 2015 13:39:18 +0200
Message-ID: <1443094759-28531-5-git-send-email-sjoerd.simons@collabora.co.uk>
References: <1443094759-28531-1-git-send-email-sjoerd.simons@collabora.co.uk>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1443094759-28531-1-git-send-email-sjoerd.simons@collabora.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, arm@kernel.org
Cc: Thierry Reding <treding@nvidia.com>, Kevin Hilman <khilman@kernel.org>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Javier Martinez Canillas <javier@osg.samsung.com>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>, Olof Johansson <olof@lixom.net>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>
List-Id: linux-rockchip.vger.kernel.org

Most Rockchip SoCs have a DesignWare HS OTG USB 2.0 controller, enable
the driver for the Rockchip USB 2.0 PHY to make that functional.

Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>

---

Changes in v2:
- Only enable the USB 2 phy, not the controller as that came in through
  another tree
- Enable USB 2.0 phy as a module as the controller is a module as well

 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 660e72a..2ce0d63 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -662,6 +662,7 @@ CONFIG_PHY_HIX5HD2_SATA=y
 CONFIG_PWM_STI=m
 CONFIG_OMAP_USB2=y
 CONFIG_TI_PIPE3=y
+CONFIG_PHY_ROCKCHIP_USB=m
 CONFIG_PHY_MIPHY28LP=y
 CONFIG_PHY_MIPHY365X=y
 CONFIG_PHY_RCAR_GEN2=m
-- 
2.5.3
