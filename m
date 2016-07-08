From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Fri, 8 Jul 2016 18:41:49 +0200
Message-ID: <20160708164149.GE1151@ulmo.ba.sec>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160701080614.GA9196@sirena.org.uk>
 <CAD=FV=WKR_Fq6o34886RCY-T-6AKdRqFz9H1aTiRq7Zu=o8TWA@mail.gmail.com>
 <20160702174752.7e893ac2@bbrezillon>
 <20160704085336.GT6247@sirena.org.uk>
 <20160704110504.10a15c1c@bbrezillon>
 <20160704091344.GY6247@sirena.org.uk>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WK3l2KTTmXPVedZ6"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20160704091344.GY6247@sirena.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>, Doug Anderson <dianders@chromium.org>, Lee Jones <lee.jones@linaro.org>, Brian Norris <briannorris@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org


--WK3l2KTTmXPVedZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 04, 2016 at 11:13:44AM +0200, Mark Brown wrote:
> On Mon, Jul 04, 2016 at 11:05:04AM +0200, Boris Brezillon wrote:
>=20
> > I understand, but can we still expect to have it in 4.8 (I mean,
> > assuming Thierry is okay taking the first 2 patching for 4.8 too)?
>=20
> Possibly - we are getting very close to the merge window now, I don't
> know what Thierry's policies are on applying things as the merge window
> gets near.

I don't have hard deadlines, especially not for new code that has zero
potential for regressing. I've now pulled that whole series into the PWM
tree.

Thierry

--WK3l2KTTmXPVedZ6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXf9fNAAoJEN0jrNd/PrOhST8P/AvJSSDGIGEUcUj+bn6uUDem
1owLzOiYYwrGqwzplC4iBAUOKMrsa68orwsN3Zsf4Znyd2llspS2E1+9XOec1w8o
9pCFfmQxArlmmAvY+yR7m1QxmwRqn+qLY3uiLreqKVvcCfnIiLAgL3dm4coYQIwM
U9HLf7dv5D7FqJdggZJJSziNW+xj+R0SiTDLltxQ2JFxQ2Xpwp7JEBHFIMH/OUle
0BSWDaY6sgDeMKZqu8Q08hR6SwJDHBSvm4FFFrAIOBxkBoxDDwF2aQF7WIbbDg5U
NEn+uCa1w/fmRzCj7/qwfa1SzR3beaL4m3WBDq6Yd1okkR8FYI1I6lIF4ZPdmqad
RM2uCokNOLZ+V6hzmV6XR8xkSnoAUvmQzniBc3FFIkfJo/APSy+7ljIZNkNcaPEH
HMs+WxhJWDpm4R9R3/ChPqOqrXAFudJoCdUZzRzMD79ysHCvQJAKI4fFF67SbT8q
pg2LsxM7Y51MidUqolnU/elMbREEt0xkAhtQjF7Y76fkp27if+Mp6/tP7PKRmn0s
NjrwP6u4pgZjo9uQX1QMdwyVcN6FG8UoHNRN/X4x7hlgsGdSBWRnrgYecN6aJjUH
qE5vvXV7P06BP58p5i4Wr7NHt/BnOuhx05cp9uQEUt/cn0XH/c99j3HMkv+kUZJp
Xl8yXamAFUbux6907MyN
=DpSQ
-----END PGP SIGNATURE-----

--WK3l2KTTmXPVedZ6--
