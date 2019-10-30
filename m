From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.3 25/81] arm64: dts: rockchip: fix RockPro64 vdd-log regulator settings
Date: Wed, 30 Oct 2019 11:48:31 -0400
Message-ID: <20191030154928.9432-25-sashal@kernel.org>
References: <20191030154928.9432-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191030154928.9432-1-sashal@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Soeren Moch <smoch@web.de>, Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Soeren Moch <smoch@web.de>

[ Upstream commit 0990c5e7573098117c69651821647c228483e31b ]

The RockPro64 schematic [1] page 18 states a min voltage of 0.8V and a
max voltage of 1.4V for the VDD_LOG pwm regulator. However, there is an
additional note that the pwm parameter needs to be modified.
From the schematics a voltage range of 0.8V to 1.7V can be calculated.
Additional voltage measurements on the board show that this fix indeed
leads to the correct voltage, while without this fix the voltage was set
too high.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
Link: https://lore.kernel.org/r/20191003215036.15023-1-smoch@web.de
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 5818b85255123..cad314f708300 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -166,7 +166,7 @@
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
-		regulator-max-microvolt = <1400000>;
+		regulator-max-microvolt = <1700000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 };
-- 
2.20.1
