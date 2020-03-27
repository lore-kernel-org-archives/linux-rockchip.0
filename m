From: Chen-Yu Tsai <wens@kernel.org>
Subject: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering for LED triggers
Date: Fri, 27 Mar 2020 11:04:09 +0800
Message-ID: <20200327030414.5903-2-wens@kernel.org>
References: <20200327030414.5903-1-wens@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200327030414.5903-1-wens@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens@csie.org>

With SDIO now enabled, the numbering of the existing MMC host controllers
gets incremented by 1, as the SDIO host is the first one.

Increment the numbering of the MMC LED triggers to match.

Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index 2acb3d500fb9..f0686fc276be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
 	};
 };
 
+&diy_led {
+	linux,default-trigger = "mmc2";
+};
+
 &pcie_phy {
 	status = "okay";
 };
@@ -91,3 +95,7 @@ &uart0 {
 	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
 	status = "okay";
 };
+
+&yellow_led {
+	linux,default-trigger = "mmc1";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 9f225e9c3d54..bc060ac7972d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -70,14 +70,14 @@ work-led {
 			linux,default-trigger = "heartbeat";
 		};
 
-		diy-led {
+		diy_led: diy-led {
 			label = "red:diy";
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 			linux,default-trigger = "mmc1";
 		};
 
-		yellow-led {
+		yellow_led: yellow-led {
 			label = "yellow:yellow-led";
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
-- 
2.25.1
