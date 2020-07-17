From: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v8 8/8] arm: dts: rockchip: Add NFC node for RK3036 SoC
Date: Fri, 17 Jul 2020 17:25:32 +0800
Message-ID: <20200717092532.19853-4-yifeng.zhao@rock-chips.com>
References: <20200717092420.19798-1-yifeng.zhao@rock-chips.com>
 <20200717092532.19853-1-yifeng.zhao@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200717092532.19853-1-yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Add NAND FLASH Controller(NFC) node for RK3036 SoC.

Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v8: None
Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/rk3036.dtsi | 52 +++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index d9a0c9a29b68..be8d46c0bbb0 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -291,6 +291,21 @@
 		status = "disabled";
 	};
 
+	nfc: nand-controller@10500000 {
+		compatible = "rockchip,rk3036-nfc",
+			     "rockchip,rk2928-nfc";
+		reg = <0x10500000 0x4000>;
+		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
+		clock-names = "ahb", "nfc";
+		assigned-clocks = <&cru SCLK_NANDC>;
+		assigned-clock-rates = <150000000>;
+		pinctrl-0 = <&flash_ale &flash_bus8 &flash_cle &flash_csn0
+			     &flash_rdn &flash_rdy &flash_wrn>;
+		pinctrl-names = "default";
+		status = "disabled";
+	};
+
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3036-cru";
 		reg = <0x20000000 0x1000>;
@@ -642,6 +657,43 @@
 			};
 		};
 
+		nfc {
+			flash_ale: flash-ale {
+				rockchip,pins = <2 RK_PA0 1 &pcfg_pull_default>;
+			};
+
+			flash_bus8: flash-bus8 {
+				rockchip,pins = <1 RK_PD0 1 &pcfg_pull_default>,
+						<1 RK_PD1 1 &pcfg_pull_default>,
+						<1 RK_PD2 1 &pcfg_pull_default>,
+						<1 RK_PD3 1 &pcfg_pull_default>,
+						<1 RK_PD4 1 &pcfg_pull_default>,
+						<1 RK_PD5 1 &pcfg_pull_default>,
+						<1 RK_PD6 1 &pcfg_pull_default>,
+						<1 RK_PD7 1 &pcfg_pull_default>;
+			};
+
+			flash_cle: flash-cle {
+				rockchip,pins = <2 RK_PA1 1 &pcfg_pull_default>;
+			};
+
+			flash_csn0: flash-csn0 {
+				rockchip,pins = <2 RK_PA6 1 &pcfg_pull_default>;
+			};
+
+			flash_rdn: flash-rdn {
+				rockchip,pins = <2 RK_PA3 1 &pcfg_pull_default>;
+			};
+
+			flash_rdy: flash-rdy {
+				rockchip,pins = <2 RK_PA4 1 &pcfg_pull_default>;
+			};
+
+			flash_wrn: flash-wrn {
+				rockchip,pins = <2 RK_PA2 1 &pcfg_pull_default>;
+			};
+		};
+
 		emac {
 			emac_xfer: emac-xfer {
 				rockchip,pins = <2 RK_PB2 1 &pcfg_pull_default>, /* crs_dvalid */
-- 
2.17.1
