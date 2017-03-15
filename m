From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: add amba node support for RK3368 SoCs
Date: Wed, 15 Mar 2017 14:17:00 +0800
Message-ID: <1489558620-24098-1-git-send-email-jay.xu@rock-chips.com>
References: <1489558443-23914-1-git-send-email-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1489558443-23914-1-git-send-email-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: broonie@kernel.org, huangtao@rock-chips.com, wxt@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

There are two dmacs found on RK3368 SoCs, peripher dmac and bus dmac,
and the dmacs are same as previous SoCs' dmac.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a6eb3e4..90f72c2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -204,6 +204,37 @@
 				     <&cpu_b2>, <&cpu_b3>;
 	};
 
+	amba {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		dmac_peri: dma-controller@ff250000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x0 0xff250000 0x0 0x4000>;
+			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			clocks = <&cru ACLK_DMAC_PERI>;
+			clock-names = "apb_pclk";
+			arm,pl330-broken-no-flushp;
+			peripherals-req-type-burst;
+		};
+
+		dmac_bus: dma-controller@ff600000 {
+			compatible = "arm,pl330", "arm,primecell";
+			reg = <0x0 0xff600000 0x0 0x4000>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			clocks = <&cru ACLK_DMAC_BUS>;
+			clock-names = "apb_pclk";
+			arm,pl330-broken-no-flushp;
+			peripherals-req-type-burst;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
-- 
1.9.1
