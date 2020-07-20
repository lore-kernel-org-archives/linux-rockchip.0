From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/3] ARM: dts: rockchip: Add HDMI out for RockPI N8/N10
Date: Mon, 20 Jul 2020 16:32:29 +0530
Message-ID: <20200720110230.367985-2-jagan@amarulasolutions.com>
References: <20200720110230.367985-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200720110230.367985-1-jagan@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

This patch adds support to enable HDMI out for
N10 and N8 combinations SBCs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       | 10 ++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    | 20 +++++++++++++++++++
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 12 +++++++++++
 3 files changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-vmarc-som.dtsi b/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
index abe3c01d13aa..ba2732ec72da 100644
--- a/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-vmarc-som.dtsi
@@ -38,6 +38,12 @@ &gmac {
 	snps,reset-gpio = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 };
 
+&hdmi {
+	ddc-i2c-bus = <&i2c5>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec_c0>;
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	status = "okay";
@@ -225,6 +231,10 @@ regulator-state-mem {
 	};
 };
 
+&i2c5 {
+	status = "okay";
+};
+
 &io_domains {
 	bb-supply = <&vcc_io>;
 	flash0-supply = <&vccio_flash>;
diff --git a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
index d2b6ead148a2..26b53eac4706 100644
--- a/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
+++ b/arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
@@ -66,6 +66,10 @@ &gmac {
 	status = "okay";
 };
 
+&hdmi {
+	status = "okay";
+};
+
 &pwm0 {
 	status = "okay";
 };
@@ -94,3 +98,19 @@ &uart0 {
 &uart2 {
 	status = "okay";
 };
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 111d6cf9a4e6..ebccc4a153a2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -39,6 +39,12 @@ &gmac {
 	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
 };
 
+&hdmi {
+	ddc-i2c-bus = <&i2c3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_cec>;
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <30>;
@@ -285,6 +291,12 @@ hym8563: hym8563@51 {
 	};
 };
 
+&i2c3 {
+	i2c-scl-rising-time-ns = <450>;
+	i2c-scl-falling-time-ns = <15>;
+	status = "okay";
+};
+
 &io_domains {
 	status = "okay";
 	bt656-supply = <&vcca_1v8>;
-- 
2.25.1
