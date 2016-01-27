From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/9] ASoC: rockchip: i2s: add support for grabbing
 output clock to codec
Date: Wed, 27 Jan 2016 12:47:00 +0000
Message-ID: <20160127124700.GL6042@sirena.org.uk>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com>
 <20160122171815.GD6588@sirena.org.uk>
 <56A57733.8020200@rock-chips.com>
 <2073307.S3XLZp3hP0@diego>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AQNmCumFClRcGgHG"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2073307.S3XLZp3hP0@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Jianqun Xu <jay.xu@rock-chips.com>, Sonny Rao <sonnyrao@chromium.org>, Caesar Wang <wxt@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, leozwang@google.com, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Kees Cook <keescook@google.com>
List-Id: linux-rockchip.vger.kernel.org


--AQNmCumFClRcGgHG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 26, 2016 at 10:52:25AM +0100, Heiko St=C3=BCbner wrote:
> Am Montag, 25. Januar 2016, 09:15:31 schrieb Jianqun Xu:
> > =E5=9C=A8 23/01/2016 01:18, Mark Brown =E5=86=99=E9=81=93:

> > > controller driver that ensures that the clock is enabled.  The driver
> > > that manages the clock should be the one that uses it, like I say this
> > > means you should add the code to enable the clock to the CODEC driver=
 if
> > > the CODEC driver needs the clock enabled.

> > But the property responsible to the factor, not care if the mclk source
> > clock is enabled or not. So does the simple-card driver can add support
> > to enable/disable mclk ?

> The mclk-input is part of the codec I'd think. So you'd want the clocks-
> property in the i2c entry describing the codec itself and implement the c=
lk=20
> operations in the codec driver as well.

> See codec-drivers for da7213, da7218,max98090 and many more for reference.

Yes, as I have said repeatedly including in the mail quoted above the
CODEC is using the clock so should be managing it.

--AQNmCumFClRcGgHG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWqLxDAAoJECTWi3JdVIfQcm8H/2tjcrnlHArGWFRoc7eBcTKM
qt1JNyK2mIqLq+Yzwww5LXCHt2+aZDAOhXY+UjPmdUHe0SUb1+p1gVFiNolG20+7
B6uz5lVz47gVr1W5KoACEk761r6QyH1jCX3Ks74F/HwmeF7qljD/gkn8MT1xry/w
qG8ln5sdJJM9B27HdShjE1xhWCm6VmdNV5Zhqy/nq+jFsD3wZpmf15cNenNmIq7q
T7ZjXrkZE7+q5EyzOIl3UanRMxX50sihuADtdkAiN6zL7/zlAvTBU/U7a2NBpuE3
4GSgjlQpILogaAjBS+50bx6/+u52TZiH+J6D5BS3nf+7BU/ki7hurouJs4WTvHw=
=yPjd
-----END PGP SIGNATURE-----

--AQNmCumFClRcGgHG--
