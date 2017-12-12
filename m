From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 1/2] usb: dwc2: host: Don't retry NAKed transactions
 right away
Date: Tue, 12 Dec 2017 10:31:13 -0800
Message-ID: <CAD=FV=X5_ps5WWmOhXxp+5-0EqbHjA4QCb1fH8GbdHn7xPpCzA@mail.gmail.com>
References: <20171030170802.14489-1-dianders@chromium.org> <87mv2onr3a.fsf@linux.intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <87mv2onr3a.fsf@linux.intel.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Felipe Balbi <balbi@kernel.org>
Cc: John Youn <johnyoun@synopsys.com>, Stefan Wahren <stefan.wahren@i2se.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Johan Hovold <johan@kernel.org>, Eric Anholt <eric@anholt.net>, Matthias Kaehlcke <mka@chromium.org>, John Stultz <john.stultz@linaro.org>, linux-rpi-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, stable@vger.kernel.org, linux-usb@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Dec 12, 2017 at 3:06 AM, Felipe Balbi <balbi@kernel.org> wrote:
>
> Hi,
>
> Douglas Anderson <dianders@chromium.org> writes:
>> On rk3288-veyron devices on Chrome OS it was found that plugging in an
>> Arduino-based USB device could cause the system to lockup, especially
>> if the CPU Frequency was at one of the slower operating points (like
>> 100 MHz / 200 MHz).
>>
>> Upon tracing, I found that the following was happening:
>> * The USB device (full speed) was connected to a high speed hub and
>>   then to the rk3288.  Thus, we were dealing with split transactions,
>>   which is all handled in software on dwc2.
>> * Userspace was initiating a BULK IN transfer
>> * When we sent the SSPLIT (to start the split transaction), we got an
>>   ACK.  Good.  Then we issued the CSPLIT.
>> * When we sent the CSPLIT, we got back a NAK.  We immediately (from
>>   the interrupt handler) started to retry and sent another SSPLIT.
>> * The device kept NAKing our CSPLIT, so we kept ping-ponging between
>>   sending a SSPLIT and a CSPLIT, each time sending from the interrupt
>>   handler.
>> * The handling of the interrupts was (because of the low CPU speed and
>>   the inefficiency of the dwc2 interrupt handler) was actually taking
>>   _longer_ than it took the other side to send the ACK/NAK.  Thus we
>>   were _always_ in the USB interrupt routine.
>> * The fact that USB interrupts were always going off was preventing
>>   other things from happening in the system.  This included preventing
>>   the system from being able to transition to a higher CPU frequency.
>>
>> As I understand it, there is no requirement to retry super quickly
>> after a NAK, we just have to retry sometime in the future.  Thus one
>> solution to the above is to just add a delay between getting a NAK and
>> retrying the transmission.  If this delay is sufficiently long to get
>> out of the interrupt routine then the rest of the system will be able
>> to make forward progress.  Even a 25 us delay would probably be
>> enough, but we'll be extra conservative and try to delay 1 ms (the
>> exact amount depends on HZ and the accuracy of the jiffy and how close
>> the current jiffy is to ticking, but could be as much as 20 ms or as
>> little as 1 ms).
>>
>> Presumably adding a delay like this could impact the USB throughput,
>> so we only add the delay with repeated NAKs.
>>
>> NOTE: Upon further testing of a pl2303 serial adapter, I found that
>> this fix may help with problems there.  Specifically I found that the
>> pl2303 serial adapters tend to respond with a NAK when they have
>> nothing to say and thus we end with this same sequence.
>>
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
>> Cc: stable@vger.kernel.org
>> Reviewed-by: Julius Werner <jwerner@chromium.org>
>> Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
>
> This seems too big for -rc or -stable inclusion.

I've removed the stable tag at your request.  I originally added it at
your request in response to v2 of this patch.  I'd agree that it's a
pretty big patch and therefore "risky" to pick back to stable.  ...but
it does fix a bug reported by several people on the mailing lists, so
I'll leave it to your discretion.  Previously in relation to the
stable tag, I had mentioned:

   It's a little weird since it doesn't "fix" any specific
   commit, so I guess it will be up to stable folks to decide how far to
   go back.  The dwc2 devices I work with are actually on 3.14, but we
   have some pretty massive backports related to dwc2 there...

> In any case, this
> doesn't apply to my testing/next branch. Care to rebase and collect acks
> you received while doing that?

Sure, no problem.  I've posted v4 with John Youn's Ack.  The reason v3
didn't apply is that you've now got commit e99e88a9d2b0 ("treewide:
setup_timer() -> timer_setup()").  Originally my plan was to beat that
patch into the kernel and then I'd do the timer conversion myself.
That was patch #2 in the v3 series, AKA
<https://patchwork.kernel.org/patch/10032935/>.  ...but since I failed
to beat Kees' patch in, I've now squashed patches #1 and #2 together
and resolved the trivial conflict.

If anyone were thinking of trying to backport this patch to older
kernels (where they presumably don't have Kees's timer patch) they can
always use the v3 patch posted here as a reference for how to make
things work.  ;)


-Doug
