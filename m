From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH v1 2/5] ARM: dts: rockchip: fix rockchip,default-sample-phase property names
Date: Sat,  7 Mar 2020 14:48:38 +0100
Message-ID: <20200307134841.13803-2-jbx6244@gmail.com>
References: <20200307134841.13803-1-jbx6244@gmail.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200307134841.13803-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "synopsys-dw-mshc-common.yaml#"
allOf:
  - $ref: "mmc-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine rockchip-dw-mshc.yaml,
synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
for example this error:

arch/arm/boot/dts/rk3036-evb.dt.yaml: mmc@1021c000:
'default-sample-phase' does not match any of the regexes:
'^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'

'default-sample-phase' is not a valid property name for mmc nodes.
Fix this error by renaming it to 'rockchip,default-sample-phase'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 arch/arm/boot/dts/rk3036-kylin.dts | 2 +-
 arch/arm/boot/dts/rk3036.dtsi      | 2 +-
 arch/arm/boot/dts/rk322x.dtsi      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index fb3cf005c..2ff9f152d 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -319,7 +319,7 @@
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
-	default-sample-phase = <90>;
+	rockchip,default-sample-phase = <90>;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index c28d293df..2226f0d70 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -263,7 +263,7 @@
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
-		default-sample-phase = <158>;
+		rockchip,default-sample-phase = <158>;
 		disable-wp;
 		dmas = <&pdma 12>;
 		dma-names = "rx-tx";
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index b98579035..8ad44213f 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -698,7 +698,7 @@
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		bus-width = <8>;
-		default-sample-phase = <158>;
+		rockchip,default-sample-phase = <158>;
 		fifo-depth = <0x100>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
-- 
2.11.0
