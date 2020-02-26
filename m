From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v6 6/6] arm64: dts: rockchip: rk3399: Define the
 rockchip Video Decoder node
Date: Wed, 26 Feb 2020 14:22:11 -0300
Message-ID: <8b63465c795bb0c8243eb377106138c83e0dfffe.camel@collabora.com>
References: <20200220163016.21708-7-ezequiel@collabora.com>
         <817821e3-bc51-8037-b9b9-e429c5eeb280@gmail.com> <3584403.hvncmGE4DP@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <3584403.hvncmGE4DP@phil>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org, paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, sakari.ailus-X3B1VOXEql0@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko, Johan,

Thanks for pointing this out.

On Wed, 2020-02-26 at 14:21 +0100, Heiko Stuebner wrote:
> Am Mittwoch, 26. Februar 2020, 13:24:53 CET schrieb Johan Jonker:
> > Hi Boris,
> > 
> > Dtsi nodes are sort on address.
> > The vdec node is now inserted between:
> > 
> > vdec_mmu: iommu       @ff660480
> > vdec    : video-codec @ff660000
> > iep_mmu : iommu       @ff670800
> > 
> > This should be:
> > 
> > vpu_mmu : iommu       @ff650800
> > vdec    : video-codec @ff660000
> > vdec_mmu: iommu       @ff660480
> > 
> 
> Simple things like this I can (and do) fix when applying.
> 
> The interesting question would be, did patches 1-5 get applied yet?
> As I only remember seing Hans' mail from v5, but didn't get any
> applied mail for v6 so far.
> 

Hans sent a pull request to include rkvdec driver in v5.7:

https://lore.kernel.org/linux-media/d4cc12b2-3d24-95db-102b-e5091c067e76-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org/T/#t

It doesn't include the devicetree changes though,
which I just noticed.

Would you be so kind to pick this patch and sort the node?

Thanks!
Ezequiel

> 
> Heiko
> 
> > > From: Boris Brezillon <boris.brezillon at collabora.com>
> > > 
> > > RK3399 has a Video decoder, define the node in the dtsi. We also add
> > > the missing power-domain in mmu node and enable the block.
> > > 
> > > Signed-off-by: Boris Brezillon <boris.brezillon at collabora.com>
> > > Signed-off-by: Ezequiel Garcia <ezequiel at collabora.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 14 +++++++++++++-
> > >  1 file changed, 13 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > index 33cc21fcf4c1..a07f857df12f 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > @@ -1285,8 +1285,20 @@ vdec_mmu: iommu at ff660480 {
> > >  		interrupt-names = "vdec_mmu";
> > >  		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
> > >  		clock-names = "aclk", "iface";
> > > +		power-domains = <&power RK3399_PD_VDU>;
> > >  		#iommu-cells = <0>;
> > > -		status = "disabled";
> > > +	};
> > > +
> > > +	vdec: video-codec at ff660000 {
> > > +		compatible = "rockchip,rk3399-vdec";
> > > +		reg = <0x0 0xff660000 0x0 0x400>;
> > > +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> > > +		interrupt-names = "vdpu";
> > > +		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
> > > +			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
> > > +		clock-names = "axi", "ahb", "cabac", "core";
> > > +		power-domains = <&power RK3399_PD_VDU>;
> > > +		iommus = <&vdec_mmu>;
> > >  	};
> > >  
> > >  	iep_mmu: iommu at ff670800 {
> > 
> > 
> > 
> 
> 
> 
