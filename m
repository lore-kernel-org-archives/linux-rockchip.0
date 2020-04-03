From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 2/2] dt-bindings: media: rockchip-rga: add power-domains property
Date: Fri,  3 Apr 2020 15:06:07 +0200
Message-ID: <20200403130607.6138-2-jbx6244@gmail.com>
References: <20200403130607.6138-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200403130607.6138-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: jacob-chen@iotwrt.com
Cc: ezequiel@collabora.com, mchehab@kernel.org, robh+dt@kernel.org, heiko@sntech.de, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'power-domains' for rk3399,
so add it to 'rockchip-rga.yaml'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index 3b110b574..dd645ddcc 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -39,6 +39,9 @@ properties:
       - const: hclk
       - const: sclk
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 3
 
@@ -63,6 +66,7 @@ examples:
   - |
     #include <dt-bindings/clock/rk3399-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3399-power.h>
     rga: rga@ff680000 {
       compatible = "rockchip,rk3399-rga";
       reg = <0xff680000 0x10000>;
@@ -71,6 +75,7 @@ examples:
                <&cru HCLK_RGA>,
                <&cru SCLK_RGA_CORE>;
       clock-names = "aclk", "hclk", "sclk";
+      power-domains = <&power RK3399_PD_RGA>;
       resets = <&cru SRST_RGA_CORE>,
                <&cru SRST_A_RGA>,
                <&cru SRST_H_RGA>;
-- 
2.11.0
