From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v3 1/2] timers: Fix usleep_range() in the context of wake_up_process()
Date: Thu, 20 Oct 2016 13:34:23 -0700
Message-ID: <1476995664-15668-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>
Cc: Andreas Mohr <andi@lisas.de>, briannorris@chromium.org, huangtao@rock-chips.com, tony.xie@rock-chips.com, linux-rockchip@lists.infradead.org, linux@roeck-us.net, heiko@sntech.de, broonie@kernel.org, djkurtz@chromium.org, tskd08@gmail.com, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Users of usleep_range() expect that it will _never_ return in less time
than the minimum passed parameter.  However, nothing in any of the code
ensures this.  Specifically:

usleep_range() => do_usleep_range() => schedule_hrtimeout_range() =>
schedule_hrtimeout_range_clock() just ends up calling schedule() with an
appropriate timeout set using the hrtimer.  If someone else happens to
wake up our task then we'll happily return from usleep_range() early.

msleep() already has code to handle this case since it will loop as long
as there was still time left.  usleep_range() had no such loop.

The problem is is easily demonstrated with a small bit of test code:

  static int usleep_test_task(void *data)
  {
    atomic_t *done = data;
    ktime_t start, end;

    start = ktime_get();
    usleep_range(50000, 100000);
    end = ktime_get();
    pr_info("Requested 50000 - 100000 us.  Actually slept for %llu us\n",
      (unsigned long long)ktime_to_us(ktime_sub(end, start)));
    atomic_set(done, 1);

    return 0;
  }

  static void run_usleep_test(void)
  {
    struct task_struct *t;
    atomic_t done;

    atomic_set(&done, 0);

    t = kthread_run(usleep_test_task, &done, "usleep_test_task");
    while (!atomic_read(&done)) {
      wake_up_process(t);
      udelay(1000);
    }
    kthread_stop(t);
  }

If you run the above code without this patch you get things like:
  Requested 50000 - 100000 us.  Actually slept for 967 us

If you run the above code _with_ this patch, you get:
  Requested 50000 - 100000 us.  Actually slept for 50001 us

Presumably this problem was not detected before because:
- It's not terribly common to use wake_up_process() directly.
- Other ways for processes to wake up are not typically mixed with
  usleep_range().
- There aren't lots of places that use usleep_range(), since many people
  call either msleep() or udelay().

NOTES:
- An effort was made to look for users relying on the old behavior by
  looking for usleep_range() in the same file as wake_up_process().
  No problems was found by this search, though it is conceivable that
  someone could have put the sleep and wakeup in two different files.
- An effort was made to ask several upstream maintainers if they were
  aware of people relying on wake_up_process() to wake up
  usleep_range().  No maintainers were aware of that but they were aware
  of many people relying on usleep_range() never returning before the
  minimum.

Reported-by: Tao Huang <huangtao@rock-chips.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Andreas Mohr <andim2@users.sf.net>
Reviewed-by: Brian Norris <briannorris@chromium.org>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---
Changes in v3:
- Add Reviewed-by tags
- Add notes about validation

Changes in v2:
- Fixed stupid bug that snuck in before posting
- Use ktime_before
- Remove delta from the loop

 kernel/time/timer.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/kernel/time/timer.c b/kernel/time/timer.c
index 32bf6f75a8fe..219439efd56a 100644
--- a/kernel/time/timer.c
+++ b/kernel/time/timer.c
@@ -1898,12 +1898,28 @@ EXPORT_SYMBOL(msleep_interruptible);
 
 static void __sched do_usleep_range(unsigned long min, unsigned long max)
 {
+	ktime_t now, end;
 	ktime_t kmin;
 	u64 delta;
+	int ret;
 
-	kmin = ktime_set(0, min * NSEC_PER_USEC);
+	now = ktime_get();
+	end = ktime_add_us(now, min);
 	delta = (u64)(max - min) * NSEC_PER_USEC;
-	schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
+	do {
+		kmin = ktime_sub(end, now);
+		ret = schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
+
+		/*
+		 * If schedule_hrtimeout_range() returns 0 then we actually
+		 * hit the timeout. If not then we need to re-calculate the
+		 * new timeout ourselves.
+		 */
+		if (ret == 0)
+			break;
+
+		now = ktime_get();
+	} while (ktime_before(now, end));
 }
 
 /**
-- 
2.8.0.rc3.226.g39d4020
