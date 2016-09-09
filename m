From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH 4/6] arm64: dts: rockchip: add pd_sd power node for rk3399
Date: Fri,  9 Sep 2016 15:40:34 +0800
Message-ID: <1473406836-6720-5-git-send-email-zhangqing@rock-chips.com>
References: <1473406836-6720-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1473406836-6720-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, wxt@rock-chips.com
Cc: linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, shawn.lin@rock-chips.com, william.wu@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

1.add pd node for RK3399 Soc
2.create power domain tree
3.add qos node for domain
4.add the pd_sd consumers node

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 52eeb007fddf..e2ecad651cac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -253,6 +253,7 @@
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
 		fifo-depth = <0x100>;
+		power-domains = <&power RK3399_PD_SD>;
 		status = "disabled";
 	};
 
@@ -718,6 +719,10 @@
 		compatible = "syscon";
 		reg = <0x0 0xffa60180 0x0 0x20>;
 	};
+	qos_sd: qos@ffa74000 {
+		compatible = "syscon";
+		reg = <0x0 0xffa74000 0x0 0x20>;
+	};
 
 	qos_hdcp: qos@ffa90000 {
 		compatible = "syscon";
@@ -875,6 +880,13 @@
 					 <&qos_pcie>,
 					 <&qos_usb_host0>,
 					 <&qos_usb_host1>;
+
+				pd_sd@RK3399_PD_SD {
+					reg = <RK3399_PD_SD>;
+					clocks = <&cru HCLK_SDMMC>,
+						 <&cru SCLK_SDMMC>;
+					pm_qos = <&qos_sd>;
+				};
 			};
 			pd_vio@RK3399_PD_VIO {
 				reg = <RK3399_PD_VIO>;
-- 
1.9.1
