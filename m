From: Emil Renner Berthing <kernel-sKpHZLTYfq0@public.gmane.org>
Subject: [RFC] arm64: dts: rockchip: add rk3399 spi dmas
Date: Mon,  8 Oct 2018 19:46:44 +0200
Message-ID: <20181008174644.5856-1-kernel@esmil.dk>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Emil Renner Berthing <kernel-sKpHZLTYfq0@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

My rk3399-gru-kevin complains loudly at boot:

rockchip-spi ff1d0000.spi: Failed to request TX DMA channel
rockchip-spi ff1d0000.spi: Failed to request RX DMA channel
rockchip-spi ff1e0000.spi: Failed to request TX DMA channel
rockchip-spi ff1e0000.spi: Failed to request RX DMA channel
rockchip-spi ff200000.spi: Failed to request TX DMA channel
rockchip-spi ff200000.spi: Failed to request RX DMA channel

..so I tried adding the proper dma channels as show below.

Unfortunately the rockchip-spi driver doesn't seem to work
properly with dma on rk3399. The first problem seems to be
that when using dma transfers the driver expects to get
callbacks both when the tx and rx dma requests finish,
but only the rx callback fires.

Before digging deeper it'd be nice to know if someone has
looked at this before or if I'm doing something obviously
wrong.

/Emil
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index c61826c257c4..699fdbe36de7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -649,66 +649,76 @@
 
 	spi0: spi@ff1c0000 {
 		compatible = "rockchip,rk3399-spi", "rockchip,rk3066-spi";
 		reg = <0x0 0xff1c0000 0x0 0x1000>;
 		clocks = <&cru SCLK_SPI0>, <&cru PCLK_SPI0>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 10>, <&dmac_peri 11>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi0_clk &spi0_tx &spi0_rx &spi0_cs0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
 	};
 
 	spi1: spi@ff1d0000 {
 		compatible = "rockchip,rk3399-spi", "rockchip,rk3066-spi";
 		reg = <0x0 0xff1d0000 0x0 0x1000>;
 		clocks = <&cru SCLK_SPI1>, <&cru PCLK_SPI1>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 12>, <&dmac_peri 13>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi1_clk &spi1_tx &spi1_rx &spi1_cs0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
 	};
 
 	spi2: spi@ff1e0000 {
 		compatible = "rockchip,rk3399-spi", "rockchip,rk3066-spi";
 		reg = <0x0 0xff1e0000 0x0 0x1000>;
 		clocks = <&cru SCLK_SPI2>, <&cru PCLK_SPI2>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 14>, <&dmac_peri 15>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi2_clk &spi2_tx &spi2_rx &spi2_cs0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
 	};
 
 	spi4: spi@ff1f0000 {
 		compatible = "rockchip,rk3399-spi", "rockchip,rk3066-spi";
 		reg = <0x0 0xff1f0000 0x0 0x1000>;
 		clocks = <&cru SCLK_SPI4>, <&cru PCLK_SPI4>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_peri 18>, <&dmac_peri 19>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi4_clk &spi4_tx &spi4_rx &spi4_cs0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
 	};
 
 	spi5: spi@ff200000 {
 		compatible = "rockchip,rk3399-spi", "rockchip,rk3066-spi";
 		reg = <0x0 0xff200000 0x0 0x1000>;
 		clocks = <&cru SCLK_SPI5>, <&cru PCLK_SPI5>;
 		clock-names = "spiclk", "apb_pclk";
 		interrupts = <GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH 0>;
+		dmas = <&dmac_bus 8>, <&dmac_bus 9>;
+		dma-names = "tx", "rx";
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi5_clk &spi5_tx &spi5_rx &spi5_cs0>;
 		power-domains = <&power RK3399_PD_SDIOAUDIO>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
 	};
-- 
2.19.1
