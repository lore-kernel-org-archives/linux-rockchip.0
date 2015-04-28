From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH] usb: dwc2: gadget: cleanup useless code
Date: Tue, 28 Apr 2015 22:50:10 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE300772909017522C15E@US01WEMBX2.internal.synopsys.com>
References: <1430033738-20914-1-git-send-email-lyz@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Yunzhi Li <lyz@rock-chips.com>, "John.Youn@synopsys.com" <John.Youn@synopsys.com>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "yousaf.kaukab@intel.com" <yousaf.kaukab@intel.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "rockchip-discuss@chromium.org" <rockchip-discuss@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On 4/26/2015 12:36 AM, Yunzhi Li wrote:
> dwc2 gadget driver s3c_hsotg_of_probe() run twice in
> dwc2_gadget_init() and the first one is useless, so remove it.
> 
> Signed-off-by: Yunzhi Li <lyz@rock-chips.com>
> ---
>  drivers/usb/dwc2/gadget.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
> index 6a30887..2ae74f2 100644
> --- a/drivers/usb/dwc2/gadget.c
> +++ b/drivers/usb/dwc2/gadget.c
> @@ -3851,8 +3851,6 @@ int dwc2_gadget_init(struct dwc2_hsotg *hsotg, int irq)
>  	/* Set default UTMI width */
>  	hsotg->phyif = GUSBCFG_PHYIF16;
>  
> -	s3c_hsotg_of_probe(hsotg);
> -
>  	/* Initialize to legacy fifo configuration values */
>  	hsotg->g_rx_fifo_sz = 2048;
>  	hsotg->g_np_g_tx_fifo_sz = 1024;
> 


Acked-by: John Youn <johnyoun@synopsys.com>
