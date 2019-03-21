From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3399 UART DMAs
Date: Thu, 21 Mar 2019 15:21:51 +0000
Message-ID: <d49f9b76-902a-5393-c983-cdef850c7a9c@arm.com>
References: <20190321144058.16918-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190321144058.16918-1-katsuhiro@katsuster.net>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 21/03/2019 14:40, Katsuhiro Suzuki wrote:
> Add UART dma channels as specified by the rk3399 TRM.

No UART4? That's arguably one of the more useful ones, since 1 and 3 
often end up muxed to ethernet instead.

Also, does UART DMA actually work yet? I guess I can try for myself once 
I get home, but I remember last time I looked it was bailing out because 
the 8250 driver wanted a dmaengine feature that the pl330 driver didn't 
implement.

Robin.

> Refer:
> RK3399 TRM V1.4: Chapter 12 DMA Controller
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 0301e3e01b38..4eed7aae6989 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -635,6 +635,8 @@
>   		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
>   		clock-names = "baudclk", "apb_pclk";
>   		interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH 0>;
> +		dmas = <&dmac_peri 0>, <&dmac_peri 1>;
> +		dma-names = "tx", "rx";
>   		reg-shift = <2>;
>   		reg-io-width = <4>;
>   		pinctrl-names = "default";
> @@ -648,6 +650,8 @@
>   		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>   		clock-names = "baudclk", "apb_pclk";
>   		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH 0>;
> +		dmas = <&dmac_peri 2>, <&dmac_peri 3>;
> +		dma-names = "tx", "rx";
>   		reg-shift = <2>;
>   		reg-io-width = <4>;
>   		pinctrl-names = "default";
> @@ -661,6 +665,8 @@
>   		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
>   		clock-names = "baudclk", "apb_pclk";
>   		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH 0>;
> +		dmas = <&dmac_peri 4>, <&dmac_peri 5>;
> +		dma-names = "tx", "rx";
>   		reg-shift = <2>;
>   		reg-io-width = <4>;
>   		pinctrl-names = "default";
> @@ -674,6 +680,8 @@
>   		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
>   		clock-names = "baudclk", "apb_pclk";
>   		interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH 0>;
> +		dmas = <&dmac_peri 6>, <&dmac_peri 7>;
> +		dma-names = "tx", "rx";
>   		reg-shift = <2>;
>   		reg-io-width = <4>;
>   		pinctrl-names = "default";
> 
