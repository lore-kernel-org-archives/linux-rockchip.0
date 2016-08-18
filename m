From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] soc: rockchip: power-domain: Don't (incorrectly) set
 rk3399 up/down counts
Date: Fri, 19 Aug 2016 00:03:01 +0200
Message-ID: <86565478.t9HNV2EDZM@phil>
References: <1471546561-4459-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1471546561-4459-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

Am Donnerstag, 18. August 2016, 11:56:01 CEST schrieb Douglas Anderson:
> On rk3288 it was important that powerdown and powerup counts for the
> CPU/GPU in the kernel because:

somehow this sentence seems to miss some verb or so :-)

> * The power on default was crazy long.
> * We couldn't rely on the firmware to set this up because really this
>   wasn't the firmware's job--the kernel was the only one that really
>   cared about bringing up / down CPUs and the GPU and doing suspend /
>   resume (which involves bringing up / down CPUs).
> 
> On newer ARM systems (like rk3399) ARM Trusted Firmware is in charge of
> bringing up and down the CPUs and it really should be in charge of
> setting all these counts right.  After all ATF is in charge of suspend /
> resume and CPU up / down.  Let's get out of the way and let ATF do its
> job.
> 
> A few other motivations for doing this:
> * Depending on another configuration (PMU_24M_EN_CFG) these counts can
>   be either in 24M or 32k cycles.  Thus, though ATF isn't really so
>   involved in bringing up the GPU, ATF should probably manage the counts
>   for everything so it can also manage the 24M / 32k choice.
> * It turns out that (right now) 24M mode is broken on rk3399 and not
>   being used.  That means that the count the kernel was programming
>   in (24) was not 1 us (which it seems was intended) but was actually
>   .75 ms
> * On rk3399 there are actually 2 separate registers for setting CPU
>   up/down time plus 1 register for GPU up/down time.  The curent kernel
>   code actually was putting the register for the "little" cores in the
>   "CPU" slot and the register for the "big" cores in the "GPU" slot.  It
>   was never initting the GPU counts.
> 
> Note: this change assumes that ATF will actually set these values at
> boot, as I'm proposing in <http://crosreview.com/372381>.

I'd hope to see a link to an ATF github pull request here :-)
But I guess that simply needs some more discussion on your side.

> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

change itself looks good to me.

So I guess we'll just need to wait for the counterpart to land in the ATF or 
do you know if the poweron-defaults are somewhat sane?


Heiko
