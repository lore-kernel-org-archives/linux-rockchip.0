From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 2/2] ARM: dts: rockchip: remove num-slots from all platforms
Date: Tue,  4 Jul 2017 17:04:28 +0800
Message-ID: <1499159068-51015-2-git-send-email-shawn.lin@rock-chips.com>
References: <1499159068-51015-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1499159068-51015-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

We deprecated the "num-slots" property now and plan to get
rid of it finally. Just move a step to cleanup it from DT.

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 arch/arm/boot/dts/rk3036-kylin.dts                | 2 --
 arch/arm/boot/dts/rk3036.dtsi                     | 1 -
 arch/arm/boot/dts/rk3066a-bqcurie2.dts            | 2 --
 arch/arm/boot/dts/rk3066a-mk808.dts               | 2 --
 arch/arm/boot/dts/rk3066a-rayeager.dts            | 3 ---
 arch/arm/boot/dts/rk3188-px3-evb.dts              | 2 --
 arch/arm/boot/dts/rk3188-radxarock.dts            | 1 -
 arch/arm/boot/dts/rk322x.dtsi                     | 1 -
 arch/arm/boot/dts/rk3288-evb.dtsi                 | 2 --
 arch/arm/boot/dts/rk3288-fennec.dts               | 1 -
 arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi | 1 -
 arch/arm/boot/dts/rk3288-firefly-reload.dts       | 2 --
 arch/arm/boot/dts/rk3288-firefly.dtsi             | 3 ---
 arch/arm/boot/dts/rk3288-miqi.dts                 | 2 --
 arch/arm/boot/dts/rk3288-phycore-rdk.dts          | 1 -
 arch/arm/boot/dts/rk3288-phycore-som.dtsi         | 1 -
 arch/arm/boot/dts/rk3288-popmetal.dts             | 2 --
 arch/arm/boot/dts/rk3288-r89.dts                  | 1 -
 arch/arm/boot/dts/rk3288-rock2-som.dtsi           | 1 -
 arch/arm/boot/dts/rk3288-rock2-square.dts         | 2 --
 arch/arm/boot/dts/rk3288-tinker.dts               | 1 -
 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi        | 1 -
 arch/arm/boot/dts/rk3288-veyron.dtsi              | 2 --
 23 files changed, 37 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index 5726135..fdb1570 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -357,7 +357,6 @@
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio_clk &sdio_cmd &sdio_bus4>;
 	sd-uhs-sdr12;
@@ -372,7 +371,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk>, <&sdmmc_cmd>, <&sdmmc_cd>, <&sdmmc_bus4>;
 };
diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index ec91325..f8e298a 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -287,7 +287,6 @@
 		fifo-depth = <0x100>;
 		mmc-ddr-1_8v;
 		non-removable;
-		num-slots = <1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
 		resets = <&cru SRST_EMMC>;
diff --git a/arch/arm/boot/dts/rk3066a-bqcurie2.dts b/arch/arm/boot/dts/rk3066a-bqcurie2.dts
index e1f5198..ef1eabf 100644
--- a/arch/arm/boot/dts/rk3066a-bqcurie2.dts
+++ b/arch/arm/boot/dts/rk3066a-bqcurie2.dts
@@ -190,7 +190,6 @@
 #include "tps65910.dtsi"
 
 &mmc0 { /* sdmmc */
-	num-slots = <1>;
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_cd>, <&sd0_bus4>;
@@ -202,7 +201,6 @@
 };
 
 &mmc1 { /* wifi */
-	num-slots = <1>;
 	status = "okay";
 	non-removable;
 
diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 7ca1cf5..13e285c 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -132,7 +132,6 @@
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
-	num-slots = <1>;
 	vmmc-supply = <&vcc_sd>;
 	status = "okay";
 };
@@ -141,7 +140,6 @@
 	bus-width = <4>;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-0 = <&sd1_clk &sd1_cmd &sd1_bus4>;
 	pinctrl-names = "default";
 	vmmc-supply = <&vcc_wifi>;
diff --git a/arch/arm/boot/dts/rk3066a-rayeager.dts b/arch/arm/boot/dts/rk3066a-rayeager.dts
index 8907dea..400cbf9 100644
--- a/arch/arm/boot/dts/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rk3066a-rayeager.dts
@@ -185,7 +185,6 @@
 	cap-mmc-highspeed;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_rst>;
 	vmmc-supply = <&vcc_emmc>;
