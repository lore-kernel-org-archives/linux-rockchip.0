From: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
Subject: RE: [PATCH 5/8] clk: rockchip: fix usbphy-related clocks
Date: Fri, 04 Dec 2015 16:07:23 -0800
Message-ID: <56622abb9f53f_650d3fc0582a72d85a@quark.notmuch>
References: <1446673454-9529-1-git-send-email-heiko@sntech.de>
 <1446673454-9529-6-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1446673454-9529-6-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: kishon-l0cyMroinI0@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, arnd-r2nGTMty4D4@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Heiko Stuebner wrote:
> The otgphy clocks really only drive the phy blocks. These in turn
> contain plls that then generate the 480m clocks the clock controller
> uses to supply some other clocks like uart0, gpu or the video-codec.
> 
> So fix this structure to actually respect that hirarchy and removed
> that usb480m fixed-rate clock working as a placeholder till now, as
> this wouldn't even work if the supplying phy gets turned off while
> its pll-output gets used elsewhere.
> 
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>

Acked-by: Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>

> ---
>  drivers/clk/rockchip/clk-rk3188.c | 11 +++--------
>  drivers/clk/rockchip/clk-rk3288.c | 16 +++++-----------
>  2 files changed, 8 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
> index abb4760..7836a97 100644
> --- a/drivers/clk/rockchip/clk-rk3188.c
> +++ b/drivers/clk/rockchip/clk-rk3188.c
> @@ -319,9 +319,9 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
>  	 * the 480m are generated inside the usb block from these clocks,
>  	 * but they are also a source for the hsicphy clock.
>  	 */
> -	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "usb480m", CLK_IGNORE_UNUSED,
> +	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "xin24m", CLK_IGNORE_UNUSED,
>  			RK2928_CLKGATE_CON(1), 5, GFLAGS),
> -	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "usb480m", CLK_IGNORE_UNUSED,
> +	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "xin24m", CLK_IGNORE_UNUSED,
>  			RK2928_CLKGATE_CON(1), 6, GFLAGS),
>  
>  	COMPOSITE(0, "mac_src", mux_mac_p, 0,
> @@ -635,7 +635,7 @@ static struct clk_div_table div_rk3188_aclk_core_t[] = {
>  	{ /* sentinel */ },
>  };
>  
> -PNAME(mux_hsicphy_p)		= { "sclk_otgphy0", "sclk_otgphy1",
> +PNAME(mux_hsicphy_p)		= { "sclk_otgphy0_480m", "sclk_otgphy1_480m",
>  				    "gpll", "cpll" };
>  
>  static struct rockchip_clk_branch rk3188_clk_branches[] __initdata = {
> @@ -739,11 +739,6 @@ static void __init rk3188_common_clk_init(struct device_node *np)
>  		pr_warn("%s: could not register clock xin12m: %ld\n",
>  			__func__, PTR_ERR(clk));
>  
> -	clk = clk_register_fixed_factor(NULL, "usb480m", "xin24m", 0, 20, 1);
> -	if (IS_ERR(clk))
> -		pr_warn("%s: could not register clock usb480m: %ld\n",
> -			__func__, PTR_ERR(clk));
> -
>  	rockchip_clk_register_branches(common_clk_branches,
>  				  ARRAY_SIZE(common_clk_branches));
>  
> diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
> index 9040878..7c8a3e9 100644
> --- a/drivers/clk/rockchip/clk-rk3288.c
> +++ b/drivers/clk/rockchip/clk-rk3288.c
> @@ -195,8 +195,8 @@ PNAME(mux_hsadcout_p)	= { "hsadc_src", "ext_hsadc" };
>  PNAME(mux_edp_24m_p)	= { "ext_edp_24m", "xin24m" };
>  PNAME(mux_tspout_p)	= { "cpll", "gpll", "npll", "xin27m" };
>  
> -PNAME(mux_usbphy480m_p)		= { "sclk_otgphy1", "sclk_otgphy2",
> -				    "sclk_otgphy0" };
> +PNAME(mux_usbphy480m_p)		= { "sclk_otgphy1_480m", "sclk_otgphy2_480m",
> +				    "sclk_otgphy0_480m" };
>  PNAME(mux_hsicphy480m_p)	= { "cpll", "gpll", "usbphy480m_src" };
>  PNAME(mux_hsicphy12m_p)		= { "hsicphy12m_xin12m", "hsicphy12m_usbphy" };
>  
> @@ -506,11 +506,11 @@ static struct rockchip_clk_branch rk3288_clk_branches[] __initdata = {
>  			RK3288_CLKSEL_CON(35), 6, 2, MFLAGS, 0, 5, DFLAGS,
>  			RK3288_CLKGATE_CON(4), 10, GFLAGS),
>  
> -	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "usb480m", CLK_IGNORE_UNUSED,
> +	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "xin24m", CLK_IGNORE_UNUSED,
>  			RK3288_CLKGATE_CON(13), 4, GFLAGS),
> -	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "usb480m", CLK_IGNORE_UNUSED,
> +	GATE(SCLK_OTGPHY1, "sclk_otgphy1", "xin24m", CLK_IGNORE_UNUSED,
>  			RK3288_CLKGATE_CON(13), 5, GFLAGS),
> -	GATE(SCLK_OTGPHY2, "sclk_otgphy2", "usb480m", CLK_IGNORE_UNUSED,
> +	GATE(SCLK_OTGPHY2, "sclk_otgphy2", "xin24m", CLK_IGNORE_UNUSED,
>  			RK3288_CLKGATE_CON(13), 6, GFLAGS),
>  	GATE(SCLK_OTG_ADP, "sclk_otg_adp", "xin32k", CLK_IGNORE_UNUSED,
>  			RK3288_CLKGATE_CON(13), 7, GFLAGS),
> @@ -874,12 +874,6 @@ static void __init rk3288_clk_init(struct device_node *np)
>  		pr_warn("%s: could not register clock xin12m: %ld\n",
>  			__func__, PTR_ERR(clk));
>  
> -
> -	clk = clk_register_fixed_factor(NULL, "usb480m", "xin24m", 0, 20, 1);
> -	if (IS_ERR(clk))
> -		pr_warn("%s: could not register clock usb480m: %ld\n",
> -			__func__, PTR_ERR(clk));
> -
>  	clk = clk_register_fixed_factor(NULL, "hclk_vcodec_pre",
>  					"hclk_vcodec_pre_v", 0, 1, 4);
>  	if (IS_ERR(clk))
> -- 
> 2.6.2
> 
