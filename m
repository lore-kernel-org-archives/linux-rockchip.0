From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: add CLK_IGNORE_UNUSED to RK3188 sclk_mac_lbtest
Date: Wed, 22 Jul 2020 16:37:21 +0200
Message-ID: <3075813.JVNIx54Eim@diego>
References: <20200722143137.863-1-knaerzche@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200722143137.863-1-knaerzche@gmail.com>
Sender: linux-clk-owner@vger.kernel.org
To: Alex Bee <knaerzche@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Mittwoch, 22. Juli 2020, 16:31:37 CEST schrieb Alex Bee:
> Since the loopbacktest clock is not exported and is not touched in the
> driver, it needs the CLK_IGNORE_UNUSED flag in order to get the emac
> working.

could you please add it to the rk3188_critical_clocks array instead.
CLK_IGNORE_UNUSED only protects it against the clock subsystem
disabling it on boot, while as critical clock it also gets protected later.

Thanks
Heiko


> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  drivers/clk/rockchip/clk-rk3188.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
> index 77aebfb1d6d5..892b1edc3444 100644
> --- a/drivers/clk/rockchip/clk-rk3188.c
> +++ b/drivers/clk/rockchip/clk-rk3188.c
> @@ -354,7 +354,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
>  			RK2928_CLKGATE_CON(2), 5, GFLAGS),
>  	MUX(SCLK_MAC, "sclk_macref", mux_sclk_macref_p, CLK_SET_RATE_PARENT,
>  			RK2928_CLKSEL_CON(21), 4, 1, MFLAGS),
> -	GATE(0, "sclk_mac_lbtest", "sclk_macref", 0,
> +	GATE(0, "sclk_mac_lbtest", "sclk_macref", CLK_IGNORE_UNUSED,
>  			RK2928_CLKGATE_CON(2), 12, GFLAGS),
>  
>  	COMPOSITE(0, "hsadc_src", mux_pll_src_gpll_cpll_p, 0,
> 
