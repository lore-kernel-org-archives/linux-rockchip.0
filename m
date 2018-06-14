From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 4/4] arm64: dts: rockchip: add Google Bob
Date: Thu, 14 Jun 2018 13:30:39 +0200
Message-ID: <20180614113039.29117-5-heiko@sntech.de>
References: <20180614113039.29117-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180614113039.29117-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

After Kevin, the second chromebook-incarnation of the Gru series is Bob.
This materializes as the Asus Chromebook Flip C101PA, whose formfactor
is quite similar to Minnie from the Veyron series.

Add the devicetree file and binding update for it.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 .../devicetree/bindings/arm/rockchip.txt      |  9 +++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3399-gru-bob.dts      | 79 +++++++++++++++++++
 3 files changed, 89 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.txt b/Documentation/devicetree/bindings/arm/rockchip.txt
index 1c1d62d03c4f..145ab0b0a030 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.txt
+++ b/Documentation/devicetree/bindings/arm/rockchip.txt
@@ -66,6 +66,15 @@ Rockchip platforms device tree bindings
     Required root node properties:
       - compatible = "geekbuying,geekbox", "rockchip,rk3368";
 
+- Google Bob (Asus Chromebook Flip C101PA):
+    Required root node properties:
+	compatible = "google,bob-rev13", "google,bob-rev12",
+		     "google,bob-rev11", "google,bob-rev10",
+		     "google,bob-rev9", "google,bob-rev8",
+		     "google,bob-rev7", "google,bob-rev6",
+		     "google,bob-rev5", "google,bob-rev4",
+		     "google,bob", "google,gru", "rockchip,rk3399";
+
 - Google Brain (dev-board):
     Required root node properties:
       - compatible = "google,veyron-brain-rev0", "google,veyron-brain",
diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 48a83f882947..7c4311eac700 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -10,6 +10,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-px5-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-r88.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-firefly.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-bob.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-gru-kevin.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
new file mode 100644
index 000000000000..1ee0dc0d9f10
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Google Gru-Bob Rev 4+ board device tree source
+ *
+ * Copyright 2018 Google, Inc
+ */
+
+/dts-v1/;
+#include "rk3399-gru-chromebook.dtsi"
+
+/ {
+	model = "Google Bob";
+	compatible = "google,bob-rev13", "google,bob-rev12",
+		     "google,bob-rev11", "google,bob-rev10",
+		     "google,bob-rev9", "google,bob-rev8",
+		     "google,bob-rev7", "google,bob-rev6",
+		     "google,bob-rev5", "google,bob-rev4",
+		     "google,bob", "google,gru", "rockchip,rk3399";
+
+	edp_panel: edp-panel {
+		compatible = "boe,nv101wxmn51", "simple-panel";
+		backlight = <&backlight>;
+		power-supply = <&pp3300_disp>;
+
+		ports {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
+};
+
+&ap_i2c_ts {
+	touchscreen: touchscreen@10 {
+		compatible = "elan,ekth3500";
+		reg = <0x10>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_int_l &touch_reset_l>;
+		reset-gpios = <&gpio4 26 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&ap_i2c_tp {
+	trackpad: trackpad@15 {
+		compatible = "elan,ekth3000";
+		reg = <0x15>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_int_l>;
+		wakeup-source;
+	};
+};
+
+&backlight {
+	pwms = <&cros_ec_pwm 0>;
+};
+
+&cpu_alert0 {
+	temperature = <65000>;
+};
+
+&cpu_alert1 {
+	temperature = <70000>;
+};
+
+&spi0 {
+	status = "okay";
+};
+
+&pinctrl {
+	tpm {
+		h1_int_od_l: h1-int-od-l {
+			rockchip,pins = <0 5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
-- 
2.17.0
