From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [PATCH v3 2/2] timers: Fix documentation for schedule_timeout()
 and similar
Date: Thu, 20 Oct 2016 23:06:48 +0200 (CEST)
Message-ID: <alpine.DEB.2.20.1610202254071.4938@nanos>
References: <1476995664-15668-1-git-send-email-dianders@chromium.org>
 <1476995664-15668-2-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1476995664-15668-2-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, djkurtz-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org, tskd08-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 20 Oct 2016, Douglas Anderson wrote:
> +++ b/kernel/time/hrtimer.c
> @@ -1742,15 +1742,19 @@ schedule_hrtimeout_range_clock(ktime_t *expires, u64 delta,
>   * You can set the task state as follows -
>   *
>   * %TASK_UNINTERRUPTIBLE - at least @timeout time is guaranteed to
> - * pass before the routine returns.
> + * pass before the routine returns unless the current task is explicitly
> + * woken up, (e.g. by wake_up_process())".

The double quote is stray.

>   *
>   * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
> - * delivered to the current task.
> + * delivered to the current task or the current task is explicitly woken
> + * up.
>   *
>   * The current task state is guaranteed to be TASK_RUNNING when this
>   * routine returns.
>   *
> - * Returns 0 when the timer has expired otherwise -EINTR
> + * Returns 0 when the timer has expired otherwise -EINTR. Note that
> + * -EINTR can still be returned even if the task state is
> + * TASK_UNINTERRUPTIBLE if the current task is explicitly woken up.

I'd prefer to word it this way:

Returns 0 when the timer has expired. If the task was woken before the
timer expired by a signal (only possible in state TASK_INTERRUPTIBLE) or by
an explicit wakeup, it returns -EINTR.


>   */
>  int __sched schedule_hrtimeout_range(ktime_t *expires, u64 delta,
>  				     const enum hrtimer_mode mode)
> @@ -1772,15 +1776,19 @@ EXPORT_SYMBOL_GPL(schedule_hrtimeout_range);
>   * You can set the task state as follows -
>   *
>   * %TASK_UNINTERRUPTIBLE - at least @timeout time is guaranteed to
> - * pass before the routine returns.
> + * pass before the routine returns unless the current task is explicitly
> + * woken up, (e.g. by wake_up_process())".

See above

>   *
>   * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
> - * delivered to the current task.
> + * delivered to the current task or the current task is explicitly woken
> + * up.
>   *
>   * The current task state is guaranteed to be TASK_RUNNING when this
>   * routine returns.
>   *
> - * Returns 0 when the timer has expired otherwise -EINTR
> + * Returns 0 when the timer has expired otherwise -EINTR. Note that
> + * -EINTR can still be returned even if the task state is
> + * TASK_UNINTERRUPTIBLE if the current task is explicitly woken up.

See above

> @@ -1691,11 +1691,12 @@ static void process_timeout(unsigned long __data)
>   * You can set the task state as follows -
>   *
>   * %TASK_UNINTERRUPTIBLE - at least @timeout jiffies are guaranteed to
> - * pass before the routine returns. The routine will return 0
> + * pass before the routine returns unless the current task is explicitly
> + * woken up, (e.g. by wake_up_process())".
>   *
>   * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
> - * delivered to the current task. In this case the remaining time
> - * in jiffies will be returned, or 0 if the timer expired in time
> + * delivered to the current task or the current task is explicitly woken
> + * up.
>   *
>   * The current task state is guaranteed to be TASK_RUNNING when this
>   * routine returns.
> @@ -1704,7 +1705,9 @@ static void process_timeout(unsigned long __data)
>   * the CPU away without a bound on the timeout. In this case the return
>   * value will be %MAX_SCHEDULE_TIMEOUT.
>   *
> - * In all cases the return value is guaranteed to be non-negative.
> + * Returns 0 when the timer has expired otherwise the remaining time in
> + * jiffies will be returned.  In all cases the return value is guaranteed
> + * to be non-negative.

That one is fine.

Thanks,

	tglx
