From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/3] ARM: dts: rockchip: add sram to bus_intmem nodename for rk3036
Date: Fri, 28 Feb 2020 16:53:53 +0100
Message-ID: <20200228155354.27206-2-jbx6244@gmail.com>
References: <20200228155354.27206-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200228155354.27206-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives these errors:

arch/arm/boot/dts/rk3036-evb.dt.yaml:
bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
does not match '^sram(@.*)?'
arch/arm/boot/dts/rk3036-kylin.dt.yaml:
bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
does not match '^sram(@.*)?'

Fix this error by adding sram to the bus_intmem nodename
in rk3036.dtsi.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index cf36e2519..b62138563 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -101,7 +101,7 @@
 		#clock-cells = <0>;
 	};
 
-	bus_intmem@10080000 {
+	bus_intmem: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x2000>;
 		#address-cells = <1>;
-- 
2.11.0
