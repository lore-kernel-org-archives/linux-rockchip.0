From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH] rk3399: Add BOOTENV_SF command
Date: Fri, 26 Jun 2020 16:21:20 -0400
Message-ID: <20200626202120.GC8432@bill-the-cat>
References: <20200608141708.31844-1-jagan@amarulasolutions.com>
 <CAMty3ZDrutZ3CzCt-ZNnjeRfPNeKVRu_ct6oUVSSk_b5tPncvQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="j+Rb494BzBd9643b"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <CAMty3ZDrutZ3CzCt-ZNnjeRfPNeKVRu_ct6oUVSSk_b5tPncvQ@mail.gmail.com>
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
Cc: Kever Yang <kever.yang@rock-chips.com>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org


--j+Rb494BzBd9643b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 25, 2020 at 08:32:10PM +0530, Jagan Teki wrote:
> On Mon, Jun 8, 2020 at 7:47 PM Jagan Teki <jagan@amarulasolutions.com> wr=
ote:
> >
> > Add missing BOOTENV_SF command in rk3399 config.
> >
> > Fix it.
> >
> > Fixes: f263b860acf8 ("rk3399: Enable SF distro bootcmd")
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Reported-by: Suniel Mahesh <sunil@amarulasolutions.com>
> > Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
> > ---
>=20
> Can someone push this fix patch to master?

Kever, do you want me to pick this up?  Do you have some objection?
FWIW, include/configs/rk3399_common.h should get listed under some
MAINTAINER entry directly.  Thanks!

--=20
Tom

--j+Rb494BzBd9643b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAl72WMAACgkQFHw5/5Y0
tyyVEQv/cHchlr3pGsMbLRwPK22HBj60BDfN8zbXFuoAXMcnrRBEbkDXc1UpCLLJ
piYU7FM8wDlfbWxO2i7bDn7GrUMb5XTdgX6or+IPjdAV0hlR522LWmEsBLmzEz4+
fyaynUK8VF/44GiuZ6wkZ66/OZbDf+BwNjrtSDM/N9dvbuLfDMkJ9S0ToT8SN3mu
KICwBWAVVklxjqmU75OrSDdPm3Jo+EvHbzzkuwXt7J4fgva1T/zP4OnSlJSg0ZbL
Z7BfxzCK5SHBMa1YMKSKUPuBQwrRLmwGe5NURQEHC1CfEPQE7S6aJHInAUiuKUkD
vNeACN8ygHFubByd5ycQWUXFPq10nheoDDDNdy9RNlcdMO7wSQHsvLmNOrp1yS0Y
7+k5wJf8nSfaheALygvpgpWXGEN/DqIKjK2LYKdoeagK7EhW4+l0Zo6Csm8BCiyE
eAe9B/CC+xqQttdJsCPhDyCpm3hH0xkAPrgN9rfN6Yl7qJpav07ytOENJbC6KUOq
sVl3kkHq
=WfhL
-----END PGP SIGNATURE-----

--j+Rb494BzBd9643b--
