From: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 37/51] drm/rockchip: Drop explicit
 drm_mode_config_cleanup call
Date: Sat, 7 Mar 2020 09:38:59 +0100
Message-ID: <20200307083859.GF28810@ravnborg.org>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
 <20200302222631.3861340-38-daniel.vetter@ffwll.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <intel-gfx-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20200302222631.3861340-38-daniel.vetter@ffwll.ch>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Francesco Lavra <francescolavra.fl@gmail.com>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, DRI Development <dri-devel@lists.freedesktop.org>, linux-rockchip@lists.infradead.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Mar 02, 2020 at 11:26:17PM +0100, Daniel Vetter wrote:
> It's (almost, there's some iommu stuff without significance) right
> above the drm_dev_put().
> =

> This is made possible by a preceeding patch which added a drmm_
> cleanup action to drm_mode_config_init(), hence all we need to do to
> ensure that drm_mode_config_cleanup() is run on final drm_device
> cleanup is check the new error code for _init().
> =

> Aside: Another driver with a bit much devm_kzalloc, which should
> probably use drmm_kzalloc instead ...
> =

> v2: Explain why this cleanup is possible (Laurent).
> =

> v3: Jump out at the right label (Francesco)
> =

> v4: Try again, kbuild caught that I didn't build test this properly
> ...
> =

> v5: Use drmm_mode_config_init() for more clarity (Sam, Thomas)
> =

> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Francesco Lavra <francescolavra.fl@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=FCbner" <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org

Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_drv.c
> index 20ecb1508a22..0f3eb392fe39 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -135,14 +135,16 @@ static int rockchip_drm_bind(struct device *dev)
>  	if (ret)
>  		goto err_free;
>  =

> -	drm_mode_config_init(drm_dev);
> +	ret =3D drmm_mode_config_init(drm_dev);
> +	if (ret)
> +		goto err_iommu_cleanup;
>  =

>  	rockchip_drm_mode_config_init(drm_dev);
>  =

>  	/* Try to bind all sub drivers. */
>  	ret =3D component_bind_all(dev, drm_dev);
>  	if (ret)
> -		goto err_mode_config_cleanup;
> +		goto err_iommu_cleanup;
>  =

>  	ret =3D drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
>  	if (ret)
> @@ -173,12 +175,9 @@ static int rockchip_drm_bind(struct device *dev)
>  	rockchip_drm_fbdev_fini(drm_dev);
>  err_unbind_all:
>  	component_unbind_all(dev, drm_dev);
> -err_mode_config_cleanup:
> -	drm_mode_config_cleanup(drm_dev);
> +err_iommu_cleanup:
>  	rockchip_iommu_cleanup(drm_dev);
>  err_free:
> -	drm_dev->dev_private =3D NULL;
> -	dev_set_drvdata(dev, NULL);
>  	drm_dev_put(drm_dev);
>  	return ret;
>  }
> @@ -194,11 +193,8 @@ static void rockchip_drm_unbind(struct device *dev)
>  =

>  	drm_atomic_helper_shutdown(drm_dev);
>  	component_unbind_all(dev, drm_dev);
> -	drm_mode_config_cleanup(drm_dev);
>  	rockchip_iommu_cleanup(drm_dev);
>  =

> -	drm_dev->dev_private =3D NULL;
> -	dev_set_drvdata(dev, NULL);
>  	drm_dev_put(drm_dev);
>  }
>  =

> -- =

> 2.24.1
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
