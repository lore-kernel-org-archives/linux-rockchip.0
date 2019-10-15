From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: rk3399-rock-pi-4: restyle
 rockchip, pins
Date: Tue, 15 Oct 2019 22:58:51 +0200
Message-ID: <20191015205852.4200-1-jbx6244@gmail.com>
References: <20191015191000.2890-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191015191000.2890-1-jbx6244@gmail.com>
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The define RK_FUNC_1 is no longer used,
so restyle the rockchip,pins definitions.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 1ae1ebd4e..188d9dfc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -486,21 +486,18 @@
 
 	sdio0 {
 		sdio0_bus4: sdio0-bus4 {
-			rockchip,pins =
-				<2 20 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 21 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 22 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 23 RK_FUNC_1 &pcfg_pull_up_20ma>;
+			rockchip,pins = <2 RK_PC4 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC5 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC6 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC7 1 &pcfg_pull_up_20ma>;
 		};
 
 		sdio0_cmd: sdio0-cmd {
-			rockchip,pins =
-				<2 24 RK_FUNC_1 &pcfg_pull_up_20ma>;
+			rockchip,pins = <2 RK_PD0 1 &pcfg_pull_up_20ma>;
 		};
 
 		sdio0_clk: sdio0-clk {
-			rockchip,pins =
-				<2 25 RK_FUNC_1 &pcfg_pull_none_20ma>;
+			rockchip,pins = <2 RK_PD1 1 &pcfg_pull_none_20ma>;
 		};
 	};
 
@@ -532,8 +529,7 @@
 
 	wifi {
 		wifi_enable_h: wifi-enable-h {
-			rockchip,pins =
-				<0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		wifi_host_wake_l: wifi-host-wake-l {
-- 
2.11.0
