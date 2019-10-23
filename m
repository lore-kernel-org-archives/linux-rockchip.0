From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: remove px30 default optee node
Date: Thu, 24 Oct 2019 00:44:09 +0200
Message-ID: <20191023224409.3550-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Having a default optee node in a soc devicetree is not really good.
For one there is no guarantee that any tee got loaded and there's even
the possibility that a completely different TEE got loaded.

OP-Tee however will insert relevant nodes to the devicetree (firmware
+reserved memory sections) during its own startup, so there really is
no need to provide a default node.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 767f3ce6e9f7..5ab281bb40a4 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -161,13 +161,6 @@
 		status = "disabled";
 	};
 
-	firmware {
-		optee {
-			compatible = "linaro,optee-tz";
-			method = "smc";
-		};
-	};
-
 	gmac_clkin: external-gmac-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <50000000>;
-- 
2.23.0
