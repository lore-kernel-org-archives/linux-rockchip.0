From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 01/41] drm/panel: simple: Change mode for Sharp lq123p1jx31
Date: Mon, 20 Mar 2017 14:59:45 +0100
Message-ID: <20170320135945.GQ22463@ulmo.ba.sec>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <20170310043305.17216-2-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0326071771=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170310043305.17216-2-seanpaul@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sean Paul <seanpaul@chromium.org>
Cc: Chris Zhong <zyw@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, =?utf-8?B?U3TDqXBoYW5l?= Marchesin <marcheu@chromium.org>
List-Id: linux-rockchip.vger.kernel.org


--===============0326071771==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rKoHqF+aPLVth8b2"
Content-Disposition: inline


--rKoHqF+aPLVth8b2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 09, 2017 at 11:32:16PM -0500, Sean Paul wrote:
> Change the mode for Sharp lq123p1jx31 panel to something more
> rockchip-friendly such that we can use the fixed PLLs to
> generate the pixel clock
>=20
> Cc: Chris Zhong <zyw@rock-chips.com>
> Cc: St=C3=A9phane Marchesin <marcheu@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> ---
>  drivers/gpu/drm/panel/panel-simple.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

That's really not how you should be doing this. If you want to support
this panel on more than one type of hardware, especially if they have
different restrictions on what clocks and timings they can generate,
the driver should specify the timings using a struct display_timing and
drivers should use that data to generate a mode that matches their
requirements but is still within the valid ranges specified in the .min
and .max values.

That said, in this particular case nobody seems to be using the panel
in the upstream kernel.

One minor nit below...

>=20
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel=
/panel-simple.c
> index 89eb0422821c..787b4d143220 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -1598,17 +1598,18 @@ static const struct panel_desc sharp_lq101k1ly04 =
=3D {
>  };
> =20
>  static const struct drm_display_mode sharp_lq123p1jx31_mode =3D {
> -	.clock =3D 252750,
> +	.clock =3D 266667,
>  	.hdisplay =3D 2400,
>  	.hsync_start =3D 2400 + 48,
>  	.hsync_end =3D 2400 + 48 + 32,
> -	.htotal =3D 2400 + 48 + 32 + 80,
> +	.htotal =3D 2400 + 48 + 32 + 139,
>  	.vdisplay =3D 1600,
>  	.vsync_start =3D 1600 + 3,
>  	.vsync_end =3D 1600 + 3 + 10,
> -	.vtotal =3D 1600 + 3 + 10 + 33,
> +	.vtotal =3D 1600 + 3 + 10 + 84,
>  	.vrefresh =3D 60,
>  	.flags =3D DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> +	.type =3D DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER,

The panel-simple driver will set these two flags itself, no need to
explicitly specify them.

Thierry

--rKoHqF+aPLVth8b2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAljP4FEACgkQ3SOs138+
s6EnkRAAtoFzD8mMaZGBLDZ0bxq8idr6F9gkOn+P3CcZIdpCT2IqMaUHEx53ADBz
FZE6fkpl1yCw8QGqlE/8CuQA/STMDi7IKo87MfQI4E3mMNJAImG+pIIVxxhecyXH
/ha+0filYtZwbsUoSKbT90a67pd6R8/yK8j540UvJ/+ZoNgxcGhf+1MNU+rzwFza
DDsIFJN0ILo4qfn/EaXfuXkw7gnofbNbCanuRaAvx0r3kUhYU4DhRUEN7kgc79iO
1Yh4uGgApI70RReOsE03RGohdbKON0teTHXnuW4gD6XfA/ck/mOrwZe8h7s6sJwk
luIYWMGkAMXA0YpXIcOXotGfqrs2PAOOxb5oN0Dk8b+EWypD8xKs6A0CTtiekcJ3
vXDfpUmFOkycYMOhsPfWEis605ko+n7TfCGZmTeV6YiqNH/KY2zJ19PO6o3TJimH
sFiRy34H5cle84SAZlVwZuexXWWx42lcz/NUelGSfAWG43sMAzHeQYl52xDyQL46
A9tr3zoMRbg1Jb/sNHqpLKipIOTLjnBaprXQibw8PDGUKwDld/8uL+JDxh0h5iiT
g8uEy8vXwDiKKrish0DWJAvX+Eykg6JhzNPjjxRakQNdS22B0fqG+pxLH0MQrFM/
yUyqBfblYU8b+Ic81S/kk5vTvkqjzZaFIzrFYpeND1XrTAYD6dk=
=Srs6
-----END PGP SIGNATURE-----

--rKoHqF+aPLVth8b2--

--===============0326071771==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0326071771==--
