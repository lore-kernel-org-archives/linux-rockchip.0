From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/3] ARM: dts: rockchip: make rk3288-grf a simple-mfd
Date: Thu, 31 Mar 2016 15:43:31 +0200
Message-ID: <1459431812-6286-3-git-send-email-heiko@sntech.de>
References: <1459431812-6286-1-git-send-email-heiko@sntech.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1459431812-6286-1-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Similar to the pmu, the general register files contain a lot of different
setting bits grouped into general registers, but also some somewhat special
entities like the controls for some phy-blocks or the io-voltage control.
To be able to move these blocks under the grf node where they actually
belong, make it a simple-mfd.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 31f7e20..bc57232 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -745,7 +745,7 @@
 	};
 
 	grf: syscon@ff770000 {
-		compatible = "rockchip,rk3288-grf", "syscon";
+		compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
 		reg = <0xff770000 0x1000>;
 	};
 
-- 
2.6.4
