From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: add i2s nodes support for RK3368 SoCs
Date: Wed, 15 Mar 2017 14:15:57 +0800
Message-ID: <1489558557-24051-1-git-send-email-jay.xu@rock-chips.com>
References: <1489558443-23914-1-git-send-email-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1489558443-23914-1-git-send-email-jay.xu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: broonie@kernel.org, huangtao@rock-chips.com, wxt@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

I2S of RK3368 SoCs keep same as RK3066 SoCs found on Rockchip,
add nodes to support them.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 38 ++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a635adc..a6eb3e4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -684,6 +684,30 @@
 		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	i2s0: i2s0@ff890000 {
+		compatible = "rockchip,rk3368-i2s", "rockchip,rk3066-i2s";
+		reg = <0x0 0xff890000 0x0 0x1000>;
+		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		dmas = <&dmac_bus 6>, <&dmac_bus 7>;
+		dma-names = "tx", "rx";
+		clock-names = "i2s_clk", "i2s_hclk";
+		clocks = <&cru SCLK_I2S_2CH>, <&cru HCLK_I2S_2CH>;
+		status = "disabled";
+	};
+
+	i2s1: i2s1@ff898000 {
+		compatible = "rockchip,rk3368-i2s", "rockchip,rk3066-i2s";
+		reg = <0x0 0xff898000 0x0 0x1000>;
+		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+		dmas = <&dmac_bus 0>, <&dmac_bus 1>;
+		dma-names = "tx", "rx";
+		clock-names = "i2s_clk", "i2s_hclk";
+		clocks = <&cru SCLK_I2S_8CH>, <&cru HCLK_I2S_8CH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s1>;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@ffb71000 {
 		compatible = "arm,gic-400";
 		interrupt-controller;
@@ -886,6 +910,20 @@
 			};
 		};
 
+		i2s {
+			i2s1: i2s1 {
+				rockchip,pins = <2 12 RK_FUNC_1 &pcfg_pull_none>,
+						<2 13 RK_FUNC_1 &pcfg_pull_none>,
+						<2 14 RK_FUNC_1 &pcfg_pull_none>,
+						<2 15 RK_FUNC_1 &pcfg_pull_none>,
+						<2 16 RK_FUNC_1 &pcfg_pull_none>,
+						<2 17 RK_FUNC_1 &pcfg_pull_none>,
+						<2 18 RK_FUNC_1 &pcfg_pull_none>,
+						<2 19 RK_FUNC_1 &pcfg_pull_none>,
+						<2 20 RK_FUNC_1 &pcfg_pull_none>;
+			};
+		};
+
 		pwm0 {
 			pwm0_pin: pwm0-pin {
 				rockchip,pins = <3 8 RK_FUNC_2 &pcfg_pull_none>;
-- 
1.9.1