@@ -336,7 +335,6 @@
 &mmc0 {
 	bus-width = <4>;
 	disable-wp;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_cd>, <&sd0_bus4>;
 	vmmc-supply = <&vcc_sd>;
@@ -349,7 +347,6 @@
 	bus-width = <4>;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd1_clk>, <&sd1_cmd>, <&sd1_bus4>;
 	vmmc-supply = <&vccio_wl>;
diff --git a/arch/arm/boot/dts/rk3188-px3-evb.dts b/arch/arm/boot/dts/rk3188-px3-evb.dts
index 5b2a0b6..8ba9e06 100644
--- a/arch/arm/boot/dts/rk3188-px3-evb.dts
+++ b/arch/arm/boot/dts/rk3188-px3-evb.dts
@@ -89,7 +89,6 @@
 	cap-mmc-highspeed;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_rst>;
 	status = "okay";
@@ -256,7 +255,6 @@
 };
 
 &mmc0 {
-	num-slots = <1>;
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_cd>, <&sd0_bus4>;
diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index ca0a1c4..53d6fc2 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -296,7 +296,6 @@
 };
 
 &mmc0 {
-	num-slots = <1>;
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_cd>, <&sd0_bus4>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index f3e4ffd..1d5d2d3 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -511,7 +511,6 @@
 		clock-names = "biu", "ciu", "ciu_drv", "ciu_sample";
 		bus-width = <8>;
 		default-sample-phase = <158>;
-		num-slots = <1>;
 		fifo-depth = <0x100>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 0dec94c..d4b1aed 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -212,7 +212,6 @@
 	cap-mmc-highspeed;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
 	status = "okay";
@@ -224,7 +223,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;			/* wp not hooked up */
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/rk3288-fennec.dts b/arch/arm/boot/dts/rk3288-fennec.dts
index 61d1c10..962bfd8 100644
--- a/arch/arm/boot/dts/rk3288-fennec.dts
+++ b/arch/arm/boot/dts/rk3288-fennec.dts
@@ -77,7 +77,6 @@
 	cap-mmc-highspeed;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi b/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
index 8134966..9bbab13 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
@@ -78,7 +78,6 @@
 	mmc-ddr-1_8v;
 	mmc-hs200-1_8v;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_pwr>, <&emmc_bus8>;
 	vmmc-supply = <&vcc_io>;
diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index b11a282..7da0947 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -269,7 +269,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk>, <&sdmmc_cmd>, <&sdmmc_cd>, <&sdmmc_bus4>;
 	vmmc-supply = <&vcc_sd>;
@@ -284,7 +283,6 @@
 	disable-wp;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4>, <&sdio0_cmd>, <&sdio0_clk>, <&sdio0_int>;
 	sd-uhs-sdr12;
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 32dabae..4c441ee 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -208,7 +208,6 @@
 	cap-mmc-highspeed;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_pwr>, <&emmc_bus8>;
 	vmmc-supply = <&vcc_io>;
@@ -527,7 +526,6 @@
 	bus-width = <4>;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4>, <&sdio0_cmd>, <&sdio0_clk>;
 	vmmc-supply = <&vbat_wl>;
@@ -541,7 +539,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk>, <&sdmmc_cmd>, <&sdmmc_cd>, <&sdmmc_bus4>;
 	vmmc-supply = <&vcc_sd>;
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index 30e93f6..1eaf336 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -126,7 +126,6 @@
 	cap-mmc-highspeed;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_pwr>, <&emmc_bus8>;
 	vmmc-supply = <&vcc_io>;
@@ -404,7 +403,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk>, <&sdmmc_cmd>, <&sdmmc_cd>, <&sdmmc_bus4>;
 	vmmc-supply = <&vcc_sd>;
diff --git a/arch/arm/boot/dts/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rk3288-phycore-rdk.dts
index 3dda795..1241cbc 100644
--- a/arch/arm/boot/dts/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rk3288-phycore-rdk.dts
@@ -263,7 +263,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	vmmc-supply = <&vdd_io_sd>;
diff --git a/arch/arm/boot/dts/rk3288-phycore-som.dtsi b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
index 26cd3ad..a80dc02 100644
--- a/arch/arm/boot/dts/rk3288-phycore-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
@@ -136,7 +136,6 @@
 	cap-mmc-highspeed;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
 	vmmc-supply = <&vdd_3v3_io>;
diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts b/arch/arm/boot/dts/rk3288-popmetal.dts
index aa1f9ec..d803310 100644
--- a/arch/arm/boot/dts/rk3288-popmetal.dts
+++ b/arch/arm/boot/dts/rk3288-popmetal.dts
@@ -150,7 +150,6 @@
 	mmc-ddr-1_8v;
 	mmc-hs200-1_8v;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
 	vmmc-supply = <&vcc_io>;
@@ -164,7 +163,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;                     /* wp not hooked up */
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	sd-uhs-sdr12;
diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-r89.dts
index 1145b62..7e1568a 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -354,7 +354,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	vmmc-supply = <&vcc_sdmmc>;
diff --git a/arch/arm/boot/dts/rk3288-rock2-som.dtsi b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
index 749a9b8..d3f1615 100644
--- a/arch/arm/boot/dts/rk3288-rock2-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
@@ -89,7 +89,6 @@
 	cap-mmc-highspeed;
 	disable-wp;
 	non-removable;
-	num-slots = <1>;
 	mmc-pwrseq = <&emmc_pwrseq>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index 8ed25e9..0e084b8 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -147,7 +147,6 @@
 	disable-wp;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk &sdio0_int>;
 	vmmc-supply = <&vcc_io>;
@@ -161,7 +160,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;	/* wp not hooked up */
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	vmmc-supply = <&vcc_sd>;
diff --git a/arch/arm/boot/dts/rk3288-tinker.dts b/arch/arm/boot/dts/rk3288-tinker.dts
index f601c78..cd4630e 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dts
+++ b/arch/arm/boot/dts/rk3288-tinker.dts
@@ -465,7 +465,6 @@
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
 	disable-wp;			/* wp not hooked up */
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi b/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
index aef0710..95e9bee 100644
--- a/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
@@ -117,7 +117,6 @@
 	card-detect-delay = <200>;
 	cd-gpios = <&gpio7 RK_PA5 GPIO_ACTIVE_LOW>;
 	rockchip,default-sample-phase = <90>;
-	num-slots = <1>;
 	sd-uhs-sdr12;
 	sd-uhs-sdr25;
 	sd-uhs-sdr50;
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index d709fa1..27eec71a 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -156,7 +156,6 @@
 	mmc-hs200-1_8v;
 	mmc-pwrseq = <&emmc_pwrseq>;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
 };
@@ -372,7 +371,6 @@
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_clk &sdio0_cmd &sdio0_bus4>;
 	sd-uhs-sdr12;
-- 
1.9.1
