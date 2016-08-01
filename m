From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Provide power-domains for sd/sdio/emmc controllers
Date: Mon,  1 Aug 2016 16:41:14 +0800
Message-ID: <1470040874-17256-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Doug Anderson <dianders@chromium.org>, Brian Norris <briannorris@chromium.org>, Elaine Zhang <zhangqing@rock-chips.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

The PM domain will be "powered on" once we have registered our PM domain
with genpd and when the device (dw_mmc etc) gets attached to the domain.
The attach occurs when the platform bus'->probe() function get invoked
for the device.

Due to this, we should be able to deploy genpd support by adding the
phandle of related power-domains without first having to deploying
runtime PM support in the related drivers.

Let's do this in case of taking risk of accessing controller when the
genpd is in "power off" status as the genpd will turn off all the
power domains which are the referenced by drivers.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 80acb38..dde781f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -209,6 +209,7 @@
 			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
+		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		status = "disabled";
 	};
 
@@ -222,6 +223,7 @@
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
+		power-domains = <&power RK3399_PD_SD>;
 		status = "disabled";
 	};
 
@@ -238,6 +240,7 @@
 		#clock-cells = <0>;
 		phys = <&emmc_phy>;
 		phy-names = "phy_arasan";
+		power-domains = <&power RK3399_PD_EMMC>;
 		status = "disabled";
 	};
 
-- 
2.3.7
