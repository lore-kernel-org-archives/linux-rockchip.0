From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
Date: Sat, 16 Nov 2019 12:47:19 +0000
Message-ID: <5bb39f3115df1a487d717d3ae87e523b03749379.1573908197.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Although it appeared to follow logically from the bindings, apparently
the thermal framework can't properly cope with a single cooling device
being shared between multiple maps. The CPU zone is probably easier to
overheat, so remove the references to the (optional) fan from the GPU
cooling zone to avoid things getting confused. Hopefully GPU-intensive
tasks will leak enough heat across to the CPU zone to still hit the
fan trips before reaching critical GPU temperatures.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 27 -------------------
 1 file changed, 27 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index f399853c635a..f81a8429f139 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -113,33 +113,6 @@
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
 &i2s0 {
 	status = "okay";
 };
-- 
2.17.1
