From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.3 41/81] arm64: dts: rockchip: fix RockPro64 sdmmc settings
Date: Wed, 30 Oct 2019 11:48:47 -0400
Message-ID: <20191030154928.9432-41-sashal@kernel.org>
References: <20191030154928.9432-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20191030154928.9432-1-sashal@kernel.org>
Sender: stable-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Soeren Moch <smoch@web.de>, Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Soeren Moch <smoch@web.de>

[ Upstream commit 5234c14531152702a9f3e575cb552b7e9cea9f94 ]

According to the RockPro64 schematic [1] the rk3399 sdmmc controller is
connected to a microSD (TF card) slot. Remove the cap-mmc-highspeed
property of the sdmmc controller, since no mmc card can be connected here.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
Link: https://lore.kernel.org/r/20191004203213.4995-1-smoch@web.de
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 1ff617230f6c4..99d65d2fca5e1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -613,7 +613,6 @@
 
 &sdmmc {
 	bus-width = <4>;
-	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
 	disable-wp;
-- 
2.20.1
