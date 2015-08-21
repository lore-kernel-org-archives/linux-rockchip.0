From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] clk: rockchip: Add pclk_peri to critical clocks on
 RK3066/RK3188
Date: Fri, 21 Aug 2015 20:24:25 +0200
Message-ID: <1855234.LF6EVPIbW1@phil>
References: <1440180627-4566-1-git-send-email-romain.perier@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1440180627-4566-1-git-send-email-romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Romain Perier <romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Romain,

Am Freitag, 21. August 2015, 18:10:27 schrieb Romain Perier:
> Clocks for bank GPIO3 and GPIO4 are supplied by pclk_peri. These clocks need
> to stay on, otherwise pinctrl hangs the system when the driver is probed.

I don't agree with the commit message.

The issue you see does not originate from the pinctrl driver itself. Instead 
only the new flexible clock handling causes some other (still unhandled) 
component reyling on pclk_peri to hang the system.

In the past the clocks for the gpio banks were simply enabled once during 
probe, so pclk_peri as parent clock would also stay enabled for eternity. Now 
we enable the gpio clocks only when necessary, which results in that pclk_peri 
might get disabled too when no other component has claimed it - hence its 
addition to critical clocks.

Also, please note that Stephen Boyd is now also clock maintainer.


> 
> Signed-off-by: Romain Perier <romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  drivers/clk/rockchip/clk-rk3188.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3188.c
> b/drivers/clk/rockchip/clk-rk3188.c index f63a642..596be81 100644
> --- a/drivers/clk/rockchip/clk-rk3188.c
> +++ b/drivers/clk/rockchip/clk-rk3188.c
> @@ -717,6 +717,7 @@ static const char *const rk3188_critical_clocks[]
> __initconst = { "aclk_peri",
>  	"hclk_peri",
>  	"pclk_cpu",
> +	"pclk_peri",
>  };
> 
>  static void __init rk3188_common_clk_init(struct device_node *np)
