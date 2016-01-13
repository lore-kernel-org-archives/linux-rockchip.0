From: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>
Subject: Re: [U-Boot] [PATCH v4 6/6] rockchip: kylin: Check fastboot request
Date: Wed, 13 Jan 2016 10:28:16 -0500
Message-ID: <20160113152816.GD3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-7-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4355372036562723019=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1452675200-15941-7-git-send-email-jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============4355372036562723019==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="b93tKFax9ARJHhqA"
Content-Disposition: inline


--b93tKFax9ARJHhqA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2016 at 04:53:20PM +0800, Jeffy Chen wrote:

> We will save boot mode flag in grf's os_reg[4], if fastboot
> requested or fastboot key pressed, try to enter fastboot mode
> at preboot stage.
>=20
> Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>=20

Reviewed-by: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>

--=20
Tom

--b93tKFax9ARJHhqA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWlm0PAAoJEIRElH1W1v7Nfo0P/0oj/HLvn/56zAhp4HiIxOyY
61gvgpjncjJX6UHUyPR2VOHvSelisztusREbnrzFdhq5OKj6Eg5ZEtwjXGHIdHJu
+lZvBMEJ58R+mEcCftkPQBlnPbIqt0d2dlU9GI07gctow7IVAmcOKvBW04/R7huC
0JHtqRcTeoIJnGRuPxX6vA7HzyAtAZqYzyYo3q5Alk9UXn+cKlGc/e477nPnJGow
tYjMufSIgcU3Sl6ZuvSwVjYkwm7f8FIwOS4ufnul6+DYy7701XYklRlsXRfSvysO
zrawfYW16CmigjVRddYKsARJd9qkDJB07Rw+J1a5v5xx/X+nbrHx04gPAIBOqrcD
FNpR1e5ZAjvwWXB0dslzbF1aMfWKM91t4rA3cIMKeYB6ZqHAdNT4OdsmW68ubkKf
Hd+3o3TzeVkwP+OAeHv+7pppn7V1pb4j8JJKKfGyF2U8awsjmDxn2EwcYFPLRBJp
Q7h2O2j7wOfjzLPK8+bivBTkwP4HYV8t9qGqGO3qLJ2hQwqBaJiLGeH+G8Av0qJw
qQhCxqCC1vTb+bPsHhFtGJra8QiafNtwm7+0xlAUa1HLoAy+PDPWbjbw6kN83TAF
8iRU+Hmn+s+WQocutjNJ/dHighKvZoawONl2fkAkFqmapVh0pfn+cvFL4PnLacr8
lunEy7cEjrosGdCKtJwN
=++ER
-----END PGP SIGNATURE-----

--b93tKFax9ARJHhqA--


--===============4355372036562723019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4355372036562723019==--
