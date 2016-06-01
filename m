From: Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH] drm/rockchip: vop: do axi reset in vop initial time
Date: Wed, 1 Jun 2016 17:19:57 +0200
Message-ID: <20160601151956.GA29316@ulmo.ba.sec>
References: <1464772752-9808-1-git-send-email-ykk@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="M9NhX3UHpAaciwkO"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464772752-9808-1-git-send-email-ykk@rock-chips.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
To: Yakir Yang <ykk@rock-chips.com>
Cc: Mark Yao <yzq@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, tfiga@chromium.org, David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch, dianders@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 01, 2016 at 05:19:12PM +0800, Yakir Yang wrote:
> There is a bug in RK3399 VOP, when bootloader/kernel only enable
> VOP Big or VOP Little to display, then VOP IOMMU would failed to
> reset at the initial time and VOP register couldn't write rightly.
>=20
> After do the pure reset of VOP module, then things back to right.
>=20
> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_vop.c
> index 1c4d5b5..4150323 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1292,7 +1292,7 @@ static int vop_initial(struct vop *vop)
>  {
>  	const struct vop_data *vop_data =3D vop->data;
>  	const struct vop_reg_data *init_table =3D vop_data->init_table;
> -	struct reset_control *ahb_rst;
> +	struct reset_control *ahb_rst, *axi_rst;
>  	int i, ret;
> =20
>  	vop->hclk =3D devm_clk_get(vop->dev, "hclk_vop");
> @@ -1331,6 +1331,19 @@ static int vop_initial(struct vop *vop)
>  	}
> =20
>  	/*
> +	 * do aclk_reset, reset all vop registers.
> +	 */
> +	axi_rst =3D devm_reset_control_get(vop->dev, "axi");

I don't think you want the managed version here since you only store
this in a local variable and hence aren't going to need it afterwards.
Just use reset_control_get() and ...

> +	if (IS_ERR(axi_rst)) {
> +		dev_err(vop->dev, "failed to get axi reset\n");
> +		ret =3D PTR_ERR(axi_rst);
> +		goto err_disable_aclk;
> +	}
> +	reset_control_assert(axi_rst);
> +	usleep_range(10, 20);
> +	reset_control_deassert(axi_rst);

call reset_control_put() here.

> +
> +	/*
>  	 * do hclk_reset, reset all vop registers.
>  	 */
>  	ahb_rst =3D devm_reset_control_get(vop->dev, "ahb");

This uses the same pattern, so you might want to consider reworking this
as well, though it should be a separate patch.

Thierry

--M9NhX3UHpAaciwkO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXTv0YAAoJEN0jrNd/PrOhqTEQALu/grUkCZsnE68wsq2QqvfN
Q+Feb0AF11s2MO16dVpL6RPAaJPPWvpr11lQzo4shzusavR40FIO/8b6pOhNv+MJ
4icEKDJdAJhFWSjGEJlJXeLTPktaPLrAIXEYGwiCnGp3SXyPre0ZppaO8D9QK/qA
8fVd+HvlG+sYwQAcTZDO+nY1r/hXLxrp1fMh3lNSCtNt5F5Ux/XVw7hYEtT4dF5R
QSnZov/kaIUpo/kL84Qzpnshd8lYKIzhFbnVKE69JkQ3uufSlwPV/6CiKOvpXGdF
/YDfOJNuIDFAK66RcHAaVAUs5pxQ2JvYPE2V/U1xQ3i4LArbpehzEFG8lfM4uzxD
lFkr42f6gFtsVEiESYzM0Pa1ACHZbMdVaAaFdjJBxg3x9gJfPm+Jt2/0ZYUZ3uZk
GX+Tn6TYpFDHGFyH5zcl2bTGswmAlMmFd6OZSAsztdIl3qDVe+ePhok1w4ME1zu0
jGhGYm2ksqg5CL01eaN2PC4MVxFsUZrAoYYTrCNnzoBjxfGxvcAaNi43NKLXGmxZ
V3zt6auQm+evcV2E8RcU7CKyiy9YQJQkhZtkubSrzd3rpwMpjM2yNJh0521Ixq1J
M2Dd/Oy0qyyyZMiHMdK1pcpW5ONazNLylyapxUA1sCLNI5xWmLaH0PHXY2i6sVP+
y0Nw2+H5jOdh0hS7InVA
=9MB7
-----END PGP SIGNATURE-----

--M9NhX3UHpAaciwkO--
