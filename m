From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v2 04/11] dt-bindings: devfreq: exynos-bus: Replace
 deprecated 'devfreq' and 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:23 +0900
Message-ID: <20191220002430.11995-5-cw00.choi@samsung.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
        <CGME20191220001759epcas1p3051f7916542b7234aac5273e0baab83b@epcas1p3.samsung.com>
Content-Type: text/plain; charset="utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: mark.rutland@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

In order to remove the deprecated 'devfreq' and 'devfreq-events' property,
replace with new following properties
- Replace 'devfreq' with 'exynos,parent-bus' property
- Replace 'devfreq-events' with 'exynos,ppmu-device' property

Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../bindings/devfreq/exynos-bus.txt           | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
index e71f752cc18f..c6c2dd0e77c8 100644
--- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
+++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
@@ -41,11 +41,11 @@ Required properties for all bus devices:
 
 Required properties only for parent bus device:
 - vdd-supply: the regulator to provide the buses with the voltage.
-- devfreq-events: the devfreq-event device to monitor the current utilization
+- exynos,ppmu-device: the devfreq-event device to monitor the current utilization
   of buses.
 
 Required properties only for passive bus device:
-- devfreq: the parent bus device.
+- exynos,parent-bus: the parent bus device.
 
 Optional properties only for parent bus device:
 - exynos,saturation-ratio: the percentage value which is used to calibrate
@@ -374,48 +374,48 @@ Example2 :
 	in exynos3250-rinato.dts is listed below:
 
 	&bus_dmc {
-		devfreq-events = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
+		exynos,ppmu-device = <&ppmu_dmc0_3>, <&ppmu_dmc1_3>;
 		vdd-supply = <&buck1_reg>;	/* VDD_MIF */
 		status = "okay";
 	};
 
 	&bus_leftbus {
-		devfreq-events = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
+		exynos,ppmu-device = <&ppmu_leftbus_3>, <&ppmu_rightbus_3>;
 		vdd-supply = <&buck3_reg>;
 		status = "okay";
 	};
 
 	&bus_rightbus {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_lcd0 {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_fsys {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_mcuisp {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_isp {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_peril {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
 
 	&bus_mfc {
-		devfreq = <&bus_leftbus>;
+		exynos,parent-bus = <&bus_leftbus>;
 		status = "okay";
 	};
-- 
2.17.1
