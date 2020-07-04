From: Wolfram Sang <wsa@kernel.org>
Subject: Re: [PATCH] i2c: rk3x: support master_xfer_atomic
Date: Sat, 4 Jul 2020 08:46:39 +0200
Message-ID: <20200704064639.GI1041@kunai>
References: <20200623120646.2175569-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cVp8NMj01v+Em8Se"
Return-path: <linux-i2c-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200623120646.2175569-1-john@metanate.com>
Sender: linux-i2c-owner@vger.kernel.org
To: John Keeping <john@metanate.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--cVp8NMj01v+Em8Se
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 23, 2020 at 01:06:46PM +0100, John Keeping wrote:
> Enable i2c transactions in irq disabled contexts like poweroff where the
> PMIC is connected via i2c.
>=20
> Signed-off-by: John Keeping <john@metanate.com>

Applied to for-next, thanks!


--cVp8NMj01v+Em8Se
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl8AJc8ACgkQFA3kzBSg
KbbPvxAAofgjdztXCxS9h2qQvFbL11qvfsG/MArLVx2P7hjPvst431UdCYN2vyXY
dcOHgxHMQcHEqJNUzCsxUZ+J0XjCqVtxV727dgx6f9DNHvlKfDHIhVINev/vcK/9
0pwfC3QuZ/B5R0lLmnlMV1KJdaGdJ495claHp4N38y9Ule7mb/OW5j+VUnl8dsK6
mABOtyAbsGBY/Dk3O+Hbf6/A01HeMd4fDhuyPpblGzlh/uZXxb76tI8Zl1fvJjoB
PAylO3KUlR9DvcfTiWB/3yA2/oew2C1E5eF2o0li3vQpK8mLji5qgJivlI5kOND/
TtN6y7DYpHF1w0b143CcKmJwRQZcyQTm7Zss1jf9zK6zv/wKyOjp1uDx4a7GWi4L
sKKMamyxP7JYY5qDz5h0mx42TRjrdQ9DTXwnPfD+GnCdGlKO+M+2lGEm2PP/ls1v
79qkKx7PcNnfUJ80O8ZqN+v0+gxQipRzYJ3gxLYiCm63xC2Tk96T8q61pvEUjx0I
D8l5zlJWwFKdm6SxvxbddHujeiz/jl/OMkdsEDtZeK5wK3Yu/mnbQxF4GENUmsJk
N8ZRt+J3SLiZWHZtRgaF31Vxd4qxRDAP7JGDrFnvcr9j82kHbrINuGKlML9eoUYI
fG+ARZ6jypnKdXLk6sH7KJY7unjXN8R1m+EfjzsWJ6LjYeisAjM=
=qrn9
-----END PGP SIGNATURE-----

--cVp8NMj01v+Em8Se--
