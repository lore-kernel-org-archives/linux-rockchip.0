From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Wed, 12 Oct 2016 09:03:45 -0700
Message-ID: <20161012160309.GA19146@roeck-us.net>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1476133442-17757-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Oct 10, 2016 at 02:04:02PM -0700, Douglas Anderson wrote:
> Users of usleep_range() expect that it will _never_ return in less time
> than the minimum passed parameter.  However, nothing in any of the code
> ensures this.  Specifically:
> 
> usleep_range() => do_usleep_range() => schedule_hrtimeout_range() =>
> schedule_hrtimeout_range_clock() just ends up calling schedule() with an
> appropriate timeout set using the hrtimer.  If someone else happens to
> wake up our task then we'll happily return from usleep_range() early.
> 
> msleep() already has code to handle this case since it will loop as long
> as there was still time left.  usleep_range() had no such loop.
> 
> The problem is is easily demonstrated with a small bit of test code:
> 
>   static int usleep_test_task(void *data)
>   {
>     atomic_t *done = data;
>     ktime_t start, end;
> 
>     start = ktime_get();
>     usleep_range(50000, 100000);
>     end = ktime_get();
>     pr_info("Requested 50000 - 100000 us.  Actually slept for %llu us\n",
>       (unsigned long long)ktime_to_us(ktime_sub(end, start)));
>     atomic_set(done, 1);
> 
>     return 0;
>   }
> 
>   static void run_usleep_test(void)
>   {
>     struct task_struct *t;
>     atomic_t done;
> 
>     atomic_set(&done, 0);
> 
>     t = kthread_run(usleep_test_task, &done, "usleep_test_task");
>     while (!atomic_read(&done)) {
>       wake_up_process(t);
>       udelay(1000);
>     }
>     kthread_stop(t);
>   }
> 
> If you run the above code without this patch you get things like:
>   Requested 50000 - 100000 us.  Actually slept for 967 us
> 
> If you run the above code _with_ this patch, you get:
>   Requested 50000 - 100000 us.  Actually slept for 50001 us
> 
> Presumably this problem was not detected before because:
> - It's not terribly common to use wake_up_process() directly.
> - Other ways for processes to wake up are not typically mixed with
>   usleep_range().
> - There aren't lots of places that use usleep_range(), since many people
>   call either msleep() or udelay().
> 
> Reported-by: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Reviewed-by: Andreas Mohr <andim2-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>

Reviewed-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>

The following drivers may expect the function to be interruptible.

drivers/iio/accel/kxcjk-1013.c: kxcjk1013_runtime_resume()
drivers/iio/accel/bmc150-accel-core.c:bmc150_accel_runtime_resume()
drivers/iio/accel/mma8452.c:mma8452_runtime_resume()
drivers/iio/accel/mma9551_core.c:mma9551_sleep()
kernel/trace/ring_buffer.c:rb_test()

A possible solution might be to introduce usleep_range_interruptible()
and use it there.

Note:
drivers/scsi/mvumi.c:mvumi_rescan_bus() uses msleep() but should possibly
use msleep_interruptible() instead.

Guenter
