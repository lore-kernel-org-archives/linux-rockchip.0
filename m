From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v5 2/2] dt-bindings: display: rockchip-vop: add additional properties
Date: Fri,  3 Apr 2020 16:22:35 +0200
Message-ID: <20200403142235.8870-2-jbx6244@gmail.com>
References: <20200403142235.8870-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200403142235.8870-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like 'assigned-clocks' and
'assigned-clock-rates' for rk3399 and 'power-domains' for most
Rockchip Socs in 'vop' nodes, so add them to 'rockchip-vop.yaml'.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
Changes v5:
  Add reviewed by
---
 .../devicetree/bindings/display/rockchip/rockchip-vop.yaml    | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
index 42ee2b5c3..1695e3e4b 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
@@ -75,9 +75,18 @@ properties:
       A port node with endpoint definitions as defined in
       Documentation/devicetree/bindings/media/video-interfaces.txt.
 
+  assigned-clocks:
+    maxItems: 2
+
+  assigned-clock-rates:
+    maxItems: 2
+
   iommus:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -94,6 +103,7 @@ examples:
   - |
     #include <dt-bindings/clock/rk3288-cru.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3288-power.h>
     vopb: vopb@ff930000 {
       compatible = "rockchip,rk3288-vop";
       reg = <0x0 0xff930000 0x0 0x19c>,
@@ -103,6 +113,7 @@ examples:
                <&cru DCLK_VOP0>,
                <&cru HCLK_VOP0>;
       clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
+      power-domains = <&power RK3288_PD_VIO>;
       resets = <&cru SRST_LCDC1_AXI>,
                <&cru SRST_LCDC1_AHB>,
                <&cru SRST_LCDC1_DCLK>;
-- 
2.11.0
