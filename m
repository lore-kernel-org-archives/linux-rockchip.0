From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v6 20/22] usb: dwc2: host: Properly set even/odd frame
Date: Wed, 03 Feb 2016 15:47:31 +0800
Message-ID: <56B1B093.1020300@rock-chips.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org> <1454034013-24657-21-git-send-email-dianders@chromium.org> <56B05EBF.9090804@rock-chips.com> <CAD=FV=Udm3teg+K62B9TE+b+5HNHSSU0CaVSA57Lau+xZqwdcw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAD=FV=Udm3teg+K62B9TE+b+5HNHSSU0CaVSA57Lau+xZqwdcw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Doug,

Thanks for your detail debug information, pls add my Reviewed-by for 
this patch.

Thanks,
- Kever
On 02/03/2016 06:47 AM, Doug Anderson wrote:
> Kever,
>
> On Mon, Feb 1, 2016 at 11:46 PM, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>> Doug,
>>
>>
>> On 01/29/2016 10:20 AM, Douglas Anderson wrote:
>>> When setting up ISO and INT transfers dwc2 needs to specify whether the
>>> transfer is for an even or an odd frame (or microframe if the controller
>>> is running in high speed mode).
>>>
>>> The controller appears to use this as a simple way to figure out if a
>>> transfer should happen right away (in the current microframe) or should
>>> happen at the start of the next microframe.  Said another way:
>>>
>>> - If you set "odd" and the current frame number is odd it appears that
>>>     the controller will try to transfer right away.  Same thing if you set
>>>     "even" and the current frame number is even.
>>> - If the oddness you set and the oddness of the frame number are
>>>     _different_, the transfer will be delayed until the frame number
>>>     changes.
>>>
>>> As I understand it, the above technique allows you to plan ahead of time
>>> where possible by always working on the next frame.  ...but it still
>>> allows you to properly respond immediately to things that happened in
>>> the previous frame.
>>>
>>> The old dwc2_hc_set_even_odd_frame() didn't really handle this concept.
>>> It always looked at the frame number and setup the transfer to happen in
>>> the next frame.  In some cases that meant that certain transactions
>>> would be transferred in the wrong frame.
>>>
>>> We'll try our best to set the even / odd to do the transfer in the
>>> scheduled frame.  If that fails then we'll do an ugly "schedule ASAP".
>>> We'll also modify the scheduler code to handle this and not try to
>>> schedule a second transfer for the same frame.
>>>
>>> Note that this change relies on the work to redo the microframe
>>> scheduler.  It can work atop ("usb: dwc2: host: Manage frame nums better
>>> in scheduler") but it works even better after ("usb: dwc2: host: Totally
>>> redo the microframe scheduler").
>>>
>>> With this change my stressful USB test (USB webcam + USB audio +
>>> keyboards) has less audio crackling than before.
>> Seems this really help for your case?
> Yes, I believe it does.  Of course my test case is pretty "black box"
> for the most part in that I play music on youtube while having a
> webcam open and several USB input devices connected.  I then try to
> decide whether I hear more static or less static.  ...clearly a less
> subjective test would be better...
>
> * I tried with http://crosreview.com/325451 (see below) and I hear
> more static with "use_old = true" than with "use_old = "false".
>
> * I tried with this entire patch reverted and I hear about the same
> static as with "use_old = true".
>
> Note that counting reported MISS lines from my logging also shows that
> the new code is better...
>
>
>> Do you check if the transfer can happen right in the current frame? I know
>> it's
>> quite difficult to check it, but this changes what I know for the dwc core
>> schedule the transaction.
> Yes.  I just tried again, too.  I coded up
> <https://chromium-review.googlesource.com/325451> and included it.  I
> then opened up a USB webcam.
>
> With things set to the old way:
>
>    115.355370  QH=dc6ba8c0 next(0) fn=10cb, sch=10ca=>10cb (+1) miss=0
>    115.355373  QH=dc6ba8c0 IMM ready fn=10cb, nxt=10cb
>    115.355518  QH=dc6ba8c0 next(0) fn=10cc, sch=10cb=>10cc (+1) miss=0
>    115.355522  QH=dc6ba8c0 IMM ready fn=10cc, nxt=10cc
>    115.355637  QH=dc6ba8c0 next(0) fn=10cd, sch=10cc=>10cd (+1) miss=0
>    115.355641  QH=dc6ba8c0 IMM ready fn=10cd, nxt=10cd
>    115.355857  QH=dc6ba8c0 next(0) fn=10ce, sch=10cd=>10ce (+1) miss=0
>    115.355859  QH=dc6ba8c0 IMM ready fn=10ce, nxt=10ce
>    115.355867  QH=dc6ba8c0, wire=10cf, old_wire=10d0, EO diff (use OLD)
>    115.355870  QH=dc6ba8c0 EO MISS w/ old (10ce != 10cf)
>    115.356037  QH=dc6ba8c0 next(0) fn=10d0, sch=10cf=>10d0 (+1) miss=1 MISS
>    115.356039  QH=dc6ba8c0 IMM ready fn=10d0, nxt=10d0
>    115.356169  QH=dc6ba8c0 next(0) fn=10d1, sch=10d0=>10d1 (+1) miss=0
>    115.356170  QH=dc6ba8c0 IMM ready fn=10d1, nxt=10d1
>    115.356269  QH=dc6ba8c0 next(0) fn=10d2, sch=10d1=>10d2 (+1) miss=0
>    115.356273  QH=dc6ba8c0 IMM ready fn=10d2, nxt=10d2
>    115.356404  QH=dc6ba8c0 next(0) fn=10d3, sch=10d2=>10d3 (+1) miss=0
>    115.356407  QH=dc6ba8c0 IMM ready fn=10d3, nxt=10d3
>
> With the new way:
>
>     87.814741  QH=e2fd7880 next(0) fn=32e4, sch=32e3=>32e4 (+1) miss=0
>     87.814744  QH=e2fd7880 IMM ready fn=32e4, nxt=32e4
>     87.814858  QH=e2fd7880 next(0) fn=32e5, sch=32e4=>32e5 (+1) miss=0
>     87.814862  QH=e2fd7880 IMM ready fn=32e5, nxt=32e5
>     87.815010  QH=e2fd7880 next(0) fn=32e6, sch=32e5=>32e6 (+1) miss=0
>     87.815012  QH=e2fd7880 IMM ready fn=32e6, nxt=32e6
>     87.815220  QH=e2fd7880 next(0) fn=32e8, sch=32e6=>32e7 (+1) miss=0
>     87.815222  QH=e2fd7880 IMM ready fn=32e8, nxt=32e7
>     87.815230  QH=e2fd7880, wire=32e8, old_wire=32e9, EO diff (use NEW)
>     87.815278  QH=e2fd7880 next(0) fn=32e8, sch=32e7=>32e8 (+1) miss=0
>     87.815280  QH=e2fd7880 IMM ready fn=32e8, nxt=32e8
>     87.815390  QH=e2fd7880 next(0) fn=32e9, sch=32e8=>32e9 (+1) miss=0
>     87.815391  QH=e2fd7880 IMM ready fn=32e9, nxt=32e9
>     87.815491  QH=e2fd7880 next(0) fn=32ea, sch=32e9=>32ea (+1) miss=0
>     87.815493  QH=e2fd7880 IMM ready fn=32ea, nxt=32ea
>     87.815635  QH=e2fd7880 next(0) fn=32eb, sch=32ea=>32eb (+1) miss=0
>     87.815638  QH=e2fd7880 IMM ready fn=32eb, nxt=32eb
>
>
> Note that with my TEST-ONLY patch the old way is still _slightly_
> different in that I still communicate back to the scheduler with:
>
>    chan->qh->next_active_frame = now_frame;
>
> The old code didn't used to do that.  If I don't do that then you
> you'll just stay in an inconsistent state for a while where things are
> going on the wire 1 frame later than we think they are.
>
>
> Also note that above you can see that the new way is indeed able to
> schedule things in the current microframe.  Looking one line at a
> time:
>
>
>     87.815012  QH=e2fd7880 IMM ready fn=32e6, nxt=32e6
>
> QH e2fd7880 is going straight to the ready queue.  Actual frame number
> in hardware is 32e6.  next_active_frame = 32e6 which means we ideally
> want to give it to hardware in 32e6 and wire frame is 32e7.
>
>
>     87.815220  QH=e2fd7880 next(0) fn=32e8, sch=32e6=>32e7 (+1) miss=0
>     87.815222  QH=e2fd7880 IMM ready fn=32e8, nxt=32e7
>
> Frame number in hardware is now 32e8.  We'd like to give the next
> transfer to hardware in 32e7 to transfer on the wire at 32e8, but
> that's obviously impossible.  We will try to give it right away.
>
>
>     87.815230  QH=e2fd7880, wire=32e8, old_wire=32e9, EO diff (use NEW)
>
> Showing a difference in the old way.  We'll choose "even" to have the
> packet go on the wire (expecting 32e8).
>
>
>     87.815278  QH=e2fd7880 next(0) fn=32e8, sch=32e7=>32e8 (+1) miss=0
>     87.815280  QH=e2fd7880 IMM ready fn=32e8, nxt=32e8
>
> We got a response back and are ready to schedule the next transfer and
> it's still 32e8!  That means that transfer must have happened (as
> expected) in 32e8.  Whew!  Give the next transfer to hardware hoping
> for 32e9 wire.
>
>
>     87.815390  QH=e2fd7880 next(0) fn=32e9, sch=32e8=>32e9 (+1) miss=0
>
> Now at hardware 32e9 and ready to schedule the next...
>
>
>
>> In dwc_otgbook, Interrupt OUT Transactions(also similar for Int IN, Iso
>> IN/OUT)
>> in DMA Mode, the normal Interrupt OUT operation says:
>> The DWC_otg host attempts to send out the OUT token in the beginning of next
>> odd frame/microframe.
>>
>> So I'm confuse about if the dwc core can do the transaction at the same
>> frame
>> of host channel initialized or not.
> The docbook is obviously way too terse here, but the above experiment
> shows that the hardware is designed in the only sane way that it could
> be designed.
>
> Why do I say that this is the only sane way for the hardware to work?
> I think all the following is true (please correct any errors):
>
> A) HW only lets you specify even/odd which means you choose between
> two frame to send the packet.  Two possible ways HW could be
> implemented: "sane" way means you can send a packet in frame "x" and
> "x + 1".  "insane" way means you can send a packet in frame "x + 1"
> and "x + 2" but not frame "x"
>
> B) In some cases (especially with regards to SPLIT transfers), we need
> to use the result of a transfer in uFrame "x" to decide what to do
> about uFrame "x + 1".  Specifically for IN transfers I think we can't
> know for sure whether we'll get back all of our data in uFrame "x" or
> whether we'll only get part of the data and need uFrame "x + 1".
>
> C) It's possible to schedule 100us worth of periodic transfers in one
> 125us uFrame.
>
> D) We can't know the result of a transfer until that transfer is done.
>
>
> So above basically means that we might have a periodic transfer where
> we get the result of the transfer 100us into a uFrame.  We've now got
> to quickly queue up the transfer for the next uFrame.  If hardware was
> designed in the "insane" way then we'd need an interrupt latency of <
> 25 us since once the frame ticked we'd no longer be able to schedule.
> If hardware was designed in the "sane" way then we'd "only" need an
> interrupt latency of 125 us since we could continue to schedule even
> partway through the current frame.
>
> Also note that if there's any chance that a periodic transfer ends
> later than 100 us into a frame (like if a non-periodic transfer snuck
> in there because we were out of periodic channels) then the above
> problem becomes even more extreme.
>
>
>
> -Doug
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
