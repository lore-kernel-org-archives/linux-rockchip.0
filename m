From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of wake_up_process()
Date: Mon, 10 Oct 2016 15:39:06 -0700
Message-ID: <CAD=FV=WCe==Dx_qRM3nKz-sc_7zxbNyOGK3HuA02oG1A9Fxwdg@mail.gmail.com>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1476133442-17757-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>
Cc: Andreas Mohr <andi@lisas.de>, Brian Norris <briannorris@chromium.org>, Tao Huang <huangtao@rock-chips.com>, Tony Xie <tony.xie@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Douglas Anderson <dianders@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Oct 10, 2016 at 2:04 PM, Douglas Anderson <dianders@chromium.org> wrote:
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
> Reported-by: Tao Huang <huangtao@rock-chips.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Changes in v2:
> - Fixed stupid bug that snuck in before posting
> - Use ktime_before
> - Remove delta from the loop
>
> NOTE: Tested against 4.4 tree w/ backports.  I'm trying to get myself
> up and running with mainline again to test there now but it might be a
> little while.  Hopefully this time I don't shoot myself in the foot.

OK, I finally resolved all my issues and have officially tested this
on mainline (not just in my private kernel) linux 4.8 on an
rk3288-veyron-jerry based device.  Problem still exists there and fix
still works.

Sorry for the noise earlier.  Hopefully this version of the patch
addresses all of Andreas's review feedback (and thank you very much
for the review!)

-Doug
