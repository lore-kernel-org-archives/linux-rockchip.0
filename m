From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [patch] drm/rockchip: fix a couple off by one bugs
Date: Thu, 14 Jul 2016 10:22:23 +0800
Message-ID: <5786F75F.30703@rock-chips.com>
References: <20160713101504.GJ29468@mwanda>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-janitors-owner@vger.kernel.org>
In-Reply-To: <20160713101504.GJ29468@mwanda>
Sender: kernel-janitors-owner@vger.kernel.org
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 2016=E5=B9=B407=E6=9C=8813=E6=97=A5 18:15, Dan Carpenter wrote:
> The priv->crtc_funcs[] array has ROCKCHIP_MAX_CRTC elements so > shou=
ld
> be >=3D here.
>
> Fixes: 2048e3286f34 ('drm: rockchip: Add basic drm driver')
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks for the fix, applied to my drm-fixes.

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gp=
u/drm/rockchip/rockchip_drm_drv.c
> index 7fd20c0..37ca427 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -79,7 +79,7 @@ int rockchip_register_crtc_funcs(struct drm_crtc *c=
rtc,
>   	int pipe =3D drm_crtc_index(crtc);
>   	struct rockchip_drm_private *priv =3D crtc->dev->dev_private;
>  =20
> -	if (pipe > ROCKCHIP_MAX_CRTC)
> +	if (pipe >=3D ROCKCHIP_MAX_CRTC)
>   		return -EINVAL;
>  =20
>   	priv->crtc_funcs[pipe] =3D crtc_funcs;
> @@ -92,7 +92,7 @@ void rockchip_unregister_crtc_funcs(struct drm_crtc=
 *crtc)
>   	int pipe =3D drm_crtc_index(crtc);
>   	struct rockchip_drm_private *priv =3D crtc->dev->dev_private;
>  =20
> -	if (pipe > ROCKCHIP_MAX_CRTC)
> +	if (pipe >=3D ROCKCHIP_MAX_CRTC)
>   		return;
>  =20
>   	priv->crtc_funcs[pipe] =3D NULL;
>
>
>


--=20
=EF=BC=ADark Yao


--
To unsubscribe from this list: send the line "unsubscribe kernel-janito=
rs" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
