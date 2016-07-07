From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Thu, 7 Jul 2016 10:03:56 +0200
Message-ID: <20160707080356.GF6247@sirena.org.uk>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
 <20160706142719.73713123@bbrezillon>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============7093906397445676541=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160706142719.73713123@bbrezillon>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Boris Brezillon <boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============7093906397445676541==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="02C+GlUcNvfRYA2K"
Content-Disposition: inline


--02C+GlUcNvfRYA2K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 06, 2016 at 02:27:19PM +0200, Boris Brezillon wrote:

> I realize I may have introduced another bug when adding the
> ->enable()/disable() methods: we are only waiting for the ramp up delay
> when changing the voltage, but it should probably be applied when
> enabling the PWM, and conditionally applied when changing the voltage
> only if the PWM is enabled.

Yes, it should be applied on enable. =20

--02C+GlUcNvfRYA2K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXfgzrAAoJECTWi3JdVIfQegAH/Alb5c7hQiNVMwlKHXtEwhl5
CVsF/CK3pLnG70tRHqXc+gVPdZeLSs9CxxuWAA8hp5tYIkkMvffoyDNcnshKW/F3
ol0AoQ+uo25qf5JAjcbJXLZA97hGOhiJLwv24MKjfo9fxPYUNMmUKDMsKuud5cck
2Gne/W6LjmdhaqBmluXRkMT9d9ef0KvcR7NNqgXx9pPIqoJMBdzvHv7AmJaauE0d
oXVdHIQtTiy/NaQ+wxGJVcX9REqS9wbnSu2EJqTbokrZnWbbr4d4dKUqu1IYKFM5
fXqGW8xs5X6/XmfI8iflUyanmJJTufeZMO2LxgycgAGBW9U9QmDfPEPxEliEKPQ=
=2ZsX
-----END PGP SIGNATURE-----

--02C+GlUcNvfRYA2K--


--===============7093906397445676541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7093906397445676541==--
