From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH 5/7] arm64: dts: rockchip: rk3399: Correct MIPI DPHY PLL clock
Date: Mon, 18 Sep 2017 17:05:37 +0800
Message-ID: <1505725539-6309-5-git-send-email-nickey.yang@rock-chips.com>
References: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1505725539-6309-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

clk_24m --> Gate11[14] --> clk_mipidphy_ref --> Gate21[0] --> clk_dphy_pll

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index d79e9b3..6aa43fd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1629,7 +1629,7 @@
 		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff960000 0x0 0x8000>;
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH 0>;
-		clocks = <&cru SCLK_MIPIDPHY_REF>, <&cru PCLK_MIPI_DSI0>,
+		clocks = <&cru SCLK_DPHY_PLL>, <&cru PCLK_MIPI_DSI0>,
 			 <&cru SCLK_DPHY_TX0_CFG>;
 		clock-names = "ref", "pclk", "phy_cfg";
 		power-domains = <&power RK3399_PD_VIO>;
-- 
1.9.1
