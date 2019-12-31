From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: rk3399-hugsun-x99: remove supports-sd and supports-emmc options
Date: Tue, 31 Dec 2019 18:50:54 +0100
Message-ID: <20191231175054.4929-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org
Cc: mark.rutland@arm.com, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The entries "supports-sd" and "supports-emmc" are not a valid Linux option
in relation with SD card or eMMC, so remove them.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index c133e8d64..d69a613fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -556,7 +556,6 @@
 &sdmmc {
 	clock-frequency = <150000000>;
 	clock-freq-min-max = <200000 150000000>;
-	supports-sd;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
@@ -572,7 +571,6 @@
 	bus-width = <8>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-	supports-emmc;
 	non-removable;
 	keep-power-in-suspend;
 	status = "okay";
-- 
2.11.0
