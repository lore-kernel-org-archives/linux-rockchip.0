From: Xing Zheng <zhengxing@rock-chips.com>
Subject: Re: [RESEND PATCH v2 3/5] clk: rockchip: add new pll-type for rk3399
 and similar socs
Date: Wed, 9 Mar 2016 10:20:24 +0800
Message-ID: <56DF8868.6070706@rock-chips.com>
References: <1456827275-8035-1-git-send-email-zhengxing@rock-chips.com>
 <1456827275-8035-4-git-send-email-zhengxing@rock-chips.com>
 <3286748.Col0jAfKKX@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <3286748.Col0jAfKKX@phil>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, huangtao@rock-chips.com, jay.xu@rock-chips.com, elaine.zhang@rock-chips.com, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 2016=E5=B9=B403=E6=9C=8809=E6=97=A5 09:22, Heiko Stuebner wrote:
> Am Dienstag, 1. M=C3=A4rz 2016, 18:14:33 schrieb Xing Zheng:
>
>> +static int rockchip_rk3399_pll_set_params(struct rockchip_clk_pll *=
pll,
>> +				const struct rockchip_pll_rate_table *rate)
>> +{
>> +	const struct clk_ops *pll_mux_ops =3D pll->pll_mux_ops;
>> +	struct clk_mux *pll_mux =3D &pll->pll_mux;
>> +	struct rockchip_pll_rate_table cur;
>> +	u32 pllcon;
>> +	int rate_change_remuxed =3D 0;
>> +	int cur_parent;
>> +	int ret;
>> +
>> +	pr_debug("%s: rate settings for %lu fbdiv: %d, postdiv1: %d, refdi=
v: %d,
>> postdiv2: %d, dsmpd: %d, frac: %d\n", +		__func__, rate->rate,
>> rate->fbdiv, rate->postdiv1, rate->refdiv, +		rate->postdiv2,
>> rate->dsmpd, rate->frac);
>> +
>> +	rockchip_rk3399_pll_get_params(pll, &cur);
>> +	cur.rate =3D 0;
>> +
>> +	cur_parent =3D pll_mux_ops->get_parent(&pll_mux->hw);
>> +	if (cur_parent =3D=3D PLL_MODE_NORM) {
>> +		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
>> +		rate_change_remuxed =3D 1;
>> +	}
>> +
>> +	/* update pll values */
>> +	writel_relaxed(HIWORD_UPDATE(rate->fbdiv, RK3399_PLLCON0_FBDIV_MAS=
K,
>> +					  RK3399_PLLCON0_FBDIV_SHIFT),
> indentation is strange ... I guess the plan was to move
> RK3399_PLLCON0_FBDIV_SHIFT under RK3399_PLLCON0_FBDIV_MASK, currently=
 it's
> having tabs + spaces but has no alignment whatsoever
Yes, I think that it due to copy them from the RK3036 style ...
>
>> +		       pll->reg_base + RK3399_PLLCON(0));
>> +
>> +	writel_relaxed(HIWORD_UPDATE(rate->refdiv, RK3399_PLLCON1_REFDIV_M=
ASK,
>> +						   RK3399_PLLCON1_REFDIV_SHIFT) |
>> +		       HIWORD_UPDATE(rate->postdiv1, RK3399_PLLCON1_POSTDIV1_MASK=
,
>> +					     RK3399_PLLCON1_POSTDIV1_SHIFT) |
> same for postdiv1
Done.
>
>> +		       HIWORD_UPDATE(rate->postdiv2, RK3399_PLLCON1_POSTDIV2_MASK=
,
>> +						     RK3399_PLLCON1_POSTDIV2_SHIFT),
>> +		       pll->reg_base + RK3399_PLLCON(1));
>
> rest looks nice
>
>
> Heiko
>
Thanks.

--=20
- Xing Zheng


