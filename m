From: John Keeping <john@metanate.com>
Subject: Re: [PATCH 1/2] usb: dwc2: Fix IN FIFO allocation
Date: Thu, 19 Dec 2019 18:10:36 +0000
Message-ID: <20191219181036.1f3d9183.john@metanate.com>
References: <20191219113432.1229852-1-john@metanate.com>
        <69ae7364-391d-6075-27d8-7ed7c4aae2ff@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <69ae7364-391d-6075-27d8-7ed7c4aae2ff@synopsys.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Minas,

On Thu, 19 Dec 2019 12:34:59 +0000
Minas Harutyunyan <Minas.Harutyunyan@synopsys.com> wrote:

> On 12/19/2019 3:34 PM, John Keeping wrote:
> > On chips with fewer FIFOs than endpoints (for example RK3288 which has 9
> > endpoints, but only 6 which are cabable of input), the DPTXFSIZN
> > registers above the FIFO count may return invalid values.
> > 
> 
> RK3288 (rev.2.2 Mar.2017) databook says:
> - Support up to 9 device mode endpoints in addition to control endpoint 0
> - Support up to 6 device mode IN endpoints including control endpoint 0
> - Endpoints 1/3/5/7 can be used only as data IN endpoint
> - Endpoints 2/4/6 can be used only as data OUT endpoint
> - Endpoints 8/9 can be used as data OUT and IN endpoint
>
> 6 IN EP's (incl.EP0) mean that TxFIFO count should be 5. For EP0 using 
> NPTXFIFO. On other hand 6 EP's 1/3/5/7/8/9 are IN endpoints.

I think this is from the RK3288 Datasheet.  I also have the RK3288
Technical Reference Manual Revision 2.0 Feb 2014, which is older, but
says:

- 9 Device mode endpoints in addition to control endpoint 0, 4 in, 3 out
  and 2 IN/OUT

This matches what I'm seeing on the hardware.

> Something not clear to me. Could you please provide me your HSOTG core's 
> GHWCFG1-4 registers values.

Here are the configuration registers:

GHWCFG1 = 0x00006664
GHWCFG2 = 0x228e2450
GHWCFG3 = 0x03cc90e8
GHWCFG4 = 0xdbf04030

> One more stuff. You didn't send patch series cover letter ([PATCH 0/2]) 
> or I didn't received it?

I didn't send a cover letter, it would mostly have repeated the commit
message from this patch.


Regards,
John

> > With logging added on startup, I see:
> > 
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=1 sz=256
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=2 sz=128
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=3 sz=128
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=4 sz=64
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=5 sz=64
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=6 sz=32
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=7 sz=0
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=8 sz=0
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=9 sz=0
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=10 sz=0
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=11 sz=0
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=12 sz=0
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=13 sz=0
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=14 sz=0
> > 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=15 sz=0
> > 
> > but:
> > 
> > 	# cat /sys/kernel/debug/ff580000.usb/fifo
> > 	Non-periodic FIFOs:
> > 	RXFIFO: Size 275
> > 	NPTXFIFO: Size 16, Start 0x00000113
> > 
> > 	Periodic TXFIFOs:
> > 		DPTXFIFO 1: Size 256, Start 0x00000123
> > 		DPTXFIFO 2: Size 128, Start 0x00000223
> > 		DPTXFIFO 3: Size 128, Start 0x000002a3
> > 		DPTXFIFO 4: Size 64, Start 0x00000323
> > 		DPTXFIFO 5: Size 64, Start 0x00000363
> > 		DPTXFIFO 6: Size 32, Start 0x000003a3
> > 		DPTXFIFO 7: Size 0, Start 0x000003e3
> > 		DPTXFIFO 8: Size 0, Start 0x000003a3
> > 		DPTXFIFO 9: Size 256, Start 0x00000123
> > 
> > so it seems that FIFO 9 is mirroring FIFO 1.
> > 
> > Fix the allocation by using the FIFO count instead of the endpoint count
> > when selecting a FIFO for an endpoint.
> > 
> > Signed-off-by: John Keeping <john@metanate.com>
> > ---
> >   drivers/usb/dwc2/gadget.c | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
> > index 92e8de9cb45c..911b950ef25e 100644
> > --- a/drivers/usb/dwc2/gadget.c
> > +++ b/drivers/usb/dwc2/gadget.c
> > @@ -4059,11 +4059,12 @@ static int dwc2_hsotg_ep_enable(struct usb_ep *ep,
> >   	 * a unique tx-fifo even if it is non-periodic.
> >   	 */
> >   	if (dir_in && hsotg->dedicated_fifos) {
> > +		unsigned fifo_count = dwc2_hsotg_tx_fifo_count(hsotg);
> >   		u32 fifo_index = 0;
> >   		u32 fifo_size = UINT_MAX;
> >   
> >   		size = hs_ep->ep.maxpacket * hs_ep->mc;
> > -		for (i = 1; i < hsotg->num_of_eps; ++i) {
> > +		for (i = 1; i <= fifo_count; ++i) {
> >   			if (hsotg->fifo_map & (1 << i))
> >   				continue;
> >   			val = dwc2_readl(hsotg, DPTXFSIZN(i));
> > 
