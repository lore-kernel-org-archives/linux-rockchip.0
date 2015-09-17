From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH 1/3] clocksource: rockchip: Make the driver more readability
 and compatible
Date: Thu, 17 Sep 2015 17:28:10 +0800
Message-ID: <55FA87AA.4040807@gmail.com>
References: <1442476272-31723-1-git-send-email-wxt@rock-chips.com> <1442476272-31723-2-git-send-email-wxt@rock-chips.com> <55FA83D5.9010504@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55FA83D5.9010504@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Cc: Caesar Wang <wxt@rock-chips.com>, linux-rockchip@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Daniel,


=E5=9C=A8 2015=E5=B9=B409=E6=9C=8817=E6=97=A5 17:11, Daniel Lezcano =E5=
=86=99=E9=81=93:
>
> Hi Caesar,
>
>
> On 09/17/2015 09:51 AM, Caesar Wang wrote:
>> Build the arm64 SoCs (e.g.: RK3368) on Rockchip platform,
>> There are some failure with build up on timer driver for rockchip.
>>
>> logs:
>> ...
>> drivers/clocksource/rockchip_timer.c:156:13: error: 'NO_IRQ' undecla=
red
>
> I think the NO_IRQ definition is missing for ARM64.

Yep, Maybe better to compatible if we don't use the 'NO_IRQ',

>
>> /tmp/ccdAnNy5.s:47: Error: missing immediate expression at  operand =
1 --
>> `dsb`
>> ...
>>
>> The problem was different semantics of dsb on btw arm32 and arm64,
>> Here we can convert the dsb with insteading of dsb(sy).
>
> What happens to ARM32 then ?
>

The dsb() is ok for ARM32, the ARM32/64 are OK if we can convert the=20
dsb() to dsb(sy).
I believe all drivers with 'dsb()' have same issue on ARM64 platform.

>> Meanwhile, I change a bit to make the code more readability for driv=
er
>> when I check the code style.
>>
>> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
>
>


--=20
Thanks,
Caesar
