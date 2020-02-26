From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v6 6/6] arm64: dts: rockchip: rk3399: Define the rockchip
 Video Decoder node
Date: Wed, 26 Feb 2020 13:24:53 +0100
Message-ID: <817821e3-bc51-8037-b9b9-e429c5eeb280@gmail.com>
References: <20200220163016.21708-7-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200220163016.21708-7-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: ezequiel@collabora.com
Cc: boris.brezillon@collabora.com, devicetree@vger.kernel.org, heiko@sntech.de, hverkuil@xs4all.nl, jonas@kwiboo.se, kernel@collabora.com, laurent.pinchart@ideasonboard.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, nicolas@ndufresne.ca, paul.kocialkowski@bootlin.com, robh+dt@kernel.org, sakari.ailus@iki.fi, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Hi Boris,

Dtsi nodes are sort on address.
The vdec node is now inserted between:

vdec_mmu: iommu       @ff660480
vdec    : video-codec @ff660000
iep_mmu : iommu       @ff670800

This should be:

vpu_mmu : iommu       @ff650800
vdec    : video-codec @ff660000
vdec_mmu: iommu       @ff660480



> From: Boris Brezillon <boris.brezillon at collabora.com>
> 
> RK3399 has a Video decoder, define the node in the dtsi. We also add
> the missing power-domain in mmu node and enable the block.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon at collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel at collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 33cc21fcf4c1..a07f857df12f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1285,8 +1285,20 @@ vdec_mmu: iommu at ff660480 {
>  		interrupt-names = "vdec_mmu";
>  		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
>  		clock-names = "aclk", "iface";
> +		power-domains = <&power RK3399_PD_VDU>;
>  		#iommu-cells = <0>;
> -		status = "disabled";
> +	};
> +
> +	vdec: video-codec at ff660000 {
> +		compatible = "rockchip,rk3399-vdec";
> +		reg = <0x0 0xff660000 0x0 0x400>;
> +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "vdpu";
> +		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
> +			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
> +		clock-names = "axi", "ahb", "cabac", "core";
> +		power-domains = <&power RK3399_PD_VDU>;
> +		iommus = <&vdec_mmu>;
>  	};
>  
>  	iep_mmu: iommu at ff670800 {
> -- 
> 2.25.0
