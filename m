From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 1/3] clocksource: rockchip: Make the driver more readability
 and compatible
Date: Thu, 17 Sep 2015 12:06:17 +0200
Message-ID: <55FA9099.7000903@linaro.org>
References: <1442476272-31723-1-git-send-email-wxt@rock-chips.com> <1442476272-31723-2-git-send-email-wxt@rock-chips.com> <55FA83D5.9010504@linaro.org> <55FA87AA.4040807@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55FA87AA.4040807@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <caesar.upstream@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Cc: Caesar Wang <wxt@rock-chips.com>, linux-rockchip@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 09/17/2015 11:28 AM, Caesar Wang wrote:
> Hi Daniel,
>
>
> =E5=9C=A8 2015=E5=B9=B409=E6=9C=8817=E6=97=A5 17:11, Daniel Lezcano =E5=
=86=99=E9=81=93:
>>
>> Hi Caesar,
>>
>>
>> On 09/17/2015 09:51 AM, Caesar Wang wrote:
>>> Build the arm64 SoCs (e.g.: RK3368) on Rockchip platform,
>>> There are some failure with build up on timer driver for rockchip.
>>>
>>> logs:
>>> ...
>>> drivers/clocksource/rockchip_timer.c:156:13: error: 'NO_IRQ' undecl=
ared
>>
>> I think the NO_IRQ definition is missing for ARM64.
>
> Yep, Maybe better to compatible if we don't use the 'NO_IRQ',

Hmm, after digging into drivers/of/irq.c and kernel/irq/irqdomain.c

when there is an error it returns zero. So NO_IRQ and -1 are not correc=
t=20
and on the other side zero can be a valid irq. That sounds a little bit=
=20
fuzzy to me.

>>> /tmp/ccdAnNy5.s:47: Error: missing immediate expression at  operand=
 1 --
>>> `dsb`
>>> ...
>>>
>>> The problem was different semantics of dsb on btw arm32 and arm64,
>>> Here we can convert the dsb with insteading of dsb(sy).
>>
>> What happens to ARM32 then ?
>>
>
> The dsb() is ok for ARM32, the ARM32/64 are OK if we can convert the
> dsb() to dsb(sy).
> I believe all drivers with 'dsb()' have same issue on ARM64 platform.
>
>>> Meanwhile, I change a bit to make the code more readability for dri=
ver
>>> when I check the code style.
>>>
>>> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
>>
>>
>
>


--=20
  <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software fo=
r ARM SoCs

=46ollow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
