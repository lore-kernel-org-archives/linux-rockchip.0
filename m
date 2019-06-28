From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v5 4/7] drm/panel: simple: Use display_timing for Innolux
 n116bge
Date: Sat, 29 Jun 2019 01:50:28 +0200
Message-ID: <20190628235028.GC1189@mithrandir>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-5-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Fig2xvG2VGoz8o/s"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190401171724.215780-5-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>, linux-rockchip@lists.infradead.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, dri-devel@lists.freedesktop.org, Boris Brezillon <boris.brezillon@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Enric =?utf-8?B?QmFsbGV0YsOy?= <enric.balletbo@collabora.com>, Rob Herring <robh+dt@kernel.org>, mka@chromium.org, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org


--Fig2xvG2VGoz8o/s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2019 at 10:17:21AM -0700, Douglas Anderson wrote:
> Convert the Innolux n116bge from using a fixed mode to specifying a
> display timing with min/typ/max values.
>=20
> Note that the n116bge's datasheet doesn't fit too well into DRM's way
> of specifying things.  Specifically the panel's datasheet just
> specifies the vertical blanking period and horizontal blanking period
> and doesn't break things out.  For now we'll leave everything as a
> fixed value but just allow adjusting the pixel clock.  I've added a
> comment on what the datasheet claims so someone could later expand
> things to fit their needs if they wanted to test other blanking
> periods.
>=20
> The goal here is to be able to specify the panel timings in the device
> tree for several rk3288 Chromebooks (like rk3288-veryon-jerry).  These
> Chromebooks have all been running in the downstream kernel with the
> standard porches and sync lengths but just with a slightly slower
> pixel clock because the 76.42 MHz clock is not achievable from the
> fixed PLL that was available.  These Chromebooks only achieve a
> refresh rate of ~58 Hz.  While it's probable that we could adjust the
> timings to achieve 60 Hz it's probably wisest to match what's been
> running on these devices all these years.
>=20
> I'll note that though the upstream kernel has always tried to achieve
> 76.42 MHz, it has actually been running at 74.25 MHz also since the
> video processor is parented off the same fixed PLL.
>=20
> Changes in v4:
>  - display_timing for Innolux n116bge new for v4.
>=20
> Changes in v5:
>  - Added Heiko's Tested-by
>=20
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> ---
>=20
>  drivers/gpu/drm/panel/panel-simple.c | 37 +++++++++++++++++-----------
>  1 file changed, 23 insertions(+), 14 deletions(-)

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--Fig2xvG2VGoz8o/s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0Wp8QACgkQ3SOs138+
s6EONRAAnI/lLg3nbvC+NPG+zh2EdypmFBjJwDAq/ZiG0VNTPe0pgjIbyg+vVcKD
TS4SdyIlPL3I043HPwObBM/Y+O1MOcWwuEMxlnTSN0+R0pgyifAawX55sCE14MW0
gf0GUEJcysayA0957o8Zfrvlh74nTmNOPyfp0MlpIXMoKZ7Zh3TMD7i0e4J7rfxM
39xPhrNSLUYM0+fiTAYO3hcy3KGZ01CpLP17+djBgsDDjV+0uDXl6I6FNm9oHvNa
bgbwx2urFytaX9PkFc/DfYYf6o/olkB1XZHxRRJfMZuys2L1cjQB+5zy6PjQ8GIM
mScJALEwkxAKaidmyZ9lPm+a4CsMJF/s+XeG5MpVp6J63w8RdRCyqPRYQFcJkExR
FyxI76LaRZ/wntJOBPgayCa19n3eNyL8KzEy259zNvOhluuzYpKQA+rqjGk2iXy/
hQPgNnKtbu9x2Gh3AnzfxDwqalLX7/+ksHbTDXoXnuxa9HMlBDXuwbw721MMmzea
k4MfVF5pUkQAFp5OODbhg5tlZH4zV0RIZdMvHR2/elsSP23+27kgvxqS7tDor493
jUnLz3GuOGarkedkx9ywBbiNZJOlr6xAJlxW6jgr/hUNmaZ5Da4JwJr8S/3MCUyD
xxMPQvzI/Sacn0JL2kD9cE1ojFOJOxLskiTWEv0tZtChQR2hoXk=
=ZuxI
-----END PGP SIGNATURE-----

--Fig2xvG2VGoz8o/s--
