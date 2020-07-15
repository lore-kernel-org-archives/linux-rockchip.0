From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v6 2/7] arm64: dts: rk3399pro: vmarc-som: Fix sorting nodes, properties
Date: Wed, 15 Jul 2020 14:04:13 +0530
Message-ID: <20200715083418.112003-3-jagan@amarulasolutions.com>
References: <20200715083418.112003-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200715083418.112003-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Fix node, properties sorting on RockPI N10 board dts(i) files.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
Changes for v6:
- spilt of previous version Trivial patch

 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |  2 +-
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 35 +++++++++----------
 2 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
index a1783e7f769a..539f4005386d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
@@ -8,8 +8,8 @@
 /dts-v1/;
 #include "rk3399.dtsi"
 #include "rk3399-opp.dtsi"
-#include "rk3399pro-vmarc-som.dtsi"
 #include <arm/rockchip-radxa-dalang-carrier.dtsi>
+#include "rk3399pro-vmarc-som.dtsi"
 
 / {
 	model = "Radxa ROCK Pi N10";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index e11538171e67..121a430d6a70 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -76,8 +76,8 @@ &gmac {
 
 &i2c0 {
 	clock-frequency = <400000>;
-	i2c-scl-rising-time-ns = <180>;
 	i2c-scl-falling-time-ns = <30>;
+	i2c-scl-rising-time-ns = <180>;
 	status = "okay";
 
 	rk809: pmic@20 {
@@ -323,8 +323,22 @@ hym8563: hym8563@51 {
 &io_domains {
 	status = "okay";
 	bt656-supply = <&vcca_1v8>;
-	sdmmc-supply = <&vccio_sd>;
 	gpio1830-supply = <&vccio_3v0>;
+	sdmmc-supply = <&vccio_sd>;
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <4 RK_PD6 0 &pcfg_pull_up>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <1 RK_PC2 0 &pcfg_pull_up>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -341,22 +355,7 @@ &sdhci {
 };
 
 &tsadc {
-	status = "okay";
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <1>;
-};
-
-&pinctrl {
-	hym8563 {
-		hym8563_int: hym8563-int {
-			rockchip,pins = <4 RK_PD6 0 &pcfg_pull_up>;
-		};
-	};
-
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins =
-				<1 RK_PC2 0 &pcfg_pull_up>;
-		};
-	};
+	status = "okay";
 };
-- 
2.25.1
