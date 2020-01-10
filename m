From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
Date: Fri, 10 Jan 2020 16:40:24 +0100
Message-ID: <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
References: <20200110142128.13522-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200110142128.13522-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Question for Heiko or rob+dt.
Where would should #address-cells and #size-cells go in the dts or to the dtsi.
In case they become required in a futhure rockchip-dw-mshc.yaml?
ie. Should we patch all XXX rockchip,rk3288-dw-mshc nodes with them?

Thanks

2020-01-10 15:21 GMT+01:00, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> An experimental test with the command below gives this error:
> rk3399-firefly.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-orangepi.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge-captain.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge-v.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> So fix this by adding a reg property to the brcmf sub node.
> Also add #address-cells and #size-cells to prevent more warnings.
>
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
>
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 3 +++
>  arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 3 +++
>  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 3 +++
>  3 files changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> index 92de83dd4..06043179f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> @@ -669,9 +669,12 @@
>  	vqmmc-supply = &vcc1v8_s3;	/* IO line */
>  	vmmc-supply = &vcc_sdio;	/* card's power */
>
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	status = "okay";
>
>  	brcmf: wifi@1 {
> +		reg = <1>;
>  		compatible = "brcm,bcm4329-fmac";
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> index 4944d78a0..e87a04477 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> @@ -654,9 +654,12 @@
>  	sd-uhs-sdr104;
>  	vqmmc-supply = <&vcc1v8_s3>;
>  	vmmc-supply = <&vccio_sd>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	status = "okay";
>
>  	brcmf: wifi@1 {
> +		reg = <1>;
>  		compatible = "brcm,bcm4329-fmac";
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> index 0541dfce9..9c659f311 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> @@ -648,9 +648,12 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>  	sd-uhs-sdr104;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	status = "okay";
>
>  	brcmf: wifi@1 {
> +		reg = <1>;
>  		compatible = "brcm,bcm4329-fmac";
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> --
> 2.11.0
>
>
