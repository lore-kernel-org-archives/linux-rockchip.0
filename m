From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/3] arm64: dts: rockchip: enable rk3328 watchdog clock
Date: Sat, 15 Jun 2019 17:30:32 +0200
Message-ID: <20190615153032.27772-3-heiko@sntech.de>
References: <20190615153032.27772-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190615153032.27772-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, papadakospan@gmail.com, sboyd@kernel.org, mturquette@baylibre.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

From: Leonidas P. Papadakos <papadakospan@gmail.com>

Add the missing clock property for the watchdog on rk3328.

Signed-off-by: Leonidas P. Papadakos <papadakospan@gmail.com>
[set wdt node to always enabled, as it is not board-specific]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 994468671b19..e9fefd8a7e02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -407,6 +407,7 @@
 		compatible = "snps,dw-wdt";
 		reg = <0x0 0xff1a0000 0x0 0x100>;
 		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_WDT>;
 	};
 
 	pwm0: pwm@ff1b0000 {
-- 
2.20.1
