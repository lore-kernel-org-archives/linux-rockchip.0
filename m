From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/3] ARM: dts: support Highspeed for rk3188-radxarock
Date: Sat, 12 Sep 2015 18:00:50 +0800
Message-ID: <1442052050-20110-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add cap-sd-highspeed and cap-mmc-highspeed for rk3188-radxarock
board to make sd cards running faster.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v2:
- Add mmc caps for individual board file

 arch/arm/boot/dts/rk3188-radxarock.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index d2180e5..2f37ea7 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -287,7 +287,8 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_cd>, <&sd0_bus4>;
 	vmmc-supply = <&vcc_sd0>;
-
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
 	bus-width = <4>;
 	disable-wp;
 };
-- 
2.3.7
