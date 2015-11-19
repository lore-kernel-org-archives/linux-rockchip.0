From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v3 6/8] usb: dwc2: host: Assume all devices are on one
 single_tt hub
Date: Thu, 19 Nov 2015 08:27:03 -0800
Message-ID: <CAD=FV=UW-AbY9GnYOS_2V=dZTkL6NiZsO4urpf==qjcRDaEMDA@mail.gmail.com>
References: <1447721484-22548-1-git-send-email-dianders@chromium.org>
	<1447721484-22548-7-git-send-email-dianders@chromium.org>
	<87lh9uf1fw.fsf@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87lh9uf1fw.fsf-HgARHv6XitJaoMGHk7MhZQC/G2K4zDHf@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Cc: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Felipe,

On Thu, Nov 19, 2015 at 7:34 AM, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org> wrote:
>
> Hi,
>
> Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>> Until we have logic to determine which devices share the same TT let's
>> add logic to assume that all devices on a given dwc2 controller are on
>> one single_tt hub.  This is better than the previous code that assumed
>> that all devices were on one multi_tt hub, since single_tt hubs
>> appear (in my experience) to be much more common and any schedule that
>> would work on a single_tt hub will also work on a multi_tt hub.  This
>> will prevent more than 8 total low/full speed devices to be on the bus
>> at one time, but that's a reasonable restriction until we've made things
>> smarter.
>>
>> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> ---
>> Changes in v3:
>> - Assuming single_tt is new for v3; not terribly well tested (yet).
>>
>> Changes in v2: None
>>
>>  drivers/usb/dwc2/core.h      |  1 +
>>  drivers/usb/dwc2/hcd_queue.c | 40 +++++++++++++++++++++++++++++++++++++++-
>>  2 files changed, 40 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
>> index 567ee2c9e69f..09aa2b5ae29e 100644
>> --- a/drivers/usb/dwc2/core.h
>> +++ b/drivers/usb/dwc2/core.h
>> @@ -782,6 +782,7 @@ struct dwc2_hsotg {
>>       u16 periodic_usecs;
>>       unsigned long periodic_bitmap[DIV_ROUND_UP(TOTAL_PERIODIC_USEC,
>>                                                  BITS_PER_LONG)];
>> +     bool has_split[8];
>
> why don't you use a u8 instead then just set each bit for each
> "has_split" you need to take care of. This array is kinda ugly.

Let's actually drop this patch completely.  Julius and I sat down and
he talked me through things, and with my current understanding the
current microframe scheduler in dwc2 is broken enough that small
little band-aids like this will do little more than just push the
problems around.

I'm a good portion of the way through a better microframe scheduler.
I have no doubt that it won't be perfect, but hopefully it will at
least be based in reality...

My latest thinking on the patches in this series:

1. usb: dwc2: rockchip: Make the max_transfer_size automatic

I'll probably separate this out into its own patch so I can stop
sending it as part of this series.  ...or if someone wanted to land it
then I won't bother.


2. usb: dwc2: host: Get aligned DMA in a more supported way

Still can land any time and has good benefits.  I believe that I can't
separate this because it will cause conflicts with scheduler patches.


3. usb: dwc2: host: Add scheduler tracing

Would be nice to land.


4. usb: dwc2: host: Rewrite the microframe scheduler
5. usb: dwc2: host: Keep track of and use our scheduled microframe
6. usb: dwc2: host: Assume all devices are on one single_tt hub

Please drop patches 4-6 right now.


7. usb: dwc2: host: Add a delay before releasing periodic bandwidth
8. usb: dwc2: host: Giveback URB in tasklet context

I'll probably move these back up in the series (like in v2) and put
microframe rewrite atop them.  With my current understanding the
scheduling is so broken today that the concerns Alan brought up can
wait until we have a proper scheduler to be addressed.  In the
meantime getting the huge boost in interrupt speed will help with
dwc2's correctness (and performance) because it means we're much less
likely to miss SOF interrupts.

If anyone has any review time, giving a review to v2 of these patches
would be helpful.  Otherwise I'll double check that v2 still looks
good with my current understanding and eventually post them again.

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
