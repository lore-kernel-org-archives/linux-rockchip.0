From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 2/2] ARM: dts: rockchip: add veyron-minnie board
Date: Sat, 08 Aug 2015 00:50:15 +0200
Message-ID: <4355831.vggPnSTQsd@diego>
References: <1763907.pckMEaRNPs@diego>
 <CAD=FV=XVxxDzXkz7DuX47d=3MENzGkHrBYYDzH_KCKDpyORYYA@mail.gmail.com>
 <CAKdAkRTVbGeDY2J_T1N1x1yQaq7vCnO71TVmQGAZAkMaQsz2qw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAKdAkRTVbGeDY2J_T1N1x1yQaq7vCnO71TVmQGAZAkMaQsz2qw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 7. August 2015, 15:13:13 schrieb Dmitry Torokhov:
> On Fri, Aug 7, 2015 at 3:06 PM, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wro=
te:
> > Heiko,
> > =

> > On Thu, Aug 6, 2015 at 10:37 AM, Heiko St=FCbner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrot=
e:
> >> +&i2c3 {
> >> +       status =3D "okay";
> >> +
> >> +       /*
> >> +        * Touchscreen pin control is shared between Atmel and Elan
> >> devices, +        * so we have to pull it up to the bus level.
> >> +        */
> >> +       pinctrl-names =3D "default";
> >> +       pinctrl-0 =3D <&i2c3_xfer &touch_int &touch_rst>;
> >> +
> >> +       clock-frequency =3D <400000>;
> >> +       i2c-scl-falling-time-ns =3D <50>;
> >> +       i2c-scl-rising-time-ns =3D <300>;
> >> +
> >> +       touchscreen@10 {
> >> +               compatible =3D "elan,ekth3500";
> >> +               reg =3D <0x10>;
> >> +               interrupt-parent =3D <&gpio2>;
> >> +               interrupts =3D <14 IRQ_TYPE_EDGE_FALLING>;
> >> +               reset-gpios =3D <&gpio2 15 GPIO_ACTIVE_LOW>;
> >> +               vcc33-supply =3D <&vcc33_touch>;
> >> +               vccio-supply =3D <&vcc33_touch>;
> >> +       };
> >> +
> >> +       touchscreen@4a {
> >> +               compatible =3D "atmel,atmel_mxt_ts";
> >> +               reg =3D <0x4a>;
> >> +               atmel,reset-gpios =3D <&gpio2 15 GPIO_ACTIVE_LOW>;
> >> +               avdd-supply =3D <&vcc5v_touch>;
> >> +               interrupt-parent =3D <&gpio2>;
> >> +               interrupts =3D <14 IRQ_TYPE_EDGE_FALLING>;
> >> +               vdd-supply =3D <&vcc33_touch>;
> > =

> > Technically I don't think most of these properties exist upstream, but
> > Dmitry (now CCed) might know more.
> > =

> > ...actually similar for elan.  At least I don't see 'reset-gpios', nor
> > 'vcc33-supply' and 'vccio-supply' in the bindings when I checkout
> > linuxnext...
> =

> I just merged the Elan regulator/gpio support, it will show up in the next
> next.
> > Oh, and also locally our tree has hacks in it to handle the fact that
> > both atmel and elan will try to grab the same reset GPIO.  I'm nearly
> > certain that Dmitry said that the current hacks we have wouldn't be
> > appropriate for upstream.  I had some proposals for better solutions,
> > but they were slightly more controversial.  In any case, I think all
> > shipping devices ended up using one or the other of these two
> > touchscreens (I forget which), so you could probably simplify and just
> > pick one of them.  If old prototype devices don't work upstream it
> > wouldn't be the end of the world.
> =

> I think if you pick Elan for this board it will cover majority (all?)
> devices that actually shipped.

I guess I'll simply drop the touchscreens for for this initial submission -=
 at =

this point in time we don't have support for the internal display anyway, s=
o I =

can sort out the touchscreens a bit later.

armsoc has a slightly early cutoff most of the time, so I'll try to land th=
e =

initial support and worry about the smaller tidbits later :-)


Heiko
