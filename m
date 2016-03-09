From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v6 5/6] dt/bindings: rockchip: modify document of Rockchip power domains
Date: Thu, 10 Mar 2016 05:02:37 +0800
Message-ID: <1457557357-21423-1-git-send-email-zhangqing@rock-chips.com>
References: <1457557241-21297-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1457557241-21297-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, khilman@baylibre.com, xf@rock-chips.com, wxt@rock-chips.com
Cc: linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add binding documentation for the power domains
found on Rockchip RK3399 SoCs

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 .../bindings/soc/rockchip/power_domain.txt         | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
index 13dc6a3..98085c8 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
+++ b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
@@ -7,6 +7,7 @@ Required properties for power domain controller:
 - compatible: Should be one of the following.
 	"rockchip,rk3288-power-controller" - for RK3288 SoCs.
 	"rockchip,rk3368-power-controller" - for RK3368 SoCs.
+	"rockchip,rk3399-power-controller" - for RK3399 SoCs.
 - #power-domain-cells: Number of cells in a power-domain specifier.
 	Should be 1 for multiple PM domains.
 - #address-cells: Should be 1.
@@ -16,6 +17,7 @@ Required properties for power domain sub nodes:
 - reg: index of the power domain, should use macros in:
 	"include/dt-bindings/power/rk3288-power.h" - for RK3288 type power domain.
 	"include/dt-bindings/power/rk3368-power.h" - for RK3368 type power domain.
+	"include/dt-bindings/power/rk3399-power.h" - for RK3399 type power domain.
 - clocks (optional): phandles to clocks which need to be enabled while power domain
 	switches state.
 
@@ -45,12 +47,41 @@ Example:
                 };
         };
 
+Example 2:
+		power: power-controller {
+			compatible = "rockchip,rk3399-power-controller";
+			#power-domain-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			pd_vio {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <RK3399_PD_VIO>;
+
+				pd_vo {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <RK3399_PD_VO>;
+
+					pd_vopb {
+						reg = <RK3399_PD_VOPB>;
+					};
+
+					pd_vopl {
+						reg = <RK3399_PD_VOPL>;
+					};
+				};
+			};
+		};
+
 Node of a device using power domains must have a power-domains property,
 containing a phandle to the power device node and an index specifying which
 power domain to use.
 The index should use macros in:
 	"include/dt-bindings/power/rk3288-power.h" - for rk3288 type power domain.
 	"include/dt-bindings/power/rk3368-power.h" - for rk3368 type power domain.
+	"include/dt-bindings/power/rk3399-power.h" - for rk3399 type power domain.
 
 Example of the node using power domain:
 
@@ -65,3 +96,9 @@ Example of the node using power domain:
                 power-domains = <&power RK3368_PD_GPU_1>;
                 /* ... */
         };
+
+	node {
+		/* ... */
+		power-domains = <&power RK3399_PD_VOPB>;
+		/* ... */
+	};
-- 
1.9.1
