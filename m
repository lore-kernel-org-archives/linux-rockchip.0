From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v6 18/22] usb: dwc2: host: Schedule periodic right away if
 it's time
Date: Sun, 31 Jan 2016 14:09:47 -0800
Message-ID: <CAD=FV=XUjAbSQhr9LtPG=5ycPbv6UBsA0rvfrPd25EndnjxRrw@mail.gmail.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
	<1454034013-24657-19-git-send-email-dianders@chromium.org>
	<56ADD580.1070505@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <56ADD580.1070505-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Kever,

On Sun, Jan 31, 2016 at 1:36 AM, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Doug,
>
>
> On 01/29/2016 10:20 AM, Douglas Anderson wrote:
>>
>> In dwc2_hcd_qh_deactivate() we will put some things on the
>> periodic_sched_ready list.  These things won't be taken off the ready
>> list until the next SOF, which might be a little late.  Let's put them
>> on right away.
>>
>> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>> Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
>> ---
>> Changes in v6:
>> - Add Heiko's Tested-by.
>> - Add Stefan's Tested-by.
>>
>> Changes in v5: None
>> Changes in v4:
>> - Schedule periodic right away if it's time new for v4.
>>
>> Changes in v3: None
>> Changes in v2: None
>>
>>   drivers/usb/dwc2/hcd_queue.c | 18 ++++++++++++++++--
>>   1 file changed, 16 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
>> index 9b3c435339ee..3abb34a5fc5b 100644
>> --- a/drivers/usb/dwc2/hcd_queue.c
>> +++ b/drivers/usb/dwc2/hcd_queue.c
>> @@ -1080,12 +1080,26 @@ void dwc2_hcd_qh_deactivate(struct dwc2_hsotg
>> *hsotg, struct dwc2_qh *qh,
>>          * Note: we purposely use the frame_number from the "hsotg"
>> structure
>>          * since we know SOF interrupt will handle future frames.
>>          */
>> -       if (dwc2_frame_num_le(qh->next_active_frame, hsotg->frame_number))
>> +       if (dwc2_frame_num_le(qh->next_active_frame, hsotg->frame_number))
>> {
>> +               enum dwc2_transaction_type tr_type;
>> +
>> +               /*
>> +                * We're bypassing the SOF handler which is normally what
>> puts
>> +                * us on the ready list because we're in a hurry and need
>> to
>> +                * try to catch up.
>> +                */
>> +               dwc2_sch_vdbg(hsotg, "QH=%p IMM ready fn=%04x,
>> nxt=%04x\n",
>> +                             qh, frame_number, qh->next_active_frame);
>>                 list_move_tail(&qh->qh_list_entry,
>>                                &hsotg->periodic_sched_ready);
>> -       else
>> +
>> +               tr_type = dwc2_hcd_select_transactions(hsotg);
>
> Do we need to add select_transactions call here? If we get into this
> function in interrupt
> and once we put the qh in ready queue, the qh can be handled in this frame
> again by the
> later function call of dwc_hcd_select_transactions, so what we need to to
> here is put
> it in ready list instead of inactive queue, and wait for the schedule.

I'm not sure I understand.  Can you restate?


I'll try to explain more in the meantime...

Both before and after my change, this function would place something
on the ready queue if the next_active_frame <= the frame number as of
last SOF interrupt (aka hsotg->frame_number).  Otherwise it goes on
the inactive queue.  Assuming that the previous change ("usb: dwc2:
host: Manage frame nums better in scheduler") worked properly then
next_active_frame shouldn't be less than (hsotg->frame_number - 1).
Remember that next_active_frame is always 1 before the wire frame, so
if "next_active_frame == hsotg->frame_number - 1" it means that we
need to get the transfer on the wire _right away_.  If
"next_active_frame == hsotg->frame_number" the transfer doesn't need
to go on the wire right away, but since dwc2 can be prepped one frame
in advance it doesn't hurt to give it to the hardware right away if
there's space.

As I understand it, if we stick something on the ready queue it won't
generally get looked at until the next SOF interrupt.  That means
we'll be too late if "next_active_frame == hsotg->frame_number - 1"
and we'll possibly be too late (depending on interrupt latency) if
"next_active_frame == hsotg->frame_number"


Note that before my series, there were more places than just the SOF
interrupt that would update hsotg->frame_number (see "usb: dwc2: host:
Manage frame nums better in scheduler" for fix).  Also before my
series (specially "usb: dwc2: host: Manage frame nums better in
scheduler") we used the actual current frame number when doing
comparisons.  Also before my series (specifically "usb: dwc2: host:
Properly set even/odd frame") we didn't really place things in the
frame that they were scheduled in anyway.


Also note that I believe that when dwc2_hcd_qh_deactivate() is called
our spinlock is held which means that the SOF interrupt either ran
before our function or won't run till after it.

>
>> +               if (tr_type != DWC2_TRANSACTION_NONE)
>> +                       dwc2_hcd_queue_transactions(hsotg, tr_type);
>> +       } else {
>>                 list_move_tail(&qh->qh_list_entry,
>>                                &hsotg->periodic_sched_inactive);
>> +       }
>>   }
>>     /**
>
>
>
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
