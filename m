From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: select hdmiphy clock source for rk3228
Date: Fri, 14 Jun 2019 11:18:07 +0200
Message-ID: <4689860.tqrvb1PrOO@phil>
References: <20190612133343.28309-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190612133343.28309-1-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Mittwoch, 12. Juni 2019, 15:33:43 CEST schrieb Justin Swartz:
> Unless explictly configured by a bootloader, the hdmiphy clock parent
> defaults to the xin24m clock source. This configuration does not yield
> any HDMI video output, so let hdmiphy_phy (the HDMI PHY output clock)
> be the parent instead.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

Mainly for having breadcrumbs for people skimming the lists,
I've adapted this to use assigned-clocks instead of hardcoding.

See the dts-thread for further infos:
https://lore.kernel.org/linux-arm-kernel/1854794.0zkvb3x0FP@phil/T/#mf86ab45e07442ab2b25c67f423ebc4130259f6b0

Heiko


> ---
>  drivers/clk/rockchip/clk-rk3228.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
> index 1c5267d134ee..00a195e6c014 100644
> --- a/drivers/clk/rockchip/clk-rk3228.c
> +++ b/drivers/clk/rockchip/clk-rk3228.c
> @@ -699,6 +699,9 @@ static void __init rk3228_clk_init(struct device_node *np)
>  		return;
>  	}
>  
> +	/* Let hdmiphy_phy be the parent of the hdmiphy clock. */
> +	writel_relaxed(HIWORD_UPDATE(0, 1, 13), reg_base + RK2928_MISC_CON);
> +
>  	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
>  	if (IS_ERR(ctx)) {
>  		pr_err("%s: rockchip clk init failed\n", __func__);
> 
