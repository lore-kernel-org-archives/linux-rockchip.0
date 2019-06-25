From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dw-hdmi: Handle audio for
 more clock rates
Date: Tue, 25 Jun 2019 18:07:47 +0200
Message-ID: <bec87373-48cc-0c55-9662-a74a7d2a47a0@samsung.com>
References: <CGME20190619211151epcas3p4dbb163c034afa4063869c761b93e24b1@epcas3p4.samsung.com>
        <20190619210718.134951-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190619210718.134951-1-dianders@chromium.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, seanpaul@chromium.org
Cc: jernej.skrabec@siol.net, heiko@sntech.de, jonas@kwiboo.se, maxime.ripard@bootlin.com, narmstrong@baylibre.com, linux-rockchip@lists.infradead.org, dgreid@chromium.org, cychiang@chromium.org, jbrunet@baylibre.com, Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

On 19.06.2019 23:07, Douglas Anderson wrote:
> Let's add some better support for HDMI audio to dw_hdmi.
> Specifically:
>
> 1. For 44.1 kHz audio the old code made the assumption that an N of
> 6272 was right most of the time.  That wasn't true and the new table
> should pick a more ideal value.


Why? I ask because it is against recommendation from HDMI specs.



>
> 2. The new table has values from the HDMI spec for 297 MHz and 594
> MHz.
>
> 3. There is now code to try to come up with a more idea N/CTS for
> clock rates that aren't in the table.  This code is a bit slow because
> it iterates over every possible value of N and picks the best one, but
> it should make a good fallback.
>
> NOTES:
> - The oddest part of this patch comes about because computing the
>   ideal N/CTS means knowing the _exact_ clock rate, not a rounded
>   version of it.  The drm framework makes this harder by rounding
>   rates to kHz, but even if it didn't there might be cases where the
>   ideal rate could only be calculated if we knew the real
>   (non-integral) rate.  This means that in cases where we know (or
>   believe) that the true rate is something other than the rate we are
>   told by drm.
> - This patch makes much less of a difference after the patch
>   ("drm/bridge: dw-hdmi: Use automatic CTS generation mode when using
>   non-AHB audio"), at least if you're using I2S audio.  The main goal
>   of picking a good N is to make it possible to get a nice integral
>   CTS value, but if CTS is automatic then that's much less critical.


As I said above HDMI recommendations are different from those from your
patch. Please elaborate why?

Btw I've seen your old patches introducing recommended N/CTS calculation
helpers in HDMI framework, unfortunately abandoned due to lack of interest.

Maybe resurrecting them would be a good idea, with assumption there will
be users :)


Regards

Andrzej


