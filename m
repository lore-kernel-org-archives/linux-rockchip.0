From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Thu, 7 Jul 2016 10:17:11 +0200
Message-ID: <20160707081711.GH6247@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160701080614.GA9196@sirena.org.uk>
 <CAD=FV=WKR_Fq6o34886RCY-T-6AKdRqFz9H1aTiRq7Zu=o8TWA@mail.gmail.com>
 <20160702075939.GD6247@sirena.org.uk>
 <CAD=FV=W2JDP3EAdz9CWUKbcoCz34Mm7oCF2QCD4W45tyBOaP+A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Fv4aQf9orjE3TOVF"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=W2JDP3EAdz9CWUKbcoCz34Mm7oCF2QCD4W45tyBOaP+A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>, Lee Jones <lee.jones@linaro.org>, Brian Norris <briannorris@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org


--Fv4aQf9orjE3TOVF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 06, 2016 at 11:30:59AM -0700, Doug Anderson wrote:

> Note: which boards are you thinking would test this?  My grep showed
> zero boards using regulator-ramp-delay with PWM regulator.  While this
> is an important fix for anyone using the ramp delay, I'm not convinced
> that anyone in mainline is using it.

I just meant there are boards out there using the regulator, not the
specific feature.

--Fv4aQf9orjE3TOVF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXfhAGAAoJECTWi3JdVIfQSUgH/iRm83WyjWjDf2PJQJTaBsYQ
Wd7U6BQw39vGE4KZRfuCuePxrX27o3A1iphDwkaSKJ8iRtWozj0V+5FlasOi7+SQ
yQkXdPR0IZfPVpjV4G2ZgmD6pjD0pphrnRur2lrllAXZoDOANHCwQQ7pwif7Hiwd
gC/wMtJOkOpxrIecy1eTygQVWonxkecEl9ozdgXVHxyBOC2a+EiBiHwJ1tJswCPu
WDWdYGbBo7o1CBW0gUb+gDwrEsRGx0rV5ciGL+1YuznM2yGWLOARXcHvExh2wa3l
5lp8GUCWPQEMqfaY92JRv2+VSXDe6oUut7sqMSjyNMMzd1Bgl0kTXFe3LKG4FW0=
=R6Wr
-----END PGP SIGNATURE-----

--Fv4aQf9orjE3TOVF--
