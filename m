From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: host: Fix ahbcfg for rk3066
Date: Mon, 26 Oct 2015 22:57:04 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC3A8D5F@US01WEMBX2.internal.synopsys.com>
References: <1445384033-17050-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "balbi-l0cyMroinI0@public.gmane.org" <balbi-l0cyMroinI0@public.gmane.org>
Cc: Wu Liang Feng <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org" <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 10/20/2015 4:35 PM, Douglas Anderson wrote:
> The comment for ahbcfg for rk3066 parameters (also used for rk3288)
> claimed that ahbcfg was INCR16, but it wasn't.  Since the bits weren't
> shifted properly, the 0x7 ended up being masked and we ended up
> programming 0x3 for the HBstLen.  Let's set it to INCR16 properly.
> 
> As per Wu Liang Feng at Rockchip this may increase transmission
> efficiency.  I did blackbox tests with writing 0s to a USB-based SD
> reader (forcefully capping CPU Freq to try to measure efficiency):
>   cd /sys/devices/system/cpu/cpu0/cpufreq
>   echo userspace > scaling_governor
>   echo 126000 > scaling_setspeed
>   for i in $(seq 10); do
>     dd if=/dev/zero of=/dev/sdb bs=1M count=750
>   done
> 
> With the above tests I found that speeds went from ~15MB/s to ~18MB/s.
> Note that most other tests I did (including reading from the same USB
> reader) didn't show any difference in performance.
> 
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
>  drivers/usb/dwc2/platform.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
> index 5859b0f..e61d773 100644
> --- a/drivers/usb/dwc2/platform.c
> +++ b/drivers/usb/dwc2/platform.c
> @@ -108,7 +108,8 @@ static const struct dwc2_core_params params_rk3066 = {
>  	.host_ls_low_power_phy_clk	= -1,
>  	.ts_dline			= -1,
>  	.reload_ctl			= -1,
> -	.ahbcfg				= 0x7, /* INCR16 */
> +	.ahbcfg				= GAHBCFG_HBSTLEN_INCR16 <<
> +					  GAHBCFG_HBSTLEN_SHIFT,
>  	.uframe_sched			= -1,
>  	.external_id_pin_ctl		= -1,
>  	.hibernation			= -1,
> 


Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>


John

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
