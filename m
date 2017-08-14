From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [PATCH] watchdog: dw_wdt: fix overflow issue in
 dw_wdt_top_in_seconds
Date: Mon, 14 Aug 2017 08:37:52 -0700
Message-ID: <20170814153752.GB7025@roeck-us.net>
References: <1501159843-6623-1-git-send-email-huibin.hong@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1501159843-6623-1-git-send-email-huibin.hong-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Huibin Hong <huibin.hong-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 27, 2017 at 08:50:43PM +0800, Huibin Hong wrote:
> If top is 15, (1 << (16 + top)) may be negative.
> 
> Change-Id: I76e4a603a54f093e64a4b266008570e3afcdb35a

No Change-Id in upstream patches, please.

> Signed-off-by: Huibin Hong <huibin.hong-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

I am having trouble applying this patch. What is its baseline version ?

Guenter

> ---
>  drivers/watchdog/dw_wdt.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
> index 6ea0634..059c974 100644
> --- a/drivers/watchdog/dw_wdt.c
> +++ b/drivers/watchdog/dw_wdt.c
> @@ -81,7 +81,9 @@ static inline int dw_wdt_top_in_seconds(unsigned top)
>  	 * There are 16 possible timeout values in 0..15 where the number of
>  	 * cycles is 2 ^ (16 + i) and the watchdog counts down.
>  	 */
> -	return (1 << (16 + top)) / clk_get_rate(dw_wdt.clk);
> +	unsigned int cycles = 1 << (16 + top);
> +
> +	return cycles / clk_get_rate(dw_wdt.clk);
>  }
>  
>  static int dw_wdt_get_top(void)
> -- 
> 1.9.1
> 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-watchdog" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
--
To unsubscribe from this list: send the line "unsubscribe linux-watchdog" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
