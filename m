From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
Date: Sun, 12 May 2019 16:45:38 +0900
Message-ID: <20190512074538.GE21483@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============7844736516753287257=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190510223437.84368-5-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: drinkcat-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Benson Leung <bleung-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


--===============7844736516753287257==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ns7jmDPpOpCD+GE/"
Content-Disposition: inline


--Ns7jmDPpOpCD+GE/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 10, 2019 at 03:34:37PM -0700, Douglas Anderson wrote:
> This reverts commit 37a186225a0c020516bafad2727fdcdfc039a1e4.
>=20
> We have a better solution in the patch ("platform/chrome: cros_ec_spi:
> Set ourselves as timing sensitive").  Let's revert the uglier and less
> reliable solution.

It isn't clear to me that it's a bad thing to have this even with the
SPI thread at realime priority.

--Ns7jmDPpOpCD+GE/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzXzyEACgkQJNaLcl1U
h9CZ8Af/Zx78PRk1JAMVQgIM9tFEJxhIQNOf2mVis4Ku5Pv89nRp1solLrhwReKo
osAxMTDdLUOKuZxBJxBdshhCdHB04UXpwDnaPeX8jXeN43azdvv0jz8/UuUmhl69
9KqCSjyH2hQ+zSCMcsZK2iN+44J4Q+Sv4Gr2R95Cpvo1kRqxz/LOfhOa3xoStb7X
eFgjYaSmEA7yS5vt2sLunTzeH7YH1o9j9tG/L0QRpeHeJIqtwcUWUctr1PUjrNdE
AXYJpaV8wrQnzFkcmf+wQt4I477pALXbx9OlmFj1tP6YgklHvFc65Z/eNNUlYePs
D0koY+RVt8j06SujCyTf+c9I/89Wng==
=4tri
-----END PGP SIGNATURE-----

--Ns7jmDPpOpCD+GE/--


--===============7844736516753287257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7844736516753287257==--
