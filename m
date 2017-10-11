From: Kristian Kristensen <hoegsberg@gmail.com>
Subject: Re: [PATCH v2 1/8] drm/rockchip/dsi: correct Feedback divider setting
Date: Wed, 11 Oct 2017 14:26:50 -0700
Message-ID: <rdisy3ohidet.fsf@hawkmoon.pdx.corp.google.com>
References: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: bivvy.bi@rock-chips.com, hl@rock-chips.com, briannorris@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Nickey Yang <nickey.yang@rock-chips.com> writes:

> This patch correct Feedback divider setting:
> 1=E3=80=81Set Feedback divider [8:5] when HIGH_PROGRAM_EN
> 2=E3=80=81Due to the use of a "by 2 pre-scaler," the range of the
> feedback multiplication Feedback divider is limited to even
> division numbers, and Feedback divider must be greater than
> 12, less than 1000.
> 3=E3=80=81Make the previously configured Feedback divider(LSB)
> factors effective
> 4=E3=80=81Add the definition of the MIPI PHY register.

There's too much going on in this patch.  A good rule of thumb is that
if you have enumerate the changes in a list like above, you should
probably break it down it that many patches instead. Any of these
changes could be a regression and when we bisect to this commit, we'll
have split it by hand to see which of the four independent changes is
causing trouble.

As a minimum, the addition of the register #defines should be a separate
patch. As it is, it makes it really hard to review the functional
changes...

> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 219 ++++++++++++++++++++++-----=
------
>  1 file changed, 146 insertions(+), 73 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/roc=
kchip/dw-mipi-dsi.c
> index 9a20b9d..c933a3a 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> @@ -228,7 +228,7 @@
>  #define LOW_PROGRAM_EN		0
>  #define HIGH_PROGRAM_EN		BIT(7)
>  #define LOOP_DIV_LOW_SEL(val)	(((val) - 1) & 0x1f)
> -#define LOOP_DIV_HIGH_SEL(val)	((((val) - 1) >> 5) & 0x1f)
> +#define LOOP_DIV_HIGH_SEL(val)	((((val) - 1) >> 5) & 0xf)
>  #define PLL_LOOP_DIV_EN		BIT(5)
>  #define PLL_INPUT_DIV_EN	BIT(4)
>=20=20
> @@ -254,6 +254,28 @@
>  #define DW_MIPI_NEEDS_PHY_CFG_CLK	BIT(0)
>  #define DW_MIPI_NEEDS_GRF_CLK		BIT(1)
>=20=20
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
>  enum {
>  	BANDGAP_97_07,
>  	BANDGAP_98_05,
> @@ -447,53 +469,79 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi =
*dsi)
>  		return ret;
>  	}
>=20=20
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
> +	 * effective according to IP simulation and lab test results.
> +	 * Only in this way can we get correct mipi phy pll frequency.
> +	 */

