From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] arm64: dts: rockchip: Fix Pinebook Pro FUSB302 interrupt
Date: Fri, 24 Apr 2020 14:56:19 +0100
Message-ID: <f731122c5ccde4e3d6d149a9d7bf01708b4279f7.1587736459.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org, t.schramm@manjaro.org
List-Id: linux-rockchip.vger.kernel.org

Although the FUSB302 driver has apparently supported the "fcs,int_n"
property since the beginning, the DT binding has never documented it,
and in fact defines a standard "interrupts" property as required. It's
also questionable whether the GPIO specifier with GPIO_ACTIVE_HIGH is
even correct, since the FUSB302 datasheet says INT_N is an "Active-LOW
open-drain interrupt output", and the Pinebook Pro schematic shows it
wired directly to the GPIO pin.

Just use the standard property like all the other RK3399 boards sharing
the same design.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5ea281b55fe2..1417c3b2d163 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -690,7 +690,8 @@
 	fusb0: fusb30x@22 {
 		compatible = "fcs,fusb302";
 		reg = <0x22>;
-		fcs,int_n = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&fusb0_int_gpio>;
 		vbus-supply = <&vbus_typec>;
-- 
2.23.0.dirty
