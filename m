From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v2 1/2] dt-bindings: modify document of Rockchip power domains
Date: Thu, 14 Apr 2016 10:10:55 +0800
Message-ID: <1460599856-4224-2-git-send-email-zhangqing@rock-chips.com>
References: <1460599856-4224-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1460599856-4224-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, khilman@baylibre.com, xf@rock-chips.com, wxt@rock-chips.com
Cc: linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add qos example for power domain which found on Rockchip SoCs.
These qos register description in TRMs
(rk3036, rk3228, rk3288, rk3366, rk3368, rk3399) looks the same.

Changes in v2:
	No Changes.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
index 98085c888d65..6c571a40cd31 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
+++ b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
@@ -21,6 +21,13 @@ Required properties for power domain sub nodes:
 - clocks (optional): phandles to clocks which need to be enabled while power domain
 	switches state.
 
+Qos Example:
+
+	qos_gpu: qos_gpu@ffaf0000 {
+		compatible ="syscon";
+		reg = <0x0 0xffaf0000 0x0 0x20>;
+	};
+
 Example:
 
 	power: power-controller {
@@ -32,6 +39,7 @@ Example:
 		pd_gpu {
 			reg = <RK3288_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
+			pm_qos = <&qos_gpu>;
 		};
 	};
 
-- 
1.9.1
