From: Brian Norris <computersforpeace@gmail.com>
Subject: [PATCH] ARM: dts: rk3288: add SPI flash node for veyron
Date: Thu,  5 May 2016 18:02:44 -0700
Message-ID: <1462496564-76530-1-git-send-email-computersforpeace@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

This is a standard binding for describing SPI flash that can be
identified by reading their JEDEC ID. Let's use it.

Tested on Veyron Jaq.

Signed-off-by: Brian Norris <computersforpeace@gmail.com>
---
 arch/arm/boot/dts/rk3288-veyron.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 412809c60d01..28f8ba8ae500 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -369,6 +369,12 @@
 	status = "okay";
 
 	rx-sample-delay-ns = <12>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+	};
 };
 
 &tsadc {
-- 
2.8.0.rc3.226.g39d4020
