From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Wed, 12 Oct 2016 09:53:51 -0700
Message-ID: <20161012165351.GA20472@roeck-us.net>
References: <1476133442-17757-1-git-send-email-dianders@chromium.org>
 <20161012160309.GA19146@roeck-us.net>
 <CAD=FV=Ug9P1XDvF-Z_gPeU4CtFzoXQZuy7rmdg4FNGFdT77ENQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=Ug9P1XDvF-Z_gPeU4CtFzoXQZuy7rmdg4FNGFdT77ENQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Tony Xie <tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 12, 2016 at 09:27:35AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, Oct 12, 2016 at 9:03 AM, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org> wrote:
> > drivers/iio/accel/kxcjk-1013.c: kxcjk1013_runtime_resume()
> > drivers/iio/accel/bmc150-accel-core.c:bmc150_accel_runtime_resume()
> > drivers/iio/accel/mma8452.c:mma8452_runtime_resume()
> > drivers/iio/accel/mma9551_core.c:mma9551_sleep()
> 
> As far as I can tell these drivers will not suffer unduly from my
> change.  Worse case they will delay 20us more, which is listed as the
> max.
> 
20 ms.

> Also note that I assume the reason you flagged these is because they
> follow the pattern:
> 
>         if (sleep_val < 20000)
>                 usleep_range(sleep_val, 20000);
>         else
>                 msleep_interruptible(sleep_val/1000);
> 
Correct

> I will note that usleep_range() is and has always been
> uninterruptible, since the implementation says:
> 
> void __sched usleep_range(unsigned long min, unsigned long max)
> {
>        __set_current_state(TASK_UNINTERRUPTIBLE);
>        do_usleep_range(min, max);
> }
> 
Good point.

> So I'm not at all convinced that we are changing behavior here.  The
> "interruptible" vs. "uninterruptible" affects whether signals can
> interrupt the sleep, not whether a random wake up of a task can.  What
> we really need to know is if they are affected by a wakeup.
> 
Yes, you are correct.

> > kernel/trace/ring_buffer.c:rb_test()
> 
> I assume that the person who wrote this code was confused since they wrote:
> 
>   set_current_state(TASK_INTERRUPTIBLE);
>   /* Now sleep between a min of 100-300us and a max of 1ms */
>   usleep_range(((data->cnt % 3) + 1) * 100, 1000);
> 
> That doesn't seem to make sense given the first line of usleep_range().
> 
... which, for those who don't pay attention (like me), is
	__set_current_state(TASK_UNINTERRUPTIBLE);

> In any case, again I don't think I am changing behavior.
> 
> > A possible solution might be to introduce usleep_range_interruptible()
> > and use it there.
> 
> This could be a useful function, but I don't think we need it if we
> find someone who needs a wakeup to cut short a sleep.  We can just
> call one of the schedule functions directly and use a timeout.
> 

Agreed.

> 
> Thank you for searching through for stuff and for your review, though!
> 
No problem. Thanks for correcting me.

Note that I also searched for use of usleep_range() in conjunction with a
a task wakeup, but did not find anything. I did find a large number of cases,
though, where the explicit assumption is made that the minimum sleep time
is well defined.

Guenter