>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> Changes in v2:
> - Atop ("drm/bridge: dw-hdmi: Use automatic CTS generation mode when
>   using non-AHB audio").
> - Split out the ability of a platform to provide custom tables.
>
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 203 +++++++++++++++++-----
>  1 file changed, 162 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index de4c3669c83f..7cdffebcc7cb 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -60,6 +60,82 @@ enum hdmi_datamap {
>  	YCbCr422_12B = 0x12,
>  };
>  
> +struct dw_hdmi_audio_tmds_n {
> +	unsigned long tmds;
> +	unsigned int n_32k;
> +	unsigned int n_44k1;
> +	unsigned int n_48k;
> +};
> +
> +/*
> + * Unless otherwise noted, entries in this table are 100% optimization.
> + * Values can be obtained from hdmi_compute_n() but that function is
> + * slow so we pre-compute values we expect to see.
> + *
> + * All 32k and 48k values are expected to be the same (due to the way
> + * the math works) for any rate that's an exact kHz.
> + *
> + * If a particular platform knows that it makes a rate slightly
> + * differently then it should add a platform-specific match.
> + */
> +static const struct dw_hdmi_audio_tmds_n common_tmds_n_table[] = {
> +	/* Doesn't match computations, assumes real clock = 25.2 MHz / 1.001 */
> +	{ .tmds = 25175000, .n_32k = 4576, .n_44k1 = 7007, .n_48k = 6864, },
> +
> +	{ .tmds = 25200000, .n_32k = 4096, .n_44k1 = 5656, .n_48k = 6144, },
> +	{ .tmds = 27000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 27027000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 28320000, .n_32k = 4096, .n_44k1 = 5586, .n_48k = 6144, },
> +	{ .tmds = 30240000, .n_32k = 4096, .n_44k1 = 5642, .n_48k = 6144, },
> +	{ .tmds = 31500000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
> +	{ .tmds = 32000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
> +	{ .tmds = 33750000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 36000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 40000000, .n_32k = 4096, .n_44k1 = 5733, .n_48k = 6144, },
> +	{ .tmds = 49500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 50000000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
> +	{ .tmds = 54000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 65000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 68250000, .n_32k = 4096, .n_44k1 = 5376, .n_48k = 6144, },
> +	{ .tmds = 71000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 72000000, .n_32k = 4096, .n_44k1 = 5635, .n_48k = 6144, },
> +	{ .tmds = 73250000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +
> +	/* Doesn't match computations, assumes real clock = 74.25 MHz / 1.001 */
> +	{ .tmds = 74176000, .n_32k = 11648, .n_44k1 = 17836, .n_48k = 11648, },
> +
> +	{ .tmds = 74250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +	{ .tmds = 75000000, .n_32k = 4096, .n_44k1 = 5880, .n_48k = 6144, },
> +	{ .tmds = 78750000, .n_32k = 4096, .n_44k1 = 5600, .n_48k = 6144, },
> +	{ .tmds = 78800000, .n_32k = 4096, .n_44k1 = 5292, .n_48k = 6144, },
> +	{ .tmds = 79500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
> +	{ .tmds = 83500000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 85500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 88750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 97750000, .n_32k = 4096, .n_44k1 = 14112, .n_48k = 6144, },
> +	{ .tmds = 101000000, .n_32k = 4096, .n_44k1 = 7056, .n_48k = 6144, },
> +	{ .tmds = 106500000, .n_32k = 4096, .n_44k1 = 4704, .n_48k = 6144, },
> +	{ .tmds = 108000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +	{ .tmds = 115500000, .n_32k = 4096, .n_44k1 = 5712, .n_48k = 6144, },
> +	{ .tmds = 119000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
> +	{ .tmds = 135000000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 146250000, .n_32k = 4096, .n_44k1 = 6272, .n_48k = 6144, },
> +
> +	/* Doesn't match computations, assumes real clock = 148.5 MHz / 1.001 */
> +	{ .tmds = 148352000, .n_32k = 11648, .n_44k1 = 8918, .n_48k = 5824, },
> +
> +	{ .tmds = 148500000, .n_32k = 4096, .n_44k1 = 5488, .n_48k = 6144, },
> +	{ .tmds = 154000000, .n_32k = 4096, .n_44k1 = 5544, .n_48k = 6144, },
> +	{ .tmds = 162000000, .n_32k = 4096, .n_44k1 = 5684, .n_48k = 6144, },
> +
> +	/* For 297 MHz+ HDMI spec has some other rule for setting N */
> +	{ .tmds = 297000000, .n_32k = 3073, .n_44k1 = 4704, .n_48k = 5120, },
> +	{ .tmds = 594000000, .n_32k = 3073, .n_44k1 = 9408, .n_48k = 10240, },
> +
> +	/* End of table */
> +	{ .tmds = 0,         .n_32k = 0,    .n_44k1 = 0,    .n_48k = 0, },
> +};
> +
>  static const u16 csc_coeff_default[3][4] = {
>  	{ 0x2000, 0x0000, 0x0000, 0x0000 },
>  	{ 0x0000, 0x2000, 0x0000, 0x0000 },
> @@ -524,60 +600,105 @@ static void hdmi_set_cts_n(struct dw_hdmi *hdmi, unsigned int cts,
>  	hdmi_writeb(hdmi, n & 0xff, HDMI_AUD_N1);
>  }
>  
> -static unsigned int hdmi_compute_n(unsigned int freq, unsigned long pixel_clk)
> +static int hdmi_match_tmds_n_table(struct dw_hdmi *hdmi, unsigned int freq,
> +				   unsigned long pixel_clk)
>  {
> -	unsigned int n = (128 * freq) / 1000;
> -	unsigned int mult = 1;
> +	const struct dw_hdmi_audio_tmds_n *tmds_n = NULL;
> +	int mult = 1;
> +	int i;
>  
>  	while (freq > 48000) {
>  		mult *= 2;
>  		freq /= 2;
>  	}
>  
> +	for (i = 0; common_tmds_n_table[i].tmds != 0; i++) {
> +		if (pixel_clk == common_tmds_n_table[i].tmds) {
> +			tmds_n = &common_tmds_n_table[i];
> +			break;
> +		}
> +	}
> +
> +	if (tmds_n == NULL)
> +		return -ENOENT;
> +
>  	switch (freq) {
>  	case 32000:
> -		if (pixel_clk == 25175000)
> -			n = 4576;
> -		else if (pixel_clk == 27027000)
> -			n = 4096;
> -		else if (pixel_clk == 74176000 || pixel_clk == 148352000)
> -			n = 11648;
> -		else
> -			n = 4096;
> -		n *= mult;
> -		break;
> -
> +		return tmds_n->n_32k * mult;
>  	case 44100:
> -		if (pixel_clk == 25175000)
> -			n = 7007;
> -		else if (pixel_clk == 74176000)
> -			n = 17836;
> -		else if (pixel_clk == 148352000)
> -			n = 8918;
> -		else
> -			n = 6272;
> -		n *= mult;
> -		break;
> -
> +		return tmds_n->n_44k1 * mult;
>  	case 48000:
> -		if (pixel_clk == 25175000)
> -			n = 6864;
> -		else if (pixel_clk == 27027000)
> -			n = 6144;
> -		else if (pixel_clk == 74176000)
> -			n = 11648;
> -		else if (pixel_clk == 148352000)
> -			n = 5824;
> -		else
> -			n = 6144;
> -		n *= mult;
> -		break;
> -
> +		return tmds_n->n_48k * mult;
>  	default:
> -		break;
> +		return -ENOENT;
> +	}
> +}
> +
> +static u64 hdmi_audio_math_diff(unsigned int freq, unsigned int n,
> +				unsigned int pixel_clk)
> +{
> +	u64 final, diff;
> +	u64 cts;
> +
> +	final = (u64)pixel_clk * n;
> +
> +	cts = final;
> +	do_div(cts, 128 * freq);
> +
> +	diff = final - (u64)cts * (128 * freq);
> +
> +	return diff;
> +}
> +
> +static unsigned int hdmi_compute_n(struct dw_hdmi *hdmi, unsigned int freq,
> +				   unsigned long pixel_clk)
> +{
> +	unsigned int min_n = DIV_ROUND_UP((128 * freq), 1500);
> +	unsigned int max_n = (128 * freq) / 300;
> +	unsigned int ideal_n = (128 * freq) / 1000;
> +	unsigned int best_n_distance = ideal_n;
> +	unsigned int best_n = 0;
> +	u64 best_diff = U64_MAX;
> +	int n;
> +
> +	/* If the ideal N could satisfy the audio math, then just take it */
> +	if (hdmi_audio_math_diff(freq, ideal_n, pixel_clk) == 0)
> +		return ideal_n;
> +
> +	for (n = min_n; n <= max_n; n++) {
> +		u64 diff = hdmi_audio_math_diff(freq, n, pixel_clk);
> +
> +		if (diff < best_diff || (diff == best_diff &&
> +		    abs(n - ideal_n) < best_n_distance)) {
> +			best_n = n;
> +			best_diff = diff;
> +			best_n_distance = abs(best_n - ideal_n);
> +		}
> +
> +		/*
> +		 * The best N already satisfy the audio math, and also be
> +		 * the closest value to ideal N, so just cut the loop.
> +		 */
> +		if ((best_diff == 0) && (abs(n - ideal_n) > best_n_distance))
> +			break;
>  	}
>  
> -	return n;
> +	return best_n;
> +}
> +
> +static unsigned int hdmi_find_n(struct dw_hdmi *hdmi, unsigned int freq,
> +				unsigned long pixel_clk)
> +{
> +	int n;
> +
> +	n = hdmi_match_tmds_n_table(hdmi, freq, pixel_clk);
> +	if (n > 0)
> +		return n;
> +
> +	dev_warn(hdmi->dev, "Rate %lu missing; compute N dynamically\n",
> +		 pixel_clk);
> +
> +	return hdmi_compute_n(hdmi, freq, pixel_clk);
>  }
>  
>  static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
> @@ -588,7 +709,7 @@ static void hdmi_set_clk_regenerator(struct dw_hdmi *hdmi,
>  	u8 config3;
>  	u64 tmp;
>  
> -	n = hdmi_compute_n(sample_rate, pixel_clk);
> +	n = hdmi_find_n(hdmi, sample_rate, pixel_clk);
>  
>  	config3 = hdmi_readb(hdmi, HDMI_CONFIG3_ID);
>  
