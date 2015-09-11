From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] ARM: dts: support Highspeed for rk3066a platform
Date: Fri, 11 Sep 2015 15:25:41 +0800
Message-ID: <1441956341-10623-1-git-send-email-shawn.lin@rock-chips.com>
References: <1441956268-10418-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1441956268-10418-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add cap-sd-highspeed and cap-mmc-highspeed for rk3066a
platform to make sd cards running faster.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm/boot/dts/rk3066a.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 946f187..b50a785 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -595,6 +595,8 @@
 &mmc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sd0_clk &sd0_cmd &sd0_cd &sd0_bus4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
 };
 
 &mmc1 {
-- 
2.3.7
