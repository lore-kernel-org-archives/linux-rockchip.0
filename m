From: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [RFC PATCH 7/9] drm/rockchip: force enable vop when do mode
 setting
Date: Wed, 2 Dec 2015 17:55:36 +0100
Message-ID: <20151202165536.GA14019@ulmo>
References: <1448940391-23333-1-git-send-email-mark.yao@rock-chips.com>
 <1448940721-23488-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0306426993=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448940721-23488-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============0306426993==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 01, 2015 at 11:32:01AM +0800, Mark Yao wrote:
> When do mode setting, mean that we want to enable display output,
> but sometimes, vop_crtc_enable is after mode_set, we can't allow
> that, so force enable vop in mode setting.
>=20
> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c |    1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_vop.c
> index c65b454..7c07537 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1110,6 +1110,7 @@ static void vop_crtc_mode_set_nofb(struct drm_crtc =
*crtc)
>  	u16 vact_end =3D vact_st + vdisplay;
>  	uint32_t val;
> =20
> +	vop_crtc_enable(crtc);
>  	/*
>  	 * If dclk rate is zero, mean that scanout is stop,
>  	 * we don't need wait any more.

Have you considered simply moving everything into ->enable()? That's
what I did for Tegra, for much the same reasons that you gave in the
commit message. Doing so gives you a much simpler call graph. Really
the only thing you need to do is move around the code, and perhaps a
different way to get ahold of the display mode, but you can use the
Tegra driver as a reference for how to do that.

Thierry

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWXyKIAAoJEN0jrNd/PrOhnZsQAI9tEPgHUaaigVHr6+Mvy6vM
ztw0zYhFSJg4JzMMCabP/6PmyTajONUR6Bbe0agbiyH1yyOPwnsq+EUerSftxCx3
76pzRJAp/Cghgr10wZEKPKfg2N31hxrR+e34HBIAlNY7Wbz6UHFJMcCE/EfWFbbE
DMmkPe+eBG413mI42SjLqTDjUgBF+T9CeZ9Ap/5yDSfgsTKHnsOgaT8yOjuf+BeI
zW+vPOdYSBmjBnF4iN32B9jwi9IZyG73yKPkJXUVGeeThZbYyWRT0N2GxnTb5414
ieoxwKJiu4/5DAz8AfaaVRxMSCz+xP8D2ZpwqZaAtURa0xBq9ATAAqn4IGnUudM3
jbgy0ll/wQZcBhKFMxsRVhDfFmwkLLI6Og5iu5Obnkk3GzC1ZPvZ2KBoywMK1uzc
MmF+ZPGapQ9pDhTI1hitT/QhgIeJpX5iFAVB876Kf4ZTyz+21FnEvlSCkwcdxUTR
t5vu6gytAx/kYfo3NI34+hIo7vki1IGHcplJwjMpwggbLhQfYmUHX/tmNNuHX4Bh
boXSS8mlN+6gZPRJd4nu5mEpzJf7Pvd6JruWk7aRdbJvKlwzkwNHJxRecyGXKNzA
zxQ7FuzzdS4V9Eeh+UIi5sIdUfGVSid+6Xb9Jiw2IVq2vt0/g8D+H7H3mlrVGagh
NCSx4y96499VNUgnEciF
=WhpD
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--

--===============0306426993==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0306426993==--
