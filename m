From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 03/22] clocksource/drivers/rockchip: Make the driver more
 compatible
Date: Mon, 2 Nov 2015 17:32:22 +0100
Message-ID: <56379016.1080601@linaro.org>
References: <1446469011-22710-1-git-send-email-daniel.lezcano@linaro.org>
 <1446469011-22710-3-git-send-email-daniel.lezcano@linaro.org>
 <5093304.EN6Bc2EjLr@wuerfel>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5093304.EN6Bc2EjLr@wuerfel>
Sender: linux-kernel-owner@vger.kernel.org
To: Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Cc: tglx@linutronix.de, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, john.stultz@linaro.org, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On 11/02/2015 04:33 PM, Arnd Bergmann wrote:
> On Monday 02 November 2015 13:56:31 Daniel Lezcano wrote:
>>   static inline void rk_timer_disable(struct clock_event_device *ce)
>>   {
>>          writel_relaxed(TIMER_DISABLE, rk_base(ce) + TIMER_CONTROL_R=
EG);
>> -       dsb();
>> +       dsb(sy);
>>   }
>>
>>   static inline void rk_timer_enable(struct clock_event_device *ce, =
u32 flags)
>>   {
>>          writel_relaxed(TIMER_ENABLE | TIMER_INT_UNMASK | flags,
>>                         rk_base(ce) + TIMER_CONTROL_REG);
>> -       dsb();
>> +       dsb(sy);
>>   }
>>
>>
>
> This will fail the compile test, because dsb() is not available on no=
n-ARM
> architectures. Would it be enough to just use the normal writel() acc=
essor
> here?

That's a good question and I believe we can remove it but I have to=20
setup a rockchip board before doing the changes in order to test.

I the meantime added the COMPILE_TEST option but restricted it to ARM=20
and ARM64.



--=20
  <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software fo=
r ARM SoCs

=46ollow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
