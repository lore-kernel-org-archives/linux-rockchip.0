From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v3 2/2] ARM: dts: rockchip: fix yaml warnings for rk3288-pmu-sram compatible nodes
Date: Tue, 31 Mar 2020 14:13:52 +0200
Message-ID: <20200331121352.3825-2-jbx6244@gmail.com>
References: <20200331121352.3825-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200331121352.3825-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives for example these warnings:

arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#address-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'#size-cells' is a required property
arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
'ranges' is a required property

Fix this error by adding '#address-cells', '#size-cells' and
'ranges' to the 'rockchip,rk3288-pmu-sram' compatible node
in rk3288.dtsi.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Not tested with hardware.

Changed v2:
  Fix dtsi.
---
 arch/arm/boot/dts/rk3288.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 9c8741bb1..f102fec69 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -730,6 +730,9 @@
 	pmu_sram: sram@ff720000 {
 		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
 		reg = <0x0 0xff720000 0x0 0x1000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x0 0xff720000 0x1000>;
 	};
 
 	pmu: power-management@ff730000 {
-- 
2.11.0
