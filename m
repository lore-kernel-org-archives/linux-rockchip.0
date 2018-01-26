From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2 2/2] drm/bridge/synopsys: dsi: Fix dsi_host_transfer()
 return value
Date: Thu, 25 Jan 2018 16:46:29 -0800
Message-ID: <20180126004628.fbrady7twf7ys2qx@ban.mtv.corp.google.com>
References: <20180125103800.1999-1-philippe.cornu@st.com>
 <20180125103800.1999-3-philippe.cornu@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20180125103800.1999-3-philippe.cornu@st.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Philippe Cornu <philippe.cornu@st.com>
Cc: Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Bhumika Goyal <bhumirks@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Yannick Fertre <yannick.fertre@st.com>, Vincent Abriou <vincent.abriou@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Ludovic Barre <ludovic.barre@st.com>, Mickael Reulier <mickael.reulier@st.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jan 25, 2018 at 11:38:00AM +0100, Philippe Cornu wrote:
> The dw_mipi_dsi_host_transfer() must return the number of
> bytes transmitted/received on success instead of 0.
> Note: As the read feature is not implemented, only the
> transmitted number of bytes is returned for the moment.
> 
> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>

Assuming we're going with the current documented semantics (where we
return # of TX bytes for writes), then:

Reviewed-by: Brian Norris <briannorris@chromium.org>

I believe Archit was suggesting maybe changing that sometime, but that's
no excuse for not matching documentation now.

> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 72ecaeb40822..090bf62d1ea8 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -419,7 +419,16 @@ static ssize_t dw_mipi_dsi_host_transfer(struct mipi_dsi_host *host,
>  
>  	dw_mipi_message_config(dsi, msg);
>  
> -	return dw_mipi_dsi_write(dsi, &packet);
> +	ret = dw_mipi_dsi_write(dsi, &packet);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * TODO Only transmitted size is returned as actual driver does
> +	 * not support dcs/generic reads. Please update return value when
> +	 * delivering the read feature.
> +	 */
> +	return packet.size;

You're really holding my hand here, I see :) Thanks I guess.

>  }
>  
>  static const struct mipi_dsi_host_ops dw_mipi_dsi_host_ops = {
> -- 
> 2.15.1
> 
