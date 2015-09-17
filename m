From: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 1/3] clocksource: rockchip: Make the driver more readability
 and compatible
Date: Thu, 17 Sep 2015 12:57:53 +0200
Message-ID: <55FA9CB1.8010402@linaro.org>
References: <1442476272-31723-1-git-send-email-wxt@rock-chips.com> <1442476272-31723-2-git-send-email-wxt@rock-chips.com> <55FA83D5.9010504@linaro.org> <55FA87AA.4040807@gmail.com> <55FA9099.7000903@linaro.org> <alpine.DEB.2.11.1509171217080.3951@nanos>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <alpine.DEB.2.11.1509171217080.3951@nanos>
Sender: linux-kernel-owner@vger.kernel.org
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Caesar Wang <caesar.upstream@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, Caesar Wang <wxt@rock-chips.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 09/17/2015 12:19 PM, Thomas Gleixner wrote:
> On Thu, 17 Sep 2015, Daniel Lezcano wrote:
>> On 09/17/2015 11:28 AM, Caesar Wang wrote:
>>>> I think the NO_IRQ definition is missing for ARM64.
>>>
>>> Yep, Maybe better to compatible if we don't use the 'NO_IRQ',
>>
>> Hmm, after digging into drivers/of/irq.c and kernel/irq/irqdomain.c
>>
>> when there is an error it returns zero. So NO_IRQ and -1 are not cor=
rect and
>> on the other side zero can be a valid irq. That sounds a little bit =
fuzzy to
>> me.
>
> IRQ0 is invalid for historical reasons. End of story.

Hi Thomas,

there is one thing I don't understand.

If the IRQ0 is invalid, irq_of_parse_and_map returning zero means an=20
error and from what you said it is ok.

But I see the NO_IRQ on ARM is (-1) and the drivers are checking with=20
NO_IRQ the return code of irq_of_parse_and_map. So if there is an error=
,=20
that won't be detected.

=46or this specific use case above, shall irq_of_parse_and_map returns=20
NO_IRQ or the caller checks against zero ?

Beside that, some drivers are internally defining NO_IRQ:
drivers/scsi/NCR5380.h
drivers/ata/sata_dwc_460ex.c
drivers/input/touchscreen/ucb1400_ts.c
drivers/mmc/host/of_mmc_spi.c
drivers/rtc/rtc-m48t59.c
drivers/scsi/NCR5380.h

I don't know the historical changes and the subtleties of the irq=20
subsystem (I guess it is considerably complicated by each architecture=20
specific bits and the drivers supported on different architectures)

If you have the time, can you give some clarification ?

Thanks

   -- Daniel

--=20
  <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software fo=
r ARM SoCs

=46ollow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
