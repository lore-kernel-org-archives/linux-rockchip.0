From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] timers: Fix usleep_range() in the context of
 wake_up_process()
Date: Mon, 10 Oct 2016 13:12:39 -0700
Message-ID: <CAD=FV=XfQB=BG4o08hmjd5waOHo=PsW=RYhyDSY_kbAJcE6spQ@mail.gmail.com>
References: <1476125277-6061-1-git-send-email-dianders@chromium.org>
 <20161010200400.GA9230@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20161010200400.GA9230@localhost>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Tony Xie <tony.xie-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, John Stultz <john.stultz-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Oct 10, 2016 at 1:04 PM, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> Hi Doug,
>
> On Mon, Oct 10, 2016 at 11:47:57AM -0700, Doug Anderson wrote:
>> diff --git a/kernel/time/timer.c b/kernel/time/timer.c
>> index 32bf6f75a8fe..ab03c7e403a4 100644
>> --- a/kernel/time/timer.c
>> +++ b/kernel/time/timer.c
>> @@ -1898,12 +1898,29 @@ EXPORT_SYMBOL(msleep_interruptible);
>>
>>  static void __sched do_usleep_range(unsigned long min, unsigned long max)
>>  {
>> +     ktime_t start, end;
>>       ktime_t kmin;
>>       u64 delta;
>> +     unsigned long elapsed = 0;
>> +     int ret;
>> +
>> +     start = ktime_get();
>> +     do {
>> +             kmin = ktime_set(0, min * NSEC_PER_USEC);
>
> I believe 'min' is unmodified throughout, and therefore 'kmin' is
> computed to be the same minimum timeout in each loop. Shouldn't this be
> decreasing on each iteration of the loop? (i.e., either your compute
> 'kmin' differently here, or you recompute 'min' based on the elapsed
> time?)

Yes, I stupidly changed something at the last second and then didn't
test again after my stupid change.  Fix coming soon with all comments
addressed.  Sorry for posting broken code.  :( :( :(

-Doug
