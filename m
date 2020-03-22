From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix defines in pd_vio node for
 rk3399
Date: Sun, 22 Mar 2020 16:45:39 +0100
Message-ID: <48a91cc1-7751-4df0-a2cd-940eb829fa16@gmail.com>
References: <20200322140046.5824-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200322140046.5824-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

The RK3399 TRM uses both

'pd_tcpc0, pd_tcpc1'

as

'pd_tcpd0, pd_tcpd1'.

What should we use here?

Thanks.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 8aac201f0..3dc8fe620 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1087,12 +1087,12 @@
>  					pm_qos = <&qos_isp1_m0>,
>  						 <&qos_isp1_m1>;
>  				};
> -				pd_tcpc0@RK3399_PD_TCPC0 {
> +				pd_tcpc0@RK3399_PD_TCPD0 {
>  					reg = <RK3399_PD_TCPD0>;
>  					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
>  						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
>  				};
> -				pd_tcpc1@RK3399_PD_TCPC1 {
> +				pd_tcpc1@RK3399_PD_TCPD1 {
>  					reg = <RK3399_PD_TCPD1>;
>  					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
>  						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
> -- 
> 2.11.0
