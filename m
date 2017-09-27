From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v2 1/8] drm/rockchip/dsi: correct Feedback divider setting
Date: Wed, 27 Sep 2017 14:44:12 +0800
Message-ID: <a2084bc8-e90a-6e13-33a3-2f795869b6a4@rock-chips.com>
References: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: bivvy.bi@rock-chips.com, hl@rock-chips.com, briannorris@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On 2017年09月26日 15:55, Nickey Yang wrote:
> This patch correct Feedback divider setting:
> 1、Set Feedback divider [8:5] when HIGH_PROGRAM_EN
> 2、Due to the use of a "by 2 pre-scaler," the range of the
> feedback multiplication Feedback divider is limited to even
> division numbers, and Feedback divider must be greater than
> 12, less than 1000.
> 3、Make the previously configured Feedback divider(LSB)
> factors effective
> 4、Add the definition of the MIPI PHY register.
>
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---
>   drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 219 ++++++++++++++++++++++-----------
>   1 file changed, 146 insertions(+), 73 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> index 9a20b9d..c933a3a 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> @@ -228,7 +228,7 @@
>   #define LOW_PROGRAM_EN		0
>   #define HIGH_PROGRAM_EN		BIT(7)
>   #define LOOP_DIV_LOW_SEL(val)	(((val) - 1) & 0x1f)
> -#define LOOP_DIV_HIGH_SEL(val)	((((val) - 1) >> 5) & 0x1f)
> +#define LOOP_DIV_HIGH_SEL(val)	((((val) - 1) >> 5) & 0xf)
>   #define PLL_LOOP_DIV_EN		BIT(5)
>   #define PLL_INPUT_DIV_EN	BIT(4)
>   
> @@ -254,6 +254,28 @@
>   #define DW_MIPI_NEEDS_PHY_CFG_CLK	BIT(0)
>   #define DW_MIPI_NEEDS_GRF_CLK		BIT(1)
>   
> +#define PLL_BIAS_CUR_SEL_CAP_VCO_CONTROL 0x10
> +#define PLL_CP_CONTROL_PLL_LOCK_BYPASS 0x11
> +#define PLL_LPF_AND_CP_CONTROL 0x12
> +#define PLL_INPUT_DIVIDER_RATIO 0x17
> +#define PLL_LOOP_DIVIDER_RATIO 0x18
> +#define PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL 0x19
> +#define BANDGAP_AND_BIAS_CONTROL 0x20
> +#define TERMINATION_RESISTER_CONTROL 0x21
> +#define AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY 0x22
> +#define HS_RX_CONTROL_OF_LANE_0 0x44
> +#define HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL 0x60
> +#define HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL 0x61
> +#define HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL 0x62
> +#define HS_TX_CLOCK_LANE_TRAIL_STATE_TIME_CONTROL 0x63
> +#define HS_TX_CLOCK_LANE_EXIT_STATE_TIME_CONTROL 0x64
> +#define HS_TX_CLOCK_LANE_POST_TIME_CONTROL 0x65
> +#define HS_TX_DATA_LANE_REQUEST_STATE_TIME_CONTROL 0x70
> +#define HS_TX_DATA_LANE_PREPARE_STATE_TIME_CONTROL 0x71
> +#define HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL 0x72
> +#define HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL 0x73
> +#define HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL 0x74
> +

Can you use tab to align the macro define, it looks not friendly with space here.

