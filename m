From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [RFC PATCH v3 2/2] ARM: dts: rockchip: fix yaml warnings for
 rk3288-pmu-sram compatible nodes
Date: Fri, 10 Apr 2020 12:52:30 -0500
Message-ID: <20200410175230.GA28412@bogus>
References: <20200331121352.3825-1-jbx6244@gmail.com>
 <20200331121352.3825-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200331121352.3825-2-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Mar 31, 2020 at 02:13:52PM +0200, Johan Jonker wrote:
> A test with the command below gives for example these warnings:
> 
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
> '#address-cells' is a required property
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
> '#size-cells' is a required property
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
> 'ranges' is a required property
> 
> Fix this error by adding '#address-cells', '#size-cells' and
> 'ranges' to the 'rockchip,rk3288-pmu-sram' compatible node
> in rk3288.dtsi.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
> Not tested with hardware.
> 
> Changed v2:
>   Fix dtsi.
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 9c8741bb1..f102fec69 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -730,6 +730,9 @@
>  	pmu_sram: sram@ff720000 {
>  		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
>  		reg = <0x0 0xff720000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x0 0xff720000 0x1000>;

I think we should make these optional instead if there's no child nodes. 
And if there are child nodes, then these will be required.

Rob
