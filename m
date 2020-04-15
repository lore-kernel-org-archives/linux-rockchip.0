From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v2 1/3] environment: distro: Add SF distro command
Date: Wed, 15 Apr 2020 16:00:17 -0400
Message-ID: <20200415200017.GH12111@bill-the-cat>
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
 <20200410182631.11951-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="wayzTnRSUXKNfBqd"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <20200410182631.11951-2-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


--wayzTnRSUXKNfBqd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 11:56:29PM +0530, Jagan Teki wrote:

> Add distro boot command support for SPI flash (SF).
>=20
> This distro boot will read the boot script at specific
> location at the flash and start sourcing the same.
>=20
> This file need to include on required include/config
> file.
>=20
> Cc: Tom Rini <trini@konsulko.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Tom Rini <trini@konsulko.com>

--=20
Tom

--wayzTnRSUXKNfBqd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAl6XZ9EACgkQFHw5/5Y0
tyx7JgwAoMrgOz3n3RgpUbpqGAiC3vthKl6cIohB+T2P1V44o/nC81nysrykBb1b
kTztUHEsZT4nK1k+9OXVKZkGP96fYTcwSzZtUSPiYqOvBgVP4YYJBPLAf0sDsvyY
fM/LkMpv6uQp8dTjCYBRkFi3pYC0kacad1zLdRGH6HM2Fg4wleXzJuDgsrfrJjiI
ok9IlX28+zKQ6wkXmEJwFk4N7jcRyqIJ39msc8pSTqDaLtb0J4cnZAY8oVg0+t0G
ONz2L+ZXTUDRtSy/bT4EpK97MwEcUx3H5Hey7WxE2KittmK3EeAhQpyA3P3oueIy
MWvO5fKfH7oLyAPL08EctSgsjuG6m/rQTGm0BggzCh+s+CB4cZyY/r38eeJj7LYF
WakBgyGNw0hVzCUX+mVbF25I+48f5m9tauHhItztwigZ8lHQuAkRwNvC349WIqMy
eokX9WmTe6GJaiG40CU2Lk3AkOgDxREkyemF49PweCJK3AT4uvjj80Nt0zBDyxI+
bP807D7X
=vqDA
-----END PGP SIGNATURE-----

--wayzTnRSUXKNfBqd--
