From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v2 09/10] arm64: dts: rockchip: add nandc node for rk3368
Date: Fri, 24 Jan 2020 17:30:00 +0100
Message-ID: <20200124163001.28910-10-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: miquel.raynal@bootlin.com
Cc: richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com, yifeng.zhao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Zhaoyifeng <zyf@rock-chips.com>

Add nandc node for rk3368.

Signed-off-by: Zhaoyifeng <zyf@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index fd8618801..22a1feed5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -508,6 +508,15 @@
 		status = "disabled";
 	};
 
+	nandc: nand-controller@ff400000 {
+		compatible = "rockchip,rk3368-nand-controller";
+		reg = <0x0 0xff400000 0x0 0x4000>;
+		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC0>, <&cru SCLK_NANDC0>;
+		clock-names = "hclk_nandc", "clk_nandc";
+		status = "disabled";
+	};
+
 	usb_host0_ehci: usb@ff500000 {
 		compatible = "generic-ehci";
 		reg = <0x0 0xff500000 0x0 0x100>;
-- 
2.11.0
