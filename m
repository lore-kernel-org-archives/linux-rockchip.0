From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: add px30 otp controller
Date: Thu, 24 Oct 2019 00:41:13 +0200
Message-ID: <20191023224113.3268-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

The px30 soc contains a controller for one-time-programmable memory,
so add the necessary node for it and the fields defined in it by default.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index dd58b1bc5981..767f3ce6e9f7 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -664,6 +664,30 @@
 		status = "disabled";
 	};
 
+	otp: nvmem@ff290000 {
+		compatible = "rockchip,px30-otp";
+		reg = <0x0 0xff290000 0x0 0x4000>;
+		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
+			 <&cru PCLK_OTP_PHY>;
+		clock-names = "otp", "apb_pclk", "phy";
+		resets = <&cru SRST_OTP_PHY>;
+		reset-names = "phy";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		/* Data cells */
+		cpu_id: id@7 {
+			reg = <0x07 0x10>;
+		};
+		cpu_leakage: cpu-leakage@17 {
+			reg = <0x17 0x1>;
+		};
+		performance: performance@1e {
+			reg = <0x1e 0x1>;
+			bits = <4 3>;
+		};
+	};
+
 	cru: clock-controller@ff2b0000 {
 		compatible = "rockchip,px30-cru";
 		reg = <0x0 0xff2b0000 0x0 0x1000>;
-- 
2.23.0
