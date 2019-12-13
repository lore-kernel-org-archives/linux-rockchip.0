From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 06/10] drm/xrockchip: plane_state->fb iff plane_state->crtc
Date: Fri, 13 Dec 2019 19:03:53 +0100
Message-ID: <1986448.RzC9sFZk56@diego>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
 <20191213172612.1514842-6-daniel.vetter@ffwll.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191213172612.1514842-6-daniel.vetter@ffwll.ch>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>, Sandy Huang <hjc@rock-chips.com>, DRI Development <dri-devel@lists.freedesktop.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 13. Dezember 2019, 18:26:08 CET schrieb Daniel Vetter:
> Checking both is one too much, so wrap a WARN_ON around it to stope
> the copypasta.
> =

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=FCbner" <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org

patch subject should be "drm/rockchip" without the x, otherwise
Reviewed-by: Heiko Stuebner <heiko@sntech.de>


> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_vop.c
> index d04b3492bdac..cecb2cc781f5 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -724,7 +724,7 @@ static int vop_plane_atomic_check(struct drm_plane *p=
lane,
>  	int max_scale =3D win->phy->scl ? FRAC_16_16(8, 1) :
>  					DRM_PLANE_HELPER_NO_SCALING;
>  =

> -	if (!crtc || !fb)
> +	if (!crtc || WARN_ON(!fb))
>  		return 0;
>  =

>  	crtc_state =3D drm_atomic_get_existing_crtc_state(state->state, crtc);
> =
