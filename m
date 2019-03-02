From: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: give some life to the
 rk3328-roc-cc leds
Date: Sat, 2 Mar 2019 04:51:07 +0200
Message-ID: <20190302025106.GA19296@X555LD>
References: <20190301225813.19834-1-papadakospan@gmail.com>
 <1918569.2zEEYki6OE@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1918569.2zEEYki6OE@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Mar 02, 2019 at 01:31:11AM +0100, Heiko Stuebner wrote:
> Am Freitag, 1. M=E4rz 2019, 23:58:13 CET schrieb Leonidas P. Papadakos:
> > Assign the LED's to heartbeat and sdcard io, as in other RK boards.
> > =

> > https://github.com/armbian/build/commit/f1affad5c7be62d6e93832af3556c76=
09edd0858
> > =

> > Signed-off-by: Leonidas P. Papadakos <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > ---
> >  .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 27 +++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm6=
4/boot/dts/rockchip/rk3328-roc-cc.dts
> > index 33c44e857..a881d4c8d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> > @@ -81,6 +81,33 @@
> >  		regulator-always-on;
> >  		regulator-boot-on;
> >  	};
> > +
> > +	leds {
> > +		compatible =3D "gpio-leds";
> > +		power {
> > +			label =3D "firefly:blue:power";
> > +			linux,default-trigger =3D "heartbeat";
> > +			gpios =3D <&rk805 1 GPIO_ACTIVE_LOW>;
> > +			default-state =3D "on";
> > +			mode =3D <0x23>;
> > +		};
> > +
> > +		user {
> > +			label =3D "firefly:yellow:user";
> > +			linux,default-trigger =3D "mmc1";
> > +			gpios =3D <&rk805 0 GPIO_ACTIVE_LOW>;
> > +			default-state =3D "off";
> > +			mode =3D <0x05>;
> > +		};
> > +
> > +		ir {
> > +			status =3D "disabled";
> =

> please explain that. Is this an IR transmitting LED? And why are you
> adding a disabled property?
> =

> Similar to how the kernel should not contain commented out code
> having a disabled node in the actual board file is strange.
> =

> =

> Heiko
> =


It probably is. See the image of the board on this site:
https://shop.t-firefly.com/goods.php?id=3D65

Should I make a PATCH v2 without it?

> > +			/* gpios =3D <&gpio2 GPIO_C2 GPIO_ACTIVE_HIGH>; */
> > +			linux,default-trigger =3D "ir";
> > +			default-state =3D "off";
> > +			mode =3D <0x00>;
> > +		};
> > +	};
> >  };
> >  =

> >  &cpu0 {
> > =

> =

> =

> =

> =
