From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add isp0 node for rk3399
Date: Thu, 2 Apr 2020 19:20:20 +0200
Message-ID: <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
References: <20200402000234.226466-5-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200402000234.226466-5-helen.koike@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: helen.koike@collabora.com
Cc: dafna.hirschfeld@collabora.com, devel@driverdev.osuosl.org, devicetree@vger.kernel.org, ezequiel@collabora.com, heiko@sntech.de, hverkuil-cisco@xs4all.nl, karthik.poduval@gmail.com, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mark.rutland@arm.com, robh+dt@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Helen,

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index fc0295d2a65a1..815099a0cd0dd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1718,6 +1718,33 @@ vopb_mmu: iommu@ff903f00 {
>  		status = "disabled";
>  	};
>  
> +	isp0: isp0@ff910000 {
> +		compatible = "rockchip,rk3399-cif-isp";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_ISP0>,
> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
> +		clock-names = "clk_isp",
> +			      "aclk_isp", "aclk_isp_wrap",
> +			      "hclk_isp", "hclk_isp_wrap";

> +		power-domains = <&power RK3399_PD_ISP0>;
> +		iommus = <&isp0_mmu>;
> +		phys = <&mipi_dphy_rx0>;
> +		phy-names = "dphy";

Maybe a little sort? But keep rest as it is. Also in example.

		iommus = <&isp0_mmu>;
		phys = <&mipi_dphy_rx0>;
		phy-names = "dphy";
		power-domains = <&power RK3399_PD_ISP0>;

> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				reg = <0>;

Move reg above #address-cells. Change that in example as well.

				reg = <0>;
				#address-cells = <1>;
				#size-cells = <0>;

> +			};
> +		};
> +	};
> +
>  	isp0_mmu: iommu@ff914000 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
> -- 
> 2.26.0
