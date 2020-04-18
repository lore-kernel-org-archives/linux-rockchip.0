From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 2/3] ARM: dts: rockchip: add rga node for rk322x
Date: Sat, 18 Apr 2020 11:49:41 +0200
Message-ID: <3593382.iQIKm1rSL1@phil>
References: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz@risingedge.co.za> <bf3a2b97-4a24-e9f0-599b-4731cc94a067@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <bf3a2b97-4a24-e9f0-599b-4731cc94a067@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: justin.swartz@risingedge.co.za, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, mark.rutland@arm.com, robh+dt@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 18. April 2020, 11:15:27 CEST schrieb Johan Jonker:
> Hi Justin, Heiko,
> 
> In the discussion about "rockchip,px30-rga" it was mentioned that:
> "no status for soc internal components without any board-specifics".
> The binding is in mainline, but the dts node is missing I think.
> Should this also be changed?

yep, drop the status disabled from the dtsi and that then results
in not needing the board-level enablement

(background: rga is a simple mem2mem device without any
board-specific hooks)

> 
> Johan
> 
> +&rga {
> +	status = "okay";
> +};
> +
> 
> > Add a node to define the presence of RGA, a 2D raster
> > graphic acceleration unit.
> > 
> > Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> > ---
> >  arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> > index 340ed6ccb..29d50bebc 100644
> > --- a/arch/arm/boot/dts/rk322x.dtsi
> > +++ b/arch/arm/boot/dts/rk322x.dtsi
> > @@ -621,6 +621,17 @@
> >  		status = "disabled";
> >  	};
> >  
> > +	rga: rga@20060000 {
> > +		compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
> > +		reg = <0x20060000 0x1000>;
> > +		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> > +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
> > +		clock-names = "aclk", "hclk", "sclk";
> > +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> > +		reset-names = "core", "axi", "ahb";
> 
> > +		status = "disabled";
> 
> remove?
> 
> > +	};
> > +
> >  	iep_mmu: iommu@20070800 {
> >  		compatible = "rockchip,iommu";
> >  		reg = <0x20070800 0x100>;
> 
> 
