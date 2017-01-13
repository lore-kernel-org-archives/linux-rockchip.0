From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 4/4] clk: rockchip: add rk3288 cif_out clock
Date: Fri, 13 Jan 2017 14:53:18 +0100
Message-ID: <2707876.A5Xp7pLXJo@phil>
References: <1484049560-14820-1-git-send-email-jacob-chen@iotwrt.com>
 <1484049560-14820-4-git-send-email-jacob-chen@iotwrt.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1484049560-14820-4-git-send-email-jacob-chen@iotwrt.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: zhengxing@rock-chips.com, mturquette@baylibre.com, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jacob,

Am Dienstag, 10. Januar 2017, 19:59:20 CET schrieb Jacob Chen:
> Add the clocks for the cif block of the rk3288
> 
> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
> ---
>  drivers/clk/rockchip/clk-rk3288.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3288.c
> b/drivers/clk/rockchip/clk-rk3288.c index 8047cea..f071c24 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -192,6 +192,7 @@ PNAME(mux_uart1_p)	= { "uart1_src", "uart1_frac",
> "xin24m" }; PNAME(mux_uart2_p)	= { "uart2_src", "uart2_frac", "xin24m" };
>  PNAME(mux_uart3_p)	= { "uart3_src", "uart3_frac", "xin24m" };
>  PNAME(mux_uart4_p)	= { "uart4_src", "uart4_frac", "xin24m" };
> +PNAME(mux_cif_out_p)	= { "cif_src", "xin24m" };
>  PNAME(mux_vip_out_p)	= { "vip_src", "xin24m" };
>  PNAME(mux_mac_p)	= { "mac_pll_src", "ext_gmac" };
>  PNAME(mux_hsadcout_p)	= { "hsadc_src", "ext_hsadc" };
> @@ -448,6 +449,12 @@ static struct rockchip_clk_branch rk3288_clk_branches[]
> __initdata = { RK3288_CLKSEL_CON(6), 14, 2, MFLAGS, 8, 6, DFLAGS,
>  			RK3288_CLKGATE_CON(3), 15, GFLAGS),
> 
> +	COMPOSITE_NOGATE(0, "cif_src", mux_pll_src_cpll_gpll_p, 0,
> +			RK3288_CLKSEL_CON(26), 8, 1, MFLAGS, 9, 5, DFLAGS),
> +	COMPOSITE_NODIV(SCLK_CIF_OUT, "sclk_cif_out", mux_cif_out_p, 0,
> +			RK3288_CLKSEL_CON(26), 15, 1, MFLAGS,
> +			RK3288_CLKGATE_CON(3), 7, GFLAGS),
> +

we already have vip_src and sclk_vip_out defined, which I guess are the clocks 
you are adding here and according to the TRM I have the names are also correct 
(clock diagram 2).

But the clkid is not set yet, so I'd suggest adding SCLK_VIP_OUT and assigning 
to the existing clocks.

Also, according to the clock diagram, the gate needs to be (and already is) 
part of the vip_src clock and not the sclk_vip_out.


Heiko
