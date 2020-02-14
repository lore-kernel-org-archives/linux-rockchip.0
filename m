From: Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.4 148/459] arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
Date: Fri, 14 Feb 2020 10:56:38 -0500
Message-ID: <20200214160149.11681-148-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
Sender: stable-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, stable@vger.kernel.org
Cc: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Robin Murphy <robin.murphy@arm.com>

[ Upstream commit a793e19c15f25a126138ac4ae9facf9204754af3 ]

Although it appeared to follow logically from the bindings, apparently
the thermal framework can't properly cope with a single cooling device
being shared between multiple maps. The CPU zone is probably easier to
overheat, so remove the references to the (optional) fan from the GPU
cooling zone to avoid things getting confused. Hopefully GPU-intensive
tasks will leak enough heat across to the CPU zone to still hit the
fan trips before reaching critical GPU temperatures.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Link: https://lore.kernel.org/r/5bb39f3115df1a487d717d3ae87e523b03749379.1573908197.git.robin.murphy@arm.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 27 -------------------
 1 file changed, 27 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index 2a127985ab171..d3ed8e5e770f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -94,33 +94,6 @@
 	};
 };
 
-&gpu_thermal {
-	trips {
-		gpu_warm: gpu_warm {
-			temperature = <55000>;
-			hysteresis = <2000>;
-			type = "active";
-		};
-
-		gpu_hot: gpu_hot {
-			temperature = <65000>;
-			hysteresis = <2000>;
-			type = "active";
-		};
-	};
-	cooling-maps {
-		map1 {
-			trip = <&gpu_warm>;
-			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
-		};
-
-		map2 {
-			trip = <&gpu_hot>;
-			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
-		};
-	};
-};
-
 &pinctrl {
 	ir {
 		ir_rx: ir-rx {
-- 
2.20.1
