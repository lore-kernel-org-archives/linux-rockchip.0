From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 1/2] timers: Fix usleep_range() in the context of wake_up_process()
Date: Thu, 20 Oct 2016 16:36:45 -0700
Message-ID: <CAD=FV=U0sURwAmsiLg0q+=e8o7NfJLWEUAu4zeY1so83cDqXhA@mail.gmail.com>
References: <1476995664-15668-1-git-send-email-dianders@chromium.org> <alpine.DEB.2.20.1610202306550.4938@nanos>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <alpine.DEB.2.20.1610202306550.4938@nanos>
Sender: linux-kernel-owner@vger.kernel.org
To: Thomas Gleixner <tglx@linutronix.de>
Cc: John Stultz <john.stultz@linaro.org>, Andreas Mohr <andi@lisas.de>, Brian Norris <briannorris@chromium.org>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, Tony Xie <tony.xie@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Guenter Roeck <linux@roeck-us.net>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "broonie@kernel.org" <broonie@kernel.org>, Daniel Kurtz <djkurtz@chromium.org>, Akihiro Tsukada <tskd08@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Oct 20, 2016 at 2:25 PM, Thomas Gleixner <tglx@linutronix.de> wrote:
> On Thu, 20 Oct 2016, Douglas Anderson wrote:
>> - An effort was made to look for users relying on the old behavior by
>>   looking for usleep_range() in the same file as wake_up_process().
>>   No problems was found by this search, though it is conceivable that
>>   someone could have put the sleep and wakeup in two different files.
>> - An effort was made to ask several upstream maintainers if they were
>>   aware of people relying on wake_up_process() to wake up
>>   usleep_range().  No maintainers were aware of that but they were aware
>>   of many people relying on usleep_range() never returning before the
>>   minimum.
>
> Thanks for going the extra mile !
>
>>  static void __sched do_usleep_range(unsigned long min, unsigned long max)
>>  {
>> +     ktime_t now, end;
>>       ktime_t kmin;
>>       u64 delta;
>> +     int ret;
>>
>> -     kmin = ktime_set(0, min * NSEC_PER_USEC);
>> +     now = ktime_get();
>> +     end = ktime_add_us(now, min);
>
> So you calculate the absolute expiry time here.
>
>>       delta = (u64)(max - min) * NSEC_PER_USEC;
>> -     schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
>> +     do {
>> +             kmin = ktime_sub(end, now);
>> +             ret = schedule_hrtimeout_range(&kmin, delta, HRTIMER_MODE_REL);
>
> And then you schedule the thing relative. That does not make sense.
>
>> +
>> +             /*
>> +              * If schedule_hrtimeout_range() returns 0 then we actually
>> +              * hit the timeout. If not then we need to re-calculate the
>> +              * new timeout ourselves.
>> +              */
>> +             if (ret == 0)
>> +                     break;
>> +
>> +             now = ktime_get();
>
> And this is broken because schedule_hrtimeout_range() returns with task
> state TASK_RUNNING so the next schedule_hrtimeout_range() will return
> -EINTR again because nothing sets the task state back to UNINTERRUPTIBLE.
> So instead of sleeping you busy loop.

That explains the mystery of why my delays were always so precise in
the test.  I was a bit baffled by the fact that I was ending up with a
delay of almost exactly 50001 or 50002 in my test case.

Thank you for catching!


> What you really want to do is something like this:
>
> void __sched usleep_range(unsigned long min, unsigned long max)
> {
>         ktime_t expires = ktime_add_us(ktime_get(), min * NSEC_PER_USEC);
>         ktime_t delta = ktime_set(0, (u64)(max - min) * NSEC_PER_USEC);
>
>         for (;;) {
>                 __set_current_state(TASK_UNINTERRUPTIBLE);
>                 /* Do not return before the requested sleep time has elapsed */
>                 if (!schedule_hrtimeout_range(&expires, delta, HRTIMER_MODE_ABS))
>                         break;
>         }
> }

The above mostly works other than some small fixups.  Thanks!

...other than small fixups, the one substantive change I'll make is to
actually check the timeout in the loop above.  If I use your code with
my test, I find that, even though I'm waking up every millisecond I
still end up not exiting the loop until the upper bound of the delay.

Presumably this happens because:

  a_time_in_the_past = ktime_sub_us(ktime_get(), 10);
  schedule_hrtimeout_range(&a_time_in_the_past, delta, HRTIMER_MODE_ABS)

...delays "delta" nano seconds even though "a_time_in_the_past" is in
the past.  I presume that behavior is OK (let me know if it's not).

In the case of usleep_range() if we're waking up anyway, it seems
sensible to spend a few cycles to see if the minimum bound has already
past.


I'll plan to send a new version tomorrow unless I hear that you don't
like the above.


-Doug
