From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: make sure edp_24m is associated
 to xin24m on veyron
Date: Thu, 03 Dec 2015 16:43:02 +0100
Message-ID: <3006808.mS23SN11BJ@diego>
References: <2767415.mEkgRbSSUB@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2767415.mEkgRbSSUB@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 1. Dezember 2015, 18:14:27 schrieb Heiko St=FCbner:

applied all three patches to my dts32 branch for 4.5, after disabling emmc =

tuning on mickey (in a similar fashion as on minnie) for the short term.

> The edp-24m clock has two possible sources: the 24MHz oscillator as well
> as an external 27MHz input. The power-on-default is the 27MHz clock which
> is not supplied on all Rockchip boards. While on all current boards and
> also all Veyron Chromebooks the bootloader seems to adapt the muxing to
> the internal source, this doesn't seem to be the case on headless veyron
> devices like brain and mickey making the edp-24m clock an orphan.
> On the hardware side the 27m input also is not connected at all.
> =

> With the upcoming deferral of orphan-clocks this results in the power-
> domain code deferring, as it cannot request the needed clock and if the
> synchronous reset is sucessfullat all in this case is also unknown.
> =

> So fix that by making sure, the edp-24m clock is muxed to the internal
> 24MHz oscillator at all times.
> =

> Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> ---
> It seems I had some issues sending, sorry about the double-mails.
> =

>  arch/arm/boot/dts/rk3288-veyron.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi
> b/arch/arm/boot/dts/rk3288-veyron.dtsi index 5e61f07..9fce91f 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -340,6 +340,11 @@
>  	i2c-scl-rising-time-ns =3D <1000>;
>  };
> =

> +&power {
> +	assigned-clocks =3D <&cru SCLK_EDP_24M>;
> +	assigned-clock-parents =3D <&xin24m>;
> +};
> +
>  &pwm1 {
>  	status =3D "okay";
>  };
