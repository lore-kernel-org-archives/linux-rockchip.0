From: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [PATCH 2/3] usb: dwc2: host: Giveback URB in tasklet context
Date: Fri, 6 Nov 2015 10:40:39 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1511061024100.2082-100000@iolanthe.rowland.org>
References: <CAD=FV=X_ytxKgAQUP3tiJs6m2J48kykXqiA+DvRO7mMna5PdDg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=X_ytxKgAQUP3tiJs6m2J48kykXqiA+DvRO7mMna5PdDg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Ming Lei <ming.lei@canonical.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 5 Nov 2015, Doug Anderson wrote:

> Alan,
> 
> On Thu, Nov 5, 2015 at 7:19 AM, Alan Stern <stern@rowland.harvard.edu> wrote:
> > On Wed, 4 Nov 2015, Doug Anderson wrote:
> >
> >> In the ChromeOS gerrit
> >> <https://chromium-review.googlesource.com/#/c/310583/> Julius Werner
> >> points out that for EHCI it was good to take the optimization from
> >> commit 9118f9eb4f1e ("USB: EHCI: improve interrupt qh unlink") before
> >> this one.  I'm still trying to learn USB / dwc2 so it's unclear to me
> >> whether we also need a similar change before landing.
> >>
> >> I'll see if I can do some investigation about this and also some
> >> benchmarking before and after.  Certainly profiling the interrupt
> >> handler itself showed a huge improvement, but I'd hate to see a
> >> regression elsewhere.
> >>
> >> If anyone else knows better than I, please speak up!  :)
> >
> > This is a matter of both efficiency and correctness.  Giving back URBs
> > in a tasklet is not a simple change.
> >
> > Have you read the kerneldoc for usb_submit_urb() in
> > drivers/usb/core/urb.c?  The portion about "Reserved Bandwidth
> > Transfers" is highly relevant.  I don't know how dwc2 goes about
> > reserving bandwidth for periodic transfers, but if it relies on the
> > endpoint queue being non-empty to maintain a reservation then it will
> > be affected by this change.
> 
> It does look as if you are right and the reservation will end up being
> released.  It looks to me like dwc2_deschedule_periodic() is in charge
> of releasing the reservation.  I'll work on trying to actually confirm
> this.  I guess I need to find a USB test setup where there are enough
> devices that I exceed the available time so I can see the brokenness
> of my old solution...

You may not need that.  Try a single USB keyboard and see what happens
when the interrupt URB is given back.

> I hadn't realized that this was a correctness problem and not just an
> optimization problem, so thank you very much for the info!  :)  I ran
> with a bunch of USB devices and it worked fine (and performance
> improved!) so I figured I was good to go...  Now I've read the
> kerneldoc you pointed at and it was very helpful.  As I understand it,
> it's considered OK if I copy what EHCI did and release the reservation
> if nothing has been scheduled for 5 ms.

You might also look into the issues surrounding isochronous URBs.  In 
particular, when an URB is submitted, which frames or microframes 
should it be scheduled in?  The problem is that when the submission 
occurs, some of the slots following the previous URB may already have 
expired.  The explanations for EXDEV and EFBIG in 
Documentation/usb/error-codes.txt are relevant here, although terse.

The host controller drivers that I maintain work like this:

	If the endpoint's queue is empty and none of the endpoint's
	URBs are still being given back by the tasklet, pretend that
	the URB_ISO_ASAP flag is set.  Note that this involves
	testing hcd_periodic_completion_in_progress() -- that's
	where switching over to tasklets makes a difference.

	If the URB_ISO_ASAP flag is set, the URB is scheduled for
	the first unallocated slot that hasn't already expired.

	If the flag isn't set, try to schedule the URB for the first
	unallocated slot.  If that means all the isoc packets in the
	URB would be assigned to expired slots, return -EXDEV.  If
	some but not all of the packets would be assigned to expired
	slots, skip them -- only schedule the packets whose slots
	haven't expired yet.

Alan Stern
