From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v5 5/7] drm/panel: simple: Use display_timing for AUO
 b101ean01
Date: Sat, 29 Jun 2019 01:50:56 +0200
Message-ID: <20190628235056.GD1189@mithrandir>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-6-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="llIrKcgUOe3dCx0c"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190401171724.215780-6-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>, linux-rockchip@lists.infradead.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, dri-devel@lists.freedesktop.org, Boris Brezillon <boris.brezillon@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Enric =?utf-8?B?QmFsbGV0YsOy?= <enric.balletbo@collabora.com>, Rob Herring <robh+dt@kernel.org>, mka@chromium.org, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org


--llIrKcgUOe3dCx0c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 10:17:22AM -0700, Douglas Anderson wrote:
> Convert the AUO b101ean01 from using a fixed mode to specifying a
> display timing with min/typ/max values.
>=20
> The AUO b101ean01's datasheet says:
> * Vertical blanking min is 12
> * Horizontal blanking min is 60
> * Pixel clock is between 65.3 MHz and 75 MHz
>=20
> The goal here is to be able to specify the proper timing in device
> tree to use on rk3288-veyron-minnie to match what the downstream
> kernel is using so that it can used the fixed PLL.
>=20
> Changes in v4:
>  - display_timing for AUO b101ean01 new for v4.
>=20
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>=20
>  drivers/gpu/drm/panel/panel-simple.c | 25 ++++++++++++-------------
>  1 file changed, 12 insertions(+), 13 deletions(-)

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--llIrKcgUOe3dCx0c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0Wp+AACgkQ3SOs138+
s6EvcQ//Tbw0f5ozO/fe70CrFitDkI3rMEe8H/oX9vrS8glGIG4EjzpDwgvGTK2Q
D/DP0Y3lmDH7qbvuGkMI2PEOqpraUK6utBFaN1SFu5ZtnSHi44GsqRP8y8lnaRNi
1qsxORATUYK+CpxTPW0/YMCDse/fXHGoMAV7yN4Ml4ufhYL/08XR95rEc/doFZyc
QcERscJUhv5lMegiv+y+aCmRqnvkHWvWonxhE6yCzh54KnfpJeUNI3A2zsZMTw0W
/HUt0DEu2qi9OkoDOG2YCji4yfGjMLsHG1oLTvSZxDmDUOc7C4k12XV25RswW8if
EpckvCxfI+4/JWuK53ofikg5s172SFvDZTLpgMM1M94R/36fp86pX6phZ+CV2Q4H
vARuHnLEFIgs9J5p33EDhRG5pH4xToEzme7wAaJuSpXv24LdsrMp4ewVm17tJ4Ki
koosRochNUaH85RqSs7H1gi5GqWlONIZCj4hG91IvDYDoHbQNzTFWknx85Yge4hG
K8tKn5JpKJg9kKsQQuQbHXO9ziJDta1lmrhykCv8dYENNncEwpK3vwrZaOEmweqQ
w5GZyH7U/gXwhUaSNPeTefo6jZH6185HouIBfPj+BQ0ZKgzSnYN9yEgYxcpWHnaw
4jM6jsv4tpohTfiGOXlbQU5Poz23azF0Q7Jl8Cm7KSgit41OMzY=
=5nXl
-----END PGP SIGNATURE-----

--llIrKcgUOe3dCx0c--
