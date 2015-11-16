From: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 15:31:55 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1511161523290.1938-100000@iolanthe.rowland.org>
References: <CAD=FV=VmV8K=ytmy_1fviG-9mxyT3aoSyX7nOg2KKXT_05h_TA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=VmV8K=ytmy_1fviG-9mxyT3aoSyX7nOg2KKXT_05h_TA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Felipe Balbi <balbi@ti.com>, John Youn <John.Youn@synopsys.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 16 Nov 2015, Doug Anderson wrote:

> Alan,
> 
> On Mon, Nov 16, 2015 at 11:31 AM, Alan Stern <stern@rowland.harvard.edu> wrote:
> > On Mon, 16 Nov 2015, Doug Anderson wrote:
> >
> >> ---
> >>
> >> usb: dwc2: host: Fix missing device insertions
> >>
> >> If you've got your interrupt signals bouncing a bit as you insert your
> >> USB device, you might end up in a state when the device is connected but
> >> the driver doesn't know it.
> >>
> >> Specifically, the observed order is:
> >>  1. hardware sees connect
> >>  2. hardware sees disconnect
> >>  3. hardware sees connect
> >>  4. dwc2_port_intr() - clears connect interrupt
> >>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
> >>
> >> Now you'll be stuck with the cable plugged in and no further interrupts
> >> coming in but the driver will think we're disconnected.
> >>
> >> We'll fix this by checking for the missing connect interrupt and
> >> re-connecting after the disconnect is posted.  We don't skip the
> >> disconnect because if there is a transitory disconnect we really want to
> >> de-enumerate and re-enumerate.
> >
> > Why do you need to do anything special here?  Normally a driver's
> > interrupt handler should query the hardware status after clearing the
> > interrupt source.  That way no transitions ever get missed.
> >
> > In your example, at step 5 the dwc2 driver would check the port status
> > and see that it currently is connected.  Therefore the driver would
> > pass a "connect status changed" event to the USB core and set the port
> > status to "connected".  No extra checking is needed, and transitory
> > connects or disconnects get handled correctly.
> 
> Things are pretty ugly at the moment because the dwc2 interrupt
> handler is split in two.  There's dwc2_handle_hcd_intr() and
> dwc2_handle_common_intr().  Both are registered for the same "shared"
> IRQ.  If I had to guess, I'd say that this is probably because someone
> wanted to assign the ".irq" field in the "struct hc_driver" for the
> host controller but that they also needed the other interrupt handler
> to handle things shared between host and gadget mode.
> 
> In any case, one of these two interrupt routines handles connect and
> the other disconnect.  That's pretty ugly but means that you can't
> just rely on standard techniques for keeping things in sync.

Okay, that is rather weird.  Still, I don't see why it should matter.  

Fundamentally there's no difference between a "connect" interrupt and a
"disconnect" interrupt.  They should both do exactly the same things:
clear the interrupt source, post a "connection change" event, and set
the driver's connect status based on the hardware's current state.  
The second and third parts can be handled by a shared subroutine.

If you think of these things as "connect changed" interrupts rather 
than as "connect" and "disconnect" interrupts, it makes a lot of sense.

> It would probably be a pretty reasonable idea to try to clean that up
> more, but that would be a very major and intrusive change.

Maybe so -- I'll take your word for it since I'm not at all familiar 
with the dwc2 code.

Alan Stern
