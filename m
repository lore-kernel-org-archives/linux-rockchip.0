From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add the camera interface description of the PX30
Date: Fri, 03 Apr 2020 18:27:27 +0200
Message-ID: <4068915.k80quj1ed4@phil>
References: <20200403142122.297283-1-maxime.chevallier@bootlin.com> <20200403142122.297283-4-maxime.chevallier@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200403142122.297283-4-maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Hans Verkuil <hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 3. April 2020, 16:21:22 CEST schrieb Maxime Chevallier:
> The PX30 has a camera interface, supporting CSI2, BT656 and Parallel
> modes. Add a DT description for this interface.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 3e1f51a66daf..38ed35bc9b7a 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1058,6 +1058,18 @@ dsi_in_vopl: endpoint@1 {
>  		};
>  	};
>  
> +	cif: cif@ff490000 {

nit: please sort by register address, so @ff490000 is definitly
somewhere after that ff460000 of the vopb ;-)

> +		compatible = "rockchip,px30-cif";
> +		reg = <0x0 0xff490000 0x0 0x200>;
> +		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>, <&cru SCLK_CIF_OUT>;
> +		clock-names = "aclk_cif", "hclk_cif", "pclk_cif", "cif_out";
> +		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
> +		reset-names = "rst_cif_a", "rst_cif_h", "rst_cif_pclkin";
> +		power-domains = <&power PX30_PD_VI>;

nit: while doing the above, ideally just move the power-domains above resets
everthing else is sorted nicely.


Thanks
Heiko

> +		status = "disabled";
> +	};
> +
>  	vopb: vop@ff460000 {
>  		compatible = "rockchip,px30-vop-big";
>  		reg = <0x0 0xff460000 0x0 0xefc>;
> 
