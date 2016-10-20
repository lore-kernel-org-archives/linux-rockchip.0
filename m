From: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3 1/2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Thu, 20 Oct 2016 23:25:38 +0200 (CEST)
Message-ID: <alpine.DEB.2.20.1610202306550.4938@nanos>
References: <1476995664-15668-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1476995664-15668-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: John Stultz <john.stultz@linaro.org>, Andreas Mohr <andi@lisas.de>, briannorris@chromium.org, huangtao@rock-chips.com, tony.xie@rock-chips.com, linux-rockchip@lists.infradead.org, linux@roeck-us.net, heiko@sntech.de, broonie@kernel.org, djkurtz@chromium.org, tskd08@gmail.com, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 20 Oct 2016, Douglas Anderson wrote:
> - An effort was made to look for users relying on the old behavior by
>   looking for usleep_range() in the same file as wake_up_process().
>   No problems was found by this search, though it is conceivable that
>   someone could have put the sleep and wakeup in two different files.
> - An effort was made to ask several upstream maintainers if they were
>   aware of people relying on wake_up_process() to wake up
>   usleep_range().  No maintainers were aware of that but they were aware
>   of many people relying on usleep_range() never returning before the
>   minimum.

Thanks for going the extra mile !
 
>  static void __sched do_usleep_range(unsigned long min, unsigned long max)
>  {
> +	ktime_t now, end;
>  	ktime_t kmin;
>  	u64 delta;
> +	int ret;
>  
> -	kmin = ktime_set(0, min * NSEC_PER_USEC);
> +	now = ktime_get();
> +	end = ktime_add_us(now, min);

So you calculate the absolute expiry time here.

>  	delta = (u64)(max - min) * NSEC_PER_USEC;
> -	schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
> +	do {
> +		kmin = ktime_sub(end, now);
> +		ret = schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);

And then you schedule the thing relative. That does not make sense.

> +
> +		/*
> +		 * If schedule_hrtimeout_range() returns 0 then we actually
> +		 * hit the timeout. If not then we need to re-calculate the
> +		 * new timeout ourselves.
> +		 */
> +		if (ret == 0)
> +			break;
> +
> +		now = ktime_get();

And this is broken because schedule_hrtimeout_range() returns with task
state TASK_RUNNING so the next schedule_hrtimeout_range() will return
-EINTR again because nothing sets the task state back to UNINTERRUPTIBLE.
So instead of sleeping you busy loop.

What you really want to do is something like this:

void __sched usleep_range(unsigned long min, unsigned long max)
{
	ktime_t expires = ktime_add_us(ktime_get(), min * NSEC_PER_USEC);
	ktime_t delta = ktime_set(0, (u64)(max - min) * NSEC_PER_USEC);

	for (;;) {
		__set_current_state(TASK_UNINTERRUPTIBLE);
		/* Do not return before the requested sleep time has elapsed */
		if (!schedule_hrtimeout_range(&expires, delta, HRTIMER_MODE_ABS))
			break;
	}
}

Thanks,

	tglx
