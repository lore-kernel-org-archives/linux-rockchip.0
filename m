From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v5 1/2] usb: dwc2: host: Add missing spinlock in
 dwc2_hcd_reset_func()
Date: Fri, 20 Nov 2015 22:44:08 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC3DAFB7@US01WEMBX2.internal.synopsys.com>
References: <1448039188-14296-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>, "balbi@ti.com" <balbi@ti.com>
Cc: Yunzhi Li <lyz@rock-chips.com>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "yousaf.kaukab@intel.com" <yousaf.kaukab@intel.com>, "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 11/20/2015 9:06 AM, Douglas Anderson wrote:
> The dwc2_hcd_reset_func() function is only ever called directly by a
> delayed work function.  As such no locks are already held when the
> function is called.
> 
> Doing a read-modify-write of CPU registers and setting fields in the
> main hsotg data structure is a bad idea without locks.  Let's add
> locks.
> 
> The bug was found by code inspection only.  It turns out that the
> dwc2_hcd_reset_func() is only ever called today if the
> "host_support_fs_ls_low_power" parameter is enabled and no code in
> mainline enables that parameter.  Thus no known issues in mainline are
> fixed by this patch, but it's still probably wise to fix the function.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Changes in v5:
> - New for v5 of the series
> 
>  drivers/usb/dwc2/hcd.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index 42b6c5127618..e8924cecc83a 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -2357,13 +2357,19 @@ static void dwc2_hcd_reset_func(struct work_struct *work)
>  {
>  	struct dwc2_hsotg *hsotg = container_of(work, struct dwc2_hsotg,
>  						reset_work.work);
> +	unsigned long flags;
>  	u32 hprt0;
>  
>  	dev_dbg(hsotg->dev, "USB RESET function called\n");
> +
> +	spin_lock_irqsave(&hsotg->lock, flags);
> +
>  	hprt0 = dwc2_read_hprt0(hsotg);
>  	hprt0 &= ~HPRT0_RST;
>  	dwc2_writel(hprt0, hsotg->regs + HPRT0);
>  	hsotg->flags.b.port_reset_change = 1;
> +
> +	spin_unlock_irqrestore(&hsotg->lock, flags);
>  }
>  
>  /*
> 

Acked-by: John Youn <johnyoun@synopsys.com>

John
