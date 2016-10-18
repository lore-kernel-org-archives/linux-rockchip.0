From: Daniel Kurtz <djkurtz@chromium.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of wake_up_process()
Date: Tue, 18 Oct 2016 21:44:16 +0800
Message-ID: <CAGS+omAT5gFD3vF7iz=Mc=CO00W_x2MSyGdpgD+tO2YfGnwpsA@mail.gmail.com>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1476133442-17757-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>, Tao Huang <huangtao@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Andreas Mohr <andi@lisas.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, tony.xie@rock-chips.com, Akihiro Tsukada <tskd08@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

On Tue, Oct 11, 2016 at 5:04 AM, Douglas Anderson <dianders@chromium.org> wrote:
> Users of usleep_range() expect that it will _never_ return in less time
> than the minimum passed parameter.  However, nothing in any of the code
> ensures this.  Specifically:
>
> usleep_range() => do_usleep_range() => schedule_hrtimeout_range() =>
> schedule_hrtimeout_range_clock() just ends up calling schedule() with an
> appropriate timeout set using the hrtimer.  If someone else happens to
> wake up our task then we'll happily return from usleep_range() early.

I think this change works, and fixes a real issue, however, I don't
think you are fixing this at the right layer.
The comment for schedule_hrtimeout_range says:

/**
 * schedule_hrtimeout_range - sleep until timeout
 * @expires:    timeout value (ktime_t)
 * @delta:      slack in expires timeout (ktime_t)
 * @mode:       timer mode, HRTIMER_MODE_ABS or HRTIMER_MODE_REL
 *
 * Make the current task sleep until the given expiry time has
 * elapsed. The routine will return immediately unless
 * the current task state has been set (see set_current_state()).
 *
 * The @delta argument gives the kernel the freedom to schedule the
 * actual wakeup to a time that is both power and performance friendly.
 * The kernel give the normal best effort behavior for "@expires+@delta",
 * but may decide to fire the timer earlier, but no earlier than @expires.
 *
 * You can set the task state as follows -
 *
 * %TASK_UNINTERRUPTIBLE - at least @timeout time is guaranteed to
 * pass before the routine returns.
 *
 * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
 * delivered to the current task.
 *
 * The current task state is guaranteed to be TASK_RUNNING when this
 * routine returns.
 *
 * Returns 0 when the timer has expired otherwise -EINTR
 */

The behavior as specified for this function "at least @timeout time is
guaranteed to pass before the routine returns" already guarantees the
behavior you are adding to do_usleep_range() whenever the current task
state is (pre-)set to TASK_UNINTERRUPTIBLE.

Thus, I think the loop around 'schedule()' should be moved to
schedule_hrtimeout_range() itself.
This would also fix direct callers of schedule_hrtimeout_range() that
use TASK_UNINTERRUPTIBLE, although, I could only find one:

pt3_fetch_thread()

-Dan
