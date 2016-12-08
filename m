From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH] drm/panel: simple: Add support BOE nv101wxmn51
Date: Thu, 8 Dec 2016 14:01:15 +0800
Message-ID: <5999b6b3-383c-f9b8-8f29-4f1104f65da5@rock-chips.com>
References: <1481174765-28286-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1481174765-28286-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: thierry.reding@gmail.com
Cc: Caesar Wang <wxt@rock-chips.com>, airlied@linux.ie, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

Resend the missing document.

Sorry for the noise.

在 2016年12月08日 13:26, Caesar Wang 写道:
> 10.1WXGA is a color active matrix TFT LCD module using amorphous silicon
> TFT's as an active switching devices. It can be supported by the
> simple-panel driver.
>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---
>
>   drivers/gpu/drm/panel/panel-simple.c | 31 +++++++++++++++++++++++++++++++
>   1 file changed, 31 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 06aaf79..c9135dc 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -668,6 +668,34 @@ static const struct panel_desc avic_tm070ddh03 = {
>   	},
>   };
>   
> +static const struct drm_display_mode boe_nv101wxmn51_mode = {
> +	.clock = 71900,
> +	.hdisplay = 1280,
> +	.hsync_start = 1280 + 48,
> +	.hsync_end = 1280 + 48 + 32,
> +	.htotal = 1280 + 48 + 32 + 80,
> +	.vdisplay = 800,
> +	.vsync_start = 800 + 3,
> +	.vsync_end = 800 + 3 + 20,
> +	.vtotal = 800 + 3 + 20 + 9,
> +	.vrefresh = 60,
> +};
> +
> +static const struct panel_desc boe_nv101wxmn51 = {
> +	.modes = &boe_nv101wxmn51_mode,
> +	.num_modes = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 217,
> +		.height = 136,
> +	},
> +	.delay = {
> +		.prepare = 210,
> +		.enable = 50,
> +		.unprepare = 160,
> +	},
> +};
> +
>   static const struct drm_display_mode chunghwa_claa070wp03xg_mode = {
>   	.clock = 66770,
>   	.hdisplay = 800,
> @@ -1748,6 +1776,9 @@ static const struct of_device_id platform_of_match[] = {
>   		.compatible = "avic,tm070ddh03",
>   		.data = &avic_tm070ddh03,
>   	}, {
> +		.compatible = "boe,nv101wxmn51",
> +		.data = &boe_nv101wxmn51,
> +	}, {
>   		.compatible = "chunghwa,claa070wp03xg",
>   		.data = &chunghwa_claa070wp03xg,
>   	}, {
