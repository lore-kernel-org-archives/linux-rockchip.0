From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dsi: use common
 mipi_dsi_create_packet()
Date: Tue, 16 Jan 2018 11:04:55 -0800
Message-ID: <20180116190454.GB149565@google.com>
References: <20180109203248.139249-1-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20180109203248.139249-1-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: David Airlie <airlied@linux.ie>, Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu <philippe.cornu@st.com>, Vincent Abriou <vincent.abriou@st.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sean Paul <seanpaul@chromium.org>, Nickey Yang <nickey.yang@rock-chips.com>, hl@rock-chips.com, linux-rockchip@lists.infradead.org, mka@chromium.org, hoegsberg@gmail.com, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi all,

I believe Philippe's comments about return values have been addressed
separately, and this patch was applied to drm-misc-next. But I have one
additional thought below.

On Tue, Jan 09, 2018 at 12:32:47PM -0800, Brian Norris wrote:
> This takes care of 2 TODOs in this driver, by using the common DSI
> packet-marshalling code instead of our custom short/long write code.
> This both saves us some duplicated code and gets us free support for
> command types that weren't already part of our switch block (e.g.,
> MIPI_DSI_GENERIC_LONG_WRITE).
> 
> The code logic stays mostly intact, except that it becomes unnecessary
> to split the short/long write functions, and we have to copy data a bit
> more.
> 
> Along the way, I noticed that loop bounds were a little odd:
> 
> 	while (DIV_ROUND_UP(len, pld_data_bytes))
> 
> This really was just supposed to be 'len != 0', so I made that more
> clear.
> 
> Tested on RK3399 with some pending refactoring patches by Nickey Yang,
> to make the Rockchip DSI driver wrap this common driver.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
> Tested-by: Philippe Cornu <philippe.cornu@st.com>

...

> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index d9cca4fd66ec..ed91e32ee43a 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c

...

> @@ -419,40 +386,27 @@ static int dw_mipi_dsi_dcs_long_write(struct dw_mipi_dsi *dsi,
>  		}
>  	}
>  
> -	return dw_mipi_dsi_gen_pkt_hdr_write(dsi, hdr_val);
> +	remainder = 0;
> +	memcpy(&remainder, packet->header, sizeof(packet->header));
> +	return dw_mipi_dsi_gen_pkt_hdr_write(dsi, remainder);
>  }
>  
>  static ssize_t dw_mipi_dsi_host_transfer(struct mipi_dsi_host *host,
>  					 const struct mipi_dsi_msg *msg)
>  {
>  	struct dw_mipi_dsi *dsi = host_to_dsi(host);
> +	struct mipi_dsi_packet packet;
>  	int ret;
>  
> -	/*
> -	 * TODO dw drv improvements
> -	 * use mipi_dsi_create_packet() instead of all following
> -	 * functions and code (no switch cases, no
> -	 * dw_mipi_dsi_dcs_short_write(), only the loop in long_write...)
> -	 * and use packet.header...
> -	 */
> -	dw_mipi_message_config(dsi, msg);
> -
> -	switch (msg->type) {
> -	case MIPI_DSI_DCS_SHORT_WRITE:
> -	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
> -	case MIPI_DSI_SET_MAXIMUM_RETURN_PACKET_SIZE:
> -		ret = dw_mipi_dsi_dcs_short_write(dsi, msg);
> -		break;
> -	case MIPI_DSI_DCS_LONG_WRITE:
> -		ret = dw_mipi_dsi_dcs_long_write(dsi, msg);
> -		break;
> -	default:
> -		dev_err(dsi->dev, "unsupported message type 0x%02x\n",
> -			msg->type);
> -		ret = -EINVAL;

By removing this default case, I'm hiding the fact that this driver
doesn't currently implement RX support at all -- only TX. (Previously,
if presented with, e.g., a MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM, the
driver would reject it. Now it will silently fail to return it.)

I believe some Rockchip folks have preliminary RX support implemented
somewhere, so we might consider merging that, or else re-introducing a
failure case to catch the unimplemented RX support.

Brian

> +	ret = mipi_dsi_create_packet(&packet, msg);
> +	if (ret) {
> +		dev_err(dsi->dev, "failed to create packet: %d\n", ret);
> +		return ret;
>  	}
>  
> -	return ret;
> +	dw_mipi_message_config(dsi, msg);
> +
> +	return dw_mipi_dsi_write(dsi, &packet);
>  }
>  
>  static const struct mipi_dsi_host_ops dw_mipi_dsi_host_ops = {
