From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Subject: [PATCH v2 2/5] ARM: multi_v7_defconfig: Enable common regulators for rockchip boards
Date: Thu, 24 Sep 2015 13:39:16 +0200
Message-ID: <1443094759-28531-3-git-send-email-sjoerd.simons@collabora.co.uk>
References: <1443094759-28531-1-git-send-email-sjoerd.simons@collabora.co.uk>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1443094759-28531-1-git-send-email-sjoerd.simons@collabora.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, arm@kernel.org
Cc: Thierry Reding <treding@nvidia.com>, Kevin Hilman <khilman@kernel.org>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Javier Martinez Canillas <javier@osg.samsung.com>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>, Olof Johansson <olof@lixom.net>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>
List-Id: linux-rockchip.vger.kernel.org

Rockchip boards seem to have two common regulator setups. Various board
used the Active Semi act8846 often in combination with Silergy syr82x
regulators (e.g. Radxa Rock Pro/Rock 2, Firefly, and Netxeon R89 etc),
while others use regulator part of the Rockchip RK808 chip (e.g. the
various Veyron based chromebooks, Chipspark Popmetal etc)

Enable all these regulators.

Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>

---

Changes in v2:
- Enable all common rockchip regulators, not just ACT8846

 arch/arm/configs/multi_v7_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 170f18e..3938f54 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -394,6 +394,7 @@ CONFIG_MFD_MAX14577=y
 CONFIG_MFD_MAX77686=y
 CONFIG_MFD_MAX77693=y
 CONFIG_MFD_MAX8907=y
+CONFIG_MFD_RK808=y
 CONFIG_MFD_SEC_CORE=y
 CONFIG_MFD_STMPE=y
 CONFIG_MFD_PALMAS=y
@@ -401,11 +402,14 @@ CONFIG_MFD_TPS65090=y
 CONFIG_MFD_TPS6586X=y
 CONFIG_MFD_TPS65910=y
 CONFIG_REGULATOR_AB8500=y
+CONFIG_REGULATOR_ACT8865=y
 CONFIG_REGULATOR_AS3711=y
 CONFIG_REGULATOR_AS3722=y
 CONFIG_REGULATOR_AXP20X=y
 CONFIG_REGULATOR_BCM590XX=y
 CONFIG_REGULATOR_DA9210=y
+CONFIG_REGULATOR_FAN53555=y
+CONFIG_REGULATOR_RK808=y
 CONFIG_REGULATOR_GPIO=y
 CONFIG_MFD_SYSCON=y
 CONFIG_POWER_RESET_SYSCON=y
-- 
2.5.3
