From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: remove max-freq from &spi1 node for Hugsun X99
Date: Mon,  9 Mar 2020 13:51:45 +0100
Message-ID: <20200309125145.14455-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "spi-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine spi-rockchip.yaml and
spi-controller.yaml it gives this error:

arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: spi@ff1d0000:
'max-freq' does not match any of the regexes:
'^.*@[0-9a-f]+$', '^slave$'

'max-freq' is not a valid property name for spi nodes,
so remove it.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/spi/spi-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index f2ffee639..ee4867fbe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -610,7 +610,6 @@
 
 &spi1 {
 	status = "okay";
-	max-freq = <10000000>;
 
 	flash@0 {
 		compatible = "jedec,spi-nor";
-- 
2.11.0
