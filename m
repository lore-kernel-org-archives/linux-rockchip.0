From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v6 18/22] usb: dwc2: host: Schedule periodic right away if
 it's time
Date: Tue, 2 Feb 2016 15:28:28 -0800
Message-ID: <CAD=FV=XAxwTndCC4Y2tCKfVeEWRosyYaZDqHXa_v1rYa9F-f4A@mail.gmail.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
	<1454034013-24657-19-git-send-email-dianders@chromium.org>
	<56ADD580.1070505@rock-chips.com>
	<CAD=FV=XUjAbSQhr9LtPG=5ycPbv6UBsA0rvfrPd25EndnjxRrw@mail.gmail.com>
	<56AED1B6.7020409@rock-chips.com>
	<CAD=FV=XJgmXm255=cmtqpVM0iJeWCzC5O8BtE2XY4y5Txvk+gg@mail.gmail.com>
	<CAD=FV=UXoRB74yCePrNqC7gUJM=rnz484peAR=n3zOpCiJ2UFw@mail.gmail.com>
	<56B054FD.5090000@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <56B054FD.5090000-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Kever,

On Mon, Feb 1, 2016 at 11:04 PM, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>>> Oh, now I get what you're saying!
>>>
>>> A) You've got dwc2_release_channel() -> dwc2_deactivate_qh() ->
>>> dwc2_hcd_qh_deactivate()
>>> ...and always in that case we'll do a select / queue, so we don't need it
>>> there.
>>>
>>> B) You've got dwc2_hcd_urb_dequeue() -> dwc2_hcd_qh_deactivate()
>>>
>>> ...but why don't we need it for dwc2_hcd_urb_dequeue()?  Yes, you're
>>> not continuing a split so timing isn't quite as urgent, but you still
>>> might have an INT or ISOC packet that's scheduled with an interval of
>>> 1.  We still might want to schedule right away if there are remaining
>>> QTDs, right?
>>
>> I ran out of time to fully test today, but I couldn't actually get a
>> case where we needed to schedule right away for B).  ...so given your
>> point about the the select / queue already present in case A, we could
>> probably just drop this patch ("usb: dwc2: host: Schedule periodic
>> right away if it's time") and if we can find a case where it's needed
>> in case B we can add the select / queue there.
>>
>> Sound OK?  I'll try to do more testing tomorrow...
>
> Yes, we don't get a case we need to schedule right away for case B).
>
> For INT or ISOC packet, I can recall I have seen somewhere but I can find
> it now, the synchronous transfer is happen in the next uframe instead of the
> uframe
> when the host channel initialized, so there is no difference of setting the
> host channel register sooner or later inside the same frame.
> Which means the existent code should be OK for case A).
>
> We can drop this patch before we have the exact use case.

I put in some printouts and I finally did manage to find a place where
we needed to queue things up in dwc2_hcd_urb_dequeue().  I saw:

314.587916: QH=d9535340 next(0) fn=2a52, sch=2a51=>2a52 (+1) miss=0
314.588040: QH=d9535340 next(0) fn=2a53, sch=2a52=>2a53 (+1) miss=0
314.588162: QH=d9535340 next(0) fn=2a54, sch=2a53=>2a54 (+1) miss=0
314.588299: QH=d9535340 next(0) fn=2a55, sch=2a54=>2a55 (+1) miss=0
314.588304: QH=d9535340 queue in dwc2_hcd_urb_dequeue
314.588363: QH=d9535340 next(0) fn=2a55, sch=2a55=>2a56 (+1) miss=0
314.588413: dwc2_handle_hcd_intr: ff540000.usb: SCH: QH=e5cea380 ready
fn=2a56, nxt=2a56
314.588414: dwc2_handle_hcd_intr: ff540000.usb: SCH: QH=e73ccc40 ready
fn=2a56, nxt=2a56
314.588415: dwc2_handle_hcd_intr: ff540000.usb: SCH: QH=e5cea8c0 ready
fn=2a56, nxt=2a56

It's not something that's terribly common.  It's fine to just drop
this patch, or I can replace it with
<https://chromium-review.googlesource.com/325540>.

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
