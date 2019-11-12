From: Philippe CORNU <philippe.cornu@st.com>
Subject: Re: [PATCH v2 1/5] drm/bridge/synopsys: dsi: move phy_ops callbacks
 around panel enablement
Date: Tue, 12 Nov 2019 15:37:17 +0000
Message-ID: <49f6386b-30c8-a181-5785-2ecdf5f95d2a@st.com>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
 <20191108000253.8560-2-heiko.stuebner@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191108000253.8560-2-heiko.stuebner@theobroma-systems.com>
Content-Language: en-US
Content-ID: <9B4E026D2A0B2A4BAC8B6BBE5F14BEA6@st.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "a.hajda@samsung.com" <a.hajda@samsung.com>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>, "heiko@sntech.de" <heiko@sntech.de>, "jonas@kwiboo.se" <jonas@kwiboo.se>, "narmstrong@baylibre.com" <narmstrong@baylibre.com>, "hjc@rock-chips.com" <hjc@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Yannick FERTRE <yannick.fertre@st.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "christoph.muellner@theobroma-systems.com" <christoph.muellner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 11/8/19 1:02 AM, Heiko Stuebner wrote:
> If implementation-specific phy_ops need to be defined they probably
> should be enabled before trying to talk to the panel and disabled only
> after the panel was disabled.
> 
> Right now they are enabled last and disabled first, so might make it
> impossible to talk to some panels - example for this being the px30
> with an external Innosilicon dphy that needs the phy to be enabled
> to transfer commands to the panel.
> 
> So move the calls appropriately.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 ++++++-------
>   1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 675442bfc1bd..49f5600a1dea 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -797,9 +797,6 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
>   	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
>   	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
>   
> -	if (phy_ops->power_off)
> -		phy_ops->power_off(dsi->plat_data->priv_data);
> -
>   	/*
>   	 * Switch to command mode before panel-bridge post_disable &
>   	 * panel unprepare.
> @@ -816,6 +813,9 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
>   	 */
>   	dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);
>   
> +	if (phy_ops->power_off)
> +		phy_ops->power_off(dsi->plat_data->priv_data);
> +
>   	if (dsi->slave) {
>   		dw_mipi_dsi_disable(dsi->slave);
>   		clk_disable_unprepare(dsi->slave->pclk);
> @@ -882,6 +882,9 @@ static void dw_mipi_dsi_mode_set(struct dw_mipi_dsi *dsi,
>   
>   	/* Switch to cmd mode for panel-bridge pre_enable & panel prepare */
>   	dw_mipi_dsi_set_mode(dsi, 0);
> +
> +	if (phy_ops->power_on)
> +		phy_ops->power_on(dsi->plat_data->priv_data);
>   }
>   
>   static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
> @@ -898,15 +901,11 @@ static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
>   static void dw_mipi_dsi_bridge_enable(struct drm_bridge *bridge)
>   {
>   	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
> -	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
>   
>   	/* Switch to video mode for panel-bridge enable & panel enable */
>   	dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
>   	if (dsi->slave)
>   		dw_mipi_dsi_set_mode(dsi->slave, MIPI_DSI_MODE_VIDEO);
> -
> -	if (phy_ops->power_on)
> -		phy_ops->power_on(dsi->plat_data->priv_data);
>   }
>   
>   static enum drm_mode_status
> 

Tested-by: Yannick Fertre <yannick.fertre@st.com>
Reviewed-by: Philippe Cornu <philippe.cornu@st.com>

Many thanks,
Philippe :-)
