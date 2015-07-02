From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 1/5] drm/rockchip: vop: optimize virtual stride calculate
Date: Thu, 2 Jul 2015 13:59:04 +0900
Message-ID: <CAAFQd5B-W2uWFXo9me_MPdp0LDp0CK+mG6Rsbro9+JQSUBA4bw@mail.gmail.com>
References: <1435313249-4549-1-git-send-email-mark.yao@rock-chips.com> <1435313249-4549-2-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1435313249-4549-2-git-send-email-mark.yao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, Daniel Kurtz <djkurtz@chromium.org>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, sandy.huang@rock-chips.com, dkm@rock-chips.com, zwl@rock-chips.com, xw@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jun 26, 2015 at 7:07 PM, Mark Yao <mark.yao@rock-chips.com> wrote:
> vir_stride need number words of the virtual width, and fb->pitches
> save bytes_per_pixel, so just div 4 switch to stride.
>
> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> ---
> Changes in v2: None
>
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 6188221..3c9f4f3 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -644,7 +644,7 @@ static int vop_update_plane_event(struct drm_plane *plane,
>         offset += (src.y1 >> 16) * fb->pitches[0];
>         yrgb_mst = rk_obj->dma_addr + offset;
>
> -       y_vir_stride = fb->pitches[0] / (fb->bits_per_pixel >> 3);
> +       y_vir_stride = fb->pitches[0] >> 2;

If the unit of y_vir_stride is words then doesn't it mean that the
calculation before this patch was just invalid? If yes, shouldn't the
subject actually say "Fix virtual stride calculation"?

Best regards,
Tomasz
