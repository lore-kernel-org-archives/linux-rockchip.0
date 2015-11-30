From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: update the thermal management on
 rk3288
Date: Mon, 30 Nov 2015 15:17:39 +0100
Message-ID: <11978217.g8EG36HDJ0@diego>
References: <2402718.WBE9iyTUZ2@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2402718.WBE9iyTUZ2@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Dmitry Torokhov <dtor-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Romain Perier <romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Dmitry,

Am Montag, 30. November 2015, 14:13:17 schrieb Heiko St=FCbner:
> From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> =

> In some cases the machine radiating is very poor,sometime the temperature
> is rising very quickly on heavy loading.So we need have more frequent
> polling and better granularity.
> =

> Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Reviewed-by: Dmitry Torokhov <dtor-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

it looks like I forget to Cc you on this mail, because I'd like to keep you=
r =

Reviewed-by tag :-) . So can I keep your tag? Otherwise I'll just drop it w=
hen =

applying.


Thanks
Heiko

> ---
>  arch/arm/boot/dts/rk3288-thermal.dtsi | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm/boot/dts/rk3288-thermal.dtsi
> b/arch/arm/boot/dts/rk3288-thermal.dtsi index 3404066..651b962 100644
> --- a/arch/arm/boot/dts/rk3288-thermal.dtsi
> +++ b/arch/arm/boot/dts/rk3288-thermal.dtsi
> @@ -52,7 +52,7 @@ reserve_thermal: reserve_thermal {
>  };
> =

>  cpu_thermal: cpu_thermal {
> -	polling-delay-passive =3D <1000>; /* milliseconds */
> +	polling-delay-passive =3D <100>; /* milliseconds */
>  	polling-delay =3D <5000>; /* milliseconds */
> =

>  	thermal-sensors =3D <&tsadc 1>;
> @@ -63,6 +63,11 @@ cpu_thermal: cpu_thermal {
>  			hysteresis =3D <2000>; /* millicelsius */
>  			type =3D "passive";
>  		};
> +		cpu_alert1: cpu_alert1 {
> +			temperature =3D <75000>; /* millicelsius */
> +			hysteresis =3D <2000>; /* millicelsius */
> +			type =3D "passive";
> +		};
>  		cpu_crit: cpu_crit {
>  			temperature =3D <90000>; /* millicelsius */
>  			hysteresis =3D <2000>; /* millicelsius */
> @@ -74,13 +79,18 @@ cpu_thermal: cpu_thermal {
>  		map0 {
>  			trip =3D <&cpu_alert0>;
>  			cooling-device =3D
> +				<&cpu0 THERMAL_NO_LIMIT 6>;
> +		};
> +		map1 {
> +			trip =3D <&cpu_alert1>;
> +			cooling-device =3D
>  				<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>  		};
>  	};
>  };
> =

>  gpu_thermal: gpu_thermal {
> -	polling-delay-passive =3D <1000>; /* milliseconds */
> +	polling-delay-passive =3D <100>; /* milliseconds */
>  	polling-delay =3D <5000>; /* milliseconds */
> =

>  	thermal-sensors =3D <&tsadc 2>;
