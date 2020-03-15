From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: [PATCH] ARM: dts: rockchip: use DMA channels for UARTs for RK3288
Date: Sun, 15 Mar 2020 18:51:15 +0900
Message-ID: <20200315095115.10106-1-katsuhiro@katsuster.net>
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
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This patch enables to use DMAC for all UARTs that are connected to
dmac_peri core for Rochchip RK3288.

Only uart2 is connected different DMAC (dmac_bus_s) so keep current
settings on this patch.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm/boot/dts/rk3288.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 8bcb4a51682e..e9f8a44f5f2a 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -420,6 +420,8 @@ uart0: serial@ff180000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac_peri 1>, <&dmac_peri 2>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart0_xfer>;
 		status = "disabled";
@@ -433,6 +435,8 @@ uart1: serial@ff190000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac_peri 3>, <&dmac_peri 4>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart1_xfer>;
 		status = "disabled";
@@ -459,6 +463,8 @@ uart3: serial@ff1b0000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
 		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac_peri 7>, <&dmac_peri 8>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart3_xfer>;
 		status = "disabled";
@@ -472,6 +478,8 @@ uart4: serial@ff1c0000 {
 		reg-io-width = <4>;
 		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
 		clock-names = "baudclk", "apb_pclk";
+		dmas = <&dmac_peri 9>, <&dmac_peri 10>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&uart4_xfer>;
 		status = "disabled";
-- 
2.25.1
