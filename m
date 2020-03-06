From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add initial support for Pinebook Pro
Date: Fri, 06 Mar 2020 10:27:44 +0100
Message-ID: <4053849.MTJ45Pz6JY@diego>
References: <20200304213023.689983-2-t.schramm@manjaro.org> <6168222.Wuk326WHQK@phil> <7a799284-92ab-ea04-285e-37d655064118@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7a799284-92ab-ea04-285e-37d655064118-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>, Alexis Ballier <aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nick Xie <nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Emmanuel Vadot <manu-h+KGxgPPiopAfugRpC6u6w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 6. März 2020, 08:22:00 CET schrieb Johan Jonker:
> Hi,
> 
> Missing #address-cells, #size-cells
> Can you still fix that?
> 
> On 3/6/20 1:23 AM, Heiko Stuebner wrote:
> > Am Mittwoch, 4. März 2020, 22:30:23 CET schrieb Tobias Schramm:
> >> This commit adds initial dt support for the rk3399 based Pinebook Pro.
> >>
> >> Signed-off-by: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
> > 
> > applied for 5.7
> > 
> > Thanks
> > Heiko
> > 
> > 
> 
> > +&edp {
> > +	force-hpd;
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&edp_hpd>;
> > +	status = "okay";
> > +
> > +	ports {
> 
> #address-cells = <1>;
> #size-cells = <0>;
> 
> Don't forget that extra empty line here.

The edp ports node does get its address+size cells already from the main
node in rk3399.dtsi, so isn't needed here.


Heiko

> 
> 
> > +		edp_out: port@1 {
> > +			reg = <1>;
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +
> > +			edp_out_panel: endpoint@0 {
> > +				reg = <0>;
> > +				remote-endpoint = <&panel_in_edp>;
> > +			};
> > +		};
> > +	};
> > +};
> 
> 
