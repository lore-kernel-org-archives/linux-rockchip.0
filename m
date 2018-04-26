From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dsi: use adjusted_mode in mode_set
Date: Thu, 26 Apr 2018 08:33:02 +0200
Message-ID: <e85bee37-11da-5fe0-38fe-3b2536b10c22@samsung.com>
References: <CGME20180125155556epcas2p107973eb77ab08c436dbddcb66fcb7c89@epcas2p1.samsung.com>
        <20180125155504.8611-1-philippe.cornu@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180125155504.8611-1-philippe.cornu@st.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Philippe Cornu <philippe.cornu@st.com>, Archit Taneja <architt@codeaurora.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Brian Norris <briannorris@chromium.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Bhumika Goyal <bhumirks@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Yannick Fertre <yannick.fertre@st.com>, Vincent Abriou <vincent.abriou@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Ludovic Barre <ludovic.barre@st.com>, Mickael Reulier <mickael.reulier@st.com>
List-Id: linux-rockchip.vger.kernel.org

On 25.01.2018 16:55, Philippe Cornu wrote:
> The "adjusted_mode" clock value (ie the real pixel clock) is more
> accurate than "mode" clock value (ie the panel/bridge requested
> clock value). It offers a better preciseness for timing
> computations and allows to reduce the extra dsi bandwidth in
> burst mode (from ~20% to ~10-12%, hw platform dependant).
>
> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
> ---
> Note: This patch replaces "drm/bridge/synopsys: dsi: add optional pixel clock"

Queued to drm-misc-next.

--
Regards
Andrzej

>
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index ed8af32f8e52..b926b62e9e33 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -707,20 +707,20 @@ static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
>  
>  	clk_prepare_enable(dsi->pclk);
>  
> -	ret = phy_ops->get_lane_mbps(priv_data, mode, dsi->mode_flags,
> +	ret = phy_ops->get_lane_mbps(priv_data, adjusted_mode, dsi->mode_flags,
>  				     dsi->lanes, dsi->format, &dsi->lane_mbps);
>  	if (ret)
>  		DRM_DEBUG_DRIVER("Phy get_lane_mbps() failed\n");
>  
>  	pm_runtime_get_sync(dsi->dev);
>  	dw_mipi_dsi_init(dsi);
> -	dw_mipi_dsi_dpi_config(dsi, mode);
> +	dw_mipi_dsi_dpi_config(dsi, adjusted_mode);
>  	dw_mipi_dsi_packet_handler_config(dsi);
>  	dw_mipi_dsi_video_mode_config(dsi);
> -	dw_mipi_dsi_video_packet_config(dsi, mode);
> +	dw_mipi_dsi_video_packet_config(dsi, adjusted_mode);
>  	dw_mipi_dsi_command_mode_config(dsi);
> -	dw_mipi_dsi_line_timer_config(dsi, mode);
> -	dw_mipi_dsi_vertical_timing_config(dsi, mode);
> +	dw_mipi_dsi_line_timer_config(dsi, adjusted_mode);
> +	dw_mipi_dsi_vertical_timing_config(dsi, adjusted_mode);
>  
>  	dw_mipi_dsi_dphy_init(dsi);
>  	dw_mipi_dsi_dphy_timing_config(dsi);
> @@ -734,7 +734,7 @@ static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
>  
>  	dw_mipi_dsi_dphy_enable(dsi);
>  
> -	dw_mipi_dsi_wait_for_two_frames(mode);
> +	dw_mipi_dsi_wait_for_two_frames(adjusted_mode);
>  
>  	/* Switch to cmd mode for panel-bridge pre_enable & panel prepare */
>  	dw_mipi_dsi_set_mode(dsi, 0);
