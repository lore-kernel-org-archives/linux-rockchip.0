From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v3 6/6] dt/bindings: rockchip: modify document of Rockchip
 power domains
Date: Thu, 25 Feb 2016 10:16:32 +0800
Message-ID: <1456366592-10982-1-git-send-email-zhangqing@rock-chips.com>
References: <1456366337-10808-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1456366337-10808-1-git-send-email-zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add binding documentation for the power domains
found on Rockchip RK3399 SoCs

Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 .../bindings/soc/rockchip/power_domain.txt         | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
index 13dc6a3..9eb43fa 100644
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
 
@@ -45,12 +47,45 @@ Example:
                 };
         };
 
+Example 2:
+
+	power: power-controller {
+		compatible = "rockchip,rk3399-power-controller";
+		#power-domain-cells = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/*parent domain*/
+		pd_vio {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <RK3399_PD_VIO>;
+
+			/*child domain of pd_vio*/
+			pd_vo {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <RK3399_PD_VO>;
+
+				/*child domain of pd_vo*/
+				pd_vopb {
+					reg = <RK3399_PD_VOPB>;
+				};
+
+				pd_vopl {
+					reg = <RK3399_PD_VOPL>;
+				};
+			};
+		};
+	};
+
 Node of a device using power domains must have a power-domains property,
 containing a phandle to the power device node and an index specifying which
 power domain to use.
 The index should use macros in:
 	"include/dt-bindings/power/rk3288-power.h" - for rk3288 type power domain.
 	"include/dt-bindings/power/rk3368-power.h" - for rk3368 type power domain.
+	"include/dt-bindings/power/rk3399-power.h" - for rk3399 type power domain.
 
 Example of the node using power domain:
 
@@ -65,3 +100,9 @@ Example of the node using power domain:
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
