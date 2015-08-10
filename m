From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 3/3] clk: rockchip: do not gate the efuse256 clock
Date: Mon, 10 Aug 2015 10:08:03 +0200
Message-ID: <3117706.qOXm4qX2Wr@diego>
References: <1439176963-8969-1-git-send-email-zhengsq@rock-chips.com> <1439176963-8969-4-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1439176963-8969-4-git-send-email-zhengsq@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shunqian Zheng <zhengsq@rock-chips.com>
Cc: srinivas.kandagatla@linaro.org, maxime.ripard@free-electrons.com, linux-kernel@vger.kernel.org, caesar.wang@rock-chips.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, xjq@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Montag, 10. August 2015, 11:22:43 schrieb Shunqian Zheng:
> From: ZhengShunQian <zhengsq@rock-chips.com>
> 
> Always enable the clock of efuse256. Base on the nvmem framework,
> it seems like there is not a good way to enable the clock
> when actual needed.
> 
> Signed-off-by: ZhengShunQian <zhengsq@rock-chips.com>

actually regmap already provides a handle to have a clock for mmio-based
regmaps ... take a look at devm_regmap_init_mmio_clk() [0]

If this doesn't help, you can also simply clk_get and clk_prepare_enable the
clock in your rockchip_efuse_probe() and disable in rockchip_efuse_remove().


But I certainly don't want to extend the range of clocks magically staying
enabled through the ccf.


Heiko


[0] http://lxr.free-electrons.com/source/drivers/base/regmap/regmap-mmio.c#L336


> ---
>  drivers/clk/rockchip/clk-rk3288.c      | 2 +-
>  include/dt-bindings/clock/rk3288-cru.h | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3288.c
> b/drivers/clk/rockchip/clk-rk3288.c index 0df5bae..84d9218 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -647,7 +647,7 @@ static struct rockchip_clk_branch rk3288_clk_branches[]
> __initdata = { GATE(0, "pclk_efuse_1024", "pclk_cpu", 0,
> RK3288_CLKGATE_CON(11), 2, GFLAGS), GATE(PCLK_TZPC, "pclk_tzpc",
> "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 3, GFLAGS), GATE(PCLK_UART2,
> "pclk_uart2", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 9, GFLAGS), -	GATE(0,
> "pclk_efuse_256", "pclk_cpu", 0, RK3288_CLKGATE_CON(11), 10, GFLAGS),
> +	GATE(PCLK_EFUSE256, "pclk_efuse_256", "pclk_cpu", CLK_IGNORE_UNUSED,
> RK3288_CLKGATE_CON(11), 10, GFLAGS), GATE(PCLK_RKPWM, "pclk_rkpwm",
> "pclk_cpu", CLK_IGNORE_UNUSED, RK3288_CLKGATE_CON(11), 11, GFLAGS),
> 
>  	/* ddrctrl [DDR Controller PHY clock] gates */
> diff --git a/include/dt-bindings/clock/rk3288-cru.h
> b/include/dt-bindings/clock/rk3288-cru.h index c719aac..ab74d5e 100644
> --- a/include/dt-bindings/clock/rk3288-cru.h
> +++ b/include/dt-bindings/clock/rk3288-cru.h
> @@ -164,6 +164,7 @@
>  #define PCLK_DDRUPCTL1		366
>  #define PCLK_PUBL1		367
>  #define PCLK_WDT		368
> +#define PCLK_EFUSE256		369
> 
>  /* hclk gates */
>  #define HCLK_GPS		448
