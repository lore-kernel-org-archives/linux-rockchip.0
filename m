From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/3] phy: rockchip-usb: should be a child device of the GRF
Date: Tue, 19 Apr 2016 08:13:47 +0200
Message-ID: <2045729.fIbxLc8i6o@diego>
References: <1459431812-6286-1-git-send-email-heiko@sntech.de> <1459431812-6286-2-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1459431812-6286-2-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon.

Am Donnerstag, 31. M=E4rz 2016, 15:43:30 schrieb Heiko Stuebner:
> The usb-phy is fully enclosed in the general register files (GRF).
> Therefore as seen from the device-tree it shouldn't be a separate pla=
tform-
> device but instead a sub-device of the GRF - using the simply-mfd mec=
hanism.
>=20
> As the usb-phy is part of the kernel for some releases now, we keep
> the old (and now deprecated) binding for compatibility purposes.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

could you look into picking this patch up for 4.7?

Same principle as for the other phy drivers, but it's already in the ke=
rnel=20
for a while, so it gets a fallback for the old binding and can go throu=
gh the=20
normal way.

The other two (devicetree-)patches I would then simply queue for 4.8 my=
self=20
after you're fine with the driver-side.


Thanks
Heiko

> ---
>  .../devicetree/bindings/phy/rockchip-usb-phy.txt   | 27
> ++++++++++++++-------- drivers/phy/phy-rockchip-usb.c                =
     |
> 14 ++++++++--- 2 files changed, 28 insertions(+), 13 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.t=
xt
> b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt index
> 68498d5..cc6be96 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> @@ -5,11 +5,13 @@ Required properties:
>       "rockchip,rk3066a-usb-phy"
>       "rockchip,rk3188-usb-phy"
>       "rockchip,rk3288-usb-phy"
> - - rockchip,grf : phandle to the syscon managing the "general
> -   register files"
>   - #address-cells: should be 1
>   - #size-cells: should be 0
>=20
> +Deprecated properties:
> + - rockchip,grf : phandle to the syscon managing the "general
> +   register files" - phy should be a child of the GRF instead
> +
>  Sub-nodes:
>  Each PHY should be represented as a sub-node.
>=20
> @@ -28,14 +30,19 @@ Optional Properties:
>=20
>  Example:
>=20
> -usbphy: phy {
> -	compatible =3D "rockchip,rk3288-usb-phy";
> -	rockchip,grf =3D <&grf>;
> -	#address-cells =3D <1>;
> -	#size-cells =3D <0>;
> +grf: syscon@ff770000 {
> +	compatible =3D "rockchip,rk3288-grf", "syscon", "simple-mfd";
> +
> +...
> +
> +	usbphy: phy {
> +		compatible =3D "rockchip,rk3288-usb-phy";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
>=20
> -	usbphy0: usb-phy0 {
> -		#phy-cells =3D <0>;
> -		reg =3D <0x320>;
> +		usbphy0: usb-phy0 {
> +			#phy-cells =3D <0>;
> +			reg =3D <0x320>;
> +		};
>  	};
>  };
> diff --git a/drivers/phy/phy-rockchip-usb.c b/drivers/phy/phy-rockchi=
p-usb.c
> index f62d899..23f33db 100644
> --- a/drivers/phy/phy-rockchip-usb.c
> +++ b/drivers/phy/phy-rockchip-usb.c
> @@ -397,8 +397,12 @@ static int rockchip_usb_phy_probe(struct
> platform_device *pdev) phy_base->pdata =3D match->data;
>=20
>  	phy_base->dev =3D dev;
> -	phy_base->reg_base =3D syscon_regmap_lookup_by_phandle(dev->of_node=
,
> -							     "rockchip,grf");
> +	phy_base->reg_base =3D ERR_PTR(-ENODEV);
> +	if (dev->parent && dev->parent->of_node)
> +		phy_base->reg_base =3D syscon_node_to_regmap(dev->parent->of_node)=
;
> +	if (IS_ERR(phy_base->reg_base))
> +		phy_base->reg_base =3D syscon_regmap_lookup_by_phandle(
> +						dev->of_node, "rockchip,grf");
>  	if (IS_ERR(phy_base->reg_base)) {
>  		dev_err(&pdev->dev, "Missing rockchip,grf property\n");
>  		return PTR_ERR(phy_base->reg_base);
> @@ -463,7 +467,11 @@ static int __init rockchip_init_usb_uart(void)
>  		return -ENOTSUPP;
>  	}
>=20
> -	grf =3D syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
> +	grf =3D ERR_PTR(-ENODEV);
> +	if (np->parent)
> +		grf =3D syscon_node_to_regmap(np->parent);
> +	if (IS_ERR(grf))
> +		grf =3D syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
>  	if (IS_ERR(grf)) {
>  		pr_err("%s: Missing rockchip,grf property, %lu\n",
>  		       __func__, PTR_ERR(grf));
