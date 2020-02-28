From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 3/3] ARM: dts: rockchip: add sram to bus_intmem nodename for rk3288
Date: Fri, 28 Feb 2020 16:53:54 +0100
Message-ID: <20200228155354.27206-3-jbx6244@gmail.com>
References: <20200228155354.27206-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200228155354.27206-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example these errors:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml:
bus_intmem@ff700000: $nodename:0: 'bus_intmem@ff700000'
does not match '^sram(@.*)?'
arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml:
bus_intmem@ff700000: $nodename:0: 'bus_intmem@ff700000'
does not match '^sram(@.*)?'

'rockchip-pmu-sram.txt' inherit properties from 'sram.yaml'.
Fix this error by adding 'sram' to the bus_intmem nodename
in 'rk3288.dtsi'. But 'sram' is also a node name already in use.
To prevent confusion rename it to 'pmu_sram'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 9beb66216..039e8aa70 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -718,7 +718,7 @@
 		status = "disabled";
 	};
 
-	bus_intmem@ff700000 {
+	bus_intmem: sram@ff700000 {
 		compatible = "mmio-sram";
 		reg = <0x0 0xff700000 0x0 0x18000>;
 		#address-cells = <1>;
@@ -730,7 +730,7 @@
 		};
 	};
 
-	sram@ff720000 {
+	pmu_sram: sram@ff720000 {
 		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
 		reg = <0x0 0xff720000 0x0 0x1000>;
 	};
-- 
2.11.0
