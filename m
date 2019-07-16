From: "Eric Auer, EMW-MT" <auere-OIIjM32accxuPis3aSs6BxvVK+yQ3ZXh@public.gmane.org>
Subject: RK3288 fast SPI DTS setting patches
Date: Tue, 16 Jul 2019 15:34:11 +0200
Message-ID: <20190716133056.M642@hochschule-trier.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
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
List-Id: linux-rockchip.vger.kernel.org


Dear list,

you may enjoy the patches below, regarding proper settings
for higher SPI clocks on RK3288. Thank you for having a look!

Base Version: Tinker OS 2.0.7 Linux Kernels Version 4.4.103
https://github.com/TinkerBoard/debian_kernel/tree/release

Regards, Eric



--- arch/arm/boot/dts/rk3288.dtsi.original	2018-06-01 04:25:35 +0200
+++ arch/arm/boot/dts/rk3288.dtsi	2018-08-07 19:04:10 +0200
@@ -373,8 +373,9 @@
 		dmas = <&dmac_peri 11>, <&dmac_peri 12>;
 		dma-names = "tx", "rx";
 		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-		pinctrl-names = "default";
+		pinctrl-names = "default", "high_speed";
 		pinctrl-0 = <&spi0_clk &spi0_tx &spi0_rx &spi0_cs0 &spi0_cs1>;
+		pinctrl-1 = <&spi0_clk_h &spi0_tx_h &spi0_rx_h &spi0_cs0_h &spi0_cs1_h>;
 		reg = <0x0 0xff110000 0x0 0x1000>;
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -403,9 +404,11 @@
 		dmas = <&dmac_peri 15>, <&dmac_peri 16>;
 		dma-names = "tx", "rx";
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
-		pinctrl-names = "default";
-		//pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0 &spi2_cs1>;
+		pinctrl-names = "default", "high_speed";
+		// pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0 &spi2_cs1>;
 		pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0>;
+		// pinctrl-1 = <&spi2_clk_h &spi2_tx_h &spi2_rx_h &spi2_cs0_h &spi2_cs1_h>;
+		pinctrl-1 = <&spi2_clk_h &spi2_tx_h &spi2_rx_h &spi2_cs0_h>;
 		reg = <0x0 0xff130000 0x0 0x1000>;
 		#address-cells = <2>;
 		#size-cells = <0>;
@@ -2186,7 +2189,24 @@
 			spi0_cs1: spi0-cs1 {
 				rockchip,pins = <5 16 RK_FUNC_1 &pcfg_pull_up>;
 			};
+
+			spi0_clk_h: spi0-clk-h {
+				rockchip,pins = <5 12 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi0_cs0_h: spi0-cs0-h {
+				rockchip,pins = <5 13 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi0_tx_h: spi0-tx-h {
+				rockchip,pins = <5 14 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi0_rx_h: spi0-rx-h {
+				rockchip,pins = <5 15 RK_FUNC_1 &pcfg_pull_up>;
+			};
+			spi0_cs1_h: spi0-cs1-h {
+				rockchip,pins = <5 16 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
 		};
+
 		spi1 {
 			spi1_clk: spi1-clk {
 				rockchip,pins = <7 12 RK_FUNC_2 &pcfg_pull_up>;
@@ -2218,6 +2238,23 @@
 			spi2_tx: spi2-tx {
 				rockchip,pins = <8 9 RK_FUNC_1 &pcfg_pull_up>;
 			};
+
+			spi2_cs1_h: spi2-cs1-h {
+				rockchip,pins = <8 3 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi2_clk_h: spi2-clk-h {
+				rockchip,pins = <8 6 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi2_cs0_h: spi2-cs0-h {
+				rockchip,pins = <8 7 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+			spi2_rx_h: spi2-rx-h {
+				rockchip,pins = <8 8 RK_FUNC_1 &pcfg_pull_up>;
+			};
+			spi2_tx_h: spi2-tx-h {
+				rockchip,pins = <8 9 RK_FUNC_1 &pcfg_pull_none_12ma>;
+			};
+
 		};
 
 		uart0 {
--- arch/arm/boot/dts/rk3288-miniarm.dts.original	2018-06-01 04:25:35 +0200
+++ arch/arm/boot/dts/rk3288-miniarm.dts	2018-08-07 19:04:05 +0200
@@ -637,8 +637,9 @@
 &spi0 {
 	status = "okay";
 	max-freq = <50000000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "high_speed";
 	pinctrl-0 = <&spi0_clk &spi0_tx &spi0_rx &spi0_cs0 &spi0_cs1>;
+	pinctrl-1 = <&spi0_clk_h &spi0_tx_h &spi0_rx_h &spi0_cs0_h &spi0_cs1_h>;
 	#address-cells = <1>;
 
 	spidev@0 {
@@ -659,8 +660,9 @@
 &spi2 {
 	status = "okay";
 	max-freq = <50000000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "high_speed";
 	pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0 &spi2_cs1>;
+	pinctrl-1 = <&spi2_clk_h &spi2_tx_h &spi2_rx_h &spi2_cs0_h &spi2_cs1_h>;
 	#address-cells = <1>;
 
 	spidev@0 {
