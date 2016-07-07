From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Thu, 7 Jul 2016 10:16:40 +0200
Message-ID: <20160707081640.GG6247@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160706142719.73713123@bbrezillon>
 <CAD=FV=W7kjMsXR3aRogCpEZWgvt2UZ7rX0B2Zg9yZOW7oGwepw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y52ms2kKCoiSthOi"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=W7kjMsXR3aRogCpEZWgvt2UZ7rX0B2Zg9yZOW7oGwepw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>, Lee Jones <lee.jones@linaro.org>, Brian Norris <briannorris@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org


--y52ms2kKCoiSthOi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 06, 2016 at 11:31:45AM -0700, Doug Anderson wrote:

> I'll certainly let Mark comment here, but:

> * For enabling the PWM, I think you want want "regulator-enable-ramp-dela=
y".

In the absence of that we should just be treating it as a voltage change
=66rom zero.  Some regulators do have different characteristics on initial
ramp up but if we don't know about them we ought to just use the regular
one.  Note that the core does have standard code to apply delays which
may just be working here.

--y52ms2kKCoiSthOi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXfg/lAAoJECTWi3JdVIfQjzIH/2AyBk8KjQXzOVx1L3rKxXxS
aDKN+AgOTzXubi5osgyOs4yNwFKhgkDXuSEVE446WWF/Pk8RphxKZx53YRZPfBVP
3KlZbJCjTYZ3vmxq08vcZE2ubZcv9lSWH3nk4jw2E7j9zbXQA4i0gVHfBhSFJKKp
MpfuSydYr3fg2z88+d0eEaOEp0kzSnvB8y2Yp7DmhcdDVQCg8ZjJJyJJ6GIv5C2E
DfxBR19+8Fke76JIBQvEUDcaXXQ+mJXxtN9B/nTBE5bBu7iPbqCcPOvv5TukDoC5
cDOSVJHKZFIUs7kNGVyU455OaGEkvUguqizSx15v1lOv+HtQH+eZDIo75ziM/r4=
=Uih+
-----END PGP SIGNATURE-----

--y52ms2kKCoiSthOi--
