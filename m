From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Mon, 10 Oct 2016 13:04:01 -0700
Message-ID: <20161010200400.GA9230@localhost>
References: <1476125277-6061-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1476125277-6061-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>, huangtao@rock-chips.com, tony.xie@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Andreas Mohr <andi@lisas.de>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

On Mon, Oct 10, 2016 at 11:47:57AM -0700, Doug Anderson wrote:
> diff --git a/kernel/time/timer.c b/kernel/time/timer.c
> index 32bf6f75a8fe..ab03c7e403a4 100644
> --- a/kernel/time/timer.c
> +++ b/kernel/time/timer.c
> @@ -1898,12 +1898,29 @@ EXPORT_SYMBOL(msleep_interruptible);
>  
>  static void __sched do_usleep_range(unsigned long min, unsigned long max)
>  {
> +	ktime_t start, end;
>  	ktime_t kmin;
>  	u64 delta;
> +	unsigned long elapsed = 0;
> +	int ret;
> +
> +	start = ktime_get();
> +	do {
> +		kmin = ktime_set(0, min * NSEC_PER_USEC);

I believe 'min' is unmodified throughout, and therefore 'kmin' is
computed to be the same minimum timeout in each loop. Shouldn't this be
decreasing on each iteration of the loop? (i.e., either your compute
'kmin' differently here, or you recompute 'min' based on the elapsed
time?)

> +		delta = (u64)(max - min) * NSEC_PER_USEC;
> +		ret = schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
> +
> +		/*
> +		 * If schedule_hrtimeout_range() returns 0 then we actually
> +		 * hit the timeout. If not then we need to re-calculate the
> +		 * new timeout ourselves.
> +		 */
> +		if (ret == 0)
> +			break;
>  
> -	kmin = ktime_set(0, min * NSEC_PER_USEC);
> -	delta = (u64)(max - min) * NSEC_PER_USEC;
> -	schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
> +		end = ktime_get();
> +		elapsed = ktime_to_us(ktime_sub(end, start));
> +	} while (elapsed < min);

I think Andreas had similar comments, but it seemed to me like
ktime_before() might be nicer. But (as Andreas did) you might get into
(premature?) micro-optimizations down that path, and I'm certainly not
an expert there.

>  }
>  
>  /**

Brian
