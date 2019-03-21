From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: [PATCH v2] arm64: dts: rockchip: add rk3399 UART DMAs
Date: Fri, 22 Mar 2019 01:22:44 +0900
Message-ID: <20190321162244.10080-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add UART dma channels as specified by the rk3399 TRM.

Refer:
RK3399 TRM V1.4: Chapter 12 DMA Controller

Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>

---

Changes from v1:
  - Add dma property for UART4
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 0301e3e01b38..31e487202676 100644
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
@@ -1152,6 +1160,8 @@
 		clocks = <&pmucru SCLK_UART4_PMU>, <&pmucru PCLK_UART4_PMU>;
 		clock-names = "baudclk", "apb_pclk";
 		interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 8>, <&dmac_peri 9>;
+		dma-names = "tx", "rx";
 		reg-shift = <2>;
 		reg-io-width = <4>;
 		pinctrl-names = "default";
-- 
2.20.1
