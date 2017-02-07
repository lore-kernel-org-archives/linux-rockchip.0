From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [RESEND PATCH 1/1] usb: dwc2: add multiple clock handling
Date: Tue, 7 Feb 2017 09:51:18 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE300772909021B41A29C@US01WEMBX2.internal.synopsys.com>
References: <1486263061-10681-1-git-send-email-frank.wang@rock-chips.com>
 <1486263061-10681-2-git-send-email-frank.wang@rock-chips.com>
 <1521643.nOmCoBUNHr@phil>
 <ce60a874-fe78-840a-d79a-1589a965e3f5@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org" <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>
Cc: "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2/6/2017 7:18 PM, Frank Wang wrote:
> Hi Heiko, John and Greg,
>
> On 2017/2/7 8:06, Heiko Stuebner wrote:
>> Hi Frank,
>>
>> Am Sonntag, 5. Februar 2017, 10:51:01 CET schrieb Frank Wang:
>>> Originally, dwc2 just handle one clock named otg, however, it may have
>>> two or more clock need to manage for some new SoCs, so this adds
>>> change clk to clk's array of dwc2_hsotg to handle more clocks operation.
>>>
>>> Signed-off-by: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>>> ---
>>>   drivers/usb/dwc2/core.h     |  5 ++++-
>>>   drivers/usb/dwc2/platform.c | 39 ++++++++++++++++++++++++++-------------
>>>   2 files changed, 30 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
>>> index 1a7e830..d10a466 100644
>>> --- a/drivers/usb/dwc2/core.h
>>> +++ b/drivers/usb/dwc2/core.h
>>> @@ -121,6 +121,9 @@ static inline void dwc2_writel(u32 value, void __iomem
>>> *addr) /* Maximum number of Endpoints/HostChannels */
>>>   #define MAX_EPS_CHANNELS	16
>>>
>>> +/* Maximum number of dwc2 clocks */
>>> +#define DWC2_MAX_CLKS 3
>> why 3 clocks?
>
> Showing from the chapter 2.4 of dwc otg databook v3.10, it seems there
> should be five clocks, am I right?
> hclk/pmu_hclk/utmi_clk/ulpi_clk/utmifs_clk48
>
>> I.e. the binding currently only specifies the "otg" clock, so you should
>> definitly amend it to also specifiy this "pmu" clock - in a separate patch
>> before this one of course :-) .
>> "pmu" also looks like a good name for that clock-binding and these new clocks
>> of course should be optional in the binding.
>
> No problem, I will amend the binding when the implementation scheme is
> clear.
>
>> And ideally also just specify this mysterious third clock as well while you're
>> at it.
>>
>>> +
>>>   /* dwc2-hsotg declarations */
>>>   static const char * const dwc2_hsotg_supply_names[] = {
>>>   	"vusb_d",               /* digital USB supply, 1.2V */
>>> @@ -913,7 +916,7 @@ struct dwc2_hsotg {
>>>   	spinlock_t lock;
>>>   	void *priv;
>>>   	int     irq;
>>> -	struct clk *clk;
>>> +	struct clk *clks[DWC2_MAX_CLKS];
>>>   	struct reset_control *reset;
>>>
>>>   	unsigned int queuing_high_bandwidth:1;
>> [...]
>>
>>> @@ -123,17 +123,20 @@ static int dwc2_get_dr_mode(struct dwc2_hsotg *hsotg)
>>>   static int __dwc2_lowlevel_hw_enable(struct dwc2_hsotg *hsotg)
>>>   {
>>>   	struct platform_device *pdev = to_platform_device(hsotg->dev);
>>> -	int ret;
>>> +	int clk, ret;
>>>
>>>   	ret = regulator_bulk_enable(ARRAY_SIZE(hsotg->supplies),
>>>   				    hsotg->supplies);
>>>   	if (ret)
>>>   		return ret;
>>>
>>> -	if (hsotg->clk) {
>>> -		ret = clk_prepare_enable(hsotg->clk);
>>> -		if (ret)
>>> +	for (clk = 0; clk < DWC2_MAX_CLKS && hsotg->clks[clk]; clk++) {
>>> +		ret = clk_prepare_enable(hsotg->clks[clk]);
>>> +		if (ret) {
>>> +			while (--clk >= 0)
>>> +				clk_disable_unprepare(hsotg->clks[clk]);
>>>   			return ret;
>>> +		}
>>>   	}
>>>
>>>   	if (hsotg->uphy) {
>>> @@ -168,7 +171,7 @@ int dwc2_lowlevel_hw_enable(struct dwc2_hsotg *hsotg)
>>>   static int __dwc2_lowlevel_hw_disable(struct dwc2_hsotg *hsotg)
>>>   {
>>>   	struct platform_device *pdev = to_platform_device(hsotg->dev);
>>> -	int ret = 0;
>>> +	int clk, ret = 0;
>>>
>>>   	if (hsotg->uphy) {
>>>   		usb_phy_shutdown(hsotg->uphy);
>>> @@ -182,8 +185,9 @@ static int __dwc2_lowlevel_hw_disable(struct dwc2_hsotg
>>> *hsotg) if (ret)
>>>   		return ret;
>>>
>>> -	if (hsotg->clk)
>>> -		clk_disable_unprepare(hsotg->clk);
>>> +	for (clk = DWC2_MAX_CLKS - 1; clk >= 0; clk--)
>>> +		if (hsotg->clks[clk])
>>> +			clk_disable_unprepare(hsotg->clks[clk]);
>>>   	ret = regulator_bulk_disable(ARRAY_SIZE(hsotg->supplies),
>>>   				     hsotg->supplies);
>>> @@ -209,7 +213,7 @@ int dwc2_lowlevel_hw_disable(struct dwc2_hsotg *hsotg)
>>>
>>>   static int dwc2_lowlevel_hw_init(struct dwc2_hsotg *hsotg)
>>>   {
>>> -	int i, ret;
>>> +	int i, clk, ret;
>>>
>>>   	hsotg->reset = devm_reset_control_get_optional(hsotg->dev, "dwc2");
>>>   	if (IS_ERR(hsotg->reset)) {
>>> @@ -282,11 +286,20 @@ static int dwc2_lowlevel_hw_init(struct dwc2_hsotg
>>> *hsotg) hsotg->phyif = GUSBCFG_PHYIF8;
>>>   	}
>>>
>>> -	/* Clock */
>>> -	hsotg->clk = devm_clk_get(hsotg->dev, "otg");
>>> -	if (IS_ERR(hsotg->clk)) {
>>> -		hsotg->clk = NULL;
>>> -		dev_dbg(hsotg->dev, "cannot get otg clock\n");
>>> +	/* Clocks */
>>> +	for (clk = 0; clk < DWC2_MAX_CLKS; clk++) {
>>> +		hsotg->clks[clk] = of_clk_get(hsotg->dev->of_node, clk);
>>> +		if (IS_ERR(hsotg->clks[clk])) {
>>> +			ret = PTR_ERR(hsotg->clks[clk]);
>>> +			if (ret == -EPROBE_DEFER) {
>>> +				while (--clk >= 0)
>>> +					clk_put(hsotg->clks[clk]);
>>> +				return ret;
>>> +			}
>>> +
>>> +			hsotg->clks[clk] = NULL;
>>> +			break;
>>> +		}
>> I guess this depends on the feelings of the usb-people, but for me it might
>> make more sense to not carry the clocks in an anonymous array but instead as
>> named members in struct dwc2_hsotg - aka clk_otg, clk_pmu, clk_??? .

This is fine with me.

>>
>> Because the otg clocks is actually marked as required in the binding while our
>> two new clocks are optional and some future code might actually want to
>> control these separate clocks to save some power somewhere.
>>
>>
>> Sidenote: I don't really understand why the driver allows the otg clock to be
>> missing, as it is a required property in the binding.

This should be optional since not every platform is going to need to
specify it. And it is implemented that way now so I think this doc
needs to be updated.

>
> Yes, if there are only two clocks need to control, separate member in
> struct dwc2_hsotg is really better,
> but for more clocks, the operations of each clock
> (get/prepare/unprepare) may become tedious
>
> How about keeping the original 'otg' clk and adding a new clk array
> member for optional clocks in struct dwc2_hsotg?
> because excepting 'otg' clk, the others are all optional clocks.

I'd like to keep all the clocks optional and all accessed in a similar
manner.

Regards,
John

>
> Of course, if we only consider hclk and pmu_hclk, I guess the separate
> member scheme is still better.
>
> John and Greg, would you like to give some comments please?
>
>
> BR.
> Frank
>
>> Heiko
>>
>>
>>
>
>
>

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
