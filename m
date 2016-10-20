From: Daniel Kurtz <djkurtz@chromium.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of wake_up_process()
Date: Thu, 20 Oct 2016 16:57:36 +0800
Message-ID: <CAGS+omB3197rGzwvNM66Ok4JtP=fUCRS349jmttk2NYXvd0KHA@mail.gmail.com>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
 <CAGS+omAT5gFD3vF7iz=Mc=CO00W_x2MSyGdpgD+tO2YfGnwpsA@mail.gmail.com> <CAD=FV=UHB4sqf9sAg6Pbrp67sgjwJRUFPKsEh_PXwUCM+o59ZQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=UHB4sqf9sAg6Pbrp67sgjwJRUFPKsEh_PXwUCM+o59ZQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>, Tao Huang <huangtao@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Andreas Mohr <andi@lisas.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Tony Xie <tony.xie@rock-chips.com>, Akihiro Tsukada <tskd08@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 19, 2016 at 4:29 AM, Doug Anderson <dianders@chromium.org> wrote:
>
> Dan,
>
> On Tue, Oct 18, 2016 at 6:44 AM, Daniel Kurtz <djkurtz@chromium.org> wrote:
> > Hi Doug,
> >
> > On Tue, Oct 11, 2016 at 5:04 AM, Douglas Anderson <dianders@chromium.org> wrote:
> >> Users of usleep_range() expect that it will _never_ return in less time
> >> than the minimum passed parameter.  However, nothing in any of the code
> >> ensures this.  Specifically:
> >>
> >> usleep_range() => do_usleep_range() => schedule_hrtimeout_range() =>
> >> schedule_hrtimeout_range_clock() just ends up calling schedule() with an
> >> appropriate timeout set using the hrtimer.  If someone else happens to
> >> wake up our task then we'll happily return from usleep_range() early.
> >
> > I think this change works, and fixes a real issue, however, I don't
> > think you are fixing this at the right layer.
> > The comment for schedule_hrtimeout_range says:
> >
> > /**
> >  * schedule_hrtimeout_range - sleep until timeout
> >  * @expires:    timeout value (ktime_t)
> >  * @delta:      slack in expires timeout (ktime_t)
> >  * @mode:       timer mode, HRTIMER_MODE_ABS or HRTIMER_MODE_REL
> >  *
> >  * Make the current task sleep until the given expiry time has
> >  * elapsed. The routine will return immediately unless
> >  * the current task state has been set (see set_current_state()).
> >  *
> >  * The @delta argument gives the kernel the freedom to schedule the
> >  * actual wakeup to a time that is both power and performance friendly.
> >  * The kernel give the normal best effort behavior for "@expires+@delta",
> >  * but may decide to fire the timer earlier, but no earlier than @expires.
> >  *
> >  * You can set the task state as follows -
> >  *
> >  * %TASK_UNINTERRUPTIBLE - at least @timeout time is guaranteed to
> >  * pass before the routine returns.
> >  *
> >  * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
> >  * delivered to the current task.
> >  *
> >  * The current task state is guaranteed to be TASK_RUNNING when this
> >  * routine returns.
> >  *
> >  * Returns 0 when the timer has expired otherwise -EINTR
> >  */
> >
> > The behavior as specified for this function "at least @timeout time is
> > guaranteed to pass before the routine returns" already guarantees the
> > behavior you are adding to do_usleep_range() whenever the current task
> > state is (pre-)set to TASK_UNINTERRUPTIBLE.
> >
> > Thus, I think the loop around 'schedule()' should be moved to
> > schedule_hrtimeout_range() itself.
> > This would also fix direct callers of schedule_hrtimeout_range() that
> > use TASK_UNINTERRUPTIBLE, although, I could only find one:
> >
> > pt3_fetch_thread()
>
> Hmmm, I would agree with you that the behavior of
> schedule_hrtimeout_range() doesn't seem to match the function
> comments.
>
> ...but I'm not sure I agree with you about what to do here.
> Specifically I think that whatever we do we need to try to keep
> schedule_hrtimeout_range() and schedule_timeout() parallel.  For
> schedule_timeout() we have the same comments but it's my understanding
> that you'd expect that wake_up_process() would wake it up.  In any
> case, if wake_up_process() doesn't wake it up then it seems like
> msleep() and schedule_timeout_uninterruptible() are the same function
> with two names, when in fact one is implemented in terms o the other.

Sounds reasonable.
It would be nice to add a note to all of those function comments
though to make them sound less absolute -
"at least @timeout time is guaranteed to pass before the routine
returns unless the current task is explicitly woken up, (e.g. by
wake_up_process())"

> NOTE that also it seems as if we need some other return values besides
> 0 and -EINTR from schedule_hrtimeout_range() (again, to match
> schedule_timeout()) since right now we'll return -EINTR if we were
> woken up with wake_up_process().  This would be unexpected in the case
> where we had TASK_UNINTERRUPTIBLE set.
>
> -Doug
