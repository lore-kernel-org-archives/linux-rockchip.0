From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v2 0/5] drm: rockchip: various ports for older VOPs
Date: Sat, 25 Jul 2020 17:54:06 +0200
Message-ID: <CAKMK7uEn0552JuTuwpL-XdYSVk7OA=fEsphpivS8ouE-10--Zg@mail.gmail.com>
References: <20200722181332.26995-1-knaerzche@gmail.com> <CAKMK7uGKyYea_9MamAQw2=ebjW=raYCDeFCf_5jyyJPHL9AZWA@mail.gmail.com>
 <47599ce1-2a3b-87eb-c46e-8f7f79ca945e@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <47599ce1-2a3b-87eb-c46e-8f7f79ca945e@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Jul 25, 2020 at 3:52 PM Alex Bee <knaerzche@gmail.com> wrote:
>
>
> Am 22.07.20 um 23:43 schrieb Daniel Vetter:
> > On Wed, Jul 22, 2020 at 8:13 PM Alex Bee <knaerzche@gmail.com> wrote:
> >> Hi,
> >>
> >> this series mainly ports existining functionality to older SoCs - most
> >> importantly enables alpha blending for RK3036, RK3066, RK3126 and
> >> RK3188.
> >> Besides that, it also changes the window type from DRM_PLANE_TYPE_CURSOR
> >> to DRM_PLANE_TYPE_OVERLAY for VOPs that have only one (1) overlay window.
> > This doesn't make much sense, the cursor overlay is really just a hint
> > for legacy ioctls that this is the overlay that should be used for
> > cursors. Compositors should try to use such planes as full overlays
> > (if they don't want to use them as a cursor). So sounds like a case of
> > "fix your compositor".
> I agree here - but: If HWC windows would have been implemented in this
> particular driver, their max size would be 128x128 on some SoCs - so
> they woudn't be really suitable to create an OSD overlay at 4K, for
> example. I don't know, but I guess other vendors implement their HWC
> windows on this reduced HW resources as well. I guess that is one of the
> reasons, why userspace, which aims to be cross-plattfrom, avoids
> DRM_PLANE_TYPE_CURSOR when its looking for an usable overlay plane. (a
> heuristic, indeed)

Which userspace does that? We should fix that, not try to work around
that in all the drivers in upstream, that wont work.
-Daniel

> > For atomic there's 0 difference between a overlay or a cursor (primary
> > plane is still treated somewhat special in the RMFB ioctl, but again
> > that's for backwards compat reasons with existing uapi, not because
> > the primary plane is different).
> >
> > What does happen though is that this breaks cursor for legacy
> > userspace, which is probably not really what you want.
>
> Indeed not.
>
> Beforhand I was submiiting this, I looked arround and couldn't find
> anything which relies or even depends of a cursor window to be
> available. Even if: as per spec only one DRM_PLANE_TYPE_PRIMARY is
> mandatory, everything else is optional.
>
> > -Daniel
> >
> >
> >> Regards,
> >> Alex
> >>
> >> Changes in v2:
> >> - drop not yet upstreamed dsp_data_swap from RK3188 regs
> >> - rephrase most commit messages
> >>
> >> Alex Bee (5):
> >>    drm: rockchip: add scaling for RK3036 win1
> >>    drm: rockchip: add missing registers for RK3188
> >>    drm: rockchip: add alpha support for RK3036, RK3066, RK3126 and RK3188
> >>    drm: rockchip: set alpha_en to 0 if it is not used
> >>    drm: rockchip: use overlay windows as such
> >>
> >>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c |  1 +
> >>   drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 42 ++++++++++++++++++---
> >>   drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
> >>   3 files changed, 38 insertions(+), 6 deletions(-)
> >>
> >> --
> >> 2.17.1
> >>
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
>
> Best Regards
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
