From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH] drm: bridge: dw-hdmi: Fix overflow workaround for
 Rockchip SoCs
Date: Fri, 22 Feb 2019 14:28:14 +0200
Message-ID: <20190222122814.GW3522@pendragon.ideasonboard.com>
References: <AM3PR03MB0966818FAAAE6192FF4ED11AAC7D0@AM3PR03MB0966.eurprd03.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <AM3PR03MB0966818FAAAE6192FF4ED11AAC7D0@AM3PR03MB0966.eurprd03.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sean Paul <seanpaul@chromium.org>, Neil Armstrong <narmstrong@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jonas,

Thank you for the patch.

On Wed, Feb 20, 2019 at 07:52:31AM +0000, Jonas Karlman wrote:
> The Rockchip RK3288 SoC (v2.00a) and RK3328/RK3399 SoCs (v2.11a) have
> also been identified as needing this workaround with a single iteration.
> 
> Fixes: be41fc55f1aa ("drm: bridge: dw-hdmi: Handle overflow workaround based on device version")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

This makes me wonder if we have any device at all that doesn't need the
workaround... The HDMI encoder in R-Car SoCs doesn't seem to require it,
but it reports the same version number as on other SoCs that require the
workaround, and enabling it doesn't seem to affect R-Car adversely.
Should we thus enable it unconditionally ? Input from Synopsys would be
useful.

> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 64c3cf027518..14223c0ee784 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -1655,6 +1655,8 @@ static void dw_hdmi_clear_overflow(struct dw_hdmi *hdmi)
>  	 * iteration for others.
>  	 * The Amlogic Meson GX SoCs (v2.01a) have been identified as needing
>  	 * the workaround with a single iteration.
> +	 * The Rockchip RK3288 SoC (v2.00a) and RK3328/RK3399 SoCs (v2.11a) have
> +	 * been identified as needing the workaround with a single iteration.
>  	 */
>  
>  	switch (hdmi->version) {
> @@ -1663,7 +1665,9 @@ static void dw_hdmi_clear_overflow(struct dw_hdmi *hdmi)
>  		break;
>  	case 0x131a:
>  	case 0x132a:
> +	case 0x200a:
>  	case 0x201a:
> +	case 0x211a:
>  	case 0x212a:
>  		count = 1;
>  		break;

-- 
Regards,

Laurent Pinchart
