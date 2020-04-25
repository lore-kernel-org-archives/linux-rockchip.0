From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] dt-bindings: usb: dwc2: add power-domains property
Date: Sat, 25 Apr 2020 19:08:33 +0200
Message-ID: <20200425170833.26718-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: usb@ff300000:
'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'

With the conversion to yaml it also filters things
in a node that are used by other drivers like
'power-domains' for Rockchip px30 usb nodes,
so add them to 'dwc2.yaml'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index fb2f62aef..9352a8ef6 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -78,6 +78,9 @@ properties:
   phy-names:
     const: usb2-phy
 
+  power-domains:
+    maxItems: 1
+
   vbus-supply:
     description: reference to the VBUS regulator. Depending on the current mode
       this is enabled (in "host" mode") or disabled (in "peripheral" mode). The
-- 
2.11.0
