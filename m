From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v1 5/6] clk: rockchip: add pll up and down when change pll freq
Date: Fri, 12 Apr 2019 14:15:54 +0200
Message-ID: <5677286.2uEqRd8HI1@diego>
References: <1554284549-24916-1-git-send-email-zhangqing@rock-chips.com> <1554284649-26764-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1554284649-26764-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, xxx@rock-chips.com, xf@rock-chips.com, huangtao@rock-chips.com, dianders@chromium.org, briannorris@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Hi Elaine,

Am Mittwoch, 3. April 2019, 11:44:09 CEST schrieb Elaine Zhang:
> set pll sequence:
> 	->set pll to slow mode or other plls
> 	->set pll down
> 	->set pll params
> 	->set pll up
> 	->wait pll lock status
> 	->set pll to normal mode
> 
> To slove the system error:
> wait_pll_lock: timeout waiting for pll to lock
> pll_set_params: pll update unsucessful,
> 		trying to restore old params

Can you tell me on what soc this was experienced?

The patch includes rk3399, but I don't think the CrOS kernel
does powerdown the pll when changing the cpu-frequency
[added Doug and Brian for clarification and possible testing :-) ]

But I did find that the M0 code in ATF does actually power-down the
PLL and follow your outline from above. So essentially I'd just like
a thumbs up from chromeos people if they have the time.


Heiko


> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  drivers/clk/rockchip/clk-pll.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index dd0433d4753e..9fe1227e77e9 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -208,6 +208,11 @@ static int rockchip_rk3036_pll_set_params(struct rockchip_clk_pll *pll,
>  		rate_change_remuxed = 1;
>  	}
>  
> +	/* set pll power down */
> +	writel(HIWORD_UPDATE(1,
> +			     RK3036_PLLCON1_PWRDOWN, 13),
> +	       pll->reg_base + RK3036_PLLCON(1));
> +
>  	/* update pll values */
>  	writel_relaxed(HIWORD_UPDATE(rate->fbdiv, RK3036_PLLCON0_FBDIV_MASK,
>  					  RK3036_PLLCON0_FBDIV_SHIFT) |
> @@ -229,6 +234,10 @@ static int rockchip_rk3036_pll_set_params(struct rockchip_clk_pll *pll,
>  	pllcon |= rate->frac << RK3036_PLLCON2_FRAC_SHIFT;
>  	writel_relaxed(pllcon, pll->reg_base + RK3036_PLLCON(2));
>  
> +	/* set pll power up */
> +	writel(HIWORD_UPDATE(0, RK3036_PLLCON1_PWRDOWN, 13),
> +	       pll->reg_base + RK3036_PLLCON(1));
> +
>  	/* wait for the pll to lock */
>  	ret = rockchip_pll_wait_lock(pll);
>  	if (ret) {
> @@ -685,6 +694,11 @@ static int rockchip_rk3399_pll_set_params(struct rockchip_clk_pll *pll,
>  		rate_change_remuxed = 1;
>  	}
>  
> +	/* set pll power down */
> +	writel(HIWORD_UPDATE(RK3399_PLLCON3_PWRDOWN,
> +			     RK3399_PLLCON3_PWRDOWN, 0),
> +	       pll->reg_base + RK3399_PLLCON(3));
> +
>  	/* update pll values */
>  	writel_relaxed(HIWORD_UPDATE(rate->fbdiv, RK3399_PLLCON0_FBDIV_MASK,
>  						  RK3399_PLLCON0_FBDIV_SHIFT),
> @@ -708,6 +722,11 @@ static int rockchip_rk3399_pll_set_params(struct rockchip_clk_pll *pll,
>  					    RK3399_PLLCON3_DSMPD_SHIFT),
>  		       pll->reg_base + RK3399_PLLCON(3));
>  
> +	/* set pll power up */
> +	writel(HIWORD_UPDATE(0,
> +			     RK3399_PLLCON3_PWRDOWN, 0),
> +	       pll->reg_base + RK3399_PLLCON(3));
> +
>  	/* wait for the pll to lock */
>  	ret = rockchip_rk3399_pll_wait_lock(pll);
>  	if (ret) {
> 
