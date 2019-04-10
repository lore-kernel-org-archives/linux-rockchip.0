From: "elaine.zhang" <zhangqing@rock-chips.com>
Subject: Re: [PATCH 2/3] clk: rockchip: Make rkpwm a critical clock on rk3288
Date: Wed, 10 Apr 2019 14:42:21 +0800
Message-ID: <50b744cd-b8d9-79ca-ba2d-6765808aa5e5@rock-chips.com>
References: <20190409204707.150347-1-dianders@chromium.org>
 <20190409204707.150347-3-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190409204707.150347-3-dianders@chromium.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Caesar Wang <caesar.wang@rock-chips.com>, linux-rockchip@lists.infradead.org, mka@chromium.org, ryandcase@chromium.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

hi,

在 2019/4/10 上午4:47, Douglas Anderson 写道:
> Most rk3288-based boards are derived from the EVB and thus use a PWM
> regulator for the logic rail.  However, most rk3288-based boards don't
> specify the PWM regulator in their device tree.  We'll deal with that
> by making it critical.
>
> NOTE: it's important to make it critical and not just IGNORE_UNUSED
> because all PWMs in the system share the same clock.  We don't want
> another PWM user to turn the clock on and off and kill the logic rail.
>
> This change is in preparation for actually having the PWMs in the
> rk3288 device tree actually point to the proper PWM clock.  Up until
> now they've all pointed to the clock for the old IP block and they've
> all worked due to the fact that rkpwm was IGNORE_UNUSED and that the
> clock rates for both clocks were the same.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>   drivers/clk/rockchip/clk-rk3288.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
> index 06287810474e..c3321eade23e 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -697,7 +697,7 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
>   	GATE(PCLK_TZPC, "pclk_tzpc", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 3, GFLAGS),
>   	GATE(PCLK_UART2, "pclk_uart2", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 9, GFLAGS),
>   	GATE(PCLK_EFUSE256, "pclk_efuse_256", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 10, GFLAGS),
> -	GATE(PCLK_RKPWM, "pclk_rkpwm", "pclk_cpu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(11), 11, GFLAGS),
> +	GATE(PCLK_RKPWM, "pclk_rkpwm", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 11, GFLAGS),
>   
>   	/* ddrctrl [DDR Controller PHY clock] gates */
>   	GATE(0, "nclk_ddrupctl0", "ddrphy", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(11), 4, GFLAGS),
> @@ -837,6 +837,7 @@ static const char *const rk3288_critical_clocks[] __initconst = {
>   	"pclk_alive_niu",
>   	"pclk_pd_pmu",
>   	"pclk_pmu_niu",
> +	"pclk_rkpwm",

pwm have device node, can enable and disable it in the pwm drivers.

pwm regulator use pwm node as:

pwms = <&pwm2 0 25000 1>

when set Logic voltage:

pwm_regulator_set_voltage()

     --> pwm_apply_state()

         -->clk_enable()

         -->pwm_enable()

         -->pwm_config()

         -->pinctrl_select()

         --....

For mark pclk_rkpwm as critical,do you have any questions, or provides 
some log or more information.

>   };
>   
>   static void __iomem *rk3288_cru_base;
