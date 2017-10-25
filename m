From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 2/6] drm/rockchip/dsi: correct phy parameter setting
Date: Wed, 25 Oct 2017 03:49:39 -0400
Message-ID: <20171025074939.4erys47vx6hoe2ms@art_vandelay>
References: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
 <1508903463-7254-2-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1508903463-7254-2-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>
Cc: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.comg, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 25, 2017 at 11:50:59AM +0800, Nickey Yang wrote:
> As MIPI PHY document show, icpctrl<3..0> and lpfctrl<5..0>
> should depend on frequency,so fix it.
> 
> Reviewed-by: Sean Paul <seanpaul@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---

In future, please list the differences between versions. It makes reviewing much
easier.

Thanks,

Sean

>  drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 98 ++++++++++++++++++++++++----------
>  1 file changed, 70 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> index 95ce253..09e7bfe 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> @@ -217,10 +217,21 @@
>  #define VCO_IN_CAP_CON_HIGH	(0x2 << 1)
>  #define REF_BIAS_CUR_SEL	BIT(0)
>  
> -#define CP_CURRENT_3MA		BIT(3)
> +#define CP_CURRENT_1_5UA	0x1
> +#define CP_CURRENT_4_5UA	0x2
> +#define CP_CURRENT_7_5UA	0x6
> +#define CP_CURRENT_6UA	0x9
> +#define CP_CURRENT_12UA	0xb
> +#define CP_CURRENT_SEL(val)	((val) & 0xf)
>  #define CP_PROGRAM_EN		BIT(7)
> +
> +#define LPF_RESISTORS_15_5KOHM	0x1
> +#define LPF_RESISTORS_13KOHM	0x2
> +#define LPF_RESISTORS_11_5KOHM	0x4
> +#define LPF_RESISTORS_10_5KOHM	0x8
> +#define LPF_RESISTORS_8KOHM	0x10
>  #define LPF_PROGRAM_EN		BIT(6)
> -#define LPF_RESISTORS_20_KOHM	0
> +#define LPF_RESISTORS_SEL(val)	((val) & 0x3f)
>  
>  #define HSFREQRANGE_SEL(val)	(((val) & 0x3f) << 1)
>  
> @@ -339,32 +350,63 @@ enum dw_mipi_dsi_mode {
>  	DW_MIPI_DSI_VID_MODE,
>  };
>  
> -struct dphy_pll_testdin_map {
> +struct dphy_pll_parameter_map {
>  	unsigned int max_mbps;
> -	u8 testdin;
> +	u8 hsfreqrange;
> +	u8 icpctrl;
> +	u8 lpfctrl;
>  };
>  
>  /* The table is based on 27MHz DPHY pll reference clock. */
> -static const struct dphy_pll_testdin_map dptdin_map[] = {
> -	{  90, 0x00}, { 100, 0x10}, { 110, 0x20}, { 130, 0x01},
> -	{ 140, 0x11}, { 150, 0x21}, { 170, 0x02}, { 180, 0x12},
> -	{ 200, 0x22}, { 220, 0x03}, { 240, 0x13}, { 250, 0x23},
> -	{ 270, 0x04}, { 300, 0x14}, { 330, 0x05}, { 360, 0x15},
> -	{ 400, 0x25}, { 450, 0x06}, { 500, 0x16}, { 550, 0x07},
> -	{ 600, 0x17}, { 650, 0x08}, { 700, 0x18}, { 750, 0x09},
> -	{ 800, 0x19}, { 850, 0x29}, { 900, 0x39}, { 950, 0x0a},
> -	{1000, 0x1a}, {1050, 0x2a}, {1100, 0x3a}, {1150, 0x0b},
> -	{1200, 0x1b}, {1250, 0x2b}, {1300, 0x3b}, {1350, 0x0c},
> -	{1400, 0x1c}, {1450, 0x2c}, {1500, 0x3c}
> +static const struct dphy_pll_parameter_map dppa_map[] = {
> +	{  89, 0x00, CP_CURRENT_1_5UA, LPF_RESISTORS_13KOHM},
> +	{  99, 0x10, CP_CURRENT_1_5UA, LPF_RESISTORS_13KOHM},
> +	{ 109, 0x20, CP_CURRENT_1_5UA, LPF_RESISTORS_13KOHM},
> +	{ 129, 0x01, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 139, 0x11, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 149, 0x21, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 169, 0x02, CP_CURRENT_6UA, LPF_RESISTORS_13KOHM},
> +	{ 179, 0x12, CP_CURRENT_6UA, LPF_RESISTORS_13KOHM},
> +	{ 199, 0x22, CP_CURRENT_6UA, LPF_RESISTORS_13KOHM},
> +	{ 219, 0x03, CP_CURRENT_4_5UA, LPF_RESISTORS_13KOHM},
> +	{ 239, 0x13, CP_CURRENT_4_5UA, LPF_RESISTORS_13KOHM},
> +	{ 249, 0x23, CP_CURRENT_4_5UA, LPF_RESISTORS_13KOHM},
> +	{ 269, 0x04, CP_CURRENT_6UA, LPF_RESISTORS_11_5KOHM},
> +	{ 299, 0x14, CP_CURRENT_6UA, LPF_RESISTORS_11_5KOHM},
> +	{ 329, 0x05, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 359, 0x15, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 399, 0x25, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 449, 0x06, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 499, 0x16, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 549, 0x07, CP_CURRENT_7_5UA, LPF_RESISTORS_10_5KOHM},
> +	{ 599, 0x17, CP_CURRENT_7_5UA, LPF_RESISTORS_10_5KOHM},
> +	{ 649, 0x08, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 699, 0x18, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 749, 0x09, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 799, 0x19, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 849, 0x29, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 899, 0x39, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 949, 0x0a, CP_CURRENT_12UA, LPF_RESISTORS_8KOHM},
> +	{ 999, 0x1a, CP_CURRENT_12UA, LPF_RESISTORS_8KOHM},
> +	{1049, 0x2a, CP_CURRENT_12UA, LPF_RESISTORS_8KOHM},
> +	{1099, 0x3a, CP_CURRENT_12UA, LPF_RESISTORS_8KOHM},
> +	{1149, 0x0b, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1199, 0x1b, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1249, 0x2b, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1299, 0x3b, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1349, 0x0c, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1399, 0x1c, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1449, 0x2c, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1500, 0x3c, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM}
>  };
>  
> -static int max_mbps_to_testdin(unsigned int max_mbps)
> +static int max_mbps_to_parameter(unsigned int max_mbps)
>  {
>  	int i;
>  
> -	for (i = 0; i < ARRAY_SIZE(dptdin_map); i++)
> -		if (dptdin_map[i].max_mbps > max_mbps)
> -			return dptdin_map[i].testdin;
> +	for (i = 0; i < ARRAY_SIZE(dppa_map); i++)
> +		if (dppa_map[i].max_mbps >= max_mbps)
> +			return i;
>  
>  	return -EINVAL;
>  }
> @@ -446,16 +488,16 @@ static inline unsigned int ns2ui(struct dw_mipi_dsi *dsi, int ns)
>  
>  static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
>  {
> -	int ret, testdin, vco, val;
> +	int ret, i, vco, val;
>  
>  	vco = (dsi->lane_mbps < 200) ? 0 : (dsi->lane_mbps + 100) / 200;
>  
> -	testdin = max_mbps_to_testdin(dsi->lane_mbps);
> -	if (testdin < 0) {
> +	i = max_mbps_to_parameter(dsi->lane_mbps);
> +	if (i < 0) {
>  		DRM_DEV_ERROR(dsi->dev,
> -			      "failed to get testdin for %dmbps lane clock\n",
> +			      "failed to get parameter for %dmbps clock\n",
>  			      dsi->lane_mbps);
> -		return testdin;
> +		return i;
>  	}
>  
>  	/* Start by clearing PHY state */
> @@ -476,13 +518,13 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
>  			      REF_BIAS_CUR_SEL);
>  
>  	dw_mipi_dsi_phy_write(dsi, PLL_CP_CONTROL_PLL_LOCK_BYPASS,
> -			      CP_CURRENT_3MA);
> +			      CP_CURRENT_SEL(dppa_map[i].icpctrl));
>  	dw_mipi_dsi_phy_write(dsi, PLL_LPF_AND_CP_CONTROL,
>  			      CP_PROGRAM_EN | LPF_PROGRAM_EN |
> -			      LPF_RESISTORS_20_KOHM);
> +			      LPF_RESISTORS_SEL(dppa_map[i].lpfctrl));
>  
>  	dw_mipi_dsi_phy_write(dsi, HS_RX_CONTROL_OF_LANE_0,
> -			      HSFREQRANGE_SEL(testdin));
> +			      HSFREQRANGE_SEL(dppa_map[i].hsfreqrange));
>  
>  	dw_mipi_dsi_phy_write(dsi, PLL_INPUT_DIVIDER_RATIO,
>  			      INPUT_DIVIDER(dsi->input_div));
> @@ -565,7 +607,7 @@ static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
>  	unsigned int i, pre;
>  	unsigned long mpclk, pllref, tmp;
>  	unsigned int m = 1, n = 1, target_mbps = 1000;
> -	unsigned int max_mbps = dptdin_map[ARRAY_SIZE(dptdin_map) - 1].max_mbps;
> +	unsigned int max_mbps = dppa_map[ARRAY_SIZE(dppa_map) - 1].max_mbps;
>  	int bpp;
>  
>  	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
> -- 
> 1.9.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
