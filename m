From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1 3/3] ARM64: dts: rockchip: rk3308: add tsadc node
Date: Tue,  5 Nov 2019 11:17:26 +0800
Message-ID: <1572923846-23310-4-git-send-email-zhangqing@rock-chips.com>
References: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: amit.kucheria@verdurent.com, rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, andy.yan@rock-chips.com, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This patch add a tsadc device node for rk3308.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 8bdc66c62975..7023df31046d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -513,6 +513,26 @@
 		status = "disabled";
 	};
 
+	tsadc: tsadc@ff1f0000 {
+		compatible = "rockchip,rk3308-tsadc";
+		reg = <0x0 0xff1f0000 0x0 0x100>;
+		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,grf = <&grf>;
+		clocks = <&cru SCLK_TSADC>, <&cru PCLK_TSADC>;
+		clock-names = "tsadc", "apb_pclk";
+		assigned-clocks = <&cru SCLK_TSADC>;
+		assigned-clock-rates = <50000>;
+		resets = <&cru SRST_TSADC>;
+		reset-names = "tsadc-apb";
+		pinctrl-names = "init", "default", "sleep";
+		pinctrl-0 = <&tsadc_otp_gpio>;
+		pinctrl-1 = <&tsadc_otp_gpio>;
+		pinctrl-2 = <&tsadc_otp_gpio>;
+		#thermal-sensor-cells = <1>;
+		rockchip,hw-tshut-temp = <120000>;
+		status = "disabled";
+	};
+
 	amba {
 		compatible = "simple-bus";
 		#address-cells = <2>;
-- 
1.9.1
