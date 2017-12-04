From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: fix trailing 0 in rk3328 tsadc
 interrupts
Date: Mon,  4 Dec 2017 18:38:50 +0100
Message-ID: <20171204173850.9976-1-heiko@sntech.de>
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
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Probably due to some copy-paste mistake, the tsadc of rk3328 ended up
with a 0 as 4th element that shouldn't be there, as interrupts on the
rk3328 only have multiples of 3, making dtc complain. So remove it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 41d61840fb99..2426da631938 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -514,7 +514,7 @@
 	tsadc: tsadc@ff250000 {
 		compatible = "rockchip,rk3328-tsadc";
 		reg = <0x0 0xff250000 0x0 0x100>;
-		interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
 		assigned-clocks = <&cru SCLK_TSADC>;
 		assigned-clock-rates = <50000>;
 		clocks = <&cru SCLK_TSADC>, <&cru PCLK_TSADC>;
-- 
2.14.2
