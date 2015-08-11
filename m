From: Shunqian Zheng <zhengsq@rock-chips.com>
Subject: [PATCH v1 5/5] ARM: dts: rockchip: add eFuse config of rk3288 SoC
Date: Tue, 11 Aug 2015 14:15:06 +0800
Message-ID: <1439273706-28274-6-git-send-email-zhengsq@rock-chips.com>
References: <1439273706-28274-1-git-send-email-zhengsq@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1439273706-28274-1-git-send-email-zhengsq@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org, srinivas.kandagatla@linaro.org, maxime.ripard@free-electrons.com, heiko@sntech.de, caesar.wang@rock-chips.com
Cc: dianders@chromium.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xjq@rock-chips.com, ZhengShunQian <zhengsq@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: ZhengShunQian <zhengsq@rock-chips.com>

This patch add the eFuse dt config of rk3288 SoC.

Signed-off-by: ZhengShunQian <zhengsq@rock-chips.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 2db91c9..4632e0d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -749,6 +749,19 @@
 		interrupts = <GIC_PPI 9 0xf04>;
 	};
 
+	efuse: efuse@ffb40000 {
+		compatible = "rockchip,rockchip-efuse";
+		reg = <0xffb40000 0x20>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		clocks = <&cru PCLK_EFUSE256>;
+		clock-names = "pclk_efuse";
+
+		cpu_leakage: cpu_leakage {
+			reg = <0x17 0x1>;
+		};
+	};
+
 	usbphy: phy {
 		compatible = "rockchip,rk3288-usb-phy";
 		rockchip,grf = <&grf>;
-- 
1.9.1
