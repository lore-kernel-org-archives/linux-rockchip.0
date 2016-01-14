From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 3/3] drm/rockchip: explain why we can't wait_for_vblanks
Date: Thu, 14 Jan 2016 15:57:05 +0100
Message-ID: <20160114145705.GA24005@ulmo>
References: <20160114142047.GD19130@phenom.ffwll.local>
 <cover.1452782114.git.john@metanate.com>
 <107bbc36a316ed0ddc7b5a8bcd9b6db6cbc71d4f.1452782114.git.john@metanate.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0565153683=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <107bbc36a316ed0ddc7b5a8bcd9b6db6cbc71d4f.1452782114.git.john@metanate.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: John Keeping <john@metanate.com>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>
List-Id: linux-rockchip.vger.kernel.org


--===============0565153683==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 14, 2016 at 02:39:42PM +0000, John Keeping wrote:
> Signed-off-by: John Keeping <john@metanate.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm=
/rockchip/rockchip_drm_fb.c
> index 679d23a..b267ce4 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> @@ -177,6 +177,12 @@ static void rockchip_crtc_wait_for_update(struct drm=
_crtc *crtc)
>  		crtc_funcs->wait_for_update(crtc);
>  }
> =20
> +/*
> + * We can't use drm_atomic_helper_wait_for_vblanks() because rk3288 and =
rk3066
> + * have hardware counters for neither vblanks nor scanlines.  This funct=
ion is
> + * equivalent but uses rockchip_crtc_wait_for_update() instead of waitin=
g for
> + * vblank_count to change.
> + */

This is kind of misleading. From reading earlier parts of the thread the
reason why drm_atomic_helper_wait_for_vblanks() won't work is because it
has a potential race condition that can't be detected unless you also
have a vblank counter. However, the above comment makes it work like
drm_atomic_helper_wait_for_vblanks() doesn't work in the absence of a
vblank counter, which isn't quite true.

Perhaps also the drm_atomic_helper_wait_for_vblanks() kerneldoc needs to
be updated with these restrictions on its use?

Thierry

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWl7c/AAoJEN0jrNd/PrOhGcIQAIgv0mGYVVCGkkjSartZH5nt
Rg4f21655/R/q9BLZ2SsdYivEyjo+n5g2K6segrOBqGmSn8Y96LmXLHQaFLPXNS+
pPuR0mm8bJYWNmaj3F8Ha+6RbHaXsIf5nf4tJTPu4RGCEHsSBUgF9YaHLhEMP+Ye
9IeLoaVKqntgeqYewBVdAwhpdvGcd+Hi5W9mCs5x1bPERLT3r60awpaNH2vfuO+i
aFHd4i9lAKRbx3pD2CV21WHT9k08xNs4lLmxA3YXB2HZIFrTC5haWH4A06MI3s+3
tlDpyrGrG95SUseWJDtoeFz+7cB+GcCgJ3DYwEjEx14nqwuOpw9bF2o06eNpcOWv
2NJ0Srm7n1CtAsSMTUzWUAKtEgYlCw+aMSqGaL3pCCTD60/qV4UCeSnyZUVmGUnK
L2xlygFCb3Qi+ZG93nmFR33d9xxHegnBHyaBKbSxH78XMt7FT3WGXnE+va2u8KRP
BVH86fl2ec+oG4A5a60ldexkGIgSGFdgWO7CntuRRFs+WtwEDV+4KLWcYV9jvMyU
jFimPCRg3BSsOzYnTlbitqInRXLuhuiZWOeHbIotRguFkf4hoLRJmn7zvlEl2nMy
6KV3yJksNYJhk8SaJtvJ34siElfn8L/Rl6eo/G+dgr7vF34EfklY2BwOU1FI7Knm
d6QCp9NybpCN9I5wxK2w
=CLe+
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--

--===============0565153683==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0565153683==--
