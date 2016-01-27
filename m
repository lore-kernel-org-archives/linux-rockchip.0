From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v5 16/21] usb: dwc2: host: Manage frame nums better in scheduler
Date: Wed, 27 Jan 2016 12:49:15 -0800
Message-ID: <CAD=FV=VkWRAohh5fSPwanHgKjr5MTYH4s82wtg-Ob9OyAKYWEw@mail.gmail.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
	<1453486736-15358-17-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1453486736-15358-17-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: =?UTF-8?B?5ZC06Imv5bOw?= <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Kaukab, Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Jan 22, 2016 at 10:18 AM, Douglas Anderson
<dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> The dwc2 scheduler (contained in hcd_queue.c) was a bit confusing in the
> way it initted / kept track of which frames a QH was going to be active
> in.  Let's clean things up a little bit in preparation for a rewrite of
> the microframe scheduler.
>
> Specifically:
> * Old code would pick a frame number in dwc2_qh_init() and would try to
>   pick it "in a slightly future (micro)frame".  As far as I can tell the
>   reason for this was that there was a delay between dwc2_qh_init() and
>   when we actually wanted to dwc2_hcd_qh_add().  ...but apparently this
>   attempt to be slightly in the future wasn't enough because
>   dwc2_hcd_qh_add() then had code to reset things if the frame _wasn't_
>   in the future.  There's no reason not to just pick the frame later.
>   For non-periodic QH we now pick the frame in dwc2_hcd_qh_add().  For
>   periodic QH we pick the frame at dwc2_schedule_periodic() time.
> * The old "dwc2_qh_init() actually assigned to "hsotg->frame_number".
>   This doesn't seem like a great idea since that variable is supposed to
>   be used to keep track of which SOF the interrupt handler has seen.
>   Let's be clean: anyone who wants the current frame number (instead of
>   the one as of the last interrupt) should ask for it.
> * The old code wasn't terribly consistent about trying to use the frame
>   that the microframe scheduler assigned to it.  In
>   dwc2_sched_periodic_split() when it was scheduling the first frame it
>   always "ORed" in 0x7 (!).  Since the frame goes on the wire 1 uFrame
>   after next_active_frame it meant that the SSPLIT would always try for
>   uFrame 0 and the transaction would happen on the low speed bus during
>   uFrame 1.  This is irregardless of what the microframe scheduler
>   said.
> * The old code assumed it would get called to schedule the next in a
>   periodic split very quickly.  That is if next_active_frame was
>   0 (transfer on wire in uFrame 1) it assumed it was getting called to
>   schedule the next uFrame during uFrame 1 too (so it could queue
>   something up for uFrame 2).  It should be possible to actually queue
>   something up for uFrame 2 while in uFrame 2 (AKA queue up ASAP).  To
>   do this, code needs to look at the previously scheduled frame when
>   deciding when to next be active, not look at the current frame number.
> * If there was no microframe scheduler, the old code would check for
>   whether we should be active using "qh->next_active_frame ==
>   frame_number".  This seemed like a race waiting to happen.  ...plus
>   there's no way that you wouldn't want to schedule if next_active_frame
>   was actually less than frame number.
>
> Note that this change doesn't make 100% sense on its own since it's
> expecting some sanity in the frame numbers assigned by the microframe
> scheduler and (as per the future patch which rewries it) I think that
> the current microframe scheduler is quite insane.  However, it seems
> like splitting this up from the microframe scheduler patch makes things
> into smaller chunks and hopefully adds to clarity rather than reduces
> it.  The two patches could certainly be squashed.  Not that in the very
> least, I don't see any obvious bad behavior introduced with just this
> patch.
>
> I've attempted to keep the config parameter to disable the microframe
> scheduler in tact in this change, though I'm not sure it's worth it.
> Obviously the code is touched a lot so it's possible I regressed
> something when the microframe scheduler is disabled, though I did some
> basic testing and it seemed to work OK.  I'm still not 100% sure why you
> wouldn't want the microframe scheduler (presuming it works), so maybe a
> future patch (or a future version of this patch?) could remove that
> parameter.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> Changes in v5: None
> Changes in v4:
> - Manage frame nums better in scheduler new for v4.
>
> Changes in v3: None
> Changes in v2: None
>
>  drivers/usb/dwc2/hcd.h       |  10 +-
>  drivers/usb/dwc2/hcd_queue.c | 355 ++++++++++++++++++++++++++++++++-----------
>  2 files changed, 273 insertions(+), 92 deletions(-)

As an FYI to anyone considering reviewing or applying this particular patch.

It's proposed to squash
<https://chromium-review.googlesource.com/#/c/324185/> as a fixup to
this patch for the next version.  This is intended to fix problems
that Alan Stern reported at
<http://www.spinics.net/lists/linux-usb/msg135678.html>
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
