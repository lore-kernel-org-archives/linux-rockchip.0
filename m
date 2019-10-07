From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 RESEND] drm/bridge: dw-hdmi: Restore audio when setting
 a mode
Date: Mon, 7 Oct 2019 13:57:52 +0200
Message-ID: <b8ad03db-b93f-44e0-ccd6-fc8bda1af223@baylibre.com>
References: <20191003041438.194224-1-cychiang@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191003041438.194224-1-cychiang@chromium.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Cheng-Yi Chiang <cychiang@chromium.org>, linux-kernel@vger.kernel.org
Cc: Jerome Brunet <jbrunet@baylibre.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, dianders@chromium.org, dgreid@chromium.org, tzungbi@chromium.org, alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Daniel Kurtz <djkurtz@chromium.org>, Yakir Yang <ykk@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 03/10/2019 06:14, Cheng-Yi Chiang wrote:
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
>  Change from v1 to v2:
>   - Use audio_lock to protect audio clock.
>   - Fix the patch title.
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index aa7efd4da1c8..749d8e4c535b 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -1982,6 +1982,17 @@ static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
>  		    HDMI_IH_MUTE_FC_STAT2);
>  }
>  
> +static void dw_hdmi_audio_restore(struct dw_hdmi *hdmi)
> +{
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&hdmi->audio_lock, flags);
> +
> +	hdmi_enable_audio_clk(hdmi, hdmi->audio_enable);
> +
> +	spin_unlock_irqrestore(&hdmi->audio_lock, flags);

Dumb question, why is this protected by a spinlock ?

Neil

> +}
> +
>  static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
>  {
>  	int ret;
> @@ -2045,7 +2056,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
>  
>  		/* HDMI Initialization Step E - Configure audio */
>  		hdmi_clk_regenerator_update_pixel_clock(hdmi);
> -		hdmi_enable_audio_clk(hdmi, true);
> +		dw_hdmi_audio_restore(hdmi);
>  	}
>  
>  	/* not for DVI mode */
> 
