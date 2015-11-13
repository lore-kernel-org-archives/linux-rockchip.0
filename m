From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [REPOST PATCH] usb: dwc2: host: Support immediate retries for
 split transactions
Date: Fri, 13 Nov 2015 03:13:12 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC3CB70D@US01WEMBX2.internal.synopsys.com>
References: <1447266833-32096-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "balbi-l0cyMroinI0@public.gmane.org" <balbi-l0cyMroinI0@public.gmane.org>
Cc: "gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org" <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org" <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 11/11/2015 10:34 AM, Douglas Anderson wrote:
> In some cases, like when you've got a "Microsoft Wireless Keyboard 2000"
> connected to dwc2 with a hub, expected that we'll get some transfer
> errors sometimes.  The controller is expected to try at least 3 times
> before giving up.  See figure "Figure A-67. Normal HS CSPLIT 3 Strikes
> Smash" in the USB spec.
> 
> The dwc2 controller has a way to support this by using the "EC_MC"
> field.  The Raspberry Pi driver has logic for setting this right.  See
> fiq_fsm_queue_split_transaction() in their "dwc_otg_hcd.c".  Let's use
> the same logic.
> 
> After making this change, we no longer get dropped characters from the
> above mentioned keyboard.  Other devices on the same bus as the keyboard
> also behave more properly.
> 
> Thanks for Julius Werner for the expert analysis and suggestions.
> 
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> Repost without the WIP in tags (sorry for that).
> 
>  drivers/usb/dwc2/core.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index ef73e498e98f..dcb4cd1d3b34 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -1707,6 +1707,7 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
>  	u32 hcchar;
>  	u32 hctsiz = 0;
>  	u16 num_packets;
> +	u32 ec_mc;
>  
>  	if (dbg_hc(chan))
>  		dev_vdbg(hsotg->dev, "%s()\n", __func__);
> @@ -1743,6 +1744,13 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
>  
>  		hctsiz |= chan->xfer_len << TSIZ_XFERSIZE_SHIFT &
>  			  TSIZ_XFERSIZE_MASK;
> +
> +		/* For split set ec_mc for immediate retries */
> +		if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
> +		    chan->ep_type == USB_ENDPOINT_XFER_ISOC)
> +			ec_mc = 3;
> +		else
> +			ec_mc = 1;
>  	} else {
>  		if (dbg_hc(chan))
>  			dev_vdbg(hsotg->dev, "no split\n");
> @@ -1805,6 +1813,9 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
>  
>  		hctsiz |= chan->xfer_len << TSIZ_XFERSIZE_SHIFT &
>  			  TSIZ_XFERSIZE_MASK;
> +
> +		/* The ec_mc gets the multi_count for non-split */
> +		ec_mc = chan->multi_count;
>  	}
>  
>  	chan->start_pkt_count = num_packets;
> @@ -1855,8 +1866,7 @@ void dwc2_hc_start_transfer(struct dwc2_hsotg *hsotg,
>  
>  	hcchar = dwc2_readl(hsotg->regs + HCCHAR(chan->hc_num));
>  	hcchar &= ~HCCHAR_MULTICNT_MASK;
> -	hcchar |= chan->multi_count << HCCHAR_MULTICNT_SHIFT &
> -		  HCCHAR_MULTICNT_MASK;
> +	hcchar |= (ec_mc << HCCHAR_MULTICNT_SHIFT) & HCCHAR_MULTICNT_MASK;
>  	dwc2_hc_set_even_odd_frame(hsotg, chan, &hcchar);
>  
>  	if (hcchar & HCCHAR_CHDIS)
> 


Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>


Regards,
John
