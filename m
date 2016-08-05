From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] clk: rockchip: mark rk3399 hdcp_noc and pclk_vio_grf as
 critical
Date: Fri, 05 Aug 2016 13:02:48 +0200
Message-ID: <4055149.Zs66lEhv2I@diego>
References: <1470209784-2665-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1470209784-2665-1-git-send-email-zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: yzq-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, marcheu-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

Am Mittwoch, 3. August 2016, 15:36:24 schrieb Chris Zhong:
> The Type-C DP need these clocks: aclk_hdcp_noc, hclk_hdcp_noc,
> pclk_hdcp_noc, pclk_vio_grf. Mark them as critical to avoid someone
> close them.
> 
> Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 
> ---
> 
>  drivers/clk/rockchip/clk-rk3399.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3399.c
> b/drivers/clk/rockchip/clk-rk3399.c index 78e51cb..6c8ed25 100644
> --- a/drivers/clk/rockchip/clk-rk3399.c
> +++ b/drivers/clk/rockchip/clk-rk3399.c
> @@ -1466,6 +1466,9 @@ static struct rockchip_clk_branch
> rk3399_clk_pmu_branches[] __initdata = {
> 
>  static const char *const rk3399_cru_critical_clocks[] __initconst = {
>  	"aclk_cci_pre",
> +	"aclk_hdcp_noc",
> +	"hclk_hdcp_noc",
> +	"pclk_hdcp_noc",
>  	"pclk_perilp0",
>  	"pclk_perilp0",
>  	"hclk_perilp0",

ok, we have marked all other noc (interconnect) clocks as critical, so this 
looks good.

> @@ -1485,6 +1488,7 @@ static const char *const rk3399_cru_critical_clocks[]
> __initconst = { "gpll_hclk_perilp1_src",
>  	"gpll_aclk_perilp0_src",
>  	"gpll_aclk_perihp_src",
> +	"pclk_vio_grf",

I don't necessarily agree with this one. It seems for the analogix-dp the 
preferred way is to have the driver handle its needed clock, see
	"[PATCH v1 6/6] drm/rockchip: dw_hdmi: introduce the pclk for grf" [0]


Heiko

[0] https://patchwork.kernel.org/patch/9223331/
