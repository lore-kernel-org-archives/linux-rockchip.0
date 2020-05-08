From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Date: Fri, 08 May 2020 12:55:48 +0200
Message-ID: <2855296.rNCsY6NMd3@phil>
References: <20200430164245.1630174-3-paul.kocialkowski@bootlin.com> <20200507202558.GK2422122@aptenodytes> <7112d1fa-a872-c66f-0ece-a77ba1f852de@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7112d1fa-a872-c66f-0ece-a77ba1f852de-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 8. Mai 2020, 01:40:08 CEST schrieb Johan Jonker:
> Hi Paul,
> 
> On 5/7/20 10:25 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Fri 01 May 20, 00:05, Johan Jonker wrote:
> >> Hi Paul,
> >>
> >>> The PX30 features a RGA block: add the necessary node to support it.
> >>>
> >>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
> >>>  1 file changed, 11 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>> index f809dd6d5dc3..3de70aa4f1ce 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> >>> @@ -1102,6 +1102,17 @@ vopl_mmu: iommu@ff470f00 {
> >>>  		status = "disabled";
> >>>  	};
> >>>  
> >>> +	rga: rga@ff480000 {
> >>> +		compatible = "rockchip,px30-rga", "rockchip,rk3288-rga";
> >>> +		reg = <0x0 0xff480000 0x0 0x10000>;
> >>> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> >>> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> >>> +		clock-names = "aclk", "hclk", "sclk";
> >>
> >>> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> >>> +		reset-names = "core", "axi", "ahb";
> >>> +		power-domains = <&power PX30_PD_VO>;
> >>
> >> sort
> >>
> >> 		power-domains = <&power PX30_PD_VO>;
> >> 		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> >> 		reset-names = "core", "axi", "ahb";
> > 
> > What's the rationale behind this (besides alphabetic sorting, which I don't
> > believe is a rule for dt properties)? Some nodes above in the file have it in
> > the same order that I do, and I like to see clocks followed by resets.
> 
> My short list.
> There is no hard rule... It mostly depend on Heiko...

For the record, if needed I do any re-sorting myself normally, so there is
no need to respin patches just because nodes are sorted differently.

But yes, since the early Chromebook project in 2014 we agreed on
doing in Rockchip dts files:

----
compatible
reg
interrupts
[alphabetical]
status [if needed]
----

This works most of the time, but sometimes gets missed but is not _that_
big a deal if that happens ;-) .


Heiko


> For nodes:
> If exists on top: model, compatible and chosen.
> Sort things without reg alphabetical first,
> then sort the rest by reg address.
> 
> Inside nodes:
> If exists on top: compatible, reg and interrupts.
> In alphabetical order the required properties.
> Then in alphabetical order the other properties.
> And as last things that start with '#' in alphabetical order.
> Add status below all other properties for soc internal components with
> any board-specifics.
> Keep an empty line between properties and nodes.
> 
> Exceptions:
> Sort pinctrl-0 above pinctrl-names, so it stays in line with clock-names
> and dma-names.
> Sort simple-audio-card,name above other simple-audio-card properties.
> Sort regulator-name above other regulator properties.
> Sort regulator-min-microvolt above regulator-max-microvolt.
> 
> > 
> > Cheers,
> > 
> > Paul
> > 
> >>
> >>
> >>> +	};
> >>> +
> >>>  	qos_gmac: qos@ff518000 {
> >>>  		compatible = "syscon";
> >>>  		reg = <0x0 0xff518000 0x0 0x20>;
> >>
> > 
> 
> 
