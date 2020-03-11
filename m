From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2 1/2] dt-bindings: usb: dwc2: add compatible property for rk3328 usb
Date: Wed, 11 Mar 2020 13:21:20 +0100
Message-ID: <20200311122121.8912-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff580000:
compatible:
['rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas

The compatible property for rk3328 dwc2 usb was somehow never added to
the documention. Fix this error by adding
'rockchip,rk3328-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
to dwc2.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
Changes v2:
  Combine compatible properties with enum.
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 29 +++++++------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index e95ba9373..d8d3c7c22 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -18,27 +18,14 @@ properties:
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
       - items:
-          - const: rockchip,px30-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rk3036-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rv1108-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rk3188-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rk3228-usb
-          - const: rockchip,rk3066-usb
-          - const: snps,dwc2
-      - items:
-          - const: rockchip,rk3288-usb
+          - enum:
+            - rockchip,px30-usb
+            - rockchip,rk3036-usb
+            - rockchip,rk3188-usb
+            - rockchip,rk3228-usb
+            - rockchip,rk3288-usb
+            - rockchip,rk3328-usb
+            - rockchip,rv1108-usb
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
       - const: lantiq,arx100-usb
-- 
2.11.0