>   enum {
>   	BANDGAP_97_07,
>   	BANDGAP_98_05,
> @@ -447,53 +469,79 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
>   		return ret;
>   	}
>   
> -	dw_mipi_dsi_phy_write(dsi, 0x10, BYPASS_VCO_RANGE |
> -					 VCO_RANGE_CON_SEL(vco) |
> -					 VCO_IN_CAP_CON_LOW |
> -					 REF_BIAS_CUR_SEL);
> -
> -	dw_mipi_dsi_phy_write(dsi, 0x11, CP_CURRENT_3MA);
> -	dw_mipi_dsi_phy_write(dsi, 0x12, CP_PROGRAM_EN | LPF_PROGRAM_EN |
> -					 LPF_RESISTORS_20_KOHM);
> -
> -	dw_mipi_dsi_phy_write(dsi, 0x44, HSFREQRANGE_SEL(testdin));
> -
> -	dw_mipi_dsi_phy_write(dsi, 0x17, INPUT_DIVIDER(dsi->input_div));
> -	dw_mipi_dsi_phy_write(dsi, 0x18, LOOP_DIV_LOW_SEL(dsi->feedback_div) |
> -					 LOW_PROGRAM_EN);
> -	dw_mipi_dsi_phy_write(dsi, 0x18, LOOP_DIV_HIGH_SEL(dsi->feedback_div) |
> -					 HIGH_PROGRAM_EN);
> -	dw_mipi_dsi_phy_write(dsi, 0x19, PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
> -
> -	dw_mipi_dsi_phy_write(dsi, 0x22, LOW_PROGRAM_EN |
> -					 BIASEXTR_SEL(BIASEXTR_127_7));
> -	dw_mipi_dsi_phy_write(dsi, 0x22, HIGH_PROGRAM_EN |
> -					 BANDGAP_SEL(BANDGAP_96_10));
> -
> -	dw_mipi_dsi_phy_write(dsi, 0x20, POWER_CONTROL | INTERNAL_REG_CURRENT |
> -					 BIAS_BLOCK_ON | BANDGAP_ON);
> -
> -	dw_mipi_dsi_phy_write(dsi, 0x21, TER_RESISTOR_LOW | TER_CAL_DONE |
> -					 SETRD_MAX | TER_RESISTORS_ON);
> -	dw_mipi_dsi_phy_write(dsi, 0x21, TER_RESISTOR_HIGH | LEVEL_SHIFTERS_ON |
> -					 SETRD_MAX | POWER_MANAGE |
> -					 TER_RESISTORS_ON);
> -
> -	dw_mipi_dsi_phy_write(dsi, 0x60, TLP_PROGRAM_EN | ns2bc(dsi, 500));
> -	dw_mipi_dsi_phy_write(dsi, 0x61, THS_PRE_PROGRAM_EN | ns2ui(dsi, 40));
> -	dw_mipi_dsi_phy_write(dsi, 0x62, THS_ZERO_PROGRAM_EN | ns2bc(dsi, 300));
> -	dw_mipi_dsi_phy_write(dsi, 0x63, THS_PRE_PROGRAM_EN | ns2ui(dsi, 100));
> -	dw_mipi_dsi_phy_write(dsi, 0x64, BIT(5) | ns2bc(dsi, 100));
> -	dw_mipi_dsi_phy_write(dsi, 0x65, BIT(5) | (ns2bc(dsi, 60) + 7));
> -
> -	dw_mipi_dsi_phy_write(dsi, 0x70, TLP_PROGRAM_EN | ns2bc(dsi, 500));
> -	dw_mipi_dsi_phy_write(dsi, 0x71,
> +	dw_mipi_dsi_phy_write(dsi, PLL_BIAS_CUR_SEL_CAP_VCO_CONTROL,
> +			      BYPASS_VCO_RANGE |
> +			      VCO_RANGE_CON_SEL(vco) |
> +			      VCO_IN_CAP_CON_LOW |
> +			      REF_BIAS_CUR_SEL);
> +
> +	dw_mipi_dsi_phy_write(dsi, PLL_CP_CONTROL_PLL_LOCK_BYPASS,
> +			      CP_CURRENT_3MA);
> +	dw_mipi_dsi_phy_write(dsi, PLL_LPF_AND_CP_CONTROL,
> +			      CP_PROGRAM_EN | LPF_PROGRAM_EN |
> +			      LPF_RESISTORS_20_KOHM);
> +
> +	dw_mipi_dsi_phy_write(dsi, HS_RX_CONTROL_OF_LANE_0,
> +			      HSFREQRANGE_SEL(testdin));
> +
> +	dw_mipi_dsi_phy_write(dsi, PLL_INPUT_DIVIDER_RATIO,
> +			      INPUT_DIVIDER(dsi->input_div));
> +	dw_mipi_dsi_phy_write(dsi, PLL_LOOP_DIVIDER_RATIO,
> +			      LOOP_DIV_LOW_SEL(dsi->feedback_div) |
> +			      LOW_PROGRAM_EN);
> +	/*
> +	 * we need set 0x19 immediately to make the configrued LSB

update the comment, you already covert 0x19 to macro,  using 0x19 at comment would be confused*. *

> +	 * effective according to IP simulation and lab test results.
> +	 * Only in this way can we get correct mipi phy pll frequency.
> +	 */
> +	dw_mipi_dsi_phy_write(dsi, PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL,
> +			      PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
> +	dw_mipi_dsi_phy_write(dsi, PLL_LOOP_DIVIDER_RATIO,
> +			      LOOP_DIV_HIGH_SEL(dsi->feedback_div) |
> +			      HIGH_PROGRAM_EN);
> +	dw_mipi_dsi_phy_write(dsi, PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL,
> +			      PLL_LOOP_DIV_EN | PLL_INPUT_DIV_EN);
> +
> +	dw_mipi_dsi_phy_write(dsi, AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY,
> +			      LOW_PROGRAM_EN | BIASEXTR_SEL(BIASEXTR_127_7));
> +	dw_mipi_dsi_phy_write(dsi, AFE_BIAS_BANDGAP_ANALOG_PROGRAMMABILITY,
> +			      HIGH_PROGRAM_EN | BANDGAP_SEL(BANDGAP_96_10));
> +
> +	dw_mipi_dsi_phy_write(dsi, BANDGAP_AND_BIAS_CONTROL,
> +			      POWER_CONTROL | INTERNAL_REG_CURRENT |
> +			      BIAS_BLOCK_ON | BANDGAP_ON);
> +
> +	dw_mipi_dsi_phy_write(dsi, TERMINATION_RESISTER_CONTROL,
> +			      TER_RESISTOR_LOW | TER_CAL_DONE |
> +			      SETRD_MAX | TER_RESISTORS_ON);
> +	dw_mipi_dsi_phy_write(dsi, TERMINATION_RESISTER_CONTROL,
> +			      TER_RESISTOR_HIGH | LEVEL_SHIFTERS_ON |
> +			      SETRD_MAX | POWER_MANAGE |
> +			      TER_RESISTORS_ON);
> +
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_REQUEST_STATE_TIME_CONTROL,
> +			      TLP_PROGRAM_EN | ns2bc(dsi, 500));
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_PREPARE_STATE_TIME_CONTROL,
> +			      THS_PRE_PROGRAM_EN | ns2ui(dsi, 40));
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_HS_ZERO_STATE_TIME_CONTROL,
> +			      THS_ZERO_PROGRAM_EN | ns2bc(dsi, 300));
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_TRAIL_STATE_TIME_CONTROL,
> +			      THS_PRE_PROGRAM_EN | ns2ui(dsi, 100));
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_EXIT_STATE_TIME_CONTROL,
> +			      BIT(5) | ns2bc(dsi, 100));
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_CLOCK_LANE_POST_TIME_CONTROL,
> +			      BIT(5) | (ns2bc(dsi, 60) + 7));
> +
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_REQUEST_STATE_TIME_CONTROL,
> +			      TLP_PROGRAM_EN | ns2bc(dsi, 500));
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_PREPARE_STATE_TIME_CONTROL,
>   			      THS_PRE_PROGRAM_EN | (ns2ui(dsi, 50) + 5));
> -	dw_mipi_dsi_phy_write(dsi, 0x72,
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL,
>   			      THS_ZERO_PROGRAM_EN | (ns2bc(dsi, 140) + 2));
> -	dw_mipi_dsi_phy_write(dsi, 0x73,
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL,
>   			      THS_PRE_PROGRAM_EN | (ns2ui(dsi, 60) + 8));
> -	dw_mipi_dsi_phy_write(dsi, 0x74, BIT(5) | ns2bc(dsi, 100));
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL,
> +			      BIT(5) | ns2bc(dsi, 100));
>   
>   	dsi_write(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
>   				     PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
> @@ -521,11 +569,16 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi *dsi)
>   static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
>   				    struct drm_display_mode *mode)
>   {
> -	unsigned int i, pre;
> -	unsigned long mpclk, pllref, tmp;
> -	unsigned int m = 1, n = 1, target_mbps = 1000;
> +	unsigned long mpclk, tmp;
> +	unsigned int target_mbps = 1000;
>   	unsigned int max_mbps = dptdin_map[ARRAY_SIZE(dptdin_map) - 1].max_mbps;
>   	int bpp;
> +	unsigned long best_freq = 0;
> +	unsigned long fvco_min, fvco_max, fin, fout;
> +	unsigned int min_prediv, max_prediv;
> +	unsigned int _prediv, uninitialized_var(best_prediv);
> +	unsigned long _fbdiv, uninitialized_var(best_fbdiv);
> +	unsigned long min_delta = ULONG_MAX;
>   
>   	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
>   	if (bpp < 0) {
> @@ -544,34 +597,54 @@ static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
>   			dev_err(dsi->dev, "DPHY clock frequency is out of range\n");
>   	}
>   
> -	pllref = DIV_ROUND_UP(clk_get_rate(dsi->pllref_clk), USEC_PER_SEC);
> -	tmp = pllref;
> -
> -	/*
> -	 * The limits on the PLL divisor are:
> -	 *
> -	 *	5MHz <= (pllref / n) <= 40MHz
> -	 *
> -	 * we walk over these values in descreasing order so that if we hit
> -	 * an exact match for target_mbps it is more likely that "m" will be
> -	 * even.
> -	 *
> -	 * TODO: ensure that "m" is even after this loop.
> -	 */
> -	for (i = pllref / 5; i > (pllref / 40); i--) {
> -		pre = pllref / i;
> -		if ((tmp > (target_mbps % pre)) && (target_mbps / pre < 512)) {
> -			tmp = target_mbps % pre;
> -			n = i;
> -			m = target_mbps / pre;
> +	fin = clk_get_rate(dsi->pllref_clk);
> +	fout = target_mbps * USEC_PER_SEC;
> +
> +	/* constraint: 5Mhz <= Fref / N <= 40MHz */
> +	min_prediv = DIV_ROUND_UP(fin, 40 * USEC_PER_SEC);
> +	max_prediv = fin / (5 * USEC_PER_SEC);
> +
> +	/* constraint: 80MHz <= Fvco <= 1500Mhz */
> +	fvco_min = 80 * USEC_PER_SEC;
> +	fvco_max = 1500 * USEC_PER_SEC;
> +
> +	for (_prediv = min_prediv; _prediv <= max_prediv; _prediv++) {
> +		u64 tmp;
> +		u32 delta;
> +		/* Fvco = Fref * M / N */
> +		tmp = (u64)fout * _prediv;
> +		do_div(tmp, fin);
> +		_fbdiv = tmp;
> +		/*
> +		 * Due to the use of a "by 2 pre-scaler," the range of the
> +		 * feedback multiplication value M is limited to even division
> +		 * numbers, and m must be greater than 12, less than 1000.
> +		 */
> +		if (_fbdiv <= 12 || _fbdiv >= 1000)
> +			continue;
> +
> +		_fbdiv += _fbdiv % 2;
> +
> +		tmp = (u64)_fbdiv * fin;
> +		do_div(tmp, _prediv);
> +		if (tmp < fvco_min || tmp > fvco_max)
> +			continue;
> +
> +		delta = abs(fout - tmp);
> +		if (delta < min_delta) {
> +			best_prediv = _prediv;
> +			best_fbdiv = _fbdiv;
> +			min_delta = delta;
> +			best_freq = tmp;
>   		}
> -		if (tmp == 0)
> -			break;
>   	}
>   
> -	dsi->lane_mbps = pllref / n * m;
> -	dsi->input_div = n;
> -	dsi->feedback_div = m;
> +	if (best_freq) {
> +		dsi->lane_mbps = DIV_ROUND_UP(best_freq, USEC_PER_SEC);
> +		dsi->input_div = best_prediv;
> +		dsi->feedback_div = best_fbdiv;
> +	} else
> +		dev_err(dsi->dev, "Can not find best_freq for DPHY\n");
>   
>   	return 0;
>   }


-- 
Ｍark Yao
