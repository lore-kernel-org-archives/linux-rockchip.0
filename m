From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Add nanopi4 bluetooth
Date: Fri, 15 Feb 2019 00:02:34 +0000
Message-ID: <a7c0fae925a838ad5bb540f4302614a94472b437.1550188024.git.robin.murphy@arm.com>
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

Describe the Bluetooth portion of the Ampak combo module - this is
either an AP6356S or an AP6212 depending on the board variant, but
there are no relevant compatibility differences between the two.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../boot/dts/rockchip/rk3399-nanopi4.dtsi     | 31 +++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 2d304d2df62e..db48e986b361 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -218,7 +218,7 @@
 	rk808: pmic@1b {
 		compatible = "rockchip,rk808";
 		reg = <0x1b>;
-		clock-output-names = "xin32k", "rk808-clkout2";
+		clock-output-names = "xin32k", "rtc_clko_wifi";
 		#clock-cells = <1>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
@@ -501,7 +501,20 @@
 		};
 	};
 
-	sdio-pwrseq {
+	sdio {
+		bt_host_wake_l: bt-host-wake-l {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_reg_on_h: bt-reg-on-h {
+			/* external pullup to VCC1V8_PMUPLL */
+			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_l: bt-wake-l {
+			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		wifi_reg_on_h: wifi-reg_on-h {
 			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -621,6 +634,20 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer &uart0_rts &uart0_cts>;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk808 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <4000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reg_on_h &bt_host_wake_l &bt_wake_l>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+	};
 };
 
 &uart2 {
-- 
2.17.1
