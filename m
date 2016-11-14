From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: add gmac needed clk for rk3399 pd
Date: Mon, 14 Nov 2016 12:36:39 +0800
Message-ID: <1479098199-20170-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: dianders@chromium.org, linux-arm-kernel@lists.infradead.org, zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jeffy Chen <jeffy.chen@rock-chips.com>, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: Jeffy Chen <jeffy.chen@rock-chips.com>

This patch fixes that sometimes hang at start-up time of the system.
As the below log:
...
[   11.136543] calling  pm_genpd_debug_init+0x0/0x60 @ 1
[   11.141602] initcall pm_genpd_debug_init+0x0/0x60 returned 0 after 11 usecs
[   11.148558] calling  genpd_poweroff_unused+0x0/0x84 @ 1
<hang>

In some cases, the rk3399 should turn off the gmac power domain to save
power if some boards didn't register the gmac device node for rk3399.
Then, rk3399 need to make sure the gmac's pclk enabled if we need
operate the gmac power domain. (Due to the NOC had enabled always)

Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Caesar Wang <wxt@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 172e7ed..e8b9df9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -825,7 +825,8 @@
 			/* These power domains are grouped by VD_LOGIC */
 			pd_gmac@RK3399_PD_GMAC {
 				reg = <RK3399_PD_GMAC>;
-				clocks = <&cru ACLK_GMAC>;
+				clocks = <&cru ACLK_GMAC>,
+					 <&cru PCLK_GMAC>;
 				pm_qos = <&qos_gmac>;
 			};
 			pd_vio@RK3399_PD_VIO {
-- 
2.7.4
