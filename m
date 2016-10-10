From: Andreas Mohr <andi@lisas.de>
Subject: Re: [PATCH] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Mon, 10 Oct 2016 21:53:56 +0200
Message-ID: <20161010195356.GA30513@rhlx01.hs-esslingen.de>
References: <1476125277-6061-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1476125277-6061-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>, briannorris@chromium.org, huangtao@rock-chips.com, tony.xie@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Oct 10, 2016 at 11:47:57AM -0700, Douglas Anderson wrote:
> Users of usleep_range() expect that it will _never_ return in less time
> than the minimum passed parameter.  However, nothing in any of the code
> ensures this.  Specifically:

Ouch (aka: good catch! - by the reporter, though... ;)


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

Some thoughts:
- max >= min pre-condition is validated somewhere, I'd hope?
  (somewhere in outer API frame?)
> +		delta = (u64)(max - min) * NSEC_PER_USEC;

- there is a domain transition in there, **within** the repeated loop:
> +		elapsed = ktime_to_us(ktime_sub(end, start));
  -->
> +	} while (elapsed < min);
  should likely be made to be able to
  directly compare a *non-converted* "elapsed" value
  (IIRC there's an API such as ktime_before()).
  One could argue that the "repeat" case is the non-likely case
  (thus the conversion should possibly not be done before
  actually being required),
  however I guess it's exactly hitting the non-likely cases
  which will contribute towards
  non-predictable, non-deterministic latency behaviour of
  a code path
  (think RT requirements)

Thanks,

Andreas Mohr
