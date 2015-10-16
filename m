From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: host: Protect PCGCTL with lock in
 dwc2_port_resume()
Date: Fri, 16 Oct 2015 18:06:01 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC39AF5F@US01WEMBX2.internal.synopsys.com>
References: <1444863507-27463-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "balbi-l0cyMroinI0@public.gmane.org" <balbi-l0cyMroinI0@public.gmane.org>
Cc: Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org" <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, "gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org" <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 10/14/2015 3:58 PM, Douglas Anderson wrote:
> From code inspection, it appears to be unsafe to do a read-modify-write
> of PCGCTL in dwc2_port_resume().  Let's make sure the spinlock is held
> around this operation.
> 
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
>  drivers/usb/dwc2/hcd.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index af4e4a2..e79baf7 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -1500,6 +1500,8 @@ static void dwc2_port_resume(struct dwc2_hsotg *hsotg)
>  	u32 hprt0;
>  	u32 pcgctl;
>  
> +	spin_lock_irqsave(&hsotg->lock, flags);
> +
>  	/*
>  	 * If hibernation is supported, Phy clock is already resumed
>  	 * after registers restore.
> @@ -1508,10 +1510,11 @@ static void dwc2_port_resume(struct dwc2_hsotg *hsotg)
>  		pcgctl = dwc2_readl(hsotg->regs + PCGCTL);
>  		pcgctl &= ~PCGCTL_STOPPCLK;
>  		dwc2_writel(pcgctl, hsotg->regs + PCGCTL);
> +		spin_unlock_irqrestore(&hsotg->lock, flags);
>  		usleep_range(20000, 40000);
> +		spin_lock_irqsave(&hsotg->lock, flags);
>  	}
>  
> -	spin_lock_irqsave(&hsotg->lock, flags);
>  	hprt0 = dwc2_read_hprt0(hsotg);
>  	hprt0 |= HPRT0_RES;
>  	hprt0 &= ~HPRT0_SUSP;
> 


Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>


John

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
