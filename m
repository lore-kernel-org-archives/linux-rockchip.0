From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 4/4] ARM: dts: rockchip: add Pinky board
Date: Sat, 11 Jul 2015 02:29:22 +0200
Message-ID: <1436574562-16308-5-git-send-email-heiko@sntech.de>
References: <1436574562-16308-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1436574562-16308-1-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: khilman-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

While pinky was one of the earlier development models, is on the list
of endangered species today and nearly extinct, I want to keep mine
around for the foreseeable future after spending all the time making a
nice hole into the base below the dut-connector.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 Documentation/devicetree/bindings/arm/rockchip.txt |   5 +
 arch/arm/boot/dts/Makefile                         |   3 +-
 arch/arm/boot/dts/rk3288-veyron-pinky.dts          | 128 +++++++++++++++++++++
 3 files changed, 135 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-pinky.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.txt b/Documentation/devicetree/bindings/arm/rockchip.txt
index 1b2b572..6de18bd2 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.txt
+++ b/Documentation/devicetree/bindings/arm/rockchip.txt
@@ -33,3 +33,8 @@ Rockchip platforms device tree bindings
 		     "google,veyron-jerry-rev5", "google,veyron-jerry-rev4",
 		     "google,veyron-jerry-rev3", "google,veyron-jerry",
 		     "google,veyron", "rockchip,rk3288";
+
+- Google Pinky (dev-board):
+    Required root node properties:
+      - compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
+		     "google,veyron", "rockchip,rk3288";
\ No newline at end of file
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 2e545a3..4993b3b 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -489,7 +489,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-evb-rk808.dtb \
 	rk3288-firefly-beta.dtb \
 	rk3288-firefly.dtb \
-	rk3288-veyron-jerry.dtb
+	rk3288-veyron-jerry.dtb \
+	rk3288-veyron-pinky.dtb
 dtb-$(CONFIG_ARCH_S3C24XX) += \
 	s3c2416-smdk2416.dtb
 dtb-$(CONFIG_ARCH_S3C64XX) += \
diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
new file mode 100644
index 0000000..25eb4b0
--- /dev/null
+++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
@@ -0,0 +1,128 @@
+/*
+ * Google Veyron Pinky Rev 2 board device tree source
+ *
+ * Copyright 2015 Google, Inc
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This file is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ *  Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+/dts-v1/;
+#include "rk3288-veyron-chromebook.dtsi"
+#include "cros-ec-sbs.dtsi"
+
+/ {
+	model = "Google Pinky";
+	compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
+		     "google,veyron", "rockchip,rk3288";
+
+	/delete-node/emmc-pwrseq;
+};
+
+&emmc {
+	/*
+	 * Use a pullup instead of a drive since the output is 3.3V and
+	 * really should be 1.8V (oops).  The external pulldown will help
+	 * bring the voltage down if we only drive with a pullup here.
+	 * Therefore disable the powerseq (and actual reset) for pinky.
+	 */
+	/delete-property/mmc-pwrseq;
+	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8 &emmc_reset>;
+};
+
+&gpio_keys {
+	pinctrl-0 = <&pwr_key_h &ap_lid_int_l>;
+
+	power {
+		gpios = <&gpio0 5 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+/* Touchpad connector */
+&i2c3 {
+	status = "okay";
+
+	clock-frequency = <400000>;
+	i2c-scl-falling-time-ns = <50>;
+	i2c-scl-rising-time-ns = <300>;
+};
+
+&pinctrl {
+	buttons {
+		pwr_key_h: pwr-key-h {
+			rockchip,pins = <0 5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	emmc {
+		emmc_reset: emmc-reset {
+			rockchip,pins = <7 12 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sdmmc {
+		sdmmc_wp_gpio: sdmmc-wp-gpio {
+			rockchip,pins = <7 10 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&rk808 {
+	regulators {
+		vcc18_lcd: SWITCH_REG2 {
+			regulator-always-on;
+			regulator-boot-on;
+			regulator-name = "vcc18_lcd";
+			regulator-state-mem {
+				regulator-on-in-suspend;
+			};
+		};
+	};
+};
+
+&sdmmc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_gpio
+		     &sdmmc_wp_gpio &sdmmc_bus4>;
+	wp-gpios = <&gpio7 10 GPIO_ACTIVE_HIGH>;
+};
+
+&tsadc {
+	/* Some connection is flaky making the tsadc hang the system */
+	status = "disabled";
+};
-- 
2.1.4
