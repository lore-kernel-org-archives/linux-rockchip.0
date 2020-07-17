From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH v8 4/8] arm64: dts: rockchip: Add NFC node for RK3308 SoC
Date: Fri, 17 Jul 2020 17:24:20 +0800
Message-ID: <20200717092420.19798-5-yifeng.zhao@rock-chips.com>
References: <20200717092420.19798-1-yifeng.zhao@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200717092420.19798-1-yifeng.zhao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Yifeng Zhao <zyf@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: Yifeng Zhao <zyf@rock-chips.com>

Add NAND FLASH Controller(NFC) node for RK3308 SoC.

Signed-off-by: Yifeng Zhao <zyf@rock-chips.com>
Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
---

Changes in v8: None
Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 507c6353f842..dea63a649111 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -627,6 +627,21 @@
 		status = "disabled";
 	};
 
+	nfc: nand-controller@ff4b0000 {
+		compatible = "rockchip,rk3308-nfc",
+			     "rockchip,rv1108-nfc";
+		reg = <0x0 0xff4b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
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
 	cru: clock-controller@ff500000 {
 		compatible = "rockchip,rk3308-cru";
 		reg = <0x0 0xff500000 0x0 0x1000>;
-- 
2.17.1
