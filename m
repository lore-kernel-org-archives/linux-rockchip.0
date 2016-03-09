From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [RESEND PATCH v2 3/5] clk: rockchip: add new pll-type for rk3399 and similar socs
Date: Wed, 09 Mar 2016 02:22:50 +0100
Message-ID: <3286748.Col0jAfKKX@phil>
References: <1456827275-8035-1-git-send-email-zhengxing@rock-chips.com> <1456827275-8035-4-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1456827275-8035-4-git-send-email-zhengxing@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Xing Zheng <zhengxing@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, huangtao@rock-chips.com, jay.xu@rock-chips.com, elaine.zhang@rock-chips.com, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 1. M=E4rz 2016, 18:14:33 schrieb Xing Zheng:
> The rk3399's pll and clock are similar with rk3036's, it different
> with base on the rk3066(rk3188, rk3288, rk3368 use it), there are
> different adjust foctors and control registers, so these should be
> independent and separate from the series of rk3066s.
>=20
> Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>

[...]

> +static int rockchip_rk3399_pll_set_params(struct rockchip_clk_pll *p=
ll,
> +				const struct rockchip_pll_rate_table *rate)
> +{
> +	const struct clk_ops *pll_mux_ops =3D pll->pll_mux_ops;
> +	struct clk_mux *pll_mux =3D &pll->pll_mux;
> +	struct rockchip_pll_rate_table cur;
> +	u32 pllcon;
> +	int rate_change_remuxed =3D 0;
> +	int cur_parent;
> +	int ret;
> +
> +	pr_debug("%s: rate settings for %lu fbdiv: %d, postdiv1: %d, refdiv=
: %d,
> postdiv2: %d, dsmpd: %d, frac: %d\n", +		__func__, rate->rate,
> rate->fbdiv, rate->postdiv1, rate->refdiv, +		rate->postdiv2,
> rate->dsmpd, rate->frac);
> +
> +	rockchip_rk3399_pll_get_params(pll, &cur);
> +	cur.rate =3D 0;
> +
> +	cur_parent =3D pll_mux_ops->get_parent(&pll_mux->hw);
> +	if (cur_parent =3D=3D PLL_MODE_NORM) {
> +		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
> +		rate_change_remuxed =3D 1;
> +	}
> +
> +	/* update pll values */
> +	writel_relaxed(HIWORD_UPDATE(rate->fbdiv, RK3399_PLLCON0_FBDIV_MASK=
,
> +					  RK3399_PLLCON0_FBDIV_SHIFT),

indentation is strange ... I guess the plan was to move=20
RK3399_PLLCON0_FBDIV_SHIFT under RK3399_PLLCON0_FBDIV_MASK, currently i=
t's=20
having tabs + spaces but has no alignment whatsoever

> +		       pll->reg_base + RK3399_PLLCON(0));
> +
> +	writel_relaxed(HIWORD_UPDATE(rate->refdiv, RK3399_PLLCON1_REFDIV_MA=
SK,
> +						   RK3399_PLLCON1_REFDIV_SHIFT) |
> +		       HIWORD_UPDATE(rate->postdiv1, RK3399_PLLCON1_POSTDIV1_MASK,
> +					     RK3399_PLLCON1_POSTDIV1_SHIFT) |

same for postdiv1

> +		       HIWORD_UPDATE(rate->postdiv2, RK3399_PLLCON1_POSTDIV2_MASK,
> +						     RK3399_PLLCON1_POSTDIV2_SHIFT),
> +		       pll->reg_base + RK3399_PLLCON(1));


rest looks nice


Heiko
