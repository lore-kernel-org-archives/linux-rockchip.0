From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/3] usb: dwc2: host: Giveback URB in tasklet context
Date: Thu, 5 Nov 2015 16:29:11 -0800
Message-ID: <CAD=FV=X_ytxKgAQUP3tiJs6m2J48kykXqiA+DvRO7mMna5PdDg@mail.gmail.com>
References: <CAD=FV=WhD-CcHHZN0_h57xPmvwiOiroOQKoDpy8f2HfDJY-PCg@mail.gmail.com>
	<Pine.LNX.4.44L0.1511051012580.25468-100000@netrider.rowland.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44L0.1511051012580.25468-100000@netrider.rowland.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Alan Stern <stern@rowland.harvard.edu>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Ming Lei <ming.lei@canonical.com>
List-Id: linux-rockchip.vger.kernel.org

Alan,

On Thu, Nov 5, 2015 at 7:19 AM, Alan Stern <stern@rowland.harvard.edu> wrote:
> On Wed, 4 Nov 2015, Doug Anderson wrote:
>
>> In the ChromeOS gerrit
>> <https://chromium-review.googlesource.com/#/c/310583/> Julius Werner
>> points out that for EHCI it was good to take the optimization from
>> commit 9118f9eb4f1e ("USB: EHCI: improve interrupt qh unlink") before
>> this one.  I'm still trying to learn USB / dwc2 so it's unclear to me
>> whether we also need a similar change before landing.
>>
>> I'll see if I can do some investigation about this and also some
>> benchmarking before and after.  Certainly profiling the interrupt
>> handler itself showed a huge improvement, but I'd hate to see a
>> regression elsewhere.
>>
>> If anyone else knows better than I, please speak up!  :)
>
> This is a matter of both efficiency and correctness.  Giving back URBs
> in a tasklet is not a simple change.
>
> Have you read the kerneldoc for usb_submit_urb() in
> drivers/usb/core/urb.c?  The portion about "Reserved Bandwidth
> Transfers" is highly relevant.  I don't know how dwc2 goes about
> reserving bandwidth for periodic transfers, but if it relies on the
> endpoint queue being non-empty to maintain a reservation then it will
> be affected by this change.

It does look as if you are right and the reservation will end up being
released.  It looks to me like dwc2_deschedule_periodic() is in charge
of releasing the reservation.  I'll work on trying to actually confirm
this.  I guess I need to find a USB test setup where there are enough
devices that I exceed the available time so I can see the brokenness
of my old solution...

I hadn't realized that this was a correctness problem and not just an
optimization problem, so thank you very much for the info!  :)  I ran
with a bunch of USB devices and it worked fine (and performance
improved!) so I figured I was good to go...  Now I've read the
kerneldoc you pointed at and it was very helpful.  As I understand it,
it's considered OK if I copy what EHCI did and release the reservation
if nothing has been scheduled for 5 ms.

Quoting a friend of mine: I'm now all done adding the delayed
reservation release code.  Now I just need to compile it and test it.
:-P  My plan is add some printouts to my current implementation to see
cases where the deferred "unreserve" actually saved us and (to me)
that will help indicate that it's working properly.  Presumably I
won't see this case hit (or not much) without HCD_BH and I will see
this case with HCD_BH.

Please consider this patch "on hold" until my next spin.

-Doug
