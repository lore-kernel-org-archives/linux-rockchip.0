From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
Date: Mon, 13 Jan 2020 10:26:31 +0100
Message-ID: <2116127.mXfZQK7onI@phil>
References: <20200110142128.13522-1-jbx6244@gmail.com> <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 10. Januar 2020, 16:40:24 CET schrieb Johan Jonker:
> Hi,
> 
> Question for Heiko or rob+dt.
> Where would should #address-cells and #size-cells go in the dts or to the dtsi.
> In case they become required in a futhure rockchip-dw-mshc.yaml?
> ie. Should we patch all XXX rockchip,rk3288-dw-mshc nodes with them?

I don't think it is a required property for the dw-mmc itself, as only
in special-cases do you need subnodes there. Like emmc and sd-cards
are completely probeable without needing further information and
only the wifi/bt chips _might_ need these.

So I don't think that this is a property of the controller itself, but te
connected card - hence should stay in the board file.

Heiko


> 
> Thanks
> 
> 2020-01-10 15:21 GMT+01:00, Johan Jonker <jbx6244@gmail.com>:
> > An experimental test with the command below gives this error:
> > rk3399-firefly.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > rk3399-orangepi.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > rk3399-khadas-edge.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > rk3399-khadas-edge-captain.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > rk3399-khadas-edge-v.dt.yaml: dwmmc@fe310000: wifi@1:
> > 'reg' is a required property
> > So fix this by adding a reg property to the brcmf sub node.
> > Also add #address-cells and #size-cells to prevent more warnings.
> >
> > make ARCH=arm64 dtbs_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> >
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 3 +++
> >  arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 3 +++
> >  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 3 +++
> >  3 files changed, 9 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> > b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> > index 92de83dd4..06043179f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> > @@ -669,9 +669,12 @@
> >  	vqmmc-supply = &vcc1v8_s3;	/* IO line */
> >  	vmmc-supply = &vcc_sdio;	/* card's power */
> >
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> >  	status = "okay";
> >
> >  	brcmf: wifi@1 {
> > +		reg = <1>;
> >  		compatible = "brcm,bcm4329-fmac";
> >  		interrupt-parent = <&gpio0>;
> >  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> > index 4944d78a0..e87a04477 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> > @@ -654,9 +654,12 @@
> >  	sd-uhs-sdr104;
> >  	vqmmc-supply = <&vcc1v8_s3>;
> >  	vmmc-supply = <&vccio_sd>;
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> >  	status = "okay";
> >
> >  	brcmf: wifi@1 {
> > +		reg = <1>;
> >  		compatible = "brcm,bcm4329-fmac";
> >  		interrupt-parent = <&gpio0>;
> >  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> > b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> > index 0541dfce9..9c659f311 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> > @@ -648,9 +648,12 @@
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> >  	sd-uhs-sdr104;
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> >  	status = "okay";
> >
> >  	brcmf: wifi@1 {
> > +		reg = <1>;
> >  		compatible = "brcm,bcm4329-fmac";
> >  		interrupt-parent = <&gpio0>;
> >  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> > --
> > 2.11.0
> >
> >
> 
