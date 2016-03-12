From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v6 5/6] dt/bindings: rockchip: modify document of Rockchip
 power domains
Date: Sat, 12 Mar 2016 21:22:29 +0100
Message-ID: <3411414.M8tSXDEXFG@diego>
References: <1457558578-22049-1-git-send-email-zhangqing@rock-chips.com>
 <1457558661-22125-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1457558661-22125-1-git-send-email-zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, xf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Elaine,

Am Donnerstag, 10. M=E4rz 2016, 05:24:21 schrieb Elaine Zhang:
> Add binding documentation for the power domains
> found on Rockchip RK3399 SoCs
> =

> Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

that already got Acked by Kevin, aka
Acked-by: Kevin Hilman <khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>

When you get things like Acked-by, Reviewed-by, Tested-by tags in one versi=
on, =

please include them into new versions. That way these are preserved and =

reviewers won't do work twice.


Heiko


> ---
>  .../bindings/soc/rockchip/power_domain.txt         | 37
> ++++++++++++++++++++++ 1 file changed, 37 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_domain.=
txt
> b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt index
> 13dc6a3..98085c8 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> +++ b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> @@ -7,6 +7,7 @@ Required properties for power domain controller:
>  - compatible: Should be one of the following.
>  	"rockchip,rk3288-power-controller" - for RK3288 SoCs.
>  	"rockchip,rk3368-power-controller" - for RK3368 SoCs.
> +	"rockchip,rk3399-power-controller" - for RK3399 SoCs.
>  - #power-domain-cells: Number of cells in a power-domain specifier.
>  	Should be 1 for multiple PM domains.
>  - #address-cells: Should be 1.
> @@ -16,6 +17,7 @@ Required properties for power domain sub nodes:
>  - reg: index of the power domain, should use macros in:
>  	"include/dt-bindings/power/rk3288-power.h" - for RK3288 type power doma=
in.
> "include/dt-bindings/power/rk3368-power.h" - for RK3368 type power domain.
> +	"include/dt-bindings/power/rk3399-power.h" - for RK3399 type power
> domain. - clocks (optional): phandles to clocks which need to be enabled
> while power domain switches state.
> =

> @@ -45,12 +47,41 @@ Example:
>                  };
>          };
> =

> +Example 2:
> +		power: power-controller {
> +			compatible =3D "rockchip,rk3399-power-controller";
> +			#power-domain-cells =3D <1>;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			pd_vio {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +				reg =3D <RK3399_PD_VIO>;
> +
> +				pd_vo {
> +					#address-cells =3D <1>;
> +					#size-cells =3D <0>;
> +					reg =3D <RK3399_PD_VO>;
> +
> +					pd_vopb {
> +						reg =3D <RK3399_PD_VOPB>;
> +					};
> +
> +					pd_vopl {
> +						reg =3D <RK3399_PD_VOPL>;
> +					};
> +				};
> +			};
> +		};
> +
>  Node of a device using power domains must have a power-domains property,
>  containing a phandle to the power device node and an index specifying wh=
ich
> power domain to use.
>  The index should use macros in:
>  	"include/dt-bindings/power/rk3288-power.h" - for rk3288 type power doma=
in.
> "include/dt-bindings/power/rk3368-power.h" - for rk3368 type power domain.
> +	"include/dt-bindings/power/rk3399-power.h" - for rk3399 type power
> domain.
> =

>  Example of the node using power domain:
> =

> @@ -65,3 +96,9 @@ Example of the node using power domain:
>                  power-domains =3D <&power RK3368_PD_GPU_1>;
>                  /* ... */
>          };
> +
> +	node {
> +		/* ... */
> +		power-domains =3D <&power RK3399_PD_VOPB>;
> +		/* ... */
> +	};
