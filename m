From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: remove disable-wp from rk3308-roc-cc emmc node
Date: Thu, 19 Dec 2019 13:19:54 +0100
Message-ID: <20191219121954.2450-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The mmc-controller.yaml didn't explicitly say disable-wp is
for SD card slot only, but that is what it was designed for
in the first place.
Remove all disable-wp from emmc or sdio controllers.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index aa256350b..23527daa7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -125,7 +125,6 @@
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-	disable-wp;
 	mmc-hs200-1_8v;
 	non-removable;
 	status = "okay";
-- 
2.11.0
