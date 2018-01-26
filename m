From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2 1/2] drm/bridge/synopsys: dsi: Add a warning msg on
 dsi read requests
Date: Thu, 25 Jan 2018 16:44:42 -0800
Message-ID: <20180126004441.k4pymmsr6brcdzmq@ban.mtv.corp.google.com>
References: <20180125103800.1999-1-philippe.cornu@st.com>
 <20180125103800.1999-2-philippe.cornu@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20180125103800.1999-2-philippe.cornu@st.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Philippe Cornu <philippe.cornu@st.com>
Cc: Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Bhumika Goyal <bhumirks@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Yannick Fertre <yannick.fertre@st.com>, Vincent Abriou <vincent.abriou@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Ludovic Barre <ludovic.barre@st.com>, Mickael Reulier <mickael.reulier@st.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jan 25, 2018 at 11:37:59AM +0100, Philippe Cornu wrote:
> The dcs/generic dsi read feature is not yet implemented so it
> is important to warn the host_transfer() caller in case of
> read operation requests.
> 
> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>

Awesome, thanks.

Reviewed-by: Brian Norris <briannorris@chromium.org>

> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index daec7881be6d..72ecaeb40822 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -405,6 +405,12 @@ static ssize_t dw_mipi_dsi_host_transfer(struct mipi_dsi_host *host,
>  	struct mipi_dsi_packet packet;
>  	int ret;
>  
> +	if (msg->rx_buf || msg->rx_len) {
> +		/* TODO dw drv improvements: implement read feature */
> +		dev_warn(dsi->dev, "read operations not yet implemented\n");
> +		return -EINVAL;
> +	}
> +
>  	ret = mipi_dsi_create_packet(&packet, msg);
>  	if (ret) {
>  		dev_err(dsi->dev, "failed to create packet: %d\n", ret);
> -- 
> 2.15.1
> 
