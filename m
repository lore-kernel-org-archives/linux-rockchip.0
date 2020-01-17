From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: [PATCH] arm: rockchip: dts: Kill off "simple-panel" compatibles
Date: Fri, 17 Jan 2020 17:08:51 -0600
Message-ID: <20200117230851.25434-1-robh@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

"simple-panel" is a Linux driver and has never been an accepted upstream
compatible string, so remove it.

Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Signed-off-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
 arch/arm/boot/dts/rk3288-evb.dtsi                          | 2 +-
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi                   | 2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts                 | 2 +-
 arch/arm/boot/dts/rk3288-veyron-tiger.dts                  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 2afd686b2033..018802df4c0e 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -97,7 +97,7 @@
 	};
 
 	panel: panel {
-		compatible = "lg,lp079qx1-sp0v", "simple-panel";
+		compatible = "lg,lp079qx1-sp0v";
 		backlight = <&backlight>;
 		enable-gpios = <&gpio7 RK_PA4 GPIO_ACTIVE_HIGH>;
 		pinctrl-0 = <&lcd_cs>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
index 300a7e32c978..32c0f10765dd 100644
--- a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
@@ -54,7 +54,7 @@
 	};
 
 	panel: panel {
-		compatible = "innolux,n116bge", "simple-panel";
+		compatible = "innolux,n116bge";
 		status = "okay";
 		power-supply = <&panel_regulator>;
 		backlight = <&backlight>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index c833716dbe48..95db0eb8d639 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -70,7 +70,7 @@
 };
 
 &panel {
-	compatible = "auo,b101ean01", "simple-panel";
+	compatible = "auo,b101ean01";
 
 	/delete-node/ panel-timing;
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
index bebb230e592f..069f0c2c1fdf 100644
--- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
@@ -53,7 +53,7 @@
 };
 
 &panel {
-	compatible = "auo,b101ean01", "simple-panel";
+	compatible = "auo,b101ean01";
 
 	/delete-node/ panel-timing;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
index 9dd3b171e91d..e6c1c94c8d69 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
@@ -18,7 +18,7 @@
 		     "google,bob", "google,gru", "rockchip,rk3399";
 
 	edp_panel: edp-panel {
-		compatible = "boe,nv101wxmn51", "simple-panel";
+		compatible = "boe,nv101wxmn51";
 		backlight = <&backlight>;
 		power-supply = <&pp3300_disp>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
index b8066868a3fe..2bbef9fcbe27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
@@ -39,7 +39,7 @@
 	};
 
 	edp_panel: edp-panel {
-		compatible = "sharp,lq123p1jx31", "simple-panel";
+		compatible = "sharp,lq123p1jx31";
 		backlight = <&backlight>;
 		power-supply = <&pp3300_disp>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 808ea77f951d..b4d8f60b7e44 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -84,7 +84,7 @@
 	};
 
 	edp_panel: edp-panel {
-		compatible ="lg,lp079qx1-sp0v", "simple-panel";
+		compatible ="lg,lp079qx1-sp0v";
 		backlight = <&backlight>;
 		enable-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-- 
2.20.1
