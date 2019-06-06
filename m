From: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH v3 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Thu, 6 Jun 2019 12:42:21 -0400
Message-ID: <20190606164221.GI17077@art_vandelay>
References: <20190604204207.168085-1-dianders@chromium.org>
 <20190604204207.168085-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190604204207.168085-2-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Sean Paul <seanpaul@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, linux-rockchip@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>, mka@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 04, 2019 at 01:42:07PM -0700, Douglas Anderson wrote:
> On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> cycle:
> 
> 1. You lose the ability to detect an HDMI device being plugged in.
> 
> 2. If you're using the i2c bus built in to dw_hdmi then it stops
> working.
> 
> Let's call the core dw-hdmi's suspend/resume functions to restore
> things.
> 
> NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> "late/early" versions of suspend/resume because we found that the VOP
> was sometimes resuming before dw_hdmi and then calling into us before
> we were fully resumed.  For now I have gone back to the normal
> suspend/resume because I can't reproduce the problems.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
> Changes in v3:
> - dw_hdmi_resume() is now a void function (Laurent)
> 
> Changes in v2:
> - Add forgotten static (Laurent)
> - No empty stub for suspend (Laurent)
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 4cdc9f86c2e5..7bb0f922b303 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -542,11 +542,25 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
> +{
> +	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	dw_hdmi_resume(hdmi->hdmi);

The rockchip driver is already using the atomic suspend/resume helpers (via the
modeset helpers). Would you be able to accomplish the same thing by just moving
this call into the encoder enable callback? 

.enable is called on resume via the atomic commit framework, so everything is
ordered properly. Of course, this would reset the dw_hdmi bridge on each enable,
but I don't think that would be a problem?

Sean

> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops dw_hdmi_rockchip_pm = {
> +	SET_SYSTEM_SLEEP_PM_OPS(NULL, dw_hdmi_rockchip_resume)
> +};
> +
>  struct platform_driver dw_hdmi_rockchip_pltfm_driver = {
>  	.probe  = dw_hdmi_rockchip_probe,
>  	.remove = dw_hdmi_rockchip_remove,
>  	.driver = {
>  		.name = "dwhdmi-rockchip",
> +		.pm = &dw_hdmi_rockchip_pm,
>  		.of_match_table = dw_hdmi_rockchip_dt_ids,
>  	},
>  };
> -- 
> 2.22.0.rc1.311.g5d7573a151-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
