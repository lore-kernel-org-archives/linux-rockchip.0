From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/3] ARM: dts: rockchip: Fix vcc10_lcd name and voltage for rk3288-vyasa
Date: Thu, 23 Jan 2020 19:16:39 +0530
Message-ID: <20200123134641.30720-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

According to hardware schematics of Vyasa RK3288 the
actual name used for vcc10_lcd is vdd10_lcd.

regulator suspend voltage can rail upto 1.0V not 1.8V.

Fix the name and suspend voltage for vcc10_lcd regulator.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/rk3288-vyasa.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index ba06e9f97ddc..d2f79e5bee87 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -286,15 +286,15 @@
 				};
 			};
 
-			vcc10_lcd: LDO_REG6 {
-				regulator-name = "vcc10_lcd";
+			vdd10_lcd: LDO_REG6 {
+				regulator-name = "vdd10_lcd";
 				regulator-min-microvolt = <1000000>;
 				regulator-max-microvolt = <1000000>;
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-state-mem {
 					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
+					regulator-suspend-microvolt = <1000000>;
 				};
 			};
 
-- 
2.18.0.321.gffc6fa0e3
