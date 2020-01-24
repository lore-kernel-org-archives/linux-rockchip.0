From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v2 03/10] ARM: dts: rockchip: add nandc node for rk3066a/rk3188
Date: Fri, 24 Jan 2020 17:29:54 +0100
Message-ID: <20200124163001.28910-4-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: miquel.raynal@bootlin.com
Cc: richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com, yifeng.zhao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Chris Zhong <zyw@rock-chips.com>

Add nandc node for rk3066a/rk3188.

Signed-off-by: Chris Zhong <zyw@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 97307a405..221c30314 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -273,6 +273,15 @@
 		status = "disabled";
 	};
 
+	nandc: nand-controller@10500000 {
+		compatible = "rockchip,rk3066-nand-controller";
+		reg = <0x10500000 0x4000>;
+		interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC0>;
+		clock-names = "hclk_nandc";
+		status = "disabled";
+	};
+
 	pmu: pmu@20004000 {
 		compatible = "rockchip,rk3066-pmu", "syscon", "simple-mfd";
 		reg = <0x20004000 0x100>;
-- 
2.11.0
