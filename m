From: John Youn <John.Youn@synopsys.com>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Tue, 17 Nov 2015 01:53:22 +0000
Message-ID: <2B3535C5ECE8B5419E3ECBE30077290901DC3D1B42@US01WEMBX2.internal.synopsys.com>
References: <CAD=FV=VmV8K=ytmy_1fviG-9mxyT3aoSyX7nOg2KKXT_05h_TA@mail.gmail.com>
 <Pine.LNX.4.44L0.1511161523290.1938-100000@iolanthe.rowland.org>
 <CAD=FV=UA1oGQw0+582vBD=vDgTVFaWxxgvfGNt+kCX9YTkve_g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, Alan Stern <stern@rowland.harvard.edu>
Cc: Felipe Balbi <balbi@ti.com>, John Youn <John.Youn@synopsys.com>, Yunzhi Li <lyz@rock-chips.com>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 11/16/2015 3:14 PM, Doug Anderson wrote:
> Alan,
> 
> On Mon, Nov 16, 2015 at 12:31 PM, Alan Stern <stern@rowland.harvard.edu> wrote:
>> On Mon, 16 Nov 2015, Doug Anderson wrote:
>>
>>> Alan,
>>>
>>> On Mon, Nov 16, 2015 at 11:31 AM, Alan Stern <stern@rowland.harvard.edu> wrote:
>>>> On Mon, 16 Nov 2015, Doug Anderson wrote:
>>>>
>>>>> ---
>>>>>
>>>>> usb: dwc2: host: Fix missing device insertions
>>>>>
>>>>> If you've got your interrupt signals bouncing a bit as you insert your
>>>>> USB device, you might end up in a state when the device is connected but
>>>>> the driver doesn't know it.
>>>>>
>>>>> Specifically, the observed order is:
>>>>>  1. hardware sees connect
>>>>>  2. hardware sees disconnect
>>>>>  3. hardware sees connect
>>>>>  4. dwc2_port_intr() - clears connect interrupt
>>>>>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>>>>>
>>>>> Now you'll be stuck with the cable plugged in and no further interrupts
>>>>> coming in but the driver will think we're disconnected.
>>>>>
>>>>> We'll fix this by checking for the missing connect interrupt and
>>>>> re-connecting after the disconnect is posted.  We don't skip the
>>>>> disconnect because if there is a transitory disconnect we really want to
>>>>> de-enumerate and re-enumerate.
>>>>
>>>> Why do you need to do anything special here?  Normally a driver's
>>>> interrupt handler should query the hardware status after clearing the
>>>> interrupt source.  That way no transitions ever get missed.
>>>>
>>>> In your example, at step 5 the dwc2 driver would check the port status
>>>> and see that it currently is connected.  Therefore the driver would
>>>> pass a "connect status changed" event to the USB core and set the port
>>>> status to "connected".  No extra checking is needed, and transitory
>>>> connects or disconnects get handled correctly.
>>>
>>> Things are pretty ugly at the moment because the dwc2 interrupt
>>> handler is split in two.  There's dwc2_handle_hcd_intr() and
>>> dwc2_handle_common_intr().  Both are registered for the same "shared"
>>> IRQ.  If I had to guess, I'd say that this is probably because someone
>>> wanted to assign the ".irq" field in the "struct hc_driver" for the
>>> host controller but that they also needed the other interrupt handler
>>> to handle things shared between host and gadget mode.
>>>
>>> In any case, one of these two interrupt routines handles connect and
>>> the other disconnect.  That's pretty ugly but means that you can't
>>> just rely on standard techniques for keeping things in sync.
>>
>> Okay, that is rather weird.  Still, I don't see why it should matter.
>>
>> Fundamentally there's no difference between a "connect" interrupt and a
>> "disconnect" interrupt.  They should both do exactly the same things:
>> clear the interrupt source, post a "connection change" event, and set
>> the driver's connect status based on the hardware's current state.
>> The second and third parts can be handled by a shared subroutine.
> 
> Ah, sorry I misunderstood.  OK, fair enough.  So you're saying that
> the problem is that dwc2_hcd_disconnect() has a line that looks like
> this:
> 
>   hsotg->flags.b.port_connect_status = 0;
> 
> ...and the dwc2_port_intr() has a line that looks like this:
> 
>   hsotg->flags.b.port_connect_status = 1;
> 
> ...and both should just query the status.
> 
> 
> Do you think we should to block landing this patch on cleaning up how
> dwc2 handles port_connect_status?  I'm not sure what side effects
> changing port_connect_status will have, so I'll need to test and dig a
> bit...
> 
> I'm currently working on trying to fix the microframe scheduler and
> was planning to post the next series of patches there pretty soon.
> I'm also planning to keep digging to figure out how to overall
> increase compatibility with devices (and compatibility with many
> devices plugged in).
> 
> If it were up to me, I'd prefer to land this patch in either 4.4 or
> 4.5 since it does seem to work.  ...then put seeing what we can do to
> cleanup all of the port_connect_status on the todo list.

That sound good to me. Though I'd prefer to see this series
queued for 4.5 for more testing.

> 
> Julius points out in his response that there are comments saying that
> HPRT0 can't be read in device mode.  John: since you're setup to test
> device mode, can you check if my patch (which now adds a read of
> HPRT0) will cause problems? Maybe holding this off and keeping it out
> of the RC is a good idea after all...
> 

Yup it's only available in host mode. The same with all the
host-mode registers. You will get a ModeMis interrupt if you
try to access them in device mode.

I gave my test-by on the v2 patches earlier, no problems here.

John
