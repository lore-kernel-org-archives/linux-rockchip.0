From: Alexis Ballier <aballier@gentoo.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3399-orangepi: Add ethernet phy.
Date: Thu,  6 Feb 2020 16:10:24 +0100
Message-ID: <20200206151025.3813-1-aballier@gentoo.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
Cc: Alexis Ballier <aballier@gentoo.org>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Enables INTB.
The wiring is the same as the nanopi4, so this is heavily based on:
- [1a4e6203f0c] arm64: dts: rockchip: Add nanopi4 ethernet phy
- [bc43cee88aa] arm64: dts: rockchip: Update nanopi4 phy reset properties
by Robin Murphy.

Signed-off-by: Alexis Ballier <aballier@gentoo.org>
Cc: devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../boot/dts/rockchip/rk3399-orangepi.dts     | 31 ++++++++++++++++---
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 9c659f3115c8..1767015e684c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -202,14 +202,27 @@ &gmac {
 	clock_in_out = "input";
 	phy-supply = <&vcc3v3_s3>;
 	phy-mode = "rgmii";
+	phy-handle = <&rtl8211e>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>;
-	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 50000>;
+	pinctrl-0 = <&rgmii_pins>, <&phy_intb>, <&phy_rstb>;
 	tx_delay = <0x28>;
 	rx_delay = <0x11>;
 	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211e: phy@1 {
+			reg = <1>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <30000>;
+			reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &gpu {
@@ -537,6 +550,16 @@ pwr_btn: pwr-btn {
 		};
 	};
 
+	phy {
+		phy_intb: phy-intb {
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		phy_rstb: phy-rstb {
+			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
-- 
2.25.0
