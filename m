From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v4] usb: dwc2: host: Fix use after free w/ simultaneous
 irqs
Date: Sat, 17 Oct 2015 04:14:29 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC39CC4A@US01WEMBX2.internal.synopsys.com>
References: <1445036492-21079-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, John Youn <John.Youn@synopsys.com>, "balbi@ti.com" <balbi@ti.com>
Cc: Yunzhi Li <lyz@rock-chips.com>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "gregory.herrero@intel.com" <gregory.herrero@intel.com>, "yousaf.kaukab@intel.com" <yousaf.kaukab@intel.com>, "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 10/16/2015 4:02 PM, Douglas Anderson wrote:
> From: Doug Anderson <dianders@chromium.org>
> 
> While plugging / unplugging on a DWC2 host port with "slub_debug=FZPUA"
> enabled, I found a crash that was quite obviously a use after free.
> 
> It appears that in some cases when we handle the various sub-cases of
> HCINT we may end up freeing the QTD.  If there is more than one bit set
> in HCINT we may then end up continuing to use the QTD, which is bad.
> Let's be paranoid and check for this after each sub-case.  This should
> be safe since we officially have the "hsotg->lock" (it was grabbed in
> dwc2_handle_hcd_intr).
> 
> The specific crash I found was:
>  Unable to handle kernel paging request at virtual address 6b6b6b9f
> 
> At the time of the crash, the kernel reported:
>  (dwc2_hc_nak_intr+0x5c/0x198)
>  (dwc2_handle_hcd_intr+0xa84/0xbf8)
>  (_dwc2_hcd_irq+0x1c/0x20)
>  (usb_hcd_irq+0x34/0x48)
> 
> Popping into kgdb found that "*qtd" was filled with "0x6b", AKA qtd had
> been freed and filled with slub_debug poison.
> 
> kgdb gave a little better stack crawl:
>  0 dwc2_hc_nak_intr (hsotg=hsotg@entry=0xec42e058,
>      chan=chan@entry=0xec546dc0, chnum=chnum@entry=4,
>      qtd=qtd@entry=0xec679600) at drivers/usb/dwc2/hcd_intr.c:1237
>  1 dwc2_hc_n_intr (chnum=4, hsotg=0xec42e058) at
>      drivers/usb/dwc2/hcd_intr.c:2041
>  2 dwc2_hc_intr (hsotg=0xec42e058) at drivers/usb/dwc2/hcd_intr.c:2078
>  3 dwc2_handle_hcd_intr (hsotg=0xec42e058) at
>      drivers/usb/dwc2/hcd_intr.c:2128
>  4 _dwc2_hcd_irq (hcd=<optimized out>) at drivers/usb/dwc2/hcd.c:2837
>  5 usb_hcd_irq (irq=<optimized out>, __hcd=<optimized out>) at
>      drivers/usb/core/hcd.c:2353
> 
> Popping up to frame #1 (dwc2_hc_n_intr) found:
>  (gdb) print /x hcint
>  $12 = 0x12
> 
> AKA:
>  #define HCINTMSK_CHHLTD  (1 << 1)
>  #define HCINTMSK_NAK     (1 << 4)
> 
> Further debugging found that by simulating receiving those two
> interrupts at the same time it was trivial to replicate the
> use-after-free.  See <http://crosreview.com/305712> for a patch and
> instructions.  This lead to getting the following stack crawl of the
> actual free:
>  0  arch_kgdb_breakpoint () at arch/arm/include/asm/outercache.h:103
>  1  kgdb_breakpoint () at kernel/debug/debug_core.c:1054
>  2  dwc2_hcd_qtd_unlink_and_free (hsotg=<optimized out>, qh=<optimized
>       out>, qtd=0xe4479a00) at drivers/usb/dwc2/hcd.h:488
>  3  dwc2_deactivate_qh (free_qtd=<optimized out>, qh=0xe5efa280,
>       hsotg=0xed424618) at drivers/usb/dwc2/hcd_intr.c:671
>  4  dwc2_release_channel (hsotg=hsotg@entry=0xed424618,
>       chan=chan@entry=0xed5be000, qtd=<optimized out>,
>       halt_status=<optimized out>) at drivers/usb/dwc2/hcd_intr.c:742
>  5  dwc2_halt_channel (hsotg=0xed424618, chan=0xed5be000, qtd=<optimized
>       out>, halt_status=<optimized out>) at
>       drivers/usb/dwc2/hcd_intr.c:804
>  6  dwc2_complete_non_periodic_xfer (chnum=<optimized out>,
>       halt_status=<optimized out>, qtd=<optimized out>, chan=<optimized
>       out>, hsotg=<optimized out>) at drivers/usb/dwc2/hcd_intr.c:889
>  7  dwc2_hc_xfercomp_intr (hsotg=hsotg@entry=0xed424618,
>       chan=chan@entry=0xed5be000, chnum=chnum@entry=6,
>       qtd=qtd@entry=0xe4479a00) at drivers/usb/dwc2/hcd_intr.c:1065
>  8  dwc2_hc_chhltd_intr_dma (qtd=0xe4479a00, chnum=6, chan=0xed5be000,
>       hsotg=0xed424618) at drivers/usb/dwc2/hcd_intr.c:1823
>  9  dwc2_hc_chhltd_intr (qtd=0xe4479a00, chnum=6, chan=0xed5be000,
>       hsotg=0xed424618) at drivers/usb/dwc2/hcd_intr.c:1944
>  10 dwc2_hc_n_intr (chnum=6, hsotg=0xed424618) at
>       drivers/usb/dwc2/hcd_intr.c:2052
>  11 dwc2_hc_intr (hsotg=0xed424618) at drivers/usb/dwc2/hcd_intr.c:2097
>  12 dwc2_handle_hcd_intr (hsotg=0xed424618) at
>       drivers/usb/dwc2/hcd_intr.c:2147
>  13 _dwc2_hcd_irq (hcd=<optimized out>) at drivers/usb/dwc2/hcd.c:2837
>  14 usb_hcd_irq (irq=<optimized out>, __hcd=<optimized out>) at
>       drivers/usb/core/hcd.c:2353
> 
> Though we could add specific code to handle this case, adding the
> general purpose code to check for all cases where qtd might be freed
> seemed safer.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Changes in v4:
> - Fix NULL qh case
> 
> Changes in v3:
> - Don't pass NULL if qtd freed, just return (John Youn)
> - Don't keep track of interrupts left: list_first_entry() is fast.
> 
> Changes in v2:
> - Add static as correctly pointed by kbuild test robot
> 
>  drivers/usb/dwc2/hcd_intr.c | 70 ++++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 60 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
> index f70c970..bda0b21 100644
> --- a/drivers/usb/dwc2/hcd_intr.c
> +++ b/drivers/usb/dwc2/hcd_intr.c
> @@ -1949,6 +1949,24 @@ static void dwc2_hc_chhltd_intr(struct dwc2_hsotg *hsotg,
>  	}
>  }
>  
> +/*
> + * Check if the given qtd is still the top of the list (and thus valid).
> + *
> + * If dwc2_hcd_qtd_unlink_and_free() has been called since we grabbed
> + * the qtd from the top of the list, this will return false (otherwise true).
> + */
> +static bool dwc2_check_qtd_still_ok(struct dwc2_qtd *qtd, struct dwc2_qh *qh)
> +{
> +	struct dwc2_qtd *cur_head;
> +
> +	if (qh == NULL)
> +		return false;
> +
> +	cur_head = list_first_entry(&qh->qtd_list, struct dwc2_qtd,
> +				    qtd_list_entry);
> +	return (cur_head == qtd);
> +}
> +
>  /* Handles interrupt for a specific Host Channel */
>  static void dwc2_hc_n_intr(struct dwc2_hsotg *hsotg, int chnum)
>  {
> @@ -2031,27 +2049,59 @@ static void dwc2_hc_n_intr(struct dwc2_hsotg *hsotg, int chnum)
>  		 */
>  		hcint &= ~HCINTMSK_NYET;
>  	}
> -	if (hcint & HCINTMSK_CHHLTD)
> +
> +	if (hcint & HCINTMSK_CHHLTD) {
>  		dwc2_hc_chhltd_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_AHBERR)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_AHBERR) {
>  		dwc2_hc_ahberr_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_STALL)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_STALL) {
>  		dwc2_hc_stall_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_NAK)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_NAK) {
>  		dwc2_hc_nak_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_ACK)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_ACK) {
>  		dwc2_hc_ack_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_NYET)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_NYET) {
>  		dwc2_hc_nyet_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_XACTERR)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_XACTERR) {
>  		dwc2_hc_xacterr_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_BBLERR)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_BBLERR) {
>  		dwc2_hc_babble_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_FRMOVRUN)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_FRMOVRUN) {
>  		dwc2_hc_frmovrun_intr(hsotg, chan, chnum, qtd);
> -	if (hcint & HCINTMSK_DATATGLERR)
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
> +	if (hcint & HCINTMSK_DATATGLERR) {
>  		dwc2_hc_datatglerr_intr(hsotg, chan, chnum, qtd);
> +		if (!dwc2_check_qtd_still_ok(qtd, chan->qh))
> +			goto exit;
> +	}
>  
> +exit:
>  	chan->hcint = 0;
>  }
>  
> 


I reviewed this some more and I think this should be ok. Most of
the handlers don't make sense without a qtd and/or channel.

Although I am not completely sure on the desc dma case. I think
it will at least be better than letting the use-after-free occur.


Acked-by: John Youn <johnyoun@synopsys.com>


John
