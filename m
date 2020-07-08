From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] clk: rockchip: mark pclk_uart2 as critical on rk3328
Date: Wed, 8 Jul 2020 16:34:31 +0100
Message-ID: <074d8691-2d88-4520-1e43-8c7eb5b82680@arm.com>
References: <20200708144528.20465-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200708144528.20465-1-jbx6244@gmail.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: sboyd@kernel.org, mturquette@baylibre.com, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-08 15:45, Johan Jonker wrote:
> The rk3328 uart2 port is used as boot console and to debug.
> During the boot pclk_uart2 is disabled by a clk_disable_unused
> initcall. Fix the uart2 function by marking pclk_uart2
> as critical on rk3328. Also add sclk_uart2 as that is needed
> for the same DT node.

Hmm, given that those are named in the DT as the "baudclk" and
"apb_pclk" that dw8250_probe() explicitly claims, they really
shouldn't be unused :/

On my RK3328 box they appear to be prepared and enabled OK:

[robin@nemulon-9 ~]$ sudo grep uart2 /sys/kernel/debug/clk/clk_summary
    sclk_uart2                        1        1        0    24000000          0     0  50000
                   pclk_uart2         1        1        0    75000000          0     0  50000
...

Robin.

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
>   static void __init rk3328_clk_init(struct device_node *np)
> 
