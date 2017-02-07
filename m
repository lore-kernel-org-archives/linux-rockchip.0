From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [RESEND PATCH 1/1] usb: dwc2: add multiple clock handling
Date: Tue, 07 Feb 2017 01:06:21 +0100
Message-ID: <1521643.nOmCoBUNHr@phil>
References: <1486263061-10681-1-git-send-email-frank.wang@rock-chips.com> <1486263061-10681-2-git-send-email-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1486263061-10681-2-git-send-email-frank.wang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Frank Wang <frank.wang@rock-chips.com>
Cc: johnyoun@synopsys.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, huangtao@rock-chips.com, kever.yang@rock-chips.com, william.wu@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Frank,

Am Sonntag, 5. Februar 2017, 10:51:01 CET schrieb Frank Wang:
> Originally, dwc2 just handle one clock named otg, however, it may have
> two or more clock need to manage for some new SoCs, so this adds
> change clk to clk's array of dwc2_hsotg to handle more clocks operation.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  drivers/usb/dwc2/core.h     |  5 ++++-
>  drivers/usb/dwc2/platform.c | 39 ++++++++++++++++++++++++++-------------
>  2 files changed, 30 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
> index 1a7e830..d10a466 100644
> --- a/drivers/usb/dwc2/core.h
> +++ b/drivers/usb/dwc2/core.h
> @@ -121,6 +121,9 @@ static inline void dwc2_writel(u32 value, void __iomem
> *addr) /* Maximum number of Endpoints/HostChannels */
>  #define MAX_EPS_CHANNELS	16
> 
> +/* Maximum number of dwc2 clocks */
> +#define DWC2_MAX_CLKS 3

why 3 clocks?

I.e. the binding currently only specifies the "otg" clock, so you should 
definitly amend it to also specifiy this "pmu" clock - in a separate patch 
before this one of course :-) .
"pmu" also looks like a good name for that clock-binding and these new clocks 
of course should be optional in the binding.

And ideally also just specify this mysterious third clock as well while you're 
at it.

> +
>  /* dwc2-hsotg declarations */
>  static const char * const dwc2_hsotg_supply_names[] = {
>  	"vusb_d",               /* digital USB supply, 1.2V */
> @@ -913,7 +916,7 @@ struct dwc2_hsotg {
>  	spinlock_t lock;
>  	void *priv;
>  	int     irq;
> -	struct clk *clk;
> +	struct clk *clks[DWC2_MAX_CLKS];
>  	struct reset_control *reset;
> 
>  	unsigned int queuing_high_bandwidth:1;

[...]

> @@ -123,17 +123,20 @@ static int dwc2_get_dr_mode(struct dwc2_hsotg *hsotg)
>  static int __dwc2_lowlevel_hw_enable(struct dwc2_hsotg *hsotg)
>  {
>  	struct platform_device *pdev = to_platform_device(hsotg->dev);
> -	int ret;
> +	int clk, ret;
> 
>  	ret = regulator_bulk_enable(ARRAY_SIZE(hsotg->supplies),
>  				    hsotg->supplies);
>  	if (ret)
>  		return ret;
> 
> -	if (hsotg->clk) {
> -		ret = clk_prepare_enable(hsotg->clk);
> -		if (ret)
> +	for (clk = 0; clk < DWC2_MAX_CLKS && hsotg->clks[clk]; clk++) {
> +		ret = clk_prepare_enable(hsotg->clks[clk]);
> +		if (ret) {
> +			while (--clk >= 0)
> +				clk_disable_unprepare(hsotg->clks[clk]);
>  			return ret;
> +		}
>  	}
> 
>  	if (hsotg->uphy) {
> @@ -168,7 +171,7 @@ int dwc2_lowlevel_hw_enable(struct dwc2_hsotg *hsotg)
>  static int __dwc2_lowlevel_hw_disable(struct dwc2_hsotg *hsotg)
>  {
>  	struct platform_device *pdev = to_platform_device(hsotg->dev);
> -	int ret = 0;
> +	int clk, ret = 0;
> 
>  	if (hsotg->uphy) {
>  		usb_phy_shutdown(hsotg->uphy);
> @@ -182,8 +185,9 @@ static int __dwc2_lowlevel_hw_disable(struct dwc2_hsotg
> *hsotg) if (ret)
>  		return ret;
> 
> -	if (hsotg->clk)
> -		clk_disable_unprepare(hsotg->clk);
> +	for (clk = DWC2_MAX_CLKS - 1; clk >= 0; clk--)
> +		if (hsotg->clks[clk])
> +			clk_disable_unprepare(hsotg->clks[clk]);
>  	ret = regulator_bulk_disable(ARRAY_SIZE(hsotg->supplies),
>  				     hsotg->supplies);
> @@ -209,7 +213,7 @@ int dwc2_lowlevel_hw_disable(struct dwc2_hsotg *hsotg)
> 
>  static int dwc2_lowlevel_hw_init(struct dwc2_hsotg *hsotg)
>  {
> -	int i, ret;
> +	int i, clk, ret;
> 
>  	hsotg->reset = devm_reset_control_get_optional(hsotg->dev, "dwc2");
>  	if (IS_ERR(hsotg->reset)) {
> @@ -282,11 +286,20 @@ static int dwc2_lowlevel_hw_init(struct dwc2_hsotg
> *hsotg) hsotg->phyif = GUSBCFG_PHYIF8;
>  	}
> 
> -	/* Clock */
> -	hsotg->clk = devm_clk_get(hsotg->dev, "otg");
> -	if (IS_ERR(hsotg->clk)) {
> -		hsotg->clk = NULL;
> -		dev_dbg(hsotg->dev, "cannot get otg clock\n");
> +	/* Clocks */
> +	for (clk = 0; clk < DWC2_MAX_CLKS; clk++) {
> +		hsotg->clks[clk] = of_clk_get(hsotg->dev->of_node, clk);
> +		if (IS_ERR(hsotg->clks[clk])) {
> +			ret = PTR_ERR(hsotg->clks[clk]);
> +			if (ret == -EPROBE_DEFER) {
> +				while (--clk >= 0)
> +					clk_put(hsotg->clks[clk]);
> +				return ret;
> +			}
> +
> +			hsotg->clks[clk] = NULL;
> +			break;
> +		}

I guess this depends on the feelings of the usb-people, but for me it might 
make more sense to not carry the clocks in an anonymous array but instead as 
named members in struct dwc2_hsotg - aka clk_otg, clk_pmu, clk_??? .

Because the otg clocks is actually marked as required in the binding while our 
two new clocks are optional and some future code might actually want to 
control these separate clocks to save some power somewhere.


Sidenote: I don't really understand why the driver allows the otg clock to be 
missing, as it is a required property in the binding.

Heiko
