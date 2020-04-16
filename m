From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: add bus-width properties to mmc nodes for px30.dtsi
Date: Thu, 16 Apr 2020 20:30:53 +0200
Message-ID: <20200416183053.6045-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

'bus-width' and pinctrl containing the bus-pins
should be in the same file, so add them to
all mmc nodes in 'px30.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 4820edc7f..b66a4ea9d 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -928,6 +928,7 @@
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		pinctrl-names = "default";
@@ -943,6 +944,7 @@
 		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
 			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		pinctrl-names = "default";
@@ -958,6 +960,7 @@
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <8>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		pinctrl-names = "default";
-- 
2.11.0
