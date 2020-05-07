From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v1] ASoC: rockchip-i2s: add description for rk3308
Date: Thu,  7 May 2020 13:32:38 +0200
Message-ID: <20200507113238.7904-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The description below is already in use for rk3308.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3308-i2s", "rockchip,rk3066-i2s"
for i2s nodes on a rk3308 platform to rockchip-i2s.yaml.
One of the rk3308 i2s nodes also has a different dma layout,
so change that as well.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
The rk3308 i2s nodes also contain the properties
"reset-names" and "resets". Code in the manufacturer tree is
not yet applied in the mainline kernel, so skip them for now.
---
 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index a3ba2186d..10f9d3ad0 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -24,6 +24,7 @@ properties:
             - rockchip,rk3188-i2s
             - rockchip,rk3228-i2s
             - rockchip,rk3288-i2s
+            - rockchip,rk3308-i2s
             - rockchip,rk3328-i2s
             - rockchip,rk3366-i2s
             - rockchip,rk3368-i2s
@@ -47,14 +48,15 @@ properties:
       - const: i2s_hclk
 
   dmas:
-    items:
-      - description: TX DMA Channel
-      - description: RX DMA Channel
+    minItems: 1
+    maxItems: 2
 
   dma-names:
-    items:
-      - const: tx
+    oneOf:
       - const: rx
+      - items:
+        - const: tx
+        - const: rx
 
   power-domains:
     maxItems: 1
-- 
2.11.0
