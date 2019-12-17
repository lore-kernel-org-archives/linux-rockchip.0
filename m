From: Akash Gajjar <akash@openedev.com>
Subject: [PATCH 1/2] arch: arm64: rockchip: add usb node for RK3308
Date: Tue, 17 Dec 2019 13:27:14 +0530
Message-ID: <20191217075722.11646-2-akash@openedev.com>
References: <20191217075722.11646-1-akash@openedev.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191217075722.11646-1-akash@openedev.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: jagan@openedev.com, tom@radxa.com, kever.yang@rock-chips.com, Akash Gajjar <akash@openedev.com>, Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add the ehci/ochi usb node support for the RK3308 soc.

Signed-off-by: Akash Gajjar <akash@openedev.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 49 ++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 8bdc66c62975..4e51362b5373 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -243,6 +243,33 @@
 		status = "disabled";
 	};
 
+	usb2phy_grf: syscon@ff008000 {
+		compatible = "rockchip,rk3308-usb2phy-grf", "syscon",
+			"simple-mfd";
+		reg = <0x0 0xff008000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		u2phy: usb2-phy@100 {
+			compatible = "rockchip,rk3308-usb2phy";
+			reg = <0x100 0x10>;
+			clocks = <&cru SCLK_USBPHY_REF>;
+			clock-names = "phyclk";
+			#clock-cells = <0>;
+			assigned-clocks = <&cru USB480M>;
+			assigned-clock-parents = <&u2phy>;
+			clock-output-names = "usb480m_phy";
+			status = "disabled";
+
+			u2phy_host: host-port {
+				#phy-cells = <0>;
+				interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "linestate";
+				status = "disabled";
+			};
+		};
+	};
+
 	wdt: watchdog@ff080000 {
 		compatible = "snps,dw-wdt";
 		reg = <0x0 0xff080000 0x0 0x100>;
@@ -584,6 +611,28 @@
 		status = "disabled";
 	};
 
+	usb_host_ehci: usb@ff440000 {
+		compatible = "generic-ehci";
+		reg = <0x0 0xff440000 0x0 0x10000>;
+		interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
+		clock-names = "usbhost", "arbiter", "utmi";
+		phys = <&u2phy_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host_ohci: usb@ff450000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xff450000 0x0 0x10000>;
+		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
+		clock-names = "usbhost", "arbiter", "utmi";
+		phys = <&u2phy_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
 	sdmmc: dwmmc@ff480000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff480000 0x0 0x4000>;
-- 
2.17.1
