From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] dt-bindings: serial: snps-dw-apb-uart: add compatible property for rk3308 uart
Date: Mon,  2 Mar 2020 14:39:10 +0100
Message-ID: <20200302133910.10942-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-serial-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: serial@ff0d0000: compatible:
['rockchip,rk3308-uart', 'snps,dw-apb-uart']
is not valid under any of the given schemas
arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dt.yaml: serial@ff0a0000: compatible:
['rockchip,rk3308-uart', 'snps,dw-apb-uart']
is not valid under any of the given schemas

The compatible property for the Rockchip rk3308 uart was somehow never
added to the documention. Fix this error by adding 'rockchip,rk3308-uart'
to snps-dw-apb-uart.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/serial/
snps-dw-apb-uart.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index b42002542..b962f8db4 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -27,6 +27,7 @@ properties:
               - rockchip,rk3066-uart
               - rockchip,rk3188-uart
               - rockchip,rk3288-uart
+              - rockchip,rk3308-uart
               - rockchip,rk3328-uart
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
-- 
2.11.0
