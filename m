From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: disable TX offload for mtu bigger than 1498 for some SoCs
Date: Mon,  1 Apr 2019 21:20:29 +0300
Message-ID: <20190401182029.31362-1-papadakospan@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Leonidas P. Papadakos" <papadakospan@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

From: =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>

Some rockchip boards (like the rock64, and the renegade) exhibit an issue where
tx checksuming does not work with packets larger than 1498.

This is bad for network stability.

The previous approach was using force_thresh_dma_mode, which does more than
disable TX offload, something we do not need

this patch depends on patch:
stmmac: introduce flag to dynamically disable TX offload for rockchip devices

Signed-off-by: Leonidas P. Papadakos <papadakospan@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index c213ad74d..16ced107d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -136,7 +136,7 @@
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmiim1_pins>;
-	snps,force_thresh_dma_mode;
+	rockchip,bugged_tx_coe;
 	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 50000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 7cfd5ca6c..cab2e1da6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -150,7 +150,7 @@
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmiim1_pins>;
-	snps,force_thresh_dma_mode;
+	rockchip,bugged_tx_coe;
 	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 50000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 791fb0ee9..a1221dca1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -207,6 +207,7 @@
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii_pins>;
+	rockchip,bugged_tx_coe;
 	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 50000>;
-- 
2.21.0
