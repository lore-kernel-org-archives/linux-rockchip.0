From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v4 2/2] timers: Fix documentation for schedule_timeout() and similar
Date: Thu, 20 Oct 2016 14:21:30 -0700
Message-ID: <1476998490-4481-2-git-send-email-dianders@chromium.org>
References: <1476998490-4481-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1476998490-4481-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>
Cc: Andreas Mohr <andi@lisas.de>, briannorris@chromium.org, huangtao@rock-chips.com, tony.xie@rock-chips.com, linux-rockchip@lists.infradead.org, linux@roeck-us.net, heiko@sntech.de, broonie@kernel.org, djkurtz@chromium.org, tskd08@gmail.com, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The documentatoin for schedule_timeout(), schedule_hrtimeout(), and
schedule_hrtimeout_range() all claimed that the routines couldn't
possibly return early if the task state was TASK_UNINTERRUPTIBLE.  This
was simply not true since anyone calling wake_up_process() would cause
those routines to exit early.

As some evidence that the documentation was broken (not the code):
- If we changed the code to match the documentation, msleep() would be
  identical to schedule_timeout_uninterruptible() and
  msleep_interruptible() would be identical to
  schedule_timeout_interruptible().  That doesn't seem likely to have
  been the intention.
- The schedule() function sleeps until a task is woken up.  Logically,
  one would expect that the schedule_timeout() function would sleep
  until a task is woken up or a timeout occurrs.

As part of the above observation, it can be seen that
schedule_hrtimeout() and schedule_hrtimeout_range() might return -EINTR
even if the task state was TASK_UNINTERRUPTIBLE.  This isn't terrible
behavior so we'll document it and keep it as-is.  After all, trying to
match schedule_timeout() and return the time left would incure a bunch
of extra calculation cost that isn't needed in all cases.

Suggested-by: Daniel Kurtz <djkurtz@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Changes in v4:
- Fixed stray double quotes.
- Updated wording as per Thomas Gleixner.

Changes in v3:
- Documentation fix new for v3.

 kernel/time/hrtimer.c | 20 ++++++++++++++------
 kernel/time/timer.c   | 11 +++++++----
 2 files changed, 21 insertions(+), 10 deletions(-)

diff --git a/kernel/time/hrtimer.c b/kernel/time/hrtimer.c
index bb5ec425dfe0..08be5c99d26b 100644
--- a/kernel/time/hrtimer.c
+++ b/kernel/time/hrtimer.c
@@ -1742,15 +1742,19 @@ schedule_hrtimeout_range_clock(ktime_t *expires, u64 delta,
  * You can set the task state as follows -
  *
  * %TASK_UNINTERRUPTIBLE - at least @timeout time is guaranteed to
- * pass before the routine returns.
+ * pass before the routine returns unless the current task is explicitly
+ * woken up, (e.g. by wake_up_process()).
  *
  * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
- * delivered to the current task.
+ * delivered to the current task or the current task is explicitly woken
+ * up.
  *
  * The current task state is guaranteed to be TASK_RUNNING when this
  * routine returns.
  *
- * Returns 0 when the timer has expired otherwise -EINTR
+ * Returns 0 when the timer has expired. If the task was woken before the
+ * timer expired by a signal (only possible in state TASK_INTERRUPTIBLE) or
+ * by an explicit wakeup, it returns -EINTR.
  */
 int __sched schedule_hrtimeout_range(ktime_t *expires, u64 delta,
 				     const enum hrtimer_mode mode)
@@ -1772,15 +1776,19 @@ EXPORT_SYMBOL_GPL(schedule_hrtimeout_range);
  * You can set the task state as follows -
  *
  * %TASK_UNINTERRUPTIBLE - at least @timeout time is guaranteed to
- * pass before the routine returns.
+ * pass before the routine returns unless the current task is explicitly
+ * woken up, (e.g. by wake_up_process()).
  *
  * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
- * delivered to the current task.
+ * delivered to the current task or the current task is explicitly woken
+ * up.
  *
  * The current task state is guaranteed to be TASK_RUNNING when this
  * routine returns.
  *
- * Returns 0 when the timer has expired otherwise -EINTR
+ * Returns 0 when the timer has expired. If the task was woken before the
+ * timer expired by a signal (only possible in state TASK_INTERRUPTIBLE) or
+ * by an explicit wakeup, it returns -EINTR.
  */
 int __sched schedule_hrtimeout(ktime_t *expires,
 			       const enum hrtimer_mode mode)
diff --git a/kernel/time/timer.c b/kernel/time/timer.c
index 219439efd56a..b2ca2a6bc4d2 100644
--- a/kernel/time/timer.c
+++ b/kernel/time/timer.c
@@ -1691,11 +1691,12 @@ static void process_timeout(unsigned long __data)
  * You can set the task state as follows -
  *
  * %TASK_UNINTERRUPTIBLE - at least @timeout jiffies are guaranteed to
- * pass before the routine returns. The routine will return 0
+ * pass before the routine returns unless the current task is explicitly
+ * woken up, (e.g. by wake_up_process())".
  *
  * %TASK_INTERRUPTIBLE - the routine may return early if a signal is
- * delivered to the current task. In this case the remaining time
- * in jiffies will be returned, or 0 if the timer expired in time
+ * delivered to the current task or the current task is explicitly woken
+ * up.
  *
  * The current task state is guaranteed to be TASK_RUNNING when this
  * routine returns.
@@ -1704,7 +1705,9 @@ static void process_timeout(unsigned long __data)
  * the CPU away without a bound on the timeout. In this case the return
  * value will be %MAX_SCHEDULE_TIMEOUT.
  *
- * In all cases the return value is guaranteed to be non-negative.
+ * Returns 0 when the timer has expired otherwise the remaining time in
+ * jiffies will be returned.  In all cases the return value is guaranteed
+ * to be non-negative.
  */
 signed long __sched schedule_timeout(signed long timeout)
 {
-- 
2.8.0.rc3.226.g39d4020
