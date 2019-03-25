From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] drm/bridge: dw-hdmi: disable SCDC configuration for
 invalid setups
Date: Mon, 25 Mar 2019 11:22:34 +0100
Message-ID: <c4032279-3cc5-aeb8-a255-2715bc130e11@baylibre.com>
References: <20190315095414.28520-1-narmstrong@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190315095414.28520-1-narmstrong@baylibre.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: a.hajda@samsung.com, Laurent.pinchart@ideasonboard.com, heiko@sntech.de, robh@kernel.org
Cc: linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, jernej.skrabec@siol.net
List-Id: linux-rockchip.vger.kernel.org

Hi Andrzej, Laurent,

Gentle ping,
Did you have time to review this fix ?

Thanks !
Neil

On 15/03/2019 10:54, Neil Armstrong wrote:
> This patch is an attempt to limit HDMI 2.0 SCDC setup when :
> - the SoC embeds an HDMI 1.4 only controller
> - the EDID supports SCDC but not scrambling
> - the EDID supports SCDC scrambling but not for low TMDS bit rates,
>   while only supporting low TMDS bit rates
> 
> This to avoid communicating with the SCDC DDC slave uncessary, and
> setting the DW-HDMI TMDS Scrambler setup when not supported by the
> underlying hardware.
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Fixes: 264fce6cc2c1 ("drm/bridge: dw-hdmi: Add SCDC and TMDS Scrambling support")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
> 
> Rob,
> 
> this patch should also solve your issue with your 11' display, could you
> test it ?
> If this works, I will focus on the underlying issue where the RK3399 SoC
> freezes in your setup.
> 
> Thanks,
> Neil
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 34 ++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index a63e5f0dae56..db761329a1e3 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -1037,6 +1037,31 @@ void dw_hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
>  }
>  EXPORT_SYMBOL_GPL(dw_hdmi_phy_i2c_write);
>  
> +/* Filter out invalid setups to avoid configuring SCDC and scrambling */
> +static bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi)
> +{
> +	struct drm_display_info *display = &hdmi->connector.display_info;
> +
> +	/* Completely disable SCDC support for older controllers */
> +	if (hdmi->version < 0x200a)
> +		return false;
> +
> +	/* Disable if SCDC is not supported, or if an HF-VSDB block is absent */
> +	if (!display->hdmi.scdc.supported ||
> +	    !display->hdmi.scdc.scrambling.supported)
> +		return false;
> +
> +	/*
> +	 * Disable if display only support low TMDS rates and scrambling
> +	 * for low rates is not supported either
> +	 */
> +	if (!display->hdmi.scdc.scrambling.low_rates &&
> +	    display->max_tmds_clock <= 340000)
> +		return false;
> +
> +	return true;
> +}
> +
>  /*
>   * HDMI2.0 Specifies the following procedure for High TMDS Bit Rates:
>   * - The Source shall suspend transmission of the TMDS clock and data
> @@ -1055,7 +1080,7 @@ void dw_hdmi_set_high_tmds_clock_ratio(struct dw_hdmi *hdmi)
>  	unsigned long mtmdsclock = hdmi->hdmi_data.video_mode.mtmdsclock;
>  
>  	/* Control for TMDS Bit Period/TMDS Clock-Period Ratio */
> -	if (hdmi->connector.display_info.hdmi.scdc.supported) {
> +	if (dw_hdmi_support_scdc(hdmi)) {
>  		if (mtmdsclock > HDMI14_MAX_TMDSCLK)
>  			drm_scdc_set_high_tmds_clock_ratio(hdmi->ddc, 1);
>  		else
> @@ -1579,8 +1604,9 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
>  
>  	/* Set up HDMI_FC_INVIDCONF */
>  	inv_val = (hdmi->hdmi_data.hdcp_enable ||
> -		   vmode->mtmdsclock > HDMI14_MAX_TMDSCLK ||
> -		   hdmi_info->scdc.scrambling.low_rates ?
> +		   (dw_hdmi_support_scdc(hdmi) &&
> +		    (vmode->mtmdsclock > HDMI14_MAX_TMDSCLK ||
> +		     hdmi_info->scdc.scrambling.low_rates)) ?
>  		HDMI_FC_INVIDCONF_HDCP_KEEPOUT_ACTIVE :
>  		HDMI_FC_INVIDCONF_HDCP_KEEPOUT_INACTIVE);
>  
> @@ -1646,7 +1672,7 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
>  	}
>  
>  	/* Scrambling Control */
> -	if (hdmi_info->scdc.supported) {
> +	if (dw_hdmi_support_scdc(hdmi)) {
>  		if (vmode->mtmdsclock > HDMI14_MAX_TMDSCLK ||
>  		    hdmi_info->scdc.scrambling.low_rates) {
>  			/*
> 
