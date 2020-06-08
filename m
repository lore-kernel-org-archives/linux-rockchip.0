From: Sasha Levin <sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: [PATCH AUTOSEL 5.6 061/606] arm64: dts: rockchip: Rename dwc3 device nodes on rk3399 to make dtc happy
Date: Mon,  8 Jun 2020 19:03:06 -0400
Message-ID: <20200608231211.3363633-61-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200608231211.3363633-1-sashal-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, stable-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>

commit 190c7f6fd43a776d4a6da1dac44408104649e9b7 upstream.

The device tree compiler complains that the dwc3 nodes have regs
properties but no matching unit addresses.

Add the unit addresses to the device node name. While at it, also rename
the nodes from "dwc3" to "usb", as guidelines require device nodes have
generic names.

Fixes: 7144224f2c2b ("arm64: dts: rockchip: support dwc3 USB for rk3399")
Signed-off-by: Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>
Link: https://lore.kernel.org/r/20200327030414.5903-7-wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Signed-off-by: Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 33cc21fcf4c1..5c4238a80144 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -410,7 +410,7 @@ usbdrd3_0: usb@fe800000 {
 		reset-names = "usb3-otg";
 		status = "disabled";
 
-		usbdrd_dwc3_0: dwc3 {
+		usbdrd_dwc3_0: usb@fe800000 {
 			compatible = "snps,dwc3";
 			reg = <0x0 0xfe800000 0x0 0x100000>;
 			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -446,7 +446,7 @@ usbdrd3_1: usb@fe900000 {
 		reset-names = "usb3-otg";
 		status = "disabled";
 
-		usbdrd_dwc3_1: dwc3 {
+		usbdrd_dwc3_1: usb@fe900000 {
 			compatible = "snps,dwc3";
 			reg = <0x0 0xfe900000 0x0 0x100000>;
 			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
-- 
2.25.1
