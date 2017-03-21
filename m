From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2 2/2] drm/panel: add innolux,p079zca panel driver
Date: Tue, 21 Mar 2017 13:38:31 -0700
Message-ID: <20170321203829.GD74389@google.com>
References: <1489562353-10313-1-git-send-email-zyw@rock-chips.com>
 <1489562353-10313-2-git-send-email-zyw@rock-chips.com>
 <20170321192635.GA19389@art_vandelay>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20170321192635.GA19389@art_vandelay>
Sender: linux-kernel-owner@vger.kernel.org
To: Sean Paul <seanpaul@chromium.org>
Cc: Chris Zhong <zyw@rock-chips.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

+ Thierry for real

On Tue, Mar 21, 2017 at 03:26:35PM -0400, Sean Paul wrote:
> On Wed, Mar 15, 2017 at 03:19:13PM +0800, Chris Zhong wrote:
> > Support Innolux P079ZCA 7.85" 768x1024 TFT LCD panel, it is a MIPI DSI
> > panel.
> > 
> > Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> > ---
> > 
> > Changes in v2:
> > - add some error check
> > - always use Low power mode to send commend
> > - add comments for all the sleep
> > - use DRM_DEV_ERROR instead of dev_err
> > 
> 
> Minor suggestion below. Once that's cleared up, you can add:
> Reviewed-by: Sean Paul <seanpaul@chromium.org>
> 
> Also, please add Thierry directly to your patches so he sees them.
> 
> 
> >  drivers/gpu/drm/panel/Kconfig                 |  11 +
> >  drivers/gpu/drm/panel/Makefile                |   1 +
> >  drivers/gpu/drm/panel/panel-innolux-p079zca.c | 344 ++++++++++++++++++++++++++
> >  3 files changed, 356 insertions(+)
> >  create mode 100644 drivers/gpu/drm/panel/panel-innolux-p079zca.c
> > 
> 
> <snip>
> > +static int innolux_panel_prepare(struct drm_panel *panel)
> > +{
> > +	struct innolux_panel *innolux = to_innolux_panel(panel);
> > +	int err, ret;
> > +
> > +	if (innolux->prepared)
> > +		return 0;
> > +
> > +	gpiod_set_value_cansleep(innolux->enable_gpio, 0);
> > +
> > +	err = regulator_enable(innolux->supply);
> > +	if (err < 0)
> > +		return err;
> > +
> > +	/* T2: 15ms - 1000ms */
> > +	usleep_range(15000, 16000);
> > +
> > +	gpiod_set_value_cansleep(innolux->enable_gpio, 1);
> > +
> > +	/* T4: 15ms - 1000ms */
> > +	usleep_range(15000, 16000);
> > +
> > +	err = mipi_dsi_dcs_exit_sleep_mode(innolux->link);
> > +	if (err < 0) {
> > +		DRM_DEV_ERROR(panel->dev, "failed to exit sleep mode: %d\n",
> > +			      err);
> > +		goto poweroff;
> > +	}
> > +
> > +	/* T6: 120ms - 1000ms*/
> > +	msleep(120);
> > +
> > +	err = mipi_dsi_dcs_set_display_on(innolux->link);
> > +	if (err < 0) {
> > +		DRM_DEV_ERROR(panel->dev, "failed to set display on: %d\n",
> > +			      err);
> > +		goto poweroff;
> > +	}
> > +
> > +	/* T7: 5ms */
> > +	usleep_range(5000, 6000);
> > +
> > +	innolux->prepared = true;
> > +
> > +	return 0;
> > +
> > +poweroff:
> > +	ret = regulator_disable(innolux->supply);
> > +	if (ret)
> > +		return ret;
> 
> I don't think we should be returning this error code. If we're here, it's
> because something else triggered err, and we should return that. Change this to:
> 
> if (regulator_disable(innolux->supply))
>         DRM_DEV_ERROR(panel->dev, "failed to disable regulator after error\n");

And maybe include the error code in that message still?

	ret = regulator_disable(innolux->supply);
	if (ret)
		DRM_DEV_ERROR(panel->dev, "failed to disable regulator after error (%d)\n",
			      ret);

Brian

> > +
> > +	gpiod_set_value_cansleep(innolux->enable_gpio, 0);
> > +	return err;
> > +}
> 
> <snip>
> 
> > -- 
> > 2.6.3
