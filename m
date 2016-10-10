From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH] timers: Fix usleep_range() in the context of wake_up_process()
Date: Mon, 10 Oct 2016 11:47:57 -0700
Message-ID: <1476125277-6061-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org
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
- There aren't lotsof places that use usleep_range(), since many people
  call either msleep() or udelay().

Reported-by: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 kernel/time/timer.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/kernel/time/timer.c b/kernel/time/timer.c
index 32bf6f75a8fe..ab03c7e403a4 100644
--- a/kernel/time/timer.c
+++ b/kernel/time/timer.c
@@ -1898,12 +1898,29 @@ EXPORT_SYMBOL(msleep_interruptible);
 
 static void __sched do_usleep_range(unsigned long min, unsigned long max)
 {
+	ktime_t start, end;
 	ktime_t kmin;
 	u64 delta;
+	unsigned long elapsed = 0;
+	int ret;
+
+	start = ktime_get();
+	do {
+		kmin = ktime_set(0, min * NSEC_PER_USEC);
+		delta = (u64)(max - min) * NSEC_PER_USEC;
+		ret = schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
+
+		/*
+		 * If schedule_hrtimeout_range() returns 0 then we actually
+		 * hit the timeout. If not then we need to re-calculate the
+		 * new timeout ourselves.
+		 */
+		if (ret == 0)
+			break;
 
-	kmin = ktime_set(0, min * NSEC_PER_USEC);
-	delta = (u64)(max - min) * NSEC_PER_USEC;
-	schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
+		end = ktime_get();
+		elapsed = ktime_to_us(ktime_sub(end, start));
+	} while (elapsed < min);
 }
 
 /**
-- 
2.8.0.rc3.226.g39d4020
