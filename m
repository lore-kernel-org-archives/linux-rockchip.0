From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v6 18/22] usb: dwc2: host: Schedule periodic right away if
 it's time
Date: Sun, 31 Jan 2016 20:36:05 -0800
Message-ID: <CAD=FV=XJgmXm255=cmtqpVM0iJeWCzC5O8BtE2XY4y5Txvk+gg@mail.gmail.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
	<1454034013-24657-19-git-send-email-dianders@chromium.org>
	<56ADD580.1070505@rock-chips.com>
	<CAD=FV=XUjAbSQhr9LtPG=5ycPbv6UBsA0rvfrPd25EndnjxRrw@mail.gmail.com>
	<56AED1B6.7020409@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <56AED1B6.7020409-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Kever,

On Sun, Jan 31, 2016 at 7:32 PM, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Doug,
>
>
> On 02/01/2016 06:09 AM, Doug Anderson wrote:
>>
>> Kever,
>>
>> On Sun, Jan 31, 2016 at 1:36 AM, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> wrote:
>>>
>>> Doug,
>>>
>>>
>>> On 01/29/2016 10:20 AM, Douglas Anderson wrote:
>>>>
>>>> In dwc2_hcd_qh_deactivate() we will put some things on the
>>>> periodic_sched_ready list.  These things won't be taken off the ready
>>>> list until the next SOF, which might be a little late.  Let's put them
>>>> on right away.
>>>>
>>>> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>>> Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>>>> Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
>>>> ---
>>>> Changes in v6:
>>>> - Add Heiko's Tested-by.
>>>> - Add Stefan's Tested-by.
>>>>
>>>> Changes in v5: None
>>>> Changes in v4:
>>>> - Schedule periodic right away if it's time new for v4.
>>>>
>>>> Changes in v3: None
>>>> Changes in v2: None
>>>>
>>>>    drivers/usb/dwc2/hcd_queue.c | 18 ++++++++++++++++--
>>>>    1 file changed, 16 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
>>>> index 9b3c435339ee..3abb34a5fc5b 100644
>>>> --- a/drivers/usb/dwc2/hcd_queue.c
>>>> +++ b/drivers/usb/dwc2/hcd_queue.c
>>>> @@ -1080,12 +1080,26 @@ void dwc2_hcd_qh_deactivate(struct dwc2_hsotg
>>>> *hsotg, struct dwc2_qh *qh,
>>>>           * Note: we purposely use the frame_number from the "hsotg"
>>>> structure
>>>>           * since we know SOF interrupt will handle future frames.
>>>>           */
>>>> -       if (dwc2_frame_num_le(qh->next_active_frame,
>>>> hsotg->frame_number))
>>>> +       if (dwc2_frame_num_le(qh->next_active_frame,
>>>> hsotg->frame_number))
>>>> {
>>>> +               enum dwc2_transaction_type tr_type;
>>>> +
>>>> +               /*
>>>> +                * We're bypassing the SOF handler which is normally
>>>> what
>>>> puts
>>>> +                * us on the ready list because we're in a hurry and
>>>> need
>>>> to
>>>> +                * try to catch up.
>>>> +                */
>>>> +               dwc2_sch_vdbg(hsotg, "QH=%p IMM ready fn=%04x,
>>>> nxt=%04x\n",
>>>> +                             qh, frame_number, qh->next_active_frame);
>>>>                  list_move_tail(&qh->qh_list_entry,
>>>>                                 &hsotg->periodic_sched_ready);
>>>> -       else
>>>> +
>>>> +               tr_type = dwc2_hcd_select_transactions(hsotg);
>>>
>>> Do we need to add select_transactions call here? If we get into this
>>> function in interrupt
>>> and once we put the qh in ready queue, the qh can be handled in this
>>> frame
>>> again by the
>>> later function call of dwc_hcd_select_transactions, so what we need to to
>>> here is put
>>> it in ready list instead of inactive queue, and wait for the schedule.
>>
>> I'm not sure I understand.  Can you restate?
>>
>>
>> I'll try to explain more in the meantime...
>>
>> Both before and after my change, this function would place something
>> on the ready queue if the next_active_frame <= the frame number as of
>> last SOF interrupt (aka hsotg->frame_number).  Otherwise it goes on
>> the inactive queue.  Assuming that the previous change ("usb: dwc2:
>> host: Manage frame nums better in scheduler") worked properly then
>> next_active_frame shouldn't be less than (hsotg->frame_number - 1).
>> Remember that next_active_frame is always 1 before the wire frame, so
>> if "next_active_frame == hsotg->frame_number - 1" it means that we
>> need to get the transfer on the wire _right away_.  If
>> "next_active_frame == hsotg->frame_number" the transfer doesn't need
>> to go on the wire right away, but since dwc2 can be prepped one frame
>> in advance it doesn't hurt to give it to the hardware right away if
>> there's space.
>>
>> As I understand it, if we stick something on the ready queue it won't
>> generally get looked at until the next SOF interrupt.  That means
>> we'll be too late if "next_active_frame == hsotg->frame_number - 1"
>> and we'll possibly be too late (depending on interrupt latency) if
>> "next_active_frame == hsotg->frame_number"
>>
> I understand this patch and agree with your point of schedule the
> periodic right away instead of at least next frame.
> My point is, there are only two call to dwc2_hcd_qh_deactivate(), from
> dwc2_hcd_urb_dequeue() and dwc2_release_channel(), we don't need
> to do the schedule for dequeue, and there is one
> dwc2_hcd_select_transactions() call at the end of dwc2_release_channel(),
> maybe we don't need another dwc2_hcd_select_transactions() here.
>
> I think the duration from this point to the function call of
> dwc2_hcd_select_transactions()
> in dwc2_release_channel() will be the main factor for us to decide if
> we need to add a function call of  dwc2_hcd_select_transactions() here.

Oh, now I get what you're saying!

A) You've got dwc2_release_channel() -> dwc2_deactivate_qh() ->
dwc2_hcd_qh_deactivate()
...and always in that case we'll do a select / queue, so we don't need it there.

B) You've got dwc2_hcd_urb_dequeue() -> dwc2_hcd_qh_deactivate()

...but why don't we need it for dwc2_hcd_urb_dequeue()?  Yes, you're
not continuing a split so timing isn't quite as urgent, but you still
might have an INT or ISOC packet that's scheduled with an interval of
1.  We still might want to schedule right away if there are remaining
QTDs, right?

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
