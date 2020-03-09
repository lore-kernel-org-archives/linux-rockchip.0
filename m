From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [RFC PATCH] ARM: dts: rockchip: remove #dma-cells from dma client nodes for rv1108
Date: Mon,  9 Mar 2020 14:40:20 +0100
Message-ID: <20200309134020.14935-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

When we combine spi-rockchip.yaml and
spi-controller.yaml and add 'additionalProperties: false'
it gives for example this error:

arch/arm/boot/dts/rv1108-evb.dt.yaml: spi@10270000:
'#dma-cells' does not match any of the regexes:
'^.*@[0-9a-f]+$', '^slave$'

'#dma-cells' are not used for dma clients, so remove them all.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/spi/spi-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rv1108.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 59295babd..fda16f976 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -120,7 +120,6 @@
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&pdma 6>, <&pdma 7>;
-		#dma-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart2m0_xfer>;
 		status = "disabled";
@@ -136,7 +135,6 @@
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&pdma 4>, <&pdma 5>;
-		#dma-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart1_xfer>;
 		status = "disabled";
@@ -152,7 +150,6 @@
 		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&pdma 2>, <&pdma 3>;
-		#dma-cells = <2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
 		status = "disabled";
@@ -208,7 +205,6 @@
 		clock-names = "spiclk", "apb_pclk";
 		dmas = <&pdma 8>, <&pdma 9>;
 		dma-names = "tx", "rx";
-		#dma-cells = <2>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
-- 
2.11.0
