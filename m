From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable eDP display on rk3399 evb
Date: Fri, 06 Mar 2020 10:57:06 +0100
Message-ID: <9485978.lUYvBEQYsF@diego>
References: <3739122.I207nbqjcC@phil> <88f23464-1868-464f-7e0b-c9cd1c12c9d5@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <88f23464-1868-464f-7e0b-c9cd1c12c9d5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 6. März 2020, 08:39:13 CET schrieb Johan Jonker:
> Hi,
> 
> Missing #address-cells, #size-cells
> Can you still fix that?
> Also include all email addresses that are produced by:
> 
> ./scripts/get_maintainer.pl --nogit-fallback --nogit
> 
> > 
> > Am Donnerstag, 5. März 2020, 12:39:12 CET schrieb Andy Yan:
> >> Add eDP panle and enable relative dt node like vop/iommu
> >> to enable eDP display on rk3399 evb.
> >> 
> >> Signed-off-by: Andy Yan <andy.yan at rock-chips.com>
> > 
> > applied for 5.7 - after removing the added blank line at the end
> > of the file
> > 
> > Thanks
> > Heiko
> 
> 
> 
> > +&edp {
> > +	status = "okay";
> > +	force-hpd;
> > +
> > +	ports {
> 
> #address-cells = <1>;
> #size-cells = <0>;
> 
> Don't forget that extra empty line here.

same comment as on the Pinebook pro, the #address-cells
under the ports node get inherited from the main edp node
in rk3399.dtsi

Heiko

> 
> > +		edp_out: port at 1 {
> > +			reg = <1>;
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +
> > +			edp_out_panel: endpoint at 0 {
> > +				reg = <0>;
> > +				remote-endpoint = <&panel_in_edp>;
> > +			};
> > +		};
> > +	};
> > +};
> 
> 
