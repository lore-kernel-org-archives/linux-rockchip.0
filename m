From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v6 18/22] usb: dwc2: host: Schedule periodic right away
 if it's time
Date: Mon, 01 Feb 2016 11:32:06 +0800
Message-ID: <56AED1B6.7020409@rock-chips.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>	<1454034013-24657-19-git-send-email-dianders@chromium.org>	<56ADD580.1070505@rock-chips.com> <CAD=FV=XUjAbSQhr9LtPG=5ycPbv6UBsA0rvfrPd25EndnjxRrw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=XUjAbSQhr9LtPG=5ycPbv6UBsA0rvfrPd25EndnjxRrw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>, Tao Huang <huangtao@rock-chips.com>, Stefan Wahren <stefan.wahren@i2se.com>, =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ming Lei <ming.lei@canonical.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Alan Stern <stern@rowland.harvard.edu>, linux-rpi-kernel@lists.infradead.org, "Herrero, Gregory" <gregory.herrero@intel.com>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu@rock-chips.com>, Julius Werner <jwerner@chromium.org>, Dinh Nguyen <dinguyen@opensource.altera.com>
List-Id: linux-rockchip.vger.kernel.org

Doug,

On 02/01/2016 06:09 AM, Doug Anderson wrote:
> Kever,
>
> On Sun, Jan 31, 2016 at 1:36 AM, Kever Yang <kever.yang@rock-chips.com> wrote:
>> Doug,
>>
>>
>> On 01/29/2016 10:20 AM, Douglas Anderson wrote:
>>> In dwc2_hcd_qh_deactivate() we will put some things on the
>>> periodic_sched_ready list.  These things won't be taken off the ready
>>> list until the next SOF, which might be a little late.  Let's put them
>>> on right away.
>>>
>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>> Tested-by: Heiko Stuebner <heiko@sntech.de>
>>> Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
>>> ---
>>> Changes in v6:
>>> - Add Heiko's Tested-by.
>>> - Add Stefan's Tested-by.
>>>
>>> Changes in v5: None
>>> Changes in v4:
>>> - Schedule periodic right away if it's time new for v4.
>>>
>>> Changes in v3: None
>>> Changes in v2: None
>>>
>>>    drivers/usb/dwc2/hcd_queue.c | 18 ++++++++++++++++--
>>>    1 file changed, 16 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/usb/dwc2/hcd_queue.c b/drivers/usb/dwc2/hcd_queue.c
>>> index 9b3c435339ee..3abb34a5fc5b 100644
>>> --- a/drivers/usb/dwc2/hcd_queue.c
>>> +++ b/drivers/usb/dwc2/hcd_queue.c
>>> @@ -1080,12 +1080,26 @@ void dwc2_hcd_qh_deactivate(struct dwc2_hsotg
>>> *hsotg, struct dwc2_qh *qh,
>>>           * Note: we purposely use the frame_number from the "hsotg"
>>> structure
>>>           * since we know SOF interrupt will handle future frames.
>>>           */
>>> -       if (dwc2_frame_num_le(qh->next_active_frame, hsotg->frame_number))
>>> +       if (dwc2_frame_num_le(qh->next_active_frame, hsotg->frame_number))
>>> {
>>> +               enum dwc2_transaction_type tr_type;
>>> +
>>> +               /*
>>> +                * We're bypassing the SOF handler which is normally what
>>> puts
>>> +                * us on the ready list because we're in a hurry and need
>>> to
>>> +                * try to catch up.
>>> +                */
>>> +               dwc2_sch_vdbg(hsotg, "QH=%p IMM ready fn=%04x,
>>> nxt=%04x\n",
>>> +                             qh, frame_number, qh->next_active_frame);
>>>                  list_move_tail(&qh->qh_list_entry,
>>>                                 &hsotg->periodic_sched_ready);
>>> -       else
>>> +
>>> +               tr_type = dwc2_hcd_select_transactions(hsotg);
>> Do we need to add select_transactions call here? If we get into this
>> function in interrupt
>> and once we put the qh in ready queue, the qh can be handled in this frame
>> again by the
>> later function call of dwc_hcd_select_transactions, so what we need to to
>> here is put
>> it in ready list instead of inactive queue, and wait for the schedule.
> I'm not sure I understand.  Can you restate?
>
>
> I'll try to explain more in the meantime...
>
> Both before and after my change, this function would place something
> on the ready queue if the next_active_frame <= the frame number as of
> last SOF interrupt (aka hsotg->frame_number).  Otherwise it goes on
> the inactive queue.  Assuming that the previous change ("usb: dwc2:
> host: Manage frame nums better in scheduler") worked properly then
> next_active_frame shouldn't be less than (hsotg->frame_number - 1).
> Remember that next_active_frame is always 1 before the wire frame, so
> if "next_active_frame == hsotg->frame_number - 1" it means that we
> need to get the transfer on the wire _right away_.  If
> "next_active_frame == hsotg->frame_number" the transfer doesn't need
> to go on the wire right away, but since dwc2 can be prepped one frame
> in advance it doesn't hurt to give it to the hardware right away if
> there's space.
>
> As I understand it, if we stick something on the ready queue it won't
> generally get looked at until the next SOF interrupt.  That means
> we'll be too late if "next_active_frame == hsotg->frame_number - 1"
> and we'll possibly be too late (depending on interrupt latency) if
> "next_active_frame == hsotg->frame_number"
>
I understand this patch and agree with your point of schedule the
periodic right away instead of at least next frame.
My point is, there are only two call to dwc2_hcd_qh_deactivate(), from
dwc2_hcd_urb_dequeue() and dwc2_release_channel(), we don't need
to do the schedule for dequeue, and there is one
dwc2_hcd_select_transactions() call at the end of dwc2_release_channel(),
maybe we don't need another dwc2_hcd_select_transactions() here.

I think the duration from this point to the function call of 
dwc2_hcd_select_transactions()
in dwc2_release_channel() will be the main factor for us to decide if
we need to add a function call of  dwc2_hcd_select_transactions() here.

Thanks,
- Kever
> Note that before my series, there were more places than just the SOF
> interrupt that would update hsotg->frame_number (see "usb: dwc2: host:
> Manage frame nums better in scheduler" for fix).  Also before my
> series (specially "usb: dwc2: host: Manage frame nums better in
> scheduler") we used the actual current frame number when doing
> comparisons.  Also before my series (specifically "usb: dwc2: host:
> Properly set even/odd frame") we didn't really place things in the
> frame that they were scheduled in anyway.
>
>
> Also note that I believe that when dwc2_hcd_qh_deactivate() is called
> our spinlock is held which means that the SOF interrupt either ran
> before our function or won't run till after it.
>
>>> +               if (tr_type != DWC2_TRANSACTION_NONE)
>>> +                       dwc2_hcd_queue_transactions(hsotg, tr_type);
>>> +       } else {
>>>                  list_move_tail(&qh->qh_list_entry,
>>>                                 &hsotg->periodic_sched_inactive);
>>> +       }
>>>    }
>>>      /**
>>
>>
