From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 11:46:44 -0800
Message-ID: <CAD=FV=VmV8K=ytmy_1fviG-9mxyT3aoSyX7nOg2KKXT_05h_TA@mail.gmail.com>
References: <CAD=FV=XOO1XsHWSgqcvEAPAqhB2Ud5zcydc13k-pJ23L0rTW0Q@mail.gmail.com>
	<Pine.LNX.4.44L0.1511161425540.1938-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.1511161425540.1938-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Alan,

On Mon, Nov 16, 2015 at 11:31 AM, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org> wrote:
> On Mon, 16 Nov 2015, Doug Anderson wrote:
>
>> ---
>>
>> usb: dwc2: host: Fix missing device insertions
>>
>> If you've got your interrupt signals bouncing a bit as you insert your
>> USB device, you might end up in a state when the device is connected but
>> the driver doesn't know it.
>>
>> Specifically, the observed order is:
>>  1. hardware sees connect
>>  2. hardware sees disconnect
>>  3. hardware sees connect
>>  4. dwc2_port_intr() - clears connect interrupt
>>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>>
>> Now you'll be stuck with the cable plugged in and no further interrupts
>> coming in but the driver will think we're disconnected.
>>
>> We'll fix this by checking for the missing connect interrupt and
>> re-connecting after the disconnect is posted.  We don't skip the
>> disconnect because if there is a transitory disconnect we really want to
>> de-enumerate and re-enumerate.
>
> Why do you need to do anything special here?  Normally a driver's
> interrupt handler should query the hardware status after clearing the
> interrupt source.  That way no transitions ever get missed.
>
> In your example, at step 5 the dwc2 driver would check the port status
> and see that it currently is connected.  Therefore the driver would
> pass a "connect status changed" event to the USB core and set the port
> status to "connected".  No extra checking is needed, and transitory
> connects or disconnects get handled correctly.

Things are pretty ugly at the moment because the dwc2 interrupt
handler is split in two.  There's dwc2_handle_hcd_intr() and
dwc2_handle_common_intr().  Both are registered for the same "shared"
IRQ.  If I had to guess, I'd say that this is probably because someone
wanted to assign the ".irq" field in the "struct hc_driver" for the
host controller but that they also needed the other interrupt handler
to handle things shared between host and gadget mode.

In any case, one of these two interrupt routines handles connect and
the other disconnect.  That's pretty ugly but means that you can't
just rely on standard techniques for keeping things in sync.


It would probably be a pretty reasonable idea to try to clean that up
more, but that would be a very major and intrusive change.

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
