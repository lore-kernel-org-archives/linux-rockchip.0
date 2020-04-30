From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v2 1/8] iopoll: Add dealy to read poll
Date: Thu, 30 Apr 2020 10:46:28 -0400
Message-ID: <20200430144628.GU4468@bill-the-cat>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="S6B99WLZuskppeJo"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <20200430070412.12499-2-jagan@amarulasolutions.com>
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
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, patrick@blueri.se, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


--S6B99WLZuskppeJo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 12:34:05PM +0530, Jagan Teki wrote:

> Some drivers and other bsp code not only poll the
> register with timeout but also required to delay
> on each transaction.
>=20
> This patch add that requirement by adding sleep_us
> variable so-that read_poll_timeout now support
> delay as well.
>=20
> Cc: Tom Rini <trini@konsulko.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

This (and 2/8) need to say what kernel commit you're taking this from,
thanks.

--=20
Tom

--S6B99WLZuskppeJo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAl6q5LgACgkQFHw5/5Y0
tyzghgv+JjlDlsfrIrJ5nJGFcQC/yKrtAnoiFfdR6+k/xgUtymu4hpxrPpvFFTZj
ICh83/84Y2pksBUDCyupYXRywjK5994e+cP+FaU0lUQHHHo8K1d4g4Yqu62buhjf
lvbUuxnPO/fBkbeW+bi6Aku7nKHSuO9BIQayKq1FGlEvrJJRyp+IOV6eDcUPOv9v
5L9BwGHJskrRKZ2lojlreykpGOtxm+L/fqSKAYwSBGPOKoPXaW7oPTJaUV6GNTGY
KEifSNuLTFDOojE+fZr1PP7No4GI4unTUZ1KL4lVC3ye/Ofd8AqRrBspE/z+eb5s
NAF9unKxODtfGzGkdCJf0VZLRgSgjiooGVx2dVEtwHkTE8N4kGIujfJJPkRd4FKf
aunOOUtKbISZQ3pd8Fcf+C02qy1aAKYNn0vVS351YDVtDQjeCqEbOQftJw4yucC4
e2+yBexZ6oxe+kGG36IVmc8/MrXjRxUao4fBM7ubW5qGOiVIzUhQRBqIUVLrHF3b
7M4srWzQ
=Ma2Y
-----END PGP SIGNATURE-----

--S6B99WLZuskppeJo--
