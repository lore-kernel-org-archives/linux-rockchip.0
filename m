From: Chen-Yu Tsai <wens@kernel.org>
Subject: [PATCH 3/6] arm64: dts: rockchip: rk3328: drop non-existent gmac2phy pinmux options
Date: Fri, 27 Mar 2020 11:04:11 +0800
Message-ID: <20200327030414.5903-4-wens@kernel.org>
References: <20200327030414.5903-1-wens@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200327030414.5903-1-wens@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens@csie.org>

When gmac2phy was added, a whole bunch of pinmux options were added.
Turns out some of these don't exist on the actual product, based on
the publicly available TRM.

Remove them.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7e88d88aab98..b861b4fd75e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1794,10 +1794,6 @@ rmiim1_pins: rmiim1-pins {
 		};
 
 		gmac2phy {
-			fephyled_speed100: fephyled-speed100 {
-				rockchip,pins = <0 RK_PD7 1 &pcfg_pull_none>;
-			};
-
 			fephyled_speed10: fephyled-speed10 {
 				rockchip,pins = <0 RK_PD6 1 &pcfg_pull_none>;
 			};
@@ -1806,18 +1802,6 @@ fephyled_duplex: fephyled-duplex {
 				rockchip,pins = <0 RK_PD6 2 &pcfg_pull_none>;
 			};
 
-			fephyled_rxm0: fephyled-rxm0 {
-				rockchip,pins = <0 RK_PD5 1 &pcfg_pull_none>;
-			};
-
-			fephyled_txm0: fephyled-txm0 {
-				rockchip,pins = <0 RK_PD5 2 &pcfg_pull_none>;
-			};
-
-			fephyled_linkm0: fephyled-linkm0 {
-				rockchip,pins = <0 RK_PD4 1 &pcfg_pull_none>;
-			};
-
 			fephyled_rxm1: fephyled-rxm1 {
 				rockchip,pins = <2 RK_PD1 2 &pcfg_pull_none>;
 			};
-- 
2.25.1
