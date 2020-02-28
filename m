From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 2/2] arm64: dts: remove g-use-dma from rockchip usb nodes
Date: Fri, 28 Feb 2020 12:39:22 +0100
Message-ID: <20200228113922.20266-2-jbx6244@gmail.com>
References: <20200228113922.20266-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200228113922.20266-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: usb@ff300000:
'g-use-dma', 'power-domains' do not match any of the regexes:
'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: usb@ff580000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff580000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3328-rock64.dt.yaml: usb@ff580000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dt.yaml: usb@ff580000:
'g-use-dma' does not match any of the regexes: 'pinctrl-[0-9]+'

'g-use-dma' is not a valid option in dwc2.yaml, so remove it
from all Rockchip dtsi files.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 75908c587..4f484119f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -870,7 +870,6 @@
 		g-np-tx-fifo-size = <16>;
 		g-rx-fifo-size = <280>;
 		g-tx-fifo-size = <256 128 128 64 32 16>;
-		g-use-dma;
 		phys = <&u2phy_otg>;
 		phy-names = "usb2-phy";
 		power-domains = <&power PX30_PD_USB>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 1f53ead52..bad41bc6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -957,7 +957,6 @@
 		g-np-tx-fifo-size = <16>;
 		g-rx-fifo-size = <280>;
 		g-tx-fifo-size = <256 128 128 64 32 16>;
-		g-use-dma;
 		phys = <&u2phy_otg>;
 		phy-names = "usb2-phy";
 		status = "disabled";
-- 
2.11.0
