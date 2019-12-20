From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v2 06/11] dt-bindings: memory: exynos5422-dmc: Replace the
 deprecated 'devfreq-events' property
Date: Fri, 20 Dec 2019 09:24:25 +0900
Message-ID: <20191220002430.11995-7-cw00.choi@samsung.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
        <CGME20191220001800epcas1p364322170854fdd171c43f6b1de2b61a4@epcas1p3.samsung.com>
Content-Type: text/plain; charset="utf-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: mark.rutland@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Replace the deprecated 'devfreq-events' property with 'exynos,ppmu-device'
property. But, to guarantee the backward-compatibility, keep the support
of 'devfreq-events' property.

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 .../bindings/memory-controllers/exynos5422-dmc.txt        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
index 02e4a1f862f1..fbecbcc00adb 100644
--- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
@@ -17,14 +17,14 @@ Required properties for DMC device for Exynos5422:
 - clock-names : should include "fout_spll", "mout_sclk_spll", "ff_dout_spll2",
   "fout_bpll", "mout_bpll", "sclk_bpll", "mout_mx_mspll_ccore",
   "mout_mclk_cdrex"  entries
-- devfreq-events : phandles for PPMU devices connected to this DMC.
+- exynos,ppmu-device : phandles for PPMU devices connected to this DMC.
 - vdd-supply : phandle for voltage regulator which is connected.
 - reg : registers of two CDREX controllers.
 - operating-points-v2 : phandle for OPPs described in v2 definition.
 - device-handle : phandle of the connected DRAM memory device. For more
 	information please refer to documentation file:
 	Documentation/devicetree/bindings/ddr/lpddr3.txt
-- devfreq-events : phandles of the PPMU events used by the controller.
+- exynos,ppmu-device : phandles of the PPMU events used by the controller.
 - samsung,syscon-clk : phandle of the clock register set used by the controller,
 	these registers are used for enabling a 'pause' feature and are not
 	exposed by clock framework but they must be used in a safe way.
@@ -73,8 +73,8 @@ Example:
 			      "mout_mx_mspll_ccore",
 			      "mout_mclk_cdrex";
 		operating-points-v2 = <&dmc_opp_table>;
-		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
-				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
+		exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
+				     <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
 		device-handle = <&samsung_K3QF2F20DB>;
 		vdd-supply = <&buck1_reg>;
 		samsung,syscon-clk = <&clock>;
-- 
2.17.1
