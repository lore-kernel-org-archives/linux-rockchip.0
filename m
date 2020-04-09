From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: add rk3288 ISP and DPHY
Date: Thu, 9 Apr 2020 03:19:04 +0200
Message-ID: <2fc95890-f938-30a5-a163-bf3fa2e223df@gmail.com>
References: <karthik.poduval@gmail.com>
 <20200406073017.19462-1-karthik.poduval@gmail.com>
 <20200406073017.19462-4-karthik.poduval@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200406073017.19462-4-karthik.poduval@gmail.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Karthik Poduval <karthik.poduval@gmail.com>, linux-media@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, helen.koike@collabora.com, ezequiel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

Hi Karthik and others,

Include all mail lists found with:
./scripts/get_maintainer.pl --nogit-fallback --nogit

Helen is moving isp1 bindings out of staging.
Clocks and other things don't fit with her patch serie.
Maybe fix this while still in staging?

arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
'phys' is a required property
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
'phy-names' is a required property
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
'ports' is a required property

arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
'assigned-clock-rates', 'assigned-clocks'
do not match any of the regexes: 'pinctrl-[0-9]+'
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
clock-names:2: 'aclk_isp_wrap' was expected
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
clock-names:3: 'hclk_isp' was expected
arch/arm/boot/dts/rk3288-tinker.dt.yaml: isp@ff910000:
clock-names:4: 'hclk_isp_wrap' was expected

arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: 'power-domains'
is a required property

arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clock-names:1:
'dphy-cfg' was expected
arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clock-names:
['dphy-ref', 'pclk'] is too short
arch/arm/boot/dts/rk3288-tinker.dt.yaml: mipi-phy-rx0: clocks: [[7,
126], [7, 358]] is too short


Inside yaml:
Use enum and sort.
>>  properties:
>>    compatible:

>>      const: rockchip,rk3399-cif-isp
>> +    const: rockchip,rk3288-rkisp1

    enum:
      - rockchip,rk3288-rkisp1
      - rockchip,rk3399-cif-isp

>>  properties:
>>    compatible:
>>      const: rockchip,rk3399-mipi-dphy-rx0
>> +    const: rockchip,rk3288-mipi-dphy-rx0

    enum:
      - rockchip,rk3288-mipi-dphy-rx0
      - rockchip,rk3399-mipi-dphy-rx0

> 
> Please, keep consistency, or rk3288-cif-isp, or we change rk3399-cif-isp to be rk3399-rkisp1.


On 4/6/20 9:30 AM, Karthik Poduval wrote:
> ISP and DPHY device entries missing so add them.
> 

> tested on tinkerbaord with ov5647 using command
> cam -c 1 -C -F cap

Disclose dts node for ov5647 in cover letter, so people can reproduce
this experiment.

Caution!
Without dts node this command doesn't work correct.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml

Needed to detect missing: phys, phy-names and ports ,etc.

&isp {
	status = "okay";
};

Needed to detect missing: power-domains, etc.

&mipi_phy_rx0 {
	status = "okay";
};

> 
> Reported-by: Karthik Poduval <karthik.poduval@gmail.com>
> Signed-off-by: Karthik Poduval <karthik.poduval@gmail.com>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 9beb662166aa..adea8189abd9 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -247,6 +247,23 @@
>  		ports = <&vopl_out>, <&vopb_out>;
>  	};
> 

> +	isp: isp@ff910000 {

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

> +		compatible = "rockchip,rk3288-rkisp1";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru SCLK_ISP>, <&cru ACLK_ISP>,
> +			 <&cru HCLK_ISP>, <&cru PCLK_ISP_IN>,
> +			 <&cru SCLK_ISP_JPE>;
> +		clock-names = "clk_isp", "aclk_isp",
> +			      "hclk_isp", "pclk_isp_in",
> +			      "sclk_isp_jpe";
> +		assigned-clocks = <&cru SCLK_ISP>, <&cru SCLK_ISP_JPE>;
> +		assigned-clock-rates = <400000000>, <400000000>;

> +		power-domains = <&power RK3288_PD_VIO>;
> +		iommus = <&isp_mmu>;

sort

Something missing?
Where are the ports and port nodes?

> +		status = "disabled";
> +	};
> +
>  	sdmmc: mmc@ff0c0000 {
>  		compatible = "rockchip,rk3288-dw-mshc";
>  		max-frequency = <150000000>;
> @@ -891,6 +908,14 @@
>  			status = "disabled";
>  		};
> 

> +		mipi_phy_rx0: mipi-phy-rx0 {

Use separate patch.

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

> +			compatible = "rockchip,rk3288-mipi-dphy-rx0";
> +			clocks = <&cru SCLK_MIPIDSI_24M>, <&cru PCLK_MIPI_CSI>;
> +			clock-names = "dphy-ref", "pclk";
Something missing?
Does this phy have a power domain?

> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		io_domains: io-domains {
>  			compatible = "rockchip,rk3288-io-voltage-domain";
>  			status = "disabled";
> 
