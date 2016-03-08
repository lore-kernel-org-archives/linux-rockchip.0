From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH v5 5/6] dt/bindings: rockchip: modify document of Rockchip
 power domains
Date: Tue, 8 Mar 2016 19:09:21 +0800
Message-ID: <56DEB2E1.6060808@gmail.com>
References: <1456992233-25164-1-git-send-email-zhangqing@rock-chips.com>
 <1456992557-25331-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1456992557-25331-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>, wxt@rock-chips.com
Cc: heiko@sntech.de, khilman@baylibre.com, huangtao@rock-chips.com, xxx@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, zyw@rock-chips.com, jay.xu@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



=E5=9C=A8 2016=E5=B9=B403=E6=9C=8803=E6=97=A5 16:09, Elaine Zhang =E5=86=
=99=E9=81=93:
> Add binding documentation for the power domains
> found on Rockchip RK3399 SoCs.
> RK3399 pd on/off not need to enable clk which in this pd.
> So remove the clocks in the rk3399 pd example.
>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>   .../bindings/soc/rockchip/power_domain.txt         | 37 +++++++++++=
+++++++++++
>   1 file changed, 37 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_dom=
ain.txt b/Documentation/devicetree/bindings/soc/rockchip/power_domain.t=
xt
> index 13dc6a3..98085c8 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> +++ b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> @@ -7,6 +7,7 @@ Required properties for power domain controller:
>   - compatible: Should be one of the following.
[....]
>  =20
>   Example of the node using power domain:
>  =20
> @@ -65,3 +96,9 @@ Example of the node using power domain:
>                   power-domains =3D <&power RK3368_PD_GPU_1>;
>                   /* ... */
>           };
> +
> +	node {
> +		/* ... */
> +		power-domains =3D <&power RK3399_PD_VOPB>;
> +		/* ... */
> +	};

Trivial: typo
                 power: power-controller {
@@ -92,10 +92,10 @@ Example of the node using power domain:
         };

         node {
-                /* ... */
-                power-domains =3D <&power RK3368_PD_GPU_1>;
-                /* ... */
-        };
+               /* ... */
+               power-domains =3D <&power RK3368_PD_GPU_1>;
+               /* ... */
+       };





--=20
Thanks,
Caesar
