From: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] soc: rockchip: power-domain: remove PM clocks
Date: Wed, 28 Feb 2018 13:32:57 +0100
Message-ID: <CAMuHMdWdVdregCRh17Jfa92csBruZvLzAK+M8uajif0BSJTcaw@mail.gmail.com>
References: <20180228111113.13639-1-jeffy.chen@rock-chips.com>
 <CAMuHMdWLL9CxmxSLsqs1QX0dDHVhp4NrW4Me2EZaZE_bJ330bA@mail.gmail.com> <CAAFQd5CLXUwH6jTq9ZOpbYt9-Xx-+Kgj-Nk+KujS=Y=qLByc9Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAAFQd5CLXUwH6jTq9ZOpbYt9-Xx-+Kgj-Nk+KujS=Y=qLByc9Q@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Caesar Wang <wxt@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Ulf Hansson <ulf.hansson@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Tomasz,

On Wed, Feb 28, 2018 at 1:29 PM, Tomasz Figa <tfiga@chromium.org> wrote:
> On Wed, Feb 28, 2018 at 9:17 PM, Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
>> On Wed, Feb 28, 2018 at 12:11 PM, Jeffy Chen <jeffy.chen@rock-chips.com> wrote:
>>> Currently we are adding all of the attached devices' clocks as pm clocks
>>> and enable them when powering on the power domain.
>>>
>>> This seems unnecessary, because those clocks are already controlled in
>>> the devices' drivers with better error handling.
>>>
>>> Tested on my chromebook minnie(rk3288) and chromebook kevin(rk3399).
>>>
>>> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
>>
>> Thanks for your patch!
>>
>> Just wondering: so you prefer to handle the clocks explicitly in all drivers,
>> instead of delegating this task to Runtime PM?
>
> Is it already possible to gate clocks immediately when the device
> idles, but defer turning the power domain off until time long enough
> to cover the power down and up latency elapses?

I'm not 100% sure.
Note that clocks are turned off when the device idles, while powering down
the power domain requires all devices in the domain to be idle.

> Also, how about systems where runtime PM is disabled? I think that's
> one of the reasons we control the clocks explicitly in the drivers
> anyway.

On many platforms, Runtime PM is always enabled.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
