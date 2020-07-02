From: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 3/9] media: staging: dt-bindings: rkisp1: re-order properties
Date: Thu,  2 Jul 2020 13:54:04 -0300
Message-ID: <20200702165410.2583375-4-helen.koike@collabora.com>
References: <20200702165410.2583375-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200702165410.2583375-1-helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Organize properties order in dt-binbings to move it out of staging.

On top: compatible, reg and interrupts.
Then alphabetical order, then properties starting with '#'.

Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

---
V3: none

V2:
- this is a new patch in the series
---
 .../bindings/media/rockchip-isp1.yaml         | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 8c7904845788d..e5b9c0574e352 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -23,19 +23,6 @@ properties:
   interrupts:
     maxItems: 1
 
-  iommus:
-    maxItems: 1
-
-  power-domains:
-    maxItems: 1
-
-  phys:
-    maxItems: 1
-    description: phandle for the PHY port
-
-  phy-names:
-    const: dphy
-
   clocks:
     items:
       - description: ISP clock
@@ -52,6 +39,19 @@ properties:
       - const: hclk_isp
       - const: hclk_isp_wrap
 
+  iommus:
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+    description: phandle for the PHY port
+
+  phy-names:
+    const: dphy
+
+  power-domains:
+    maxItems: 1
+
   # See ./video-interfaces.txt for details
   ports:
     type: object
@@ -110,10 +110,10 @@ required:
   - interrupts
   - clocks
   - clock-names
-  - power-domains
   - iommus
   - phys
   - phy-names
+  - power-domains
   - ports
 
 additionalProperties: false
@@ -139,19 +139,19 @@ examples:
             clock-names = "clk_isp",
                           "aclk_isp", "aclk_isp_wrap",
                           "hclk_isp", "hclk_isp_wrap";
-            power-domains = <&power RK3399_PD_ISP0>;
             iommus = <&isp0_mmu>;
             phys = <&dphy>;
             phy-names = "dphy";
+            power-domains = <&power RK3399_PD_ISP0>;
 
             ports {
                 #address-cells = <1>;
                 #size-cells = <0>;
 
                 port@0 {
+                    reg = <0>;
                     #address-cells = <1>;
                     #size-cells = <0>;
-                    reg = <0>;
 
                     mipi_in_wcam: endpoint@0 {
                         reg = <0>;
-- 
2.26.0
