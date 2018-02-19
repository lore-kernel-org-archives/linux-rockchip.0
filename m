From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: move rk3399-sapphire pwr_btn to
 daughterboard
Date: Tue, 20 Feb 2018 00:11:02 +0100
Message-ID: <20180219231102.9090-2-vicencb@gmail.com>
References: <3840224.sEPfbROKII@phil> <20180219231102.9090-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180219231102.9090-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The power button is located on the daughterboard.

Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Tested-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 .../dts/rockchip/rk3399-sapphire-excavator.dts     | 23 ----------------------
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  | 23 ++++++++++++++++++++++
 2 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 6027846ffd3e..6ff9d222d839 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -41,7 +41,6 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/input/input.h>
 #include "rk3399-sapphire.dtsi"
 
 / {
@@ -95,22 +94,6 @@
 		};
 	};
 
-	keys: gpio-keys {
-		compatible = "gpio-keys";
-		autorepeat;
-
-		power {
-			debounce-interval = <100>;
-			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
-			label = "GPIO Power";
-			linux,code = <KEY_POWER>;
-			linux,input-type = <1>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&pwr_btn>;
-			wakeup-source;
-		};
-	};
-
 	rt5651-sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "realtek,rt5651-codec";
@@ -208,12 +191,6 @@
 };
 
 &pinctrl {
-	buttons {
-		pwr_btn: pwr-btn {
-			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
 	sdio-pwrseq {
 		wifi_enable_h: wifi-enable-h {
 			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 21b05601f04a..6918eb2d1390 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -41,6 +41,7 @@
  */
 
 #include "dt-bindings/pwm/pwm.h"
+#include "dt-bindings/input/input.h"
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
 
@@ -102,6 +103,22 @@
 		regulator-max-microvolt = <12000000>;
 	};
 
+	keys: gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		power {
+			debounce-interval = <100>;
+			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
+			label = "GPIO Power";
+			linux,code = <KEY_POWER>;
+			linux,input-type = <1>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pwr_btn>;
+			wakeup-source;
+		};
+	};
+
 	/* switched by pmic_sleep */
 	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
 		compatible = "regulator-fixed";
@@ -475,6 +492,12 @@
 };
 
 &pinctrl {
+	buttons {
+		pwr_btn: pwr-btn {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
-- 
2.16.2
