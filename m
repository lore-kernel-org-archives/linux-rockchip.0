From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Date: Mon, 2 Sep 2019 11:42:38 +0200
Message-ID: <241fd791-3792-34c8-ac35-a81a0a41070c@baylibre.com>
References: <20190902035435.44463-1-cychiang@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190902035435.44463-1-cychiang@chromium.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Cheng-Yi Chiang <cychiang@chromium.org>, linux-kernel@vger.kernel.org
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org, zhengxing@rock-chips.com, kuninori.morimoto.gx@renesas.com, a.hajda@samsung.com, airlied@linux.ie, jeffy.chen@rock-chips.com, dianders@chromium.org, dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com, linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>, eddie.cai@rock-chips.com, Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch, enric.balletbo@collabora.com, dgreid@chromium.org, sam@ravnborg.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 02/09/2019 05:54, Cheng-Yi Chiang wrote:
> In the designware databook, the sequence of enabling audio clock and
> setting format is not clearly specified.
> Currently, audio clock is enabled in the end of hw_param ops after
> setting format.
> 
> On some monitors, there is a possibility that audio does not come out.
> Fix this by enabling audio clock in audio_startup ops
> before hw_param ops setting format.
> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Jonas Karlman <jonas@kwiboo.se>
> Tested-by: Douglas Anderson <dianders@chromium.org>
> ---
>  Changes from v1:
>  1. Move audio_startup to the front of audio_shutdown.
>  2. Fix the indentation of audio_startup equal sign using tab.
>  3. Rebase the patch on linux-next/master.
>  4. Add Reviewed-by and Tested-by fields from dianders@chromium.org.
>  5. Add Reviewed-by field from jonas@kwiboo.se.
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index 1d15cf9b6821..34d8e837555f 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -109,6 +109,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
>  	hdmi_write(audio, conf0, HDMI_AUD_CONF0);
>  	hdmi_write(audio, conf1, HDMI_AUD_CONF1);
>  
> +	return 0;
> +}
> +
> +static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
> +{
> +	struct dw_hdmi_i2s_audio_data *audio = data;
> +	struct dw_hdmi *hdmi = audio->hdmi;
> +
>  	dw_hdmi_audio_enable(hdmi);
>  
>  	return 0;
> @@ -153,6 +161,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>  
>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
>  	.hw_params	= dw_hdmi_i2s_hw_params,
> +	.audio_startup  = dw_hdmi_i2s_audio_startup,
>  	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
>  	.get_eld	= dw_hdmi_i2s_get_eld,
>  	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
> 
Looks sane, Jonas should I apply it now it's rebased ?

Neil
