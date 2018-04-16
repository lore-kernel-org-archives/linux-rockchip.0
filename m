From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 3/7] arm64: defconfig: Enable ChromeOS EC drivers for
 supported Chromebooks.
Date: Mon, 16 Apr 2018 11:39:58 -0300
Message-ID: <20180416144002.15569-4-ezequiel@collabora.com>
References: <20180416144002.15569-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180416144002.15569-1-ezequiel@collabora.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Enable following drivers for merged devices:
- ChromeOS EC RTC driver.
- ChromeOS EC userspace interface.
- ChromeOS EC light and proximity sensors.
- ChromeOS EC Barometer Sensor driver.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7e3b3f0484b9..397bc0b42a86 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -363,6 +363,7 @@ CONFIG_MFD_AXP20X_RSB=y
 CONFIG_MFD_CROS_EC=y
 CONFIG_MFD_CROS_EC_I2C=y
 CONFIG_MFD_CROS_EC_SPI=y
+CONFIG_MFD_CROS_EC_CHARDEV=m
 CONFIG_MFD_EXYNOS_LPASS=m
 CONFIG_MFD_HI6421_PMIC=y
 CONFIG_MFD_HI655X_PMIC=y
@@ -516,6 +517,7 @@ CONFIG_RTC_DRV_SUN6I=y
 CONFIG_RTC_DRV_ARMADA38X=y
 CONFIG_RTC_DRV_TEGRA=y
 CONFIG_RTC_DRV_XGENE=y
+CONFIG_RTC_DRV_CROS_EC=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2835=m
 CONFIG_K3_DMA=y
@@ -576,6 +578,10 @@ CONFIG_TEGRA_MC=y
 CONFIG_IIO=y
 CONFIG_EXYNOS_ADC=y
 CONFIG_ROCKCHIP_SARADC=m
+CONFIG_IIO_CROS_EC_SENSORS_CORE=m
+CONFIG_IIO_CROS_EC_SENSORS=m
+CONFIG_IIO_CROS_EC_LIGHT_PROX=m
+CONFIG_IIO_CROS_EC_BARO=m
 CONFIG_PWM=y
 CONFIG_PWM_BCM2835=m
 CONFIG_PWM_CROS_EC=m
-- 
2.16.3
