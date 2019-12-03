From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v4 8/8] linux/log2.h: Use roundup/dow_pow_two() on 64bit
 calculations
Date: Tue, 03 Dec 2019 17:06:43 +0100
Message-ID: <d1c87c83f38e74f0c6b0692248fe88dfd2bdec3e.camel@suse.de>
References: <20191203114743.1294-1-nsaenzjulienne@suse.de>
         <20191203114743.1294-9-nsaenzjulienne@suse.de>
         <CAL_JsqLMCXdnZag3jihV_dzuR+wFaVKFb7q_PdKTxTg0LVA6cw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-VHC+bPmpbRjqhnK2ykxw"
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <CAL_JsqLMCXdnZag3jihV_dzuR+wFaVKFb7q_PdKTxTg0LVA6cw@mail.gmail.com>
Sender: netdev-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>
Cc: Andrew Murray <andrew.murray@arm.com>, Marc Zyngier <maz@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>, Tariq Toukan <tariqt@mellanox.com>, Frank Rowand <frowand.list@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>, "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>, james.quinlan@broadcom.com, Matthias
List-Id: linux-rockchip.vger.kernel.org


--=-VHC+bPmpbRjqhnK2ykxw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Tue, 2019-12-03 at 09:53 -0600, Rob Herring wrote:
> On Tue, Dec 3, 2019 at 5:48 AM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > The function now is safe to use while expecting a 64bit value. Use it
> > where relevant.
>=20
> What was wrong with the existing code? This is missing some context.

You're right, I'll update it.

For most of files changed the benefit here is factoring out a common patter=
n
using the standard function roundup/down_pow_two() which now provides corre=
ct
64bit results.

As for of/device.c and arm64/iort.c it's more of a readability enhancement.=
 I
consider it's easier to understand than the current calculation as it abstr=
acts
the math.

> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  drivers/acpi/arm64/iort.c                        | 2 +-
> >  drivers/net/ethernet/mellanox/mlx4/en_clock.c    | 3 ++-
> >  drivers/of/device.c                              | 3 ++-
>=20
> In any case,
>=20
> Acked-by: Rob Herring <robh@kernel.org>
>=20

Thanks!

Regards,
Nicolas


--=-VHC+bPmpbRjqhnK2ykxw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3miBMACgkQlfZmHno8
x/5s+Af/a2icSd66GHrsABoMtUfJXpQclSae81ThRP5Bfx6+mK4Ty4en3T+IxOK+
NPmneod0gjSfyqqQniFbEcmlKAd8wXyUnBCCi6urRvuqOWcw65h10DA3fQCivaOt
NWn3FRWMlPZbBIAYr/XOcsdOOkbD+VaFE/PaBYmxU/rWaCLGMWpYYBhF/Vcm+ASd
VPQ4g8AfxyGvQW9EgbmRTMC0k7kMP6qrpmgIjNWvUPyJ+8ytD2Zly2xvbVf9TqhX
/PP/t19fWayTqhsg+B04K0aN0oriRqSFX44yvCOApKhLBSsF6Nyc40m2sreqKMYY
98kwrOrux/Fb3OeV/Wzdhhh8VhH+Sg==
=4wmf
-----END PGP SIGNATURE-----

--=-VHC+bPmpbRjqhnK2ykxw--
