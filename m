From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v2] drm/rockchip: Fix YUV buffers color rendering
Date: Mon, 07 Jan 2019 17:07:18 -0300
Message-ID: <234e9e802b33824dd98fb7e43dedf889837d3b70.camel@collabora.com>
References: <20180215053300.70482-2-dcastagna@chromium.org>
 <20181214162920.20361-1-ezequiel@collabora.com> <3215325.nePTtMV2FM@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3215325.nePTtMV2FM@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Daniele Castagna <dcastagna-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2019-01-07 at 14:26 +0100, Heiko Stuebner wrote:
> Hi,
> 
> sorry, only now got to test this on actual hardware,
> 
> Am Freitag, 14. Dezember 2018, 17:29:20 CET schrieb Ezequiel Garcia:
> > From: Daniele Castagna <dcastagna-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> > 
> > Currently, YUV hardware overlays are converted to RGB using
> > a color space conversion different than BT.601.
> > 
> > The result is that colors of e.g. NV12 buffers don't match
> > colors of YUV hardware overlays.
> > 
> > In order to fix this, enable YUV2YUV and set appropriate coefficients
> > for formats such as NV12 to be displayed correctly.
> > 
> > This commit was tested using modetest, gstreamer and chromeos (hardware
> > accelerated video playback). Before the commit, tests rendering
> > with NV12 format resulted in colors not displayed correctly.
> > 
> > Test examples (RK3399 Ficus board connected to HDMI monitor):
> > 
> >   $ modetest 39@32:1920x1080@NV12
> >   $ gst-launch-1.0 videotestrc ! video/x-raw,format=NV12 ! kmssink
> > 
> > Signed-off-by: Daniele Castagna <dcastagna-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> > [ezequiel: rebase on linux-next and massage commit log]
> > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > ---
> > v2:
> >   * Addressed feedback from Sean Paul
> >   * Rebased on linux-next
> > 
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 41 ++++++++++++++++++++-
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 13 +++++++
> >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 36 ++++++++++++++++++
> >  3 files changed, 89 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > index fb70fb486fbf..78c7f63a60c0 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > @@ -52,6 +52,18 @@
> >  		vop_reg_set(vop, &win->phy->scl->ext->name, \
> >  			    win->base, ~0, v, #name)
> >  
> > +#define VOP_WIN_YUV2YUV_SET(x, win_yuv2yuv, name, v) \
> > +	do { \
> > +		if (win_yuv2yuv->name.mask) \
> > +			vop_reg_set(vop, &win_yuv2yuv->name, 0, ~0, v, #name); \
> > +	} while (0)
> > +
> > +#define VOP_WIN_YUV2YUV_COEFFICIENT_SET(x, win_yuv2yuv, name, v) \
> > +	do { \
> > +		if (win_yuv2yuv->phy->name.mask) \
> > +			vop_reg_set(vop, &win_yuv2yuv->phy->name, win_yuv2yuv->base, ~0, v, #name); \
> > +	} while (0)
> > +
> 
> While this seems to work on rk3399, it hangs both my rk3328 (rock64)
> and rk3288 (google-pinky) during rockchip-drm probe.
> 

Oh, shame on me, I should've done that.

> Making this something like
> 
> 	if (win_yuv2yuv && win_yuv2yuv->phy->name.mask) \
> 
> aka testing for existence of win_yuv2yuv first, makes them boot again,
> so I guess I ran into a (for whatever reason) silent null-ptr-dereference.
> 

Sounds good. I'll post a v3.

> 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> > index 08fc40af52c8..fe752df4e038 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> > @@ -637,6 +637,34 @@ static const struct vop_output rk3399_output = {
> >  	.mipi_dual_channel_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 3),
> >  };
> >  
> > +static const struct vop_yuv2yuv_phy rk3399_yuv2yuv_win01_data = {
> > +	.y2r_coefficients = {
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 0, 0xffff, 0),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 0, 0xffff, 16),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 4, 0xffff, 0),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 4, 0xffff, 16),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 8, 0xffff, 0),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 8, 0xffff, 16),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 12, 0xffff, 0),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 12, 0xffff, 16),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 16, 0xffff, 0),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 20, 0xffffffff, 0),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 24, 0xffffffff, 0),
> > +		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 28, 0xffffffff, 0),
> > +	},
> > +};
> > +
> > +static const struct vop_yuv2yuv_phy rk3399_yuv2yuv_win23_data = { };
> 
> looking at the rk3399 TRM it seems that win2+3 also have yuv2rgb
> coefficient registers. I didn't check in depth but are they so different
> that they cannot be supported?
> 
> Aka what is the difference between win0/1 and win2/3 ?
> 
> 

I think Sandy is the best to answer this. I can't say I'm an expert
on the details of this hardware.

Thanks,
Eze
