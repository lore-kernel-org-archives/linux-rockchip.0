From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 3/3] ARM: dts: support Highspeed for rk3066a-rayeager
Date: Sat, 12 Sep 2015 18:01:51 +0800
Message-ID: <1442052111-20188-1-git-send-email-shawn.lin@rock-chips.com>
References: <1442052050-20110-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1442052050-20110-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add cap-sd-highspeed and cap-mmc-highspeed for rk3066a-rayeager
board to make sd cards running faster.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2: None

 arch/arm/boot/dts/rk3066a-rayeager.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a-rayeager.dts b/arch/arm/boot/dts/rk3066a-rayeager.dts
index e36383c..341c1f8 100644
--- a/arch/arm/boot/dts/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rk3066a-rayeager.dts
@@ -330,6 +330,8 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk>, <&sd0_cmd>, <&sd0_cd>, <&sd0_bus4>;
 	vmmc-supply = <&vcc_sd>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
 	status = "okay";
 };
 
-- 
2.3.7
