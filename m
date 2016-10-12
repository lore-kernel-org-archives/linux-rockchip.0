From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of wake_up_process()
Date: Wed, 12 Oct 2016 10:39:29 -0700
Message-ID: <CAD=FV=WbeSn3eh8eMaVaMucay5hf0GYx3J6ADE5mpnhk3tx=Nw@mail.gmail.com>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
 <alpine.DEB.2.20.1610110908240.7794@nanos> <20161011182541.GA32165@rhlx01.hs-esslingen.de>
 <alpine.DEB.2.20.1610121506480.8572@nanos>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <alpine.DEB.2.20.1610121506480.8572@nanos>
Sender: linux-kernel-owner@vger.kernel.org
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Andreas Mohr <andi@lisas.de>, John Stultz <john.stultz@linaro.org>, Brian Norris <briannorris@chromium.org>, Tao Huang <huangtao@rock-chips.com>, Tony Xie <tony.xie@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Oct 12, 2016 at 6:11 AM, Thomas Gleixner <tglx@linutronix.de> wrote:
> I'm well aware what Doug wants to do and I'm not saying that this is wrong,
> but I'm not going to look at all usleep() usage sites to make sure none is
> relying on such a behaviour and gets surprised by the change,
>
> The point is that we had cases over and over where stuff was depending on
> implementation bugs which made the buggy behaviour into an expected
> behaviour. I'm not saying that this is the case here, but it's not my duty
> to make sure it isn't.

Every change breaks something.  <https://xkcd.com/1172/>.  I don't
think we promise bug for bug compatibility for Linux releases, do we?
Though I definitely agree that we shouldn't be breaking something on
purpose and it's good to be careful.


> So the very minimum I need in the changelog is some mentioning that the
> author at least tried to verify that this is not going to break the world
> and some more. That's what I meant by:
>
> You can't just can't just declare that all all of the users expect that and
> be done with it.

Do you have some suggestion about how to do that?  In general I'm
hesitant to rely on code analysis of 1620 call sites and that would
really be the only way to "be sure".  It would also take a really long
time.  I think Guenter was searching for files that contained
usleep_range() and some other text.  That's a pretty good idea but it
is definitely not exhaustive since there's no reason that the usleep
and a wakeup are guaranteed to be in the same file.  It's also
entirely possible that a wakeup could happen through some other source
than just a direct call to wake_up_process().  It's why I didn't try
it originally.

...but I can do it anyway.  I tried "git grep -C10000 usleep_range |
grep wake_up_process".  I actually do find some things that I don't
think Guenter found (or maybe he found, analyzed, and rejected):

> drivers/block/cciss.c-  wake_up_process(cciss_scan_thread);

We possibly wake up scan_thread().  Sleep is in
cciss_wait_for_mode_change_ack().  Callers of that are
cciss_enter_performant_mode() and cciss_enter_simple_mode().  Callers
of those are cciss_put_controller_into_performant_mode() and
cciss_pci_init() (and the performant mode boils down to
cciss_pci_init() anyway).  Caller is cciss_init_one().  That is the
probe function.  AKA: the thread that is being woken up isn't the one
doing the usleep_range().

No obvious bug here.

> drivers/memstick/host/rtsx_usb_ms.c-    wake_up_process(host->detect_ms);

Function being woken is rtsx_usb_detect_ms_card().  Sleeps are in
ms_power_on() and rtsx_usb_ms_set_param() (with no loops).
ms_power_on() is called by rtsx_usb_ms_set_param() anyway.  That
function is stored in msh->set_param.  That will be fairly hard to
track down, but it seems unlikely it is called by
rtsx_usb_detect_ms_card() and that we intentionally want the usleep to
end early.

No obvious bug here.


> drivers/scsi/mvumi.c-                   wake_up_process(mhba->dm_thread);
> drivers/scsi/mvumi.c-   wake_up_process(mhba->dm_thread);

Function being woken is mvumi_rescan_bus().  Intended to wake up the
task when it's in schedule().  Even after the schedule there is a
hardcoded msleep(1000).  To me the msleep(1000) makes it seem like
this loop can't possibly be too performance critical.

...but even if there are performance critical parts of that loop and
somehow the wake was intended not just to wakeup from the schedule but
also the usleep_range, worse case we will sleep 2 ms extra.

No obvious bug here.


> kernel/time/timer.c-    wake_up_process((struct task_struct *)__data);

Generic timer code.


> kernel/trace/ring_buffer.c-             wake_up_process(rb_threads[cpu]);

This is test code and already seems a bit confused.  ...but it does
appear that the caller might actually be intending the the
wake_up_process() to take effect.  Looking closer.  I see that the
wakeup is called once at the start of the test, not midway through the
test.  So I don't think there's a problem already than the already
identified problem of a useless
"set_current_state(TASK_INTERRUPTIBLE);"

No obvious bug here.

===

So the net result of all the above is that:

* With my git grep + code inspection, I see no obvious bug.  I will
admit that I didn't do a super deep search and finding bugs by code
inspection is iffy at best, but it might give us some sort of warm
fuzzy.

* With Guenter's search we saw no obvious bugs.

* Several subsystem maintainers and reviewers of lots of code have
chimed in and say that they're not aware of any code where
usleep_range() was expected to wake up early and they were also aware
of lots of code that would break if usleep_range() returned early.


IMHO: let's land it in linuxnext and give it some bake time.  If
nobody screams then it can go into linux proper, possibly to stable
trees.

-Doug
