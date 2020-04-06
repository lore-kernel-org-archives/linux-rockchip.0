From: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Date: Mon, 6 Apr 2020 11:13:13 +0200
Message-ID: <20200406091313.GF31120@duo.ucw.cz>
References: <20200327030414.5903-2-wens@kernel.org>
 <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
 <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
 <ccf35a92-7005-9c6d-a8a2-c17b714a60bc@arm.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
        protocol="application/pgp-signature"; boundary="ExXT7PjY8AI4Hyfa"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <ccf35a92-7005-9c6d-a8a2-c17b714a60bc@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: Chen-Yu Tsai <wens@kernel.org>, Johan Jonker <jbx6244@gmail.com>, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, jacek.anaszewski@gmail.com, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--ExXT7PjY8AI4Hyfa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> > > diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
> > > 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pat=
tern']
> > > arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> > > yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
> > > 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pat=
tern']
> >=20
> > Maybe we should just get rid of linux,default-trigger then?
>=20
> In this particular case, I'd say it's probably time to reevaluate the rat=
her
> out-of-date binding. The apparent intent of the "linux,default-trigger"
> property seems to be to describe any trigger supported by Linux, so either
> the binding wants to be kept in sync with all the triggers Linux actually
> supports, or perhaps it should just be redefined as a free-form

It is enough to keep it in sync with all the triggers we actually use :-).

> I'd be slightly inclined towards the latter, since the schema validator
> can't know whether the given trigger actually corresponds to the correct
> thing for whatever the LED is physically labelled on the board/case, nor
> whether the version(s) of Linux that people intend to use actually support
> that trigger (since it doesn't have to be the version contemporary with t=
he
> schema definition), so strict validation of this particular property seems
> to be of limited value.

But freeform seems acceptable, too.

> > > > -             diy-led {
> > > > +             diy_led: diy-led {
> > > >                        label =3D "red:diy";
> > > >                        gpios =3D <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> > > >                        default-state =3D "off";
> > > >                        linux,default-trigger =3D "mmc1";
> > > >                };

This label probably should be "mmc1:red:activity" or something like that.

> > > > -             yellow-led {
> > > > +             yellow_led: yellow-led {
> > > >                        label =3D "yellow:yellow-led";
> > > >                        gpios =3D <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> > > >                        default-state =3D "off";

And this label should be changed, too.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ExXT7PjY8AI4Hyfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXoryqQAKCRAw5/Bqldv6
8ulxAJ9JvBVEpW4qxrGrRgIxyoWrDXPWaACglhyoV7FLpZSAdi34M9to1ysGuB4=
=FV4E
-----END PGP SIGNATURE-----

--ExXT7PjY8AI4Hyfa--
