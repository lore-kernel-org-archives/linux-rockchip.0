From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3] ARM: dts: rockchip: Add usb host0 ohci node for rk3288
Date: Mon, 20 Jul 2020 16:28:46 +0530
Message-ID: <20200720105846.367776-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>, William Wu <william.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

rk3288 and rk3288w have a usb host0 ohci controller.

Although rk3288 ohci doesn't actually work on hardware, but
rk3288w ohci can work well.

So add usb host0 ohci node in rk3288 dtsi and the quirk in
ohci platform driver will disable ohci on rk3288.

Cc: William Wu <william.wu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 arch/arm/boot/dts/rk3288.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 0cd88774db95..f0774d9afb67 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -614,7 +614,16 @@ usb_host0_ehci: usb@ff500000 {
 		status = "disabled";
 	};
 
-	/* NOTE: ohci@ff520000 doesn't actually work on hardware */
+	/* NOTE: doesn't work on RK3288, but fixed on RK3288W */
+	usb_host0_ohci: usb@ff520000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xff520000 0x0 0x100>;
+		interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USBHOST0>;
+		phys = <&usbphy1>;
+		phy-names = "usb";
+		status = "disabled";
+	};
 
 	usb_host1: usb@ff540000 {
 		compatible = "rockchip,rk3288-usb", "rockchip,rk3066-usb",
-- 
2.25.1
