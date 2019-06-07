From: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH v3 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Fri, 7 Jun 2019 14:06:03 -0400
Message-ID: <CAMavQKLgBBceO3m8-ff0-79Ks_tD_xDY=N1kOuJya2USthTARg@mail.gmail.com>
References: <20190604204207.168085-1-dianders@chromium.org>
 <20190604204207.168085-2-dianders@chromium.org> <20190606164221.GI17077@art_vandelay>
 <CAD=FV=Xt6Oad9yQHZz+nwANV1MCvGc6XCgOf8HawimVQtwWsEg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=Xt6Oad9yQHZz+nwANV1MCvGc6XCgOf8HawimVQtwWsEg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Sean Paul <seanpaul@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Neil Armstrong <narmstrong@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jun 06, 2019 at 03:58:21PM -0700, Doug Anderson wrote:
> Hi,
>
> On Thu, Jun 6, 2019 at 9:42 AM Sean Paul <sean@poorly.run> wrote:
> >
> > On Tue, Jun 04, 2019 at 01:42:07PM -0700, Douglas Anderson wrote:
> > > On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> > > cycle:
> > >
> > > 1. You lose the ability to detect an HDMI device being plugged in.
> > >
> > > 2. If you're using the i2c bus built in to dw_hdmi then it stops
> > > working.
> > >
> > > Let's call the core dw-hdmi's suspend/resume functions to restore
> > > things.
> > >
> > > NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> > > "late/early" versions of suspend/resume because we found that the VOP
> > > was sometimes resuming before dw_hdmi and then calling into us before
> > > we were fully resumed.  For now I have gone back to the normal
> > > suspend/resume because I can't reproduce the problems.
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > >
> > > Changes in v3:
> > > - dw_hdmi_resume() is now a void function (Laurent)
> > >
> > > Changes in v2:
> > > - Add forgotten static (Laurent)
> > > - No empty stub for suspend (Laurent)
> > >
> > >  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > index 4cdc9f86c2e5..7bb0f922b303 100644
> > > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > @@ -542,11 +542,25 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
> > >       return 0;
> > >  }
> > >
> > > +static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
> > > +{
> > > +     struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> > > +
> > > +     dw_hdmi_resume(hdmi->hdmi);
> >
> > The rockchip driver is already using the atomic suspend/resume helpers (via the
> > modeset helpers). Would you be able to accomplish the same thing by just moving
> > this call into the encoder enable callback?
> >
> > .enable is called on resume via the atomic commit framework, so everything is
> > ordered properly. Of course, this would reset the dw_hdmi bridge on each enable,
> > but I don't think that would be a problem?
>
> I tried and it sorta kinda half worked, but...
>
> 1. One of the problems solved by this patch is making "hot plug
> detect" work after suspend / resume.  AKA: if you have nothing plugged
> in to the HDMI port and then suspend/resume you need to be able to
> detect when something is plugged in.  When nothing is plugged in then
> the ".enable" isn't called at resume time.
>

Ahh, ok. So we've hit this with other bridges/dongles as well, and yeah the
solution is to keep the bridge powered up enough to detect hotplug, so you would
need to do some work in .resume

Usually there's a second stage of enable where you power things on more fully
and that is done in .enable

> 2. I'm not so convinced about the whole ordering being correct.
> Unfortunately on my system (Chrome OS running the chromeos-4.19
> kernel) we end up getting an i2c transfer before the ".enable" is
> called.  I put a dump_stack() in the i2c transfer:
>
> [   42.212516] CPU: 0 PID: 1479 Comm: DrmThread Tainted: G         C
>      4.19.47 #60
> [   42.221182] Hardware name: Rockchip (Device Tree)
> [   42.226449] [<c0211a64>] (unwind_backtrace) from [<c020cf0c>]
> (show_stack+0x20/0x24)
> [   42.235114] [<c020cf0c>] (show_stack) from [<c0a1b8d4>]
> (dump_stack+0x84/0xa4)
> [   42.243195] [<c0a1b8d4>] (dump_stack) from [<c067d7c4>]
> (dw_hdmi_i2c_wait+0x6c/0xa8)
> [   42.251858] [<c067d7c4>] (dw_hdmi_i2c_wait) from [<c067d9a8>]
> (dw_hdmi_i2c_xfer+0x1a8/0x30c)
> [   42.261298] [<c067d9a8>] (dw_hdmi_i2c_xfer) from [<c0798704>]
> (__i2c_transfer+0x3a8/0x5d8)
> [   42.270543] [<c0798704>] (__i2c_transfer) from [<c07989c8>]
> (i2c_transfer+0x94/0xc4)
> [   42.279204] [<c07989c8>] (i2c_transfer) from [<c064e6b0>]
> (drm_do_probe_ddc_edid+0xbc/0x11c)
> [   42.288642] [<c064e6b0>] (drm_do_probe_ddc_edid) from [<c064e744>]
> (drm_probe_ddc+0x34/0x5c)
> [   42.298081] [<c064e744>] (drm_probe_ddc) from [<c0651b98>]
> (drm_get_edid+0x60/0x2e0)
> [   42.306743] [<c0651b98>] (drm_get_edid) from [<c067d710>]
> (dw_hdmi_connector_get_modes+0x30/0x78)
> [   42.316669] [<c067d710>] (dw_hdmi_connector_get_modes) from
> [<c0634f38>] (drm_helper_probe_single_connector_modes+0x218/0x5c0)
> [   42.329413] [<c0634f38>] (drm_helper_probe_single_connector_modes)
> from [<c065b38c>] (drm_mode_getconnector+0x144/0x418)
> [   42.341573] [<c065b38c>] (drm_mode_getconnector) from [<c0646844>]
> (drm_ioctl_kernel+0xa0/0xf0)
> [   42.351303] [<c0646844>] (drm_ioctl_kernel) from [<c0646d34>]
> (drm_ioctl+0x32c/0x3c0)
> [   42.360063] [<c0646d34>] (drm_ioctl) from [<c03ed0cc>] (vfs_ioctl+0x28/0x44)
> [   42.367946] [<c03ed0cc>] (vfs_ioctl) from [<c03edee8>]
> (do_vfs_ioctl+0x718/0x8b0)
> [   42.376315] [<c03edee8>] (do_vfs_ioctl) from [<c03ee0dc>]
> (ksys_ioctl+0x5c/0x84)
> [   42.384587] [<c03ee0dc>] (ksys_ioctl) from [<c03ee11c>] (sys_ioctl+0x18/0x1c)
> [   42.392570] [<c03ee11c>] (sys_ioctl) from [<c02011d4>]
> (__sys_trace_return+0x0/0x10)
>
> ...I see several transfers fail and then finally a few seconds later
> finally see the .enable call:

This is usually solved by wrapping the code in detect() with an enable/disable
pair to turn on enough circuitry to do the i2c writes for edid read.

>
> [   44.021501] DOUG: dw_hdmi_rockchip_encoder_enable start
> [   44.027792] DOUG: dw_hdmi_rockchip_encoder_enable end
>
> I can gather more info if it's useful.
>
> ===
>
> ...any chance we can keep the patch as-is, or do you have ideas of how
> to solve the above problems?

Yeah, given the context I think this is Ok to apply as-is. Maybe we could
shave out some of the work done in resume and move it to a helper called in
enable/detect, but I don't think it's necessary to hold up getting things
working.

Thanks for the detailed explanation (as always :)

Reviewed-by: Sean Paul <sean@poorly.run>


>
>
> Thanks!
>
> -Doug

-- 
Sean Paul, Software Engineer, Google / Chromium OS
> [   42.351303] [<c0646844>] (drm_ioctl_kernel) from [<c0646d34>]
> (drm_ioctl+0x32c/0x3c0)
> [   42.360063] [<c0646d34>] (drm_ioctl) from [<c03ed0cc>] (vfs_ioctl+0x28/0x44)
> [   42.367946] [<c03ed0cc>] (vfs_ioctl) from [<c03edee8>]
> (do_vfs_ioctl+0x718/0x8b0)
> [   42.376315] [<c03edee8>] (do_vfs_ioctl) from [<c03ee0dc>]
> (ksys_ioctl+0x5c/0x84)
> [   42.384587] [<c03ee0dc>] (ksys_ioctl) from [<c03ee11c>] (sys_ioctl+0x18/0x1c)
> [   42.392570] [<c03ee11c>] (sys_ioctl) from [<c02011d4>]
> (__sys_trace_return+0x0/0x10)
>
> ...I see several transfers fail and then finally a few seconds later
> finally see the .enable call:
>
> [   44.021501] DOUG: dw_hdmi_rockchip_encoder_enable start
> [   44.027792] DOUG: dw_hdmi_rockchip_encoder_enable end
>
> I can gather more info if it's useful.
>
> ===
>
> ...any chance we can keep the patch as-is, or do you have ideas of how
> to solve the above problems?
>
>
> Thanks!
>
> -Doug

-- 
Sean Paul, Software Engineer, Google / Chromium OS
