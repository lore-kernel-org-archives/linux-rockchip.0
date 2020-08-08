From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.4 04/40] arm64: dts: rockchip: fix rk3368-lion gmac reset gpio
Date: Sat,  8 Aug 2020 19:38:08 -0400
Message-ID: <20200808233844.3618823-4-sashal@kernel.org>
References: <20200808233844.3618823-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200808233844.3618823-1-sashal@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

[ Upstream commit 2300e6dab473e93181cf76e4fe6671aa3d24c57b ]

The lion gmac node currently uses opposite active-values for the
gmac phy reset pin. The gpio-declaration uses active-high while the
separate snps,reset-active-low property marks the pin as active low.

While on the kernel side this works ok, other DT users may get
confused - as seen with uboot right now.

So bring this in line and make both properties match, similar to the
other Rockchip board.

Fixes: d99a02bcfa81 ("arm64: dts: rockchip: add RK3368-uQ7 (Lion) SoM")
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Link: https://lore.kernel.org/r/20200607212909.920575-1-heiko@sntech.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index e17311e090826..216aafd90e7f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -156,7 +156,7 @@ &gmac {
 	pinctrl-0 = <&rgmii_pins>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 50000>;
-	snps,reset-gpio = <&gpio3 RK_PB3 GPIO_ACTIVE_HIGH>;
+	snps,reset-gpio = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x10>;
 	rx_delay = <0x10>;
 	status = "okay";
-- 
2.25.1
