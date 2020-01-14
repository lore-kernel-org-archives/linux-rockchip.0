From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: convert rk3036 pll type to use internal lock status
Date: Mon, 13 Jan 2020 21:05:18 -0800
Message-ID: <20200114050518.D3C40222C3@mail.kernel.org>
References: <20200113152656.2313846-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200113152656.2313846-1-heiko@sntech.de>
Sender: linux-clk-owner@vger.kernel.org
To: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, mturquette@baylibre.com, heiko@sntech.de, christoph.muellner@theobroma-systems.com, zhangqing@rock-chips.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

Quoting Heiko Stuebner (2020-01-13 07:26:56)
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pl=
l.c
> index 198417d56300..37378ded0993 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -118,12 +118,30 @@ static int rockchip_pll_wait_lock(struct rockchip_c=
lk_pll *pll)
>  #define RK3036_PLLCON1_REFDIV_SHIFT            0
>  #define RK3036_PLLCON1_POSTDIV2_MASK           0x7
>  #define RK3036_PLLCON1_POSTDIV2_SHIFT          6
> +#define RK3036_PLLCON1_LOCK_STATUS             BIT(10)
>  #define RK3036_PLLCON1_DSMPD_MASK              0x1
>  #define RK3036_PLLCON1_DSMPD_SHIFT             12
> +#define RK3036_PLLCON1_PWRDOWN                 BIT(13)
>  #define RK3036_PLLCON2_FRAC_MASK               0xffffff
>  #define RK3036_PLLCON2_FRAC_SHIFT              0
> =20
> -#define RK3036_PLLCON1_PWRDOWN                 (1 << 13)
> +static int rockchip_rk3036_pll_wait_lock(struct rockchip_clk_pll *pll)
> +{
> +       u32 pllcon;
> +       int delay =3D 24000000;
> +
> +       /* poll check the lock status in rk3399 xPLLCON2 */
> +       while (delay > 0) {
> +               pllcon =3D readl_relaxed(pll->reg_base + RK3036_PLLCON(1)=
);
> +               if (pllcon & RK3036_PLLCON1_LOCK_STATUS)
> +                       return 0;
> +
> +               delay--;

There isn't any udelay here. So the timeout is just as fast as the CPU
can churn through this? Why not use an actual time? Or use the
readl_poll_timeout() APIs?

> +       }
> +
> +       pr_err("%s: timeout waiting for pll to lock\n", __func__);
> +       return -ETIMEDOUT;
> +}
> =20
>  static void rockchip_rk3036_pll_get_params(struct rockchip_clk_pll *pll,
>                                         struct rockchip_pll_rate_table *r=
ate)
