From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: [PATCH] arm64: dts: rockchip: add rk3399 UART DMAs
Date: Thu, 21 Mar 2019 23:40:58 +0900
Message-ID: <20190321144058.16918-1-katsuhiro@katsuster.net>
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
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add UART dma channels as specified by the rk3399 TRM.

Refer:
RK3399 TRM V1.4: Chapter 12 DMA Controller

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 0301e3e01b38..4eed7aae6989 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -635,6 +635,8 @@
 		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
 		interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 0>, <&dmac_peri 1>;
+		dma-names = "tx", "rx";
 		reg-shift = <2>;
 		reg-io-width = <4>;
 		pinctrl-names = "default";
@@ -648,6 +650,8 @@
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
 		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 2>, <&dmac_peri 3>;
+		dma-names = "tx", "rx";
 		reg-shift = <2>;
 		reg-io-width = <4>;
 		pinctrl-names = "default";
@@ -661,6 +665,8 @@
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 4>, <&dmac_peri 5>;
+		dma-names = "tx", "rx";
 		reg-shift = <2>;
 		reg-io-width = <4>;
 		pinctrl-names = "default";
@@ -674,6 +680,8 @@
 		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
 		clock-names = "baudclk", "apb_pclk";
 		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 6>, <&dmac_peri 7>;
+		dma-names = "tx", "rx";
 		reg-shift = <2>;
 		reg-io-width = <4>;
 		pinctrl-names = "default";
-- 
2.20.1