In particular, here's a functional change that adds an extra write to
PLL_INPUT_AND_LOOP_DIVIDER_RATIOS_CONTROL, after programming
LOW_PROGRAM_EN, and it's obscured by the renaming noise.

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
>  			      THS_PRE_PROGRAM_EN | (ns2ui(dsi, 50) + 5));
> -	dw_mipi_dsi_phy_write(dsi, 0x72,
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_HS_ZERO_STATE_TIME_CONTROL,
>  			      THS_ZERO_PROGRAM_EN | (ns2bc(dsi, 140) + 2));
> -	dw_mipi_dsi_phy_write(dsi, 0x73,
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_TRAIL_STATE_TIME_CONTROL,
>  			      THS_PRE_PROGRAM_EN | (ns2ui(dsi, 60) + 8));
> -	dw_mipi_dsi_phy_write(dsi, 0x74, BIT(5) | ns2bc(dsi, 100));
> +	dw_mipi_dsi_phy_write(dsi, HS_TX_DATA_LANE_EXIT_STATE_TIME_CONTROL,
> +			      BIT(5) | ns2bc(dsi, 100));
>=20=20
>  	dsi_write(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
>  				     PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
> @@ -521,11 +569,16 @@ static int dw_mipi_dsi_phy_init(struct dw_mipi_dsi =
*dsi)
>  static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_dsi *dsi,
>  				    struct drm_display_mode *mode)
>  {
> -	unsigned int i, pre;
> -	unsigned long mpclk, pllref, tmp;
> -	unsigned int m =3D 1, n =3D 1, target_mbps =3D 1000;
> +	unsigned long mpclk, tmp;
> +	unsigned int target_mbps =3D 1000;
>  	unsigned int max_mbps =3D dptdin_map[ARRAY_SIZE(dptdin_map) - 1].max_mb=
ps;
>  	int bpp;
> +	unsigned long best_freq =3D 0;
> +	unsigned long fvco_min, fvco_max, fin, fout;
> +	unsigned int min_prediv, max_prediv;
> +	unsigned int _prediv, uninitialized_var(best_prediv);
> +	unsigned long _fbdiv, uninitialized_var(best_fbdiv);
> +	unsigned long min_delta =3D ULONG_MAX;
>=20=20
>  	bpp =3D mipi_dsi_pixel_format_to_bpp(dsi->format);
>  	if (bpp < 0) {
> @@ -544,34 +597,54 @@ static int dw_mipi_dsi_get_lane_bps(struct dw_mipi_=
dsi *dsi,
>  			dev_err(dsi->dev, "DPHY clock frequency is out of range\n");
>  	}
>=20=20
> -	pllref =3D DIV_ROUND_UP(clk_get_rate(dsi->pllref_clk), USEC_PER_SEC);
> -	tmp =3D pllref;
> -
> -	/*
> -	 * The limits on the PLL divisor are:
> -	 *
> -	 *	5MHz <=3D (pllref / n) <=3D 40MHz
> -	 *
> -	 * we walk over these values in descreasing order so that if we hit
> -	 * an exact match for target_mbps it is more likely that "m" will be
> -	 * even.
> -	 *
> -	 * TODO: ensure that "m" is even after this loop.
> -	 */
> -	for (i =3D pllref / 5; i > (pllref / 40); i--) {
> -		pre =3D pllref / i;
> -		if ((tmp > (target_mbps % pre)) && (target_mbps / pre < 512)) {
> -			tmp =3D target_mbps % pre;
> -			n =3D i;
> -			m =3D target_mbps / pre;
> +	fin =3D clk_get_rate(dsi->pllref_clk);
> +	fout =3D target_mbps * USEC_PER_SEC;
> +
> +	/* constraint: 5Mhz <=3D Fref / N <=3D 40MHz */
> +	min_prediv =3D DIV_ROUND_UP(fin, 40 * USEC_PER_SEC);
> +	max_prediv =3D fin / (5 * USEC_PER_SEC);
> +
> +	/* constraint: 80MHz <=3D Fvco <=3D 1500Mhz */
> +	fvco_min =3D 80 * USEC_PER_SEC;
> +	fvco_max =3D 1500 * USEC_PER_SEC;
> +
> +	for (_prediv =3D min_prediv; _prediv <=3D max_prediv; _prediv++) {
> +		u64 tmp;
> +		u32 delta;
> +		/* Fvco =3D Fref * M / N */
> +		tmp =3D (u64)fout * _prediv;
> +		do_div(tmp, fin);
> +		_fbdiv =3D tmp;
> +		/*
> +		 * Due to the use of a "by 2 pre-scaler," the range of the
> +		 * feedback multiplication value M is limited to even division
> +		 * numbers, and m must be greater than 12, less than 1000.
> +		 */
> +		if (_fbdiv <=3D 12 || _fbdiv >=3D 1000)
> +			continue;
> +
> +		_fbdiv +=3D _fbdiv % 2;
> +
> +		tmp =3D (u64)_fbdiv * fin;
> +		do_div(tmp, _prediv);
> +		if (tmp < fvco_min || tmp > fvco_max)
> +			continue;
> +
> +		delta =3D abs(fout - tmp);
> +		if (delta < min_delta) {
> +			best_prediv =3D _prediv;
> +			best_fbdiv =3D _fbdiv;
> +			min_delta =3D delta;
> +			best_freq =3D tmp;
>  		}
> -		if (tmp =3D=3D 0)
> -			break;
>  	}
>=20=20
> -	dsi->lane_mbps =3D pllref / n * m;
> -	dsi->input_div =3D n;
> -	dsi->feedback_div =3D m;
> +	if (best_freq) {
> +		dsi->lane_mbps =3D DIV_ROUND_UP(best_freq, USEC_PER_SEC);
> +		dsi->input_div =3D best_prediv;
> +		dsi->feedback_div =3D best_fbdiv;
> +	} else
> +		dev_err(dsi->dev, "Can not find best_freq for DPHY\n");
>=20=20
>  	return 0;
>  }
> --=20
> 1.9.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
