From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 2/2] usb: dwc2: host: Clear interrupts before handling them
Date: Mon, 16 Nov 2015 09:22:09 -0800
Message-ID: <CAD=FV=W-UWJnHZioChnVmPmJQXxMGGOUQiF81h0ZTA4invivVA@mail.gmail.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
	<1446582629-30091-2-git-send-email-dianders@chromium.org>
	<87wpthnc2e.fsf@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87wpthnc2e.fsf-HgARHv6XitJaoMGHk7MhZQC/G2K4zDHf@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Cc: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Felipe,

On Mon, Nov 16, 2015 at 8:28 AM, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org> wrote:
>
> Hi,
>
> Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>> In general it is wise to clear interrupts before processing them.  If
>> you don't do that, you can get:
>>  1. Interrupt happens
>>  2. You look at system state and process interrupt
>>  3. A new interrupt happens
>>  4. You clear interrupt without processing it.
>>
>> This patch was actually a first attempt to fix missing device insertions
>> as described in (usb: dwc2: host: Fix missing device insertions) and it
>> did solve some of the signal bouncing problems but not all of
>> them (which is why I submitted the other patch).  Specifically, this
>> patch itself would sometimes change:
>>  1. hardware sees connect
>>  2. hardware sees disconnect
>>  3. hardware sees connect
>>  4. dwc2_port_intr() - clears connect interrupt
>>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>>
>> ...to:
>>  1. hardware sees connect
>>  2. hardware sees disconnect
>>  3. dwc2_port_intr() - clears connect interrupt
>>  4. hardware sees connect
>>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>>
>> ...but with different timing then sometimes we'd still miss cable
>> insertions.
>>
>> In any case, though this patch doesn't fix any (known) problems, it
>> still seems wise as a general policy to clear interrupt before handling
>> them.
>>
>> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> ---
>> Changes in v2: None
>>
>>  drivers/usb/dwc2/core_intr.c | 55 ++++++++++++++++++++++----------------------
>>  drivers/usb/dwc2/hcd_intr.c  | 16 ++++++-------
>>  2 files changed, 35 insertions(+), 36 deletions(-)
>>
>> diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
>> index 61601d16e233..2a166b7eec41 100644
>> --- a/drivers/usb/dwc2/core_intr.c
>> +++ b/drivers/usb/dwc2/core_intr.c
>> @@ -80,15 +80,16 @@ static const char *dwc2_op_state_str(struct dwc2_hsotg *hsotg)
>>   */
>>  static void dwc2_handle_usb_port_intr(struct dwc2_hsotg *hsotg)
>>  {
>> -     u32 hprt0 = dwc2_readl(hsotg->regs + HPRT0);
>> +     u32 hprt0;
>>
>> +     /* Clear interrupt */
>> +     dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);
>> +
>> +     hprt0 = dwc2_readl(hsotg->regs + HPRT0);
>>       if (hprt0 & HPRT0_ENACHG) {
>>               hprt0 &= ~HPRT0_ENA;
>>               dwc2_writel(hprt0, hsotg->regs + HPRT0);
>>       }
>> -
>> -     /* Clear interrupt */
>> -     dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);
>
> isn't this a regression ? You're first clearing the interrupts and only
> then reading to check what's pending, however, what's pending has just
> been cleared. Seems like this should be:
>
> hprt0 = dwc2_readl(HPRT0);
> dwc2_writeal(PRTINT, GINTSTS);

Actually, we could probably remove the setting of GINTSTS_PRTINT
completely.  The docs I have say that the GINTSTS_PRTINT is read only
and that:

> The core sets this bit to indicate a change in port status of one of the
> DWC_otg core ports in Host mode. The application must read the
> Host Port Control and Status (HPRT) register to determine the exact
> event that caused this interrupt. The application must clear the
> appropriate status bit in the Host Port Control and Status register to
> clear this bit.

...so writing PRTINT is probably useless, but John can confirm.

...if it wasn't useless to clear PRTINT it would depend on how things
were implemented.  One (purely speculative) case where my patch would
be more correct:

1. Interrupt source 1 in HPRT fires.  PRTINT is latched to 1 and
interrupt handler is called.
2. Read HPRT
3. Interrupt source 2 in HPRT fires.  PRTINT is already 1, so no new
interrupt handler called.
4. Clear PRTINT
5. Handle interrupt source 1

...now we'll never get an interrupt for interrupt source 2.


In any case, I think this particular change is a no-op, but other
changes in this patch (probably) aren't.


> Also, these two patches look very large for the -rc. I'll move them to
> v4.5 merge window unless you can convince me that they are, indeed, the
> smallest change possible to fix the problem you're facing and that they
> are, indeed, regressions.

Patch #2 should definitely _not_ go into the RC.  It is a relatively
intrusive patch, fixes no known issues, and has only had light
testing.  I haven't even landed this change locally in ChromeOS since
it's a bit scary to me I haven't found any good use for it.  I do keep
testing with it to see if it fixes any of my issues, though.  ;)


I'd like to see patch #1 should go into the RC since it fixes problems
that are really easy to reproduce.  IMHO It's also neither big nor
scary.  FWIW it's already landed in the ChromeOS tree as of Oct 20th
(almost a month).  While it hasn't hit stable channel yet, it's been
on beta channel and nobody has discovered any issues with it yet.


Thanks!  :)

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
