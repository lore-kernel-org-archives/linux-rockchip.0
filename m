From: Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Tue, 11 Oct 2016 21:30:34 +0200
Message-ID: <20161011193034.GA10646@rhlx01.hs-esslingen.de>
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

Hi,

decided to write a review now, slightly delayed, sorry.

On Mon, Oct 10, 2016 at 02:04:02PM -0700, Douglas Anderson wrote:
> diff --git a/kernel/time/timer.c b/kernel/time/timer.c
> index 32bf6f75a8fe..219439efd56a 100644
> --- a/kernel/time/timer.c
> +++ b/kernel/time/timer.c
> @@ -1898,12 +1898,28 @@ EXPORT_SYMBOL(msleep_interruptible);
>  
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
>  	delta = (u64)(max - min) * NSEC_PER_USEC;
> -	schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
> +	do {
> +		kmin = ktime_sub(end, now);
> +		ret = schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
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
> +	} while (ktime_before(now, end));

This loop implementation relies on negative kmin (result of ktime_sub())
getting internally handled by schedule_hrtimeout_range() as a 0 result.
If that ain't the case, then the loop itself will need to handle
negative values.
OK, scratch that, due to guaranteed-unchanged values of now and end,
result of directly subsequent ktime_sub() is guaranteed to
not deviate from what ktime_before() figured.
However, this is somewhat differing handling of these two APIs.


Which brings me to my second point:
somehow doing both ktime_before() and ktime_sub() feels redundant,
since they are both about arguments now and end,
i.e. they are *both* evaluating a "distance".
(this could simply calculate the distance, and then
1. use that calculated distance value, and
2. check that calculated distance value against being negative).
So, most likely it ought to be achievable to have just *one* of these
two active (which would likely be ktime_sub(),
simply since we need its result as schedule_hrtimeout_range() input...).
And that way we would save big (hohumm) on instruction cache footprint :)

Hmm, but ktime API does not have sufficiently open-coded handling of the
ktime_sub()-based distance value - the possibly only way to do an
"is it negative?" check would be by doing
ktime_compare(dist, ktime_null_value),
which might be pointless
since it's a comparably large effort
vs. the current ktime_before(), ktime_sub() case.

BTW, another argument for loop rework might be that
the result of ktime_sub() might already be improper
(due to being negative!) for
subsequent invocation of schedule_hrtimeout_range(),
i.e. there's an argument to be made that
the loop tail check instead ought to be done as a negative-value check
directly prior to schedule_hrtimeout_range() invocation.


Hmm, if schedule_hrtimeout_range() can be relied on to
internally properly be doing the negative check,
then one could simply say that
the annoyingly extra calculation via ktime_before() call
should simply be removed completely.
Which would be a good step since it would centralize protocol behaviour
within the inner handling of the helper
rather than bloating user-side instruction cache footprint.


</micro_optimization> ?

Thanks,

Andreas Mohr
