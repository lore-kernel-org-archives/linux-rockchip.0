From: zhangqing <zhangqing@rock-chips.com>
Subject: Re: [PATCH 3/4] clk: rockchip: rk3368: fix parents of video encoder/decoder
Date: Thu, 21 Jan 2016 01:43:37 -0800
Message-ID: <56A0A849.2040505@rock-chips.com>
References: <1453326560-20475-1-git-send-email-heiko@sntech.de> <1453326560-20475-3-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1453326560-20475-3-git-send-email-heiko@sntech.de>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com, sboyd@codeaurora.org
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, xf@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

hi:

On 01/20/2016 01:49 PM, Heiko Stuebner wrote:
> The vdpu and vepu clocks can also be parented to the npll and current
> parent list also is wrong as it would use the npll as "usbphy" source,
> so adapt the parent to the correct one.
>
> Fixes: 3536c97a52db ("clk: rockchip: add rk3368 clock controller")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: zhangqing <zhangqing@rock-chips.com>

> ---
>   drivers/clk/rockchip/clk-rk3368.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
> index 3c9733e..6037beb 100644
> --- a/drivers/clk/rockchip/clk-rk3368.c
> +++ b/drivers/clk/rockchip/clk-rk3368.c
> @@ -384,10 +384,10 @@ static struct rockchip_clk_branch rk3368_clk_branches[] __initdata = {
>   	 * Clock-Architecture Diagram 3
>   	 */
>
> -	COMPOSITE(0, "aclk_vepu", mux_pll_src_cpll_gpll_usb_p, 0,
> +	COMPOSITE(0, "aclk_vepu", mux_pll_src_cpll_gpll_npll_usb_p, 0,
>   			RK3368_CLKSEL_CON(15), 6, 2, MFLAGS, 0, 5, DFLAGS,
>   			RK3368_CLKGATE_CON(4), 6, GFLAGS),
> -	COMPOSITE(0, "aclk_vdpu", mux_pll_src_cpll_gpll_usb_p, 0,
> +	COMPOSITE(0, "aclk_vdpu", mux_pll_src_cpll_gpll_npll_usb_p, 0,
>   			RK3368_CLKSEL_CON(15), 14, 2, MFLAGS, 8, 5, DFLAGS,
>   			RK3368_CLKGATE_CON(4), 7, GFLAGS),
>
>

