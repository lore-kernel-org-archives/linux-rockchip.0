From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH 2/4] clk: rockchip: export HDMIPHY clock
Date: Fri, 14 Jun 2019 22:38:55 +0200
Message-ID: <a0847a77f60e93374e0473b95d973eef@risingedge.co.za>
References: <20190614165454.13743-1-heiko@sntech.de>
 <20190614165454.13743-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190614165454.13743-3-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, mturquette@baylibre.com, sboyd@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 2019-06-14 18:54, Heiko Stuebner wrote:

> Export the hdmiphy clock mux via the newly added clock-id.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> drivers/clk/rockchip/clk-rk3228.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3228.c 
> b/drivers/clk/rockchip/clk-rk3228.c
> index 1c5267d134ee..d17cfb7a3ff4 100644
> --- a/drivers/clk/rockchip/clk-rk3228.c
> +++ b/drivers/clk/rockchip/clk-rk3228.c
> @@ -247,7 +247,7 @@ static struct rockchip_clk_branch 
> rk3228_clk_branches[] __initdata = {
> RK2928_CLKGATE_CON(4), 0, GFLAGS),
> 
> /* PD_MISC */
> -    MUX(0, "hdmiphy", mux_hdmiphy_p, CLK_SET_RATE_PARENT,
> +    MUX(SCLK_HDMI_PHY, "hdmiphy", mux_hdmiphy_p, CLK_SET_RATE_PARENT,
> RK2928_MISC_CON, 13, 1, MFLAGS),
> MUX(0, "usb480m_phy", mux_usb480m_phy_p, CLK_SET_RATE_PARENT,
> RK2928_MISC_CON, 14, 1, MFLAGS),

Tested-by: Justin Swartz <justin.swartz@risingedge.co.za>
