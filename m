From: "elaine.zhang" <zhangqing@rock-chips.com>
Subject: Re: [PATCH] clk: rockchip: mark pclk_uart2 as critical on rk3328
Date: Thu, 9 Jul 2020 09:32:05 +0800
Message-ID: <2f58b9df-9bcd-5639-65cc-306a6d36b310@rock-chips.com>
References: <20200708144528.20465-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200708144528.20465-1-jbx6244@gmail.com>
Content-Language: en-US
Sender: linux-clk-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

在 2020/7/8 下午10:45, Johan Jonker 写道:
> The rk3328 uart2 port is used as boot console and to debug.
> During the boot pclk_uart2 is disabled by a clk_disable_unused
> initcall. Fix the uart2 function by marking pclk_uart2
> as critical on rk3328. Also add sclk_uart2 as that is needed
> for the same DT node.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   drivers/clk/rockchip/clk-rk3328.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
> index c186a1985..cb7749cb7 100644
> --- a/drivers/clk/rockchip/clk-rk3328.c
> +++ b/drivers/clk/rockchip/clk-rk3328.c
> @@ -875,6 +875,8 @@ static const char *const rk3328_critical_clocks[] __initconst = {
>   	"aclk_gmac_niu",
>   	"pclk_gmac_niu",
>   	"pclk_phy_niu",
> +	"pclk_uart2",
> +	"sclk_uart2",
>   };
>   

Not need to mark the uart2 as critical clocks, the uart clk will enabled 
by uart driver probe(dw8250_probe()).

For your question,  Please check the uart2 dts node "status = okay".

Or You can send me the complete log, I check the status of uart2.

>   static void __init rk3328_clk_init(struct device_node *np)
