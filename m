From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v2 0/5] drm: rockchip: various ports for older VOPs
Date: Wed, 22 Jul 2020 23:43:04 +0200
Message-ID: <CAKMK7uGKyYea_9MamAQw2=ebjW=raYCDeFCf_5jyyJPHL9AZWA@mail.gmail.com>
References: <20200722181332.26995-1-knaerzche@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200722181332.26995-1-knaerzche@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 22, 2020 at 8:13 PM Alex Bee <knaerzche@gmail.com> wrote:
>
> Hi,
>
> this series mainly ports existining functionality to older SoCs - most
> importantly enables alpha blending for RK3036, RK3066, RK3126 and
> RK3188.
> Besides that, it also changes the window type from DRM_PLANE_TYPE_CURSOR
> to DRM_PLANE_TYPE_OVERLAY for VOPs that have only one (1) overlay window.

This doesn't make much sense, the cursor overlay is really just a hint
for legacy ioctls that this is the overlay that should be used for
cursors. Compositors should try to use such planes as full overlays
(if they don't want to use them as a cursor). So sounds like a case of
"fix your compositor".

For atomic there's 0 difference between a overlay or a cursor (primary
plane is still treated somewhat special in the RMFB ioctl, but again
that's for backwards compat reasons with existing uapi, not because
the primary plane is different).

What does happen though is that this breaks cursor for legacy
userspace, which is probably not really what you want.
-Daniel


>
> Regards,
> Alex
>
> Changes in v2:
> - drop not yet upstreamed dsp_data_swap from RK3188 regs
> - rephrase most commit messages
>
> Alex Bee (5):
>   drm: rockchip: add scaling for RK3036 win1
>   drm: rockchip: add missing registers for RK3188
>   drm: rockchip: add alpha support for RK3036, RK3066, RK3126 and RK3188
>   drm: rockchip: set alpha_en to 0 if it is not used
>   drm: rockchip: use overlay windows as such
>
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c |  1 +
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 42 ++++++++++++++++++---
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
>  3 files changed, 38 insertions(+), 6 deletions(-)
>
> --
> 2.17.1
>


--
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
