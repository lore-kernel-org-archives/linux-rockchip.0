From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/3] arm64: dts: rockchip: add bus-width properties to mmc nodes for rk3328.dtsi
Date: Thu, 16 Apr 2020 20:19:42 +0200
Message-ID: <20200416181944.5879-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

'bus-width' and pinctrl containing the bus-pins
should be in the same file, so add them to
all mmc nodes in 'rk3328.dtsi'.

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 175060695..db2c3085e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -861,6 +861,7 @@
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		status = "disabled";
@@ -873,6 +874,7 @@
 		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
 			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		status = "disabled";
@@ -885,6 +887,7 @@
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <8>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		status = "disabled";
-- 
2.11.0
