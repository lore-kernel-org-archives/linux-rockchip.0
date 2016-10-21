From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [PATCH v3 1/2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Fri, 21 Oct 2016 09:08:23 +0200 (CEST)
Message-ID: <alpine.DEB.2.20.1610210847510.4797@nanos>
References: <1476995664-15668-1-git-send-email-dianders@chromium.org>
 <alpine.DEB.2.20.1610202306550.4938@nanos>
 <CAD=FV=U0sURwAmsiLg0q+=e8o7NfJLWEUAu4zeY1so83cDqXhA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=U0sURwAmsiLg0q+=e8o7NfJLWEUAu4zeY1so83cDqXhA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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
Cc: =?ISO-2022-JP?Q?=1B$B2+Es=1B=28J?= <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?ISO-8859-15?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Tony Xie <tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Daniel Kurtz <djkurtz-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>, Akihiro Tsukada <tskd08-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 20 Oct 2016, Doug Anderson wrote:
> > And this is broken because schedule_hrtimeout_range() returns with task
> > state TASK_RUNNING so the next schedule_hrtimeout_range() will return
> > -EINTR again because nothing sets the task state back to UNINTERRUPTIBLE.
> > So instead of sleeping you busy loop.
> 
> That explains the mystery of why my delays were always so precise in
> the test.  I was a bit baffled by the fact that I was ending up with a
> delay of almost exactly 50001 or 50002 in my test case.

Well, if you see something as a mystery or you are baffled, then you
certainly should figure out why and not just declare: Works for me, but I
don't know why. That's stuff which comes back to hunt you sooner than
later.
    
> > What you really want to do is something like this:
> >
> > void __sched usleep_range(unsigned long min, unsigned long max)
> > {
> >         ktime_t expires = ktime_add_us(ktime_get(), min * NSEC_PER_USEC);
> >         ktime_t delta = ktime_set(0, (u64)(max - min) * NSEC_PER_USEC);
> >
> >         for (;;) {
> >                 __set_current_state(TASK_UNINTERRUPTIBLE);
> >                 /* Do not return before the requested sleep time has elapsed */
> >                 if (!schedule_hrtimeout_range(&expires, delta, HRTIMER_MODE_ABS))
> >                         break;
> >         }
> > }
> 
> The above mostly works other than some small fixups.  Thanks!

Yeah, delta is u64. Was too lazy to look it up.
 
> ...other than small fixups, the one substantive change I'll make is to
> actually check the timeout in the loop above.  If I use your code with
> my test, I find that, even though I'm waking up every millisecond I
> still end up not exiting the loop until the upper bound of the delay.
> 
> Presumably this happens because:
> 
>   a_time_in_the_past = ktime_sub_us(ktime_get(), 10);
>   schedule_hrtimeout_range(&a_time_in_the_past, delta, HRTIMER_MODE_ABS)
> 
> ...delays "delta" nano seconds even though "a_time_in_the_past" is in
> the past.  I presume that behavior is OK (let me know if it's not).

It does not delay delta nano seconds. It delays to 

   (now - 10us) + deltans

The core is free to use the full range for batching or extending idle sleep
times and with a delta > 10us it's expected and correct behaviour.

> In the case of usleep_range() if we're waking up anyway, it seems
> sensible to spend a few cycles to see if the minimum bound has already
> past.

We really can do without that. You are over engineering for something which
is pointless in 99.9% of the use cases. That stuff is what causes bloat. A
few lines of code here and there, which sums up in the end.

Thanks,

	tglx
