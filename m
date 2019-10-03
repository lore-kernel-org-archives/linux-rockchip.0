From: Soeren Moch <smoch@web.de>
Subject: [PATCH 1/3] arm64: dts: rockchip: fix RockPro64 vdd-log regulator
 settings
Date: Thu,  3 Oct 2019 23:50:34 +0200
Message-ID: <20191003215036.15023-1-smoch@web.de>
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
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The RockPro64 schematic [1] page 18 states a min voltage of 0.8V and a
max voltage of 1.4V for the VDD_LOG pwm regulator. However, there is an
additional note that the pwm parameter needs to be modified.
From the schematics a voltage range of 0.8V to 1.7V can be calculated.
Additional voltage measurements on the board show that this fix indeed
leads to the correct voltage, while without this fix the voltage was set
too high.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
---
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 0401d4ec1f45..845eb070b5b0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -173,7 +173,7 @@
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
-		regulator-max-microvolt = <1400000>;
+		regulator-max-microvolt = <1700000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 };
--
2.17.1
