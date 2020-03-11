From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v2 2/2] dt-bindings: usb: dwc2: add compatible property for rk3368 usb
Date: Wed, 11 Mar 2020 13:21:21 +0100
Message-ID: <20200311122121.8912-2-jbx6244@gmail.com>
References: <20200311122121.8912-1-jbx6244@gmail.com>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200311122121.8912-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml: usb@ff580000:
compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas

The compatible property for rk3368 dwc2 usb was somehow never added to
the documention. Fix this error by adding
'rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
to dwc2.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
Changes v2:
  Combine compatible properties with enum.
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index d8d3c7c22..4eda7f221 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -25,6 +25,7 @@ properties:
             - rockchip,rk3228-usb
             - rockchip,rk3288-usb
             - rockchip,rk3328-usb
+            - rockchip,rk3368-usb
             - rockchip,rv1108-usb
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
-- 
2.11.0
