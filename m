From: Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v5 05/16] arm64: dts: rk3399: Move u2phy into root port
Date: Wed, 13 May 2020 15:15:35 +0800
Message-ID: <20200513071546.5560-1-frank.wang@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200513071344.5430-1-frank.wang@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Jagan Teki <jagan@amarulasolutions.com>

Yes, This is changing the actual device tree u2phy
structure but the problem with the current Generic
PHY subsystem is unable to find PHY if the PHY node
is not part of the root structure.

This will be reverted,
- Once we support the PHY subsystem to get the PHY
  even though it is not part of the root node or
- any other relevant solution that get the phy
  directly without traversing all nodes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399.dtsi | 108 +++++++++++++++++++--------------------
 1 file changed, 54 insertions(+), 54 deletions(-)

diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
index 74f2c3d490..6c77f25f23 100644
--- a/arch/arm/dts/rk3399.dtsi
+++ b/arch/arm/dts/rk3399.dtsi
@@ -1387,60 +1387,6 @@
 			status = "disabled";
 		};
 
-		u2phy0: usb2-phy@e450 {
-			compatible = "rockchip,rk3399-usb2phy";
-			reg = <0xe450 0x10>;
-			clocks = <&cru SCLK_USB2PHY0_REF>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-			clock-output-names = "clk_usbphy0_480m";
-			status = "disabled";
-
-			u2phy0_host: host-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "linestate";
-				status = "disabled";
-			};
-
-			u2phy0_otg: otg-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "otg-bvalid", "otg-id",
-						  "linestate";
-				status = "disabled";
-			};
-		};
-
-		u2phy1: usb2-phy@e460 {
-			compatible = "rockchip,rk3399-usb2phy";
-			reg = <0xe460 0x10>;
-			clocks = <&cru SCLK_USB2PHY1_REF>;
-			clock-names = "phyclk";
-			#clock-cells = <0>;
-			clock-output-names = "clk_usbphy1_480m";
-			status = "disabled";
-
-			u2phy1_host: host-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "linestate";
-				status = "disabled";
-			};
-
-			u2phy1_otg: otg-port {
-				#phy-cells = <0>;
-				interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
-					     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
-				interrupt-names = "otg-bvalid", "otg-id",
-						  "linestate";
-				status = "disabled";
-			};
-		};
-
 		emmc_phy: phy@f780 {
 			compatible = "rockchip,rk3399-emmc-phy";
 			reg = <0xf780 0x24>;
@@ -1462,6 +1408,60 @@
 		};
 	};
 
+	u2phy0: usb2-phy@e450 {
+		compatible = "rockchip,rk3399-usb2phy";
+		reg = <0x0 0xe450 0x0 0x10>;
+		clocks = <&cru SCLK_USB2PHY0_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		clock-output-names = "clk_usbphy0_480m";
+		status = "disabled";
+
+		u2phy0_host: host-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "linestate";
+			status = "disabled";
+		};
+
+		u2phy0_otg: otg-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "otg-bvalid", "otg-id",
+					  "linestate";
+			status = "disabled";
+		};
+	};
+
+	u2phy1: usb2-phy@e460 {
+		compatible = "rockchip,rk3399-usb2phy";
+		reg = <0x0 0xe460 0x0 0x10>;
+		clocks = <&cru SCLK_USB2PHY1_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		clock-output-names = "clk_usbphy1_480m";
+		status = "disabled";
+
+		u2phy1_host: host-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "linestate";
+			status = "disabled";
+		};
+
+		u2phy1_otg: otg-port {
+			#phy-cells = <0>;
+			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
+			interrupt-names = "otg-bvalid", "otg-id",
+					  "linestate";
+			status = "disabled";
+		};
+	};
+
 	tcphy0: phy@ff7c0000 {
 		compatible = "rockchip,rk3399-typec-phy";
 		reg = <0x0 0xff7c0000 0x0 0x40000>;
-- 
2.17.1
