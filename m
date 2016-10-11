From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Tue, 11 Oct 2016 11:54:28 -0700
Message-ID: <20161011185427.GA18048@localhost>
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
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

On Mon, Oct 10, 2016 at 02:04:02PM -0700, Doug Anderson wrote:
> Users of usleep_range() expect that it will _never_ return in less time
> than the minimum passed parameter.  However, nothing in any of the code
> ensures this.

Like you and Andreas, I also don't understand Thomas's objection to your
above claim on what users of this function expect. I believe you have
clearly laid out why the current behavior needs to be changed somehow;
IMO the only remaining question is "how." Your follow up covers all this
plenty well for me.

Either we need a fix along the lines of what you've proposed, or else we
need to completely rethink almost all uses of usleep_range().

...

> Reported-by: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> Changes in v2:
> - Fixed stupid bug that snuck in before posting
> - Use ktime_before
> - Remove delta from the loop
> 
> NOTE: Tested against 4.4 tree w/ backports.  I'm trying to get myself
> up and running with mainline again to test there now but it might be a
> little while.  Hopefully this time I don't shoot myself in the foot.
> 
>  kernel/time/timer.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)

I've reviewed the logic here to the best of my ability, and it looks
good to me now. I'll admit that I'm not really a timekeeping or
scheduler expert, but FWIW:

Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

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
>  }
>  
>  /**
> -- 
> 2.8.0.rc3.226.g39d4020
> 
