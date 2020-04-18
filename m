From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v4 2/3] ARM: dts: rockchip: add rga node for rk322x
Date: Sat, 18 Apr 2020 11:15:27 +0200
Message-ID: <bf3a2b97-4a24-e9f0-599b-4731cc94a067@gmail.com>
References: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Justin, Heiko,

In the discussion about "rockchip,px30-rga" it was mentioned that:
"no status for soc internal components without any board-specifics".
The binding is in mainline, but the dts node is missing I think.
Should this also be changed?

Johan

+&rga {
+	status = "okay";
+};
+

> Add a node to define the presence of RGA, a 2D raster
> graphic acceleration unit.
> 
> Signed-off-by: Justin Swartz <justin.swartz-4mSLLtuPuFdOJuVFMUvaKw@public.gmane.org>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> index 340ed6ccb..29d50bebc 100644
> --- a/arch/arm/boot/dts/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rk322x.dtsi
> @@ -621,6 +621,17 @@
>  		status = "disabled";
>  	};
>  
> +	rga: rga@20060000 {
> +		compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
> +		reg = <0x20060000 0x1000>;
> +		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
> +		clock-names = "aclk", "hclk", "sclk";
> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> +		reset-names = "core", "axi", "ahb";

> +		status = "disabled";

remove?

> +	};
> +
>  	iep_mmu: iommu@20070800 {
>  		compatible = "rockchip,iommu";
>  		reg = <0x20070800 0x100>;
> -- 
> 2.11.0
