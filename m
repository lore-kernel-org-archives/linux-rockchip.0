From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH 1/3] clocksource: rockchip: Make the driver more readability
 and compatible
Date: Fri, 18 Sep 2015 16:22:12 +0800
Message-ID: <55FBC9B4.2050904@gmail.com>
References: <1442476272-31723-1-git-send-email-wxt@rock-chips.com> <1442476272-31723-2-git-send-email-wxt@rock-chips.com> <55FA83D5.9010504@linaro.org> <55FA87AA.4040807@gmail.com> <55FA9099.7000903@linaro.org> <55FA93B0.40504@gmail.com> <55FBC36C.2090801@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55FBC36C.2090801@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Daniel,

=E5=9C=A8 2015=E5=B9=B409=E6=9C=8818=E6=97=A5 15:55, Daniel Lezcano =E5=
=86=99=E9=81=93:
> On 09/17/2015 12:19 PM, Caesar Wang wrote:
>>
>>
>> =E5=9C=A8 2015=E5=B9=B409=E6=9C=8817=E6=97=A5 18:06, Daniel Lezcano =
=E5=86=99=E9=81=93:
>>> On 09/17/2015 11:28 AM, Caesar Wang wrote:
>>>> Hi Daniel,
>>>>
>>>>
>>>> =E5=9C=A8 2015=E5=B9=B409=E6=9C=8817=E6=97=A5 17:11, Daniel Lezcan=
o =E5=86=99=E9=81=93:
>>>>>
>>>>> Hi Caesar,
>>>>>
>>>>>
>>>>> On 09/17/2015 09:51 AM, Caesar Wang wrote:
>>>>>> Build the arm64 SoCs (e.g.: RK3368) on Rockchip platform,
>>>>>> There are some failure with build up on timer driver for rockchi=
p.
>>>>>>
>>>>>> logs:
>>>>>> ...
>>>>>> drivers/clocksource/rockchip_timer.c:156:13: error: 'NO_IRQ'
>>>>>> undeclared
>>>>>
>>>>> I think the NO_IRQ definition is missing for ARM64.
>>>>
>>>> Yep, Maybe better to compatible if we don't use the 'NO_IRQ',
>>>
>>> Hmm, after digging into drivers/of/irq.c and kernel/irq/irqdomain.c
>>>
>>> when there is an error it returns zero. So NO_IRQ and -1 are not
>>> correct and on the other side zero can be a valid irq. That sounds =
a
>>> little bit fuzzy to me.
>>
>> I believe the 'NO_IRQ' is better select if 'NO_IRQ' is defined on AR=
M64
>> platform.
>>
>>      irq =3D irq_of_parse_and_map(np, 0);
>>
>>      if (irq  =3D=3D NO_IRQ)
>> ...
>> Also, that's ok if we instead of the 'irq < 0'  or  '!irq' , right?
>
>
> Hi Caesar,
>
> so regarding Thomas and Russel answers, let's replace NO_IRQ by '!irq=
'.

=46ixed, I will send the patch v1.

>
> Thanks.
>
>   -- Daniel
>
>

--=20
Thanks,
Caesar
