From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH 5/5] arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc
Date: Sat,  4 Jan 2020 16:32:49 +0100
Message-ID: <20200104153321.6584-6-m.reichl@fivetechno.de>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200104153321.6584-1-m.reichl@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Markus Reichl <m.reichl@fivetechno.de>, Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The rk3399-roc-pc uses a MP8859 DC/DC converter for 12V supply.
This supplies 5V only in default state after booting.
Now we can control the output voltage via I2C interface.
Add a node for the driver to reach 12V.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 32 +++++++++++--------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 8e01b04144b7..9f225e9c3d54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -110,20 +110,6 @@ vcc_vbus_typec0: vcc-vbus-typec0 {
 		regulator-max-microvolt = <5000000>;
 	};
 
-	/*
-	 * should be placed inside mp8859, but not until mp8859 has
-	 * its own dt-binding.
-	 */
-	dc_12v: mp8859-dcdc1 {
-		compatible = "regulator-fixed";
-		regulator-name = "dc_12v";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-		vin-supply = <&vcc_vbus_typec0>;
-	};
-
 	/* switched by pmic_sleep */
 	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
@@ -546,6 +532,24 @@ fusb0: usb-typec@22 {
 		vbus-supply = <&vcc_vbus_typec0>;
 		status = "okay";
 	};
+
+	mp8859: regulator@66 {
+		compatible = "mps,mp8859";
+		reg = <0x66>;
+		dc_12v: mp8859_dcdc {
+			regulator-name = "dc_12v";
+			regulator-min-microvolt = <12000000>;
+			regulator-max-microvolt = <12000000>;
+			regulator-always-on;
+			regulator-boot-on;
+			vin-supply = <&vcc_vbus_typec0>;
+
+			regulator-state-mem {
+				regulator-on-in-suspend;
+				regulator-suspend-microvolt = <12000000>;
+			};
+		};
+	};
 };
 
 &i2s0 {
-- 
2.24.1
