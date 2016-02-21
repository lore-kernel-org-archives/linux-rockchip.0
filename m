From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v5 2/8] clk: rockchip: rk3036: fix and add node id for
 emac clock
Date: Sun, 21 Feb 2016 03:26:56 +0100
Message-ID: <2143221.dkVJ5VuQke@phil>
References: <1454384032-6794-1-git-send-email-wxt@rock-chips.com>
 <1454384899-7270-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1454384899-7270-1-git-send-email-wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, zhengxing <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, leozwang-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, keescook-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar, Xing,

Am Dienstag, 2. Februar 2016, 11:48:19 schrieb Caesar Wang:
> From: zhengxing <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> In the emac driver, we need to refer HCLK_MAC since there are
> only 3PLLs (APLL/GPLL/DPLL) on the rk3036, most clock are under the
> GPLL, and it is unable to provide the accurate rate for mac_ref which
> need to 50MHz probability, we should let it under the DPLL and are
> able to set the freq which integer multiples of 50MHz, so we add these
> emac node for reference.
> 
> Signed-off-by: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

[...]

> --- a/drivers/clk/rockchip/clk-rk3036.c
> +++ b/drivers/clk/rockchip/clk-rk3036.c
> @@ -343,8 +343,11 @@ static struct rockchip_clk_branch
> rk3036_clk_branches[] __initdata = { RK2928_CLKSEL_CON(16), 0, 2, MFLAGS,
> 2, 5, DFLAGS,
>  			RK2928_CLKGATE_CON(10), 5, GFLAGS),
> 
> -	COMPOSITE_NOGATE(0, "mac_pll_src", mux_pll_src_3plls_p, 0,
> -			RK2928_CLKSEL_CON(21), 0, 2, MFLAGS, 9, 5, DFLAGS),
> +	MUX(SCLK_MACPLL, "mac_pll_pre", mux_pll_src_3plls_p, 0,
> +			RK2928_CLKSEL_CON(21), 0, 2, MFLAGS),
> +	DIV(0, "mac_pll_src", "mac_pll_pre", 0,
> +			RK2928_CLKSEL_CON(21), 9, 5, DFLAGS),
> +

CLK_SET_RATE_NO_REPARENT should do the trick as well.

And the whole hclk + clkid part should be separate patches. I took the 
liberty of splitting them already in [0] to see if I could get the emac 
running on my kylin board.

Probing emac + phy does suceed, but there is no link-detection.
Building your kylin-develop4.4 branch [1] results in the same (aka no 
transmission). 

Only with the original uboot + 4.1-based kernel that was already on the 
device did I manage to get a network connection.

Is there some additional setup missing somewhere?


Heiko

[0] https://github.com/mmind/linux-rockchip/commits/tmp/rk3036-emac
The 3 additional patches are not strictly necessary there.

[1] https://github.com/rockchip-linux/kernel/tree/kylin-develop4.4
