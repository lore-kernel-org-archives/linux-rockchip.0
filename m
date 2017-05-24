From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 5/7] arm64: defconfig: enable more cros-ec options
Date: Wed, 24 May 2017 15:54:13 +0200
Message-ID: <20170524135415.5590-6-heiko@sntech.de>
References: <20170524135415.5590-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170524135415.5590-1-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Enable the spi part as well as the keyboard driver as built-in, as
this allows access to the device, even if the ramdisk containing other
drivers is faulty or missing.

The cros-ec-pwm gets enabled as module, as it is normally only used
to drive display backlights.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 51c884f96125..f6c50a403f1a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -210,6 +210,7 @@ CONFIG_WL18XX=m
 CONFIG_WLCORE_SDIO=m
 CONFIG_INPUT_EVDEV=y
 CONFIG_KEYBOARD_ADC=m
+CONFIG_KEYBOARD_CROS_EC=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_INPUT_MISC=y
 CONFIG_INPUT_PM8941_PWRKEY=y
@@ -303,6 +304,7 @@ CONFIG_RENESAS_WDT=y
 CONFIG_BCM2835_WDT=y
 CONFIG_MFD_CROS_EC=y
 CONFIG_MFD_CROS_EC_I2C=y
+CONFIG_MFD_CROS_EC_SPI=y
 CONFIG_MFD_EXYNOS_LPASS=m
 CONFIG_MFD_HI655X_PMIC=y
 CONFIG_MFD_MAX77620=y
@@ -479,6 +481,7 @@ CONFIG_EXYNOS_ADC=y
 CONFIG_ROCKCHIP_SARADC=m
 CONFIG_PWM=y
 CONFIG_PWM_BCM2835=m
+CONFIG_PWM_CROS_EC=m
 CONFIG_PWM_MESON=m
 CONFIG_PWM_ROCKCHIP=y
 CONFIG_PWM_SAMSUNG=y
-- 
2.11.0
