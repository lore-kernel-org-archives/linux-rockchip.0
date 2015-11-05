From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v2 2/2] usb: dwc2: host: Clear interrupts before
 handling them
Date: Thu, 5 Nov 2015 03:08:56 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC3BA3CD@US01WEMBX2.internal.synopsys.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
 <1446582629-30091-2-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>, "balbi@ti.com" <balbi@ti.com>
Cc: Yunzhi Li <lyz@rock-chips.com>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "yousaf.kaukab@intel.com" <yousaf.kaukab@intel.com>, "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 11/3/2015 12:31 PM, Douglas Anderson wrote:
> In general it is wise to clear interrupts before processing them.  If
> you don't do that, you can get:
>  1. Interrupt happens
>  2. You look at system state and process interrupt
>  3. A new interrupt happens
>  4. You clear interrupt without processing it.
> 
> This patch was actually a first attempt to fix missing device insertions
> as described in (usb: dwc2: host: Fix missing device insertions) and it
> did solve some of the signal bouncing problems but not all of
> them (which is why I submitted the other patch).  Specifically, this
> patch itself would sometimes change:
>  1. hardware sees connect
>  2. hardware sees disconnect
>  3. hardware sees connect
>  4. dwc2_port_intr() - clears connect interrupt
>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
> 
> ...to:
>  1. hardware sees connect
>  2. hardware sees disconnect
>  3. dwc2_port_intr() - clears connect interrupt
>  4. hardware sees connect
>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
> 
> ...but with different timing then sometimes we'd still miss cable
> insertions.
> 
> In any case, though this patch doesn't fix any (known) problems, it
> still seems wise as a general policy to clear interrupt before handling
> them.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Changes in v2: None
> 
>  drivers/usb/dwc2/core_intr.c | 55 ++++++++++++++++++++++----------------------
>  drivers/usb/dwc2/hcd_intr.c  | 16 ++++++-------
>  2 files changed, 35 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
> index 61601d16e233..2a166b7eec41 100644
> --- a/drivers/usb/dwc2/core_intr.c
> +++ b/drivers/usb/dwc2/core_intr.c
> @@ -80,15 +80,16 @@ static const char *dwc2_op_state_str(struct dwc2_hsotg *hsotg)
>   */
>  static void dwc2_handle_usb_port_intr(struct dwc2_hsotg *hsotg)
>  {
> -	u32 hprt0 = dwc2_readl(hsotg->regs + HPRT0);
> +	u32 hprt0;
>  
> +	/* Clear interrupt */
> +	dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);
> +
> +	hprt0 = dwc2_readl(hsotg->regs + HPRT0);
>  	if (hprt0 & HPRT0_ENACHG) {
>  		hprt0 &= ~HPRT0_ENA;
>  		dwc2_writel(hprt0, hsotg->regs + HPRT0);
>  	}
> -
> -	/* Clear interrupt */
> -	dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);
>  }
>  
>  /**
> @@ -98,11 +99,11 @@ static void dwc2_handle_usb_port_intr(struct dwc2_hsotg *hsotg)
>   */
>  static void dwc2_handle_mode_mismatch_intr(struct dwc2_hsotg *hsotg)
>  {
> -	dev_warn(hsotg->dev, "Mode Mismatch Interrupt: currently in %s mode\n",
> -		 dwc2_is_host_mode(hsotg) ? "Host" : "Device");
> -
>  	/* Clear interrupt */
>  	dwc2_writel(GINTSTS_MODEMIS, hsotg->regs + GINTSTS);
> +
> +	dev_warn(hsotg->dev, "Mode Mismatch Interrupt: currently in %s mode\n",
> +		 dwc2_is_host_mode(hsotg) ? "Host" : "Device");
>  }
>  
>  /**
> @@ -276,9 +277,13 @@ static void dwc2_handle_otg_intr(struct dwc2_hsotg *hsotg)
>   */
>  static void dwc2_handle_conn_id_status_change_intr(struct dwc2_hsotg *hsotg)
>  {
> -	u32 gintmsk = dwc2_readl(hsotg->regs + GINTMSK);
> +	u32 gintmsk;
> +
> +	/* Clear interrupt */
> +	dwc2_writel(GINTSTS_CONIDSTSCHNG, hsotg->regs + GINTSTS);
>  
>  	/* Need to disable SOF interrupt immediately */
> +	gintmsk = dwc2_readl(hsotg->regs + GINTMSK);
>  	gintmsk &= ~GINTSTS_SOF;
>  	dwc2_writel(gintmsk, hsotg->regs + GINTMSK);
>  
> @@ -295,9 +300,6 @@ static void dwc2_handle_conn_id_status_change_intr(struct dwc2_hsotg *hsotg)
>  		queue_work(hsotg->wq_otg, &hsotg->wf_otg);
>  		spin_lock(&hsotg->lock);
>  	}
> -
> -	/* Clear interrupt */
> -	dwc2_writel(GINTSTS_CONIDSTSCHNG, hsotg->regs + GINTSTS);
>  }
>  
>  /**
> @@ -315,12 +317,12 @@ static void dwc2_handle_session_req_intr(struct dwc2_hsotg *hsotg)
>  {
>  	int ret;
>  
> -	dev_dbg(hsotg->dev, "Session request interrupt - lx_state=%d\n",
> -							hsotg->lx_state);
> -
>  	/* Clear interrupt */
>  	dwc2_writel(GINTSTS_SESSREQINT, hsotg->regs + GINTSTS);
>  
> +	dev_dbg(hsotg->dev, "Session request interrupt - lx_state=%d\n",
> +							hsotg->lx_state);
> +
>  	if (dwc2_is_device_mode(hsotg)) {
>  		if (hsotg->lx_state == DWC2_L2) {
>  			ret = dwc2_exit_hibernation(hsotg, true);
> @@ -347,6 +349,10 @@ static void dwc2_handle_session_req_intr(struct dwc2_hsotg *hsotg)
>  static void dwc2_handle_wakeup_detected_intr(struct dwc2_hsotg *hsotg)
>  {
>  	int ret;
> +
> +	/* Clear interrupt */
> +	dwc2_writel(GINTSTS_WKUPINT, hsotg->regs + GINTSTS);
> +
>  	dev_dbg(hsotg->dev, "++Resume or Remote Wakeup Detected Interrupt++\n");
>  	dev_dbg(hsotg->dev, "%s lxstate = %d\n", __func__, hsotg->lx_state);
>  
> @@ -368,10 +374,9 @@ static void dwc2_handle_wakeup_detected_intr(struct dwc2_hsotg *hsotg)
>  		/* Change to L0 state */
>  		hsotg->lx_state = DWC2_L0;
>  	} else {
> -		if (hsotg->core_params->hibernation) {
> -			dwc2_writel(GINTSTS_WKUPINT, hsotg->regs + GINTSTS);
> +		if (hsotg->core_params->hibernation)
>  			return;
> -		}
> +
>  		if (hsotg->lx_state != DWC2_L1) {
>  			u32 pcgcctl = dwc2_readl(hsotg->regs + PCGCTL);
>  
> @@ -385,9 +390,6 @@ static void dwc2_handle_wakeup_detected_intr(struct dwc2_hsotg *hsotg)
>  			hsotg->lx_state = DWC2_L0;
>  		}
>  	}
> -
> -	/* Clear interrupt */
> -	dwc2_writel(GINTSTS_WKUPINT, hsotg->regs + GINTSTS);
>  }
>  
>  /*
> @@ -396,14 +398,14 @@ static void dwc2_handle_wakeup_detected_intr(struct dwc2_hsotg *hsotg)
>   */
>  static void dwc2_handle_disconnect_intr(struct dwc2_hsotg *hsotg)
>  {
> +	dwc2_writel(GINTSTS_DISCONNINT, hsotg->regs + GINTSTS);
> +
>  	dev_dbg(hsotg->dev, "++Disconnect Detected Interrupt++ (%s) %s\n",
>  		dwc2_is_host_mode(hsotg) ? "Host" : "Device",
>  		dwc2_op_state_str(hsotg));
>  
>  	if (hsotg->op_state == OTG_STATE_A_HOST)
>  		dwc2_hcd_disconnect(hsotg, false);
> -
> -	dwc2_writel(GINTSTS_DISCONNINT, hsotg->regs + GINTSTS);
>  }
>  
>  /*
> @@ -419,6 +421,9 @@ static void dwc2_handle_usb_suspend_intr(struct dwc2_hsotg *hsotg)
>  	u32 dsts;
>  	int ret;
>  
> +	/* Clear interrupt */
> +	dwc2_writel(GINTSTS_USBSUSP, hsotg->regs + GINTSTS);
> +
>  	dev_dbg(hsotg->dev, "USB SUSPEND\n");
>  
>  	if (dwc2_is_device_mode(hsotg)) {
> @@ -437,7 +442,7 @@ static void dwc2_handle_usb_suspend_intr(struct dwc2_hsotg *hsotg)
>  			if (!dwc2_is_device_connected(hsotg)) {
>  				dev_dbg(hsotg->dev,
>  						"ignore suspend request before enumeration\n");
> -				goto clear_int;
> +				return;
>  			}
>  
>  			ret = dwc2_enter_hibernation(hsotg);
> @@ -476,10 +481,6 @@ skip_power_saving:
>  			hsotg->op_state = OTG_STATE_A_HOST;
>  		}
>  	}
> -
> -clear_int:
> -	/* Clear interrupt */
> -	dwc2_writel(GINTSTS_USBSUSP, hsotg->regs + GINTSTS);
>  }
>  
>  #define GINTMSK_COMMON	(GINTSTS_WKUPINT | GINTSTS_SESSREQINT |		\
> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
> index 03504ac2fecc..4c7f709b8182 100644
> --- a/drivers/usb/dwc2/hcd_intr.c
> +++ b/drivers/usb/dwc2/hcd_intr.c
> @@ -122,6 +122,9 @@ static void dwc2_sof_intr(struct dwc2_hsotg *hsotg)
>  	struct dwc2_qh *qh;
>  	enum dwc2_transaction_type tr_type;
>  
> +	/* Clear interrupt */
> +	dwc2_writel(GINTSTS_SOF, hsotg->regs + GINTSTS);
> +
>  #ifdef DEBUG_SOF
>  	dev_vdbg(hsotg->dev, "--Start of Frame Interrupt--\n");
>  #endif
> @@ -146,9 +149,6 @@ static void dwc2_sof_intr(struct dwc2_hsotg *hsotg)
>  	tr_type = dwc2_hcd_select_transactions(hsotg);
>  	if (tr_type != DWC2_TRANSACTION_NONE)
>  		dwc2_hcd_queue_transactions(hsotg, tr_type);
> -
> -	/* Clear interrupt */
> -	dwc2_writel(GINTSTS_SOF, hsotg->regs + GINTSTS);
>  }
>  
>  /*
> @@ -347,11 +347,12 @@ static void dwc2_port_intr(struct dwc2_hsotg *hsotg)
>  	 * Set flag and clear if detected
>  	 */
>  	if (hprt0 & HPRT0_CONNDET) {
> +		writel(hprt0_modify | HPRT0_CONNDET, hsotg->regs + HPRT0);
> +
>  		dev_vdbg(hsotg->dev,
>  			 "--Port Interrupt HPRT0=0x%08x Port Connect Detected--\n",
>  			 hprt0);
>  		dwc2_hcd_connect(hsotg);
> -		hprt0_modify |= HPRT0_CONNDET;
>  
>  		/*
>  		 * The Hub driver asserts a reset when it sees port connect
> @@ -364,10 +365,10 @@ static void dwc2_port_intr(struct dwc2_hsotg *hsotg)
>  	 * Clear if detected - Set internal flag if disabled
>  	 */
>  	if (hprt0 & HPRT0_ENACHG) {
> +		writel(hprt0_modify | HPRT0_ENACHG, hsotg->regs + HPRT0);
>  		dev_vdbg(hsotg->dev,
>  			 "  --Port Interrupt HPRT0=0x%08x Port Enable Changed (now %d)--\n",
>  			 hprt0, !!(hprt0 & HPRT0_ENA));
> -		hprt0_modify |= HPRT0_ENACHG;
>  		if (hprt0 & HPRT0_ENA)
>  			dwc2_hprt0_enable(hsotg, hprt0, &hprt0_modify);
>  		else
> @@ -376,15 +377,12 @@ static void dwc2_port_intr(struct dwc2_hsotg *hsotg)
>  
>  	/* Overcurrent Change Interrupt */
>  	if (hprt0 & HPRT0_OVRCURRCHG) {
> +		writel(hprt0_modify | HPRT0_OVRCURRCHG, hsotg->regs + HPRT0);
>  		dev_vdbg(hsotg->dev,
>  			 "  --Port Interrupt HPRT0=0x%08x Port Overcurrent Changed--\n",
>  			 hprt0);
>  		hsotg->flags.b.port_over_current_change = 1;
> -		hprt0_modify |= HPRT0_OVRCURRCHG;
>  	}
> -
> -	/* Clear Port Interrupts */
> -	dwc2_writel(hprt0_modify, hsotg->regs + HPRT0);
>  }
>  
>  /*
> 

Acked-by: John Youn <johnyoun@synopsys.com>
Tested-by: John Youn <johnyoun@synopsys.com>

Regards,
John
