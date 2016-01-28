From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v5 05/21] usb: dwc2: host: Avoid use of chan->qh after
 qh freed
Date: Thu, 28 Jan 2016 11:25:59 +0800
Message-ID: <56A98A47.2010705@rock-chips.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org> <1453486736-15358-6-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1453486736-15358-6-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>, balbi@ti.com
Cc: huangtao@rock-chips.com, gregory.herrero@intel.com, heiko@sntech.de, johnyoun@synopsys.com, gregkh@linuxfoundation.org, ming.lei@canonical.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, yousaf.kaukab@intel.com, stern@rowland.harvard.edu, william.wu@rock-chips.com, Julius Werner <jwerner@chromium.org>, dinguyen@opensource.altera.com
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

The NULL pointer bug is one of the most frequent issue we met
during hot plug stress test, thanks for this bug fix.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
On 01/23/2016 02:18 AM, Douglas Anderson wrote:
> When poking around with USB devices with slub_debug enabled, I found
> another obvious use after free.  Turns out that in dwc2_hc_n_intr() I
> was in a state when the contents of chan->qh was filled with 0x6b,
> indicating that chan->qh was freed but chan still had a reference to
> it.
>
> Let's make sure that whenever we free qh we also make sure we remove a
> reference from its channel.
>
> The bug fixed here doesn't appear to be new--I believe I just got lucky
> and happened to see it while stress testing.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Changes in v5: None
> Changes in v4:
> - Avoid use of chan->qh after qh freed new for v4.
>
> Changes in v3: None
> Changes in v2: None
>
>   drivers/usb/dwc2/hcd.c      |  8 ++++++++
>   drivers/usb/dwc2/hcd_intr.c | 10 ++++++++++
>   2 files changed, 18 insertions(+)
>
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index bc4bdbc1534e..7783c8ba0173 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -164,6 +164,9 @@ static void dwc2_qh_list_free(struct dwc2_hsotg *hsotg,
>   					 qtd_list_entry)
>   			dwc2_hcd_qtd_unlink_and_free(hsotg, qtd, qh);
>   
> +		if (qh->channel && qh->channel->qh == qh)
> +			qh->channel->qh = NULL;
> +
>   		spin_unlock_irqrestore(&hsotg->lock, flags);
>   		dwc2_hcd_qh_free(hsotg, qh);
>   		spin_lock_irqsave(&hsotg->lock, flags);
> @@ -554,7 +557,12 @@ static int dwc2_hcd_endpoint_disable(struct dwc2_hsotg *hsotg,
>   		dwc2_hcd_qtd_unlink_and_free(hsotg, qtd, qh);
>   
>   	ep->hcpriv = NULL;
> +
> +	if (qh->channel && qh->channel->qh == qh)
> +		qh->channel->qh = NULL;
> +
>   	spin_unlock_irqrestore(&hsotg->lock, flags);
> +
>   	dwc2_hcd_qh_free(hsotg, qh);
>   
>   	return 0;
> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
> index 352c98364317..99efc2bd1617 100644
> --- a/drivers/usb/dwc2/hcd_intr.c
> +++ b/drivers/usb/dwc2/hcd_intr.c
> @@ -1935,6 +1935,16 @@ static void dwc2_hc_n_intr(struct dwc2_hsotg *hsotg, int chnum)
>   	}
>   
>   	dwc2_writel(hcint, hsotg->regs + HCINT(chnum));
> +
> +	/*
> +	 * If we got an interrupt after someone called
> +	 * dwc2_hcd_endpoint_disable() we don't want to crash below
> +	 */
> +	if (!chan->qh) {
> +		dev_warn(hsotg->dev, "Interrupt on disabled channel\n");
> +		return;
> +	}
> +
>   	chan->hcint = hcint;
>   	hcint &= hcintmsk;
>   
