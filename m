From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 10:44:28 -0800
Message-ID: <CAD=FV=XOO1XsHWSgqcvEAPAqhB2Ud5zcydc13k-pJ23L0rTW0Q@mail.gmail.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
	<87y4dxltzi.fsf@saruman.tx.rr.com>
	<CAD=FV=U7L-=C5rv+YTQV91kXpieRGA8MpAU+qaXzw_0xYUOXJw@mail.gmail.com>
	<87vb91ls89.fsf@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87vb91ls89.fsf-HgARHv6XitJaoMGHk7MhZQC/G2K4zDHf@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Cc: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Felipe,

On Mon, Nov 16, 2015 at 10:22 AM, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org> wrote:
>> I added "force" in v2 of the patch in response to John's feedback to
>> v1.  He pointed out that when you unload the module when you have a
>> device connected that my v1 patch would not properly disconnect the
>> device (or, rather, it would disconnect it and then reconnect it).
>>
>> That's why _dwc2_hcd_stop() calls dwc2_hcd_disconnect() with a force
>> of "true".
>
> There's no mention of this in commit log. It would be great to add a:
>
> "while at that, also make sure that we don't try to detect a device on
> module unload because of foo bar baz as pointed out by John Youn".
>
> Or something along these lines.

...well, except that it's not new behavior.  In other words:

* Without my patch at all: we don't try to detect a device on module unload.

* With my v1 patch: we (incorrectly) did try to detect a device on
module unload.

* With my v2 patch: we're back to not trying to detect a device on
module unload.

In other words: my v2 patch (correctly) doesn't change the behavior on
module unload.  That's why I didn't mention it in the commit message.
It's in the "v2" changelog though.


I'll try to come up with something for the commit message though.  See
below for new proposed commit message.


>>> you make no mention of why this is needed. This is basically a refactor,
>>> not a fix.
>>
>> This new function is called from two places now, isn't it?
>>
>> Basically this is a little bit of code that used to be directly in
>> dwc2_port_intr().  I still want it there, but I also want to call the
>> same bit of code after a disconnect if I detect that the device has
>> been inserted again.
>
> I got that :-) But it's not mentioned in commit and it's apparently
> unnecessary for fixing the bug :-) Another "we're also adding a new
> hsotg_disconnect() function by means of refactoring to avoid code
> duplication" would've been enough.

OK, sure.


>> I'd really rather not add the duplication unless you insist.  To me it
>> makes it clearer to include the (small) refactor in the same patch.
>>
>> If the refactor makes this change too big for an RC, then it's OK with
>> me to just skip this for the RC.  It's not fixing a regression or
>> anything.  I have no requirements to have this land in 4.4.  It fixes
>> a bug and I thought that the fix was pretty small and safe (despite
>> having a diffstat that's bigger than the bare minimum).  I will leave
>> it to your judgement.
>
> let's at least modify commit log to make all these extra changes clear
> that they are needed because of reason (a) or (b) or whatever. If you
> just send a patch doing much more than it apparently should without no
> mention as to why it was done this way, I can't know for sure those
> changes are needed; next thing you know, Greg refuses to apply my pull
> request because the change is too large :-)
>
> We don't want that to happen :-)

Totally understand.  It's your butt on the line for the pull request
to Greg, so definitely want to make sure you're comfortable with
anything you pass on.  As always I definitely appreciate your reviews
and your time.


How about if we just add a "Notes" to the end of the patch
description.  I can repost a patch or you can feel free to change the
description as per below (just let me know).  ...so in total:

---

usb: dwc2: host: Fix missing device insertions

If you've got your interrupt signals bouncing a bit as you insert your
USB device, you might end up in a state when the device is connected but
the driver doesn't know it.

Specifically, the observed order is:
 1. hardware sees connect
 2. hardware sees disconnect
 3. hardware sees connect
 4. dwc2_port_intr() - clears connect interrupt
 5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()

Now you'll be stuck with the cable plugged in and no further interrupts
coming in but the driver will think we're disconnected.

We'll fix this by checking for the missing connect interrupt and
re-connecting after the disconnect is posted.  We don't skip the
disconnect because if there is a transitory disconnect we really want to
de-enumerate and re-enumerate.

Notes:

1. As part of this change we add a "force" parameter to
   dwc2_hcd_disconnect() so that when we're unloading the module we
   avoid the new behavior.  The need for this was pointed out by John
   Youn.
2. The bit of code needed at the end of dwc2_hcd_disconnect() is
   exactly the same bit of code from dwc2_port_intr().  To avoid
   duplication, we refactor that code out into a new function
   dwc2_hcd_connect().


-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
