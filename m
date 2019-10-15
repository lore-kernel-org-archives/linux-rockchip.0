From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3] drm/bridge: dw-hdmi: Restore audio when setting a mode
Date: Tue, 15 Oct 2019 09:46:36 +0200
Message-ID: <d0f03ff3-2743-b3e1-1b53-c4ef26b158db@baylibre.com>
References: <20191008102145.55134-1-cychiang@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191008102145.55134-1-cychiang@chromium.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Cheng-Yi Chiang <cychiang@chromium.org>, linux-kernel@vger.kernel.org
Cc: Jerome Brunet <jbrunet@baylibre.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, dianders@chromium.org, dgreid@chromium.org, tzungbi@chromium.org, alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Daniel Kurtz <djkurtz@chromium.org>, Yakir Yang <ykk@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On 08/10/2019 12:21, Cheng-Yi Chiang wrote:
> From: Daniel Kurtz <djkurtz@chromium.org>
> 
> When setting a new display mode, dw_hdmi_setup() calls
> dw_hdmi_enable_video_path(), which disables all hdmi clocks, including
> the audio clock.
> 
> We should only (re-)enable the audio clock if audio was already enabled
> when setting the new mode.
> 
> Without this patch, on RK3288, there will be HDMI audio on some monitors
> if i2s was played to headphone when the monitor was plugged.
> ACER H277HU and ASUS PB278 are two of the monitors showing this issue.
> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> Signed-off-by: Daniel Kurtz <djkurtz@chromium.org>
> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> ---
>  Change from v2 to v3:
>  - Remove spinlock around setting clock.
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index a15fbf71b9d7..af060162b0af 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2054,7 +2054,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
>  
>  		/* HDMI Initialization Step E - Configure audio */
>  		hdmi_clk_regenerator_update_pixel_clock(hdmi);
> -		hdmi_enable_audio_clk(hdmi, true);
> +		hdmi_enable_audio_clk(hdmi, hdmi->audio_enable);
>  	}
>  
>  	/* not for DVI mode */
> 

Looks coherent for me.

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

Applying to drm-misc-next
