From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
Date: Thu, 16 May 2019 13:14:38 +0300
Message-ID: <20190516101438.GD4995@pendragon.ideasonboard.com>
References: <20190502223808.185180-1-dianders@chromium.org>
 <20190502223808.185180-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190502223808.185180-2-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, linux-rockchip@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>, mka@chromium.org, Sean Paul <seanpaul@chromium.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

Hi Douglas,

Thank you for the patch.

On Thu, May 02, 2019 at 03:38:08PM -0700, Douglas Anderson wrote:
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

Should this be solved with device links if needed ?

> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 4cdc9f86c2e5..deb0e8c30c03 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -542,11 +542,31 @@ static int dw_hdmi_rockchip_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int __maybe_unused dw_hdmi_rockchip_suspend(struct device *dev)
> +{
> +	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	return dw_hdmi_suspend(hdmi->hdmi);
> +}
> +
> +static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
> +{
> +	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
> +
> +	return dw_hdmi_resume(hdmi->hdmi);
> +}
> +
> +const struct dev_pm_ops dw_hdmi_rockchip_pm = {

Missing static keyword ?

Apart from this,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +	SET_SYSTEM_SLEEP_PM_OPS(dw_hdmi_rockchip_suspend,
> +				dw_hdmi_rockchip_resume)
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

-- 
Regards,

Laurent Pinchart
