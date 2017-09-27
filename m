From: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v2 4/8] drm/rockchip/dsi: correct phy parameter setting
Date: Wed, 27 Sep 2017 10:56:00 -0700
Message-ID: <20170927175600.GL173745@google.com>
References: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
 <1506412523-1766-4-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1506412523-1766-4-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>
Cc: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Nickey,

El Tue, Sep 26, 2017 at 03:55:19PM +0800 Nickey Yang ha dit:

> As MIPI PHY document show, icpctrl<3..0> and lpfctrl<5..0>
> should depend on frequency,so fix it.
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 98 ++++++++++++++++++++++++----------
>  1 file changed, 70 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> index 191037c..20d3f36 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> @@ -267,10 +267,21 @@
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
> @@ -400,32 +411,63 @@ enum dw_mipi_dsi_mode {
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
> +	{  90, 0x00, CP_CURRENT_1_5UA, LPF_RESISTORS_13KOHM},

max_mbps in this table is off by one. According to the databook the
ranges for the date rate are:

80-89
90-99
...
1450-1500

I think most people would interpret 'max_mbps' as the highest value of
the range, not the first value outside of the range on the upper side.

The code below 'fixes' this by using '>' instead of '>=' when looking
up the configuration for a data rate:

if (dppa_map[i].max_mbps > max_mbps)
	return i;

Both the table and this check are confusing, just use the actual max
value of the range and '>='.

Also the current code wouldn't work with a max rate of 1500 Mbps,
since (1500 > 1500) is false.

> +	{ 100, 0x10, CP_CURRENT_1_5UA, LPF_RESISTORS_13KOHM},
> +	{ 110, 0x20, CP_CURRENT_1_5UA, LPF_RESISTORS_13KOHM},
> +	{ 130, 0x01, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 140, 0x11, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 150, 0x21, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 170, 0x02, CP_CURRENT_6UA, LPF_RESISTORS_13KOHM},
> +	{ 180, 0x12, CP_CURRENT_6UA, LPF_RESISTORS_13KOHM},
> +	{ 200, 0x22, CP_CURRENT_6UA, LPF_RESISTORS_13KOHM},
> +	{ 220, 0x03, CP_CURRENT_4_5UA, LPF_RESISTORS_13KOHM},
> +	{ 240, 0x13, CP_CURRENT_4_5UA, LPF_RESISTORS_13KOHM},
> +	{ 250, 0x23, CP_CURRENT_4_5UA, LPF_RESISTORS_13KOHM},
> +	{ 270, 0x04, CP_CURRENT_6UA, LPF_RESISTORS_11_5KOHM},
> +	{ 300, 0x14, CP_CURRENT_6UA, LPF_RESISTORS_11_5KOHM},
> +	{ 330, 0x05, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 360, 0x15, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 400, 0x25, CP_CURRENT_1_5UA, LPF_RESISTORS_15_5KOHM},
> +	{ 450, 0x06, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 500, 0x16, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 550, 0x07, CP_CURRENT_7_5UA, LPF_RESISTORS_10_5KOHM},
> +	{ 600, 0x17, CP_CURRENT_7_5UA, LPF_RESISTORS_10_5KOHM},
> +	{ 650, 0x08, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 700, 0x18, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 750, 0x09, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 800, 0x19, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 850, 0x29, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 900, 0x39, CP_CURRENT_7_5UA, LPF_RESISTORS_11_5KOHM},
> +	{ 950, 0x0a, CP_CURRENT_12UA, LPF_RESISTORS_8KOHM},
> +	{1000, 0x1a, CP_CURRENT_12UA, LPF_RESISTORS_8KOHM},
> +	{1050, 0x2a, CP_CURRENT_12UA, LPF_RESISTORS_8KOHM},
> +	{1100, 0x3a, CP_CURRENT_12UA, LPF_RESISTORS_8KOHM},
> +	{1150, 0x0b, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1200, 0x1b, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1250, 0x2b, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1300, 0x3b, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1350, 0x0c, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1400, 0x1c, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
> +	{1450, 0x2c, CP_CURRENT_12UA, LPF_RESISTORS_10_5KOHM},
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
> +		if (dppa_map[i].max_mbps > max_mbps)
> +			return i;
>  
>  	return -EINVAL;
>  }
> @@ -507,16 +549,16 @@ static inline unsigned int ns2ui(struct dw_mipi_dsi *dsi, int ns)
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
>  		dev_err(dsi->dev,
> -			"failed to get testdin for %dmbps lane clock\n",
> +			"failed to get parameter for %dmbps lane clock\n",
>  			dsi->lane_mbps);
> -		return testdin;
> +		return i;
>  	}
>  
>  	/* Start by clearing PHY state */
> @@ -537,13 +579,13 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
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
> @@ -632,7 +674,7 @@ static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
>  {
>  	unsigned long mpclk, tmp;
>  	unsigned int target_mbps = 1000;
> -	unsigned int max_mbps = dptdin_map[ARRAY_SIZE(dptdin_map) - 1].max_mbps;
> +	unsigned int max_mbps = dppa_map[ARRAY_SIZE(dppa_map) - 1].max_mbps;
>  	int bpp;
>  	unsigned long best_freq = 0;
>  	int lanes = dsi->lanes;

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
