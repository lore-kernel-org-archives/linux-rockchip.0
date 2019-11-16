From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Improve nanopi4 PCIe
Date: Sat, 16 Nov 2019 12:47:20 +0000
Message-ID: <a04a17f4b9b12e8698c76b34e7ca22f0c81845ce.1573908195.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Expand the power tree description with the 0V9 and 1V8 supplies to the
RK3399 PCIe block. The NanoPis M4 and NEO4 just route 2 lanes to the
user expansion pins, so there's not much more to say at the board level
for them; NanoPC-T4 has a standard M.2 connector so we can at least
claim the 3.3V supply to that too.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    |  5 ++++
 .../boot/dts/rockchip/rk3399-nanopi4.dtsi     | 27 +++++++++++++++++--
 2 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index 6fe8bd604d6c..f399853c635a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -144,6 +144,11 @@
 	status = "okay";
 };
 
+&pcie0 {
+	num-lanes = <4>;
+	vpcie3v3-supply = <&vcc3v3_sys>;
+};
+
 &pinctrl {
 	ir {
 		ir_rx: ir-rx {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 34b78ad4b6fa..778922ab1313 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -48,7 +48,7 @@
 	};
 
 	/* switched by pmic_sleep */
-	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
+	vcc1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
 		regulator-always-on;
 		regulator-boot-on;
@@ -71,6 +71,27 @@
 		vin-supply = <&vcc3v3_sys>;
 	};
 
+	/*
+	 * Really, this is supplied by vcc_1v8, and vcc1v8_s3 only
+	 * drives the enable pin, but we can't quite model that.
+	 */
+	vcca0v9_s3: vcca0v9-s3 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		regulator-name = "vcca0v9_s3";
+		vin-supply = <&vcc1v8_s3>;
+	};
+
+	/* As above, actually supplied by vcc3v3_sys */
+	vcca1v8_s3: vcca1v8-s3 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcca1v8_s3";
+		vin-supply = <&vcc1v8_s3>;
+	};
+
 	vbus_typec: vbus-typec {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <5000000>;
@@ -510,7 +531,9 @@
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_HIGH>;
 	max-link-speed = <2>;
-	num-lanes = <4>;
+	num-lanes = <2>;
+	vpcie0v9-supply = <&vcca0v9_s3>;
+	vpcie1v8-supply = <&vcca1v8_s3>;
 	status = "okay";
 };
 
-- 
2.17.1
