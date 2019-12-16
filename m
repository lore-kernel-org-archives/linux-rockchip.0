From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 4/6] drm/rockchip: add ability to handle external dphys
 in mipi-dsi
Date: Mon, 16 Dec 2019 11:39:13 +0100
Message-ID: <b53704e5-83eb-3dcf-60d8-f21ef51859ee@baylibre.com>
References: <20191209143130.4553-1-heiko@sntech.de>
 <20191209143130.4553-5-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191209143130.4553-5-heiko@sntech.de>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Heiko Stuebner <heiko@sntech.de>, a.hajda@samsung.com
Cc: bivvy.bi@rock-chips.com, jernej.skrabec@siol.net, kuninori.morimoto.gx@renesas.com, jonas@kwiboo.se, sean@poorly.run, xzy.xu@rock-chips.com, philippe.cornu@st.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, yannick.fertre@st.com, linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com, eddie.cai@rock-chips.com, Laurent.pinchart@ideasonboard.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

On 09/12/2019 15:31, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> While the common case is that the dsi controller uses an internal dphy,
> accessed through the phy registers inside the dsi controller, there is
> also the possibility to use a separate dphy from a different vendor.
> 
> One such case is the Rockchip px30 that uses a Innosilicon Mipi dphy,
> so add the support for handling such a constellation, including the pll
> also getting generated inside that external phy.
> 
> changes in v5:
> - rebased on top of 5.5-rc1
> - merged with dsi timing change to prevent ordering conflicts
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 68 +++++++++++++++++--
>  1 file changed, 64 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 9406effe8077..f16bd1e9b633 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -12,6 +12,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> +#include <linux/phy/phy.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  
> @@ -223,6 +224,10 @@ struct dw_mipi_dsi_rockchip {
>  	bool is_slave;
>  	struct dw_mipi_dsi_rockchip *slave;
>  
> +	/* optional external dphy */
> +	struct phy *phy;
> +	union phy_configure_opts phy_opts;
> +
>  	unsigned int lane_mbps; /* per lane */
>  	u16 input_div;
>  	u16 feedback_div;
> @@ -359,6 +364,9 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
>  	struct dw_mipi_dsi_rockchip *dsi = priv_data;
>  	int ret, i, vco;
>  
> +	if (dsi->phy)
> +		return 0;
> +
>  	/*
>  	 * Get vco from frequency(lane_mbps)
>  	 * vco	frequency table
> @@ -467,6 +475,28 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
>  	return ret;
>  }
>  
> +static void dw_mipi_dsi_phy_power_on(void *priv_data)
> +{
> +	struct dw_mipi_dsi_rockchip *dsi = priv_data;
> +	int ret;
> +
> +	ret = phy_set_mode(dsi->phy, PHY_MODE_MIPI_DPHY);
> +	if (ret) {
> +		DRM_DEV_ERROR(dsi->dev, "failed to set phy mode: %d\n", ret);
> +		return;
> +	}
> +
> +	phy_configure(dsi->phy, &dsi->phy_opts);
> +	phy_power_on(dsi->phy);
> +}
> +
> +static void dw_mipi_dsi_phy_power_off(void *priv_data)
> +{
> +	struct dw_mipi_dsi_rockchip *dsi = priv_data;
> +
> +	phy_power_off(dsi->phy);
> +}
> +
>  static int
>  dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  			  unsigned long mode_flags, u32 lanes, u32 format,
> @@ -504,6 +534,17 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  				      "DPHY clock frequency is out of range\n");
>  	}
>  
> +	/* for external phy only a the mipi_dphy_config is necessary */
> +	if (dsi->phy) {
> +		phy_mipi_dphy_get_default_config(mode->clock * 1000 * 10 / 8,
> +						 bpp, lanes,
> +						 &dsi->phy_opts.mipi_dphy);
> +		dsi->lane_mbps = target_mbps;
> +		*lane_mbps = dsi->lane_mbps;
> +
> +		return 0;
> +	}
> +
>  	fin = clk_get_rate(dsi->pllref_clk);
>  	fout = target_mbps * USEC_PER_SEC;
>  
> @@ -638,6 +679,8 @@ dw_mipi_dsi_phy_get_timing(void *priv_data, unsigned int lane_mbps,
>  
>  static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_rockchip_phy_ops = {
>  	.init = dw_mipi_dsi_phy_init,
> +	.power_on = dw_mipi_dsi_phy_power_on,
> +	.power_off = dw_mipi_dsi_phy_power_off,
>  	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
>  	.get_timing = dw_mipi_dsi_phy_get_timing,
>  };
> @@ -998,12 +1041,29 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> +	/* try to get a possible external dphy */
> +	dsi->phy = devm_phy_optional_get(dev, "dphy");
> +	if (IS_ERR(dsi->phy)) {
> +		ret = PTR_ERR(dsi->phy);
> +		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
> +		return ret;
> +	}
> +
>  	dsi->pllref_clk = devm_clk_get(dev, "ref");
>  	if (IS_ERR(dsi->pllref_clk)) {
> -		ret = PTR_ERR(dsi->pllref_clk);
> -		DRM_DEV_ERROR(dev,
> -			      "Unable to get pll reference clock: %d\n", ret);
> -		return ret;
> +		if (dsi->phy) {
> +			/*
> +			 * if external phy is present, pll will be
> +			 * generated there.
> +			 */
> +			dsi->pllref_clk = NULL;
> +		} else {
> +			ret = PTR_ERR(dsi->pllref_clk);
> +			DRM_DEV_ERROR(dev,
> +				      "Unable to get pll reference clock: %d\n",
> +				      ret);
> +			return ret;
> +		}
>  	}
>  
>  	if (dsi->cdata->flags & DW_MIPI_NEEDS_PHY_CFG_CLK) {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
