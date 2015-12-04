From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: add devicetree node to veyron minnie
Date: Fri, 04 Dec 2015 13:17:55 +0100
Message-ID: <1659535.pi5COafBrO@diego>
References: <2165846.YmcBK0foD2@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2165846.YmcBK0foD2@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 2. Dezember 2015, 19:03:56 schrieb Heiko St=FCbner:
> Minnie provides an elan,ekth3500 touchscreen over the display,
> so add the necessary node to enable it.
> =

> Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

applied to my dts32 branch after doing a s/devicetree/touchscreen/ on the =

patch subject :-)


> ---
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> b/arch/arm/boot/dts/rk3288-veyron-minnie.dts index 85f0373..699beb0 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -121,6 +121,18 @@
>  	clock-frequency =3D <400000>;
>  	i2c-scl-falling-time-ns =3D <50>;
>  	i2c-scl-rising-time-ns =3D <300>;
> +
> +	touchscreen@10 {
> +		compatible =3D "elan,ekth3500";
> +		reg =3D <0x10>;
> +		interrupt-parent =3D <&gpio2>;
> +		interrupts =3D <14 IRQ_TYPE_EDGE_FALLING>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&touch_int &touch_rst>;
> +		reset-gpios =3D <&gpio2 15 GPIO_ACTIVE_LOW>;
> +		vcc33-supply =3D <&vcc33_touch>;
> +		vccio-supply =3D <&vcc33_touch>;
> +	};
>  };
> =

>  &rk808 {
