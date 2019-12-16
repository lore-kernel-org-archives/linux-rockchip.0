From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 6/6] drm/rockchip: dsi: add px30 support
Date: Mon, 16 Dec 2019 11:39:43 +0100
Message-ID: <99e4a800-fa12-9d64-3ceb-99b961a9f3d3@baylibre.com>
References: <20191209143130.4553-1-heiko@sntech.de>
 <20191209143130.4553-7-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191209143130.4553-7-heiko@sntech.de>
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
> Add the compatible and GRF definitions for the PX30 soc.
> 
> changes in v5:
> - rebased on top of 5.5-rc1
> - merged with dsi timing change to prevent ordering conflicts
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index f16bd1e9b633..f04b5064974d 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -140,6 +140,12 @@
>  #define DW_MIPI_NEEDS_PHY_CFG_CLK	BIT(0)
>  #define DW_MIPI_NEEDS_GRF_CLK		BIT(1)
>  
> +#define PX30_GRF_PD_VO_CON1		0x0438
> +#define PX30_DSI_FORCETXSTOPMODE	(0xf << 7)
> +#define PX30_DSI_FORCERXMODE		BIT(6)
> +#define PX30_DSI_TURNDISABLE		BIT(5)
> +#define PX30_DSI_LCDC_SEL		BIT(0)
> +
>  #define RK3288_GRF_SOC_CON6		0x025c
>  #define RK3288_DSI0_LCDC_SEL		BIT(6)
>  #define RK3288_DSI1_LCDC_SEL		BIT(9)
> @@ -1127,6 +1133,24 @@ static int dw_mipi_dsi_rockchip_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static const struct rockchip_dw_dsi_chip_data px30_chip_data[] = {
> +	{
> +		.reg = 0xff450000,
> +		.lcdsel_grf_reg = PX30_GRF_PD_VO_CON1,
> +		.lcdsel_big = HIWORD_UPDATE(0, PX30_DSI_LCDC_SEL),
> +		.lcdsel_lit = HIWORD_UPDATE(PX30_DSI_LCDC_SEL,
> +					    PX30_DSI_LCDC_SEL),
> +
> +		.lanecfg1_grf_reg = PX30_GRF_PD_VO_CON1,
> +		.lanecfg1 = HIWORD_UPDATE(0, PX30_DSI_TURNDISABLE |
> +					     PX30_DSI_FORCERXMODE |
> +					     PX30_DSI_FORCETXSTOPMODE),
> +
> +		.max_data_lanes = 4,
> +	},
> +	{ /* sentinel */ }
> +};
> +
>  static const struct rockchip_dw_dsi_chip_data rk3288_chip_data[] = {
>  	{
>  		.reg = 0xff960000,
> @@ -1195,6 +1219,9 @@ static const struct rockchip_dw_dsi_chip_data rk3399_chip_data[] = {
>  
>  static const struct of_device_id dw_mipi_dsi_rockchip_dt_ids[] = {
>  	{
> +	 .compatible = "rockchip,px30-mipi-dsi",
> +	 .data = &px30_chip_data,
> +	}, {
>  	 .compatible = "rockchip,rk3288-mipi-dsi",
>  	 .data = &rk3288_chip_data,
>  	}, {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
