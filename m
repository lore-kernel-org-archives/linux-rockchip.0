From: "Huang, Tao" <huangtao@rock-chips.com>
Subject: Re: [PATCH 2/5] clocksource: rockchip: remove unnecessary clear irq
 before request_irq
Date: Wed, 1 Jun 2016 10:30:36 +0800
Message-ID: <574E48CC.1040004@rock-chips.com>
References: <1464169802-6033-1-git-send-email-wxt@rock-chips.com>
 <1464169802-6033-3-git-send-email-wxt@rock-chips.com>
 <574CC839.60608@linaro.org>
 <CAD=FV=U5zqU0CMeg1dDTYHrRqWAxTQO_xk2T7p09GJuj-Fn9Gw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=U5zqU0CMeg1dDTYHrRqWAxTQO_xk2T7p09GJuj-Fn9Gw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Caesar Wang <wxt@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@google.com>, Stephen Barber <smbarber@google.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Thomas Gleixner <tglx@linutronix.de>, Eddie Cai <cf@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Julius Werner <jwerner@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug:
On 2016=E5=B9=B406=E6=9C=8801=E6=97=A5 01:03, Doug Anderson wrote:
> Hi,
>=20
> On Mon, May 30, 2016 at 4:09 PM, Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:
>> On 05/25/2016 11:49 AM, Caesar Wang wrote:
>>>
>>> From: Huang Tao <huangtao@rock-chips.com>
>>>
>>> rk_timer_interrupt_clear and rk_timer_disable is unnecessary before
>>> request_irq. Timer should keep disabled before booting Linux.
>>
>>
>> That's true in the perfect world :/ Some version has u-boot letting =
the
>> timer with irq enabled, therefore as soon as request_irq is done, an=
 irq
>> fires and leads to a kernel panic.
>>
>> On the other side, this timer is not used on the other rockchip vers=
ion than
>> rk3399 because of no need of a broadcast timer, so removing these tw=
o lines
>> may be acceptable.
>>
>> Can try the changes with another board, eg rk3288 (and forcing to us=
e this
>> timer). Can you do the test and confirm it does not break with diffe=
rent
>> version of u-boot ?
>=20
> Actually, I'm not even sure that's true in a perfect world.  ;)  Ther=
e
> are two main problems that might be lurking here:
>=20
> 1. On exynos5 devices I've worked with, the private timer (MCT)
> actually shared the same physical counter with the ARM Architected
> Timer.  IIRC stopping or resetting the MCT had the effect of stopping
> / resetting the Arch Timer.  Is it the same for you?  As I understand
> it the Arch Timer isn't supposed to ever be stopped or reset.  If
> firmware left the timer stopped and the kernel happened to be compile=
d
> without support for the Rockchip timer (but had the Arch Timers) then
> things would be very broken.  Also the early kernel boot might be
> broken if the Arch Timer inits before the Rockchip timer.
>=20
> NOTE: If your timer and the Arch Timer are totally separate then poin=
t
> #1 is not important.

We never use the timer which provide clock source of arch timer as
clockevent timer. If we do such stupid thing, when rk timer disabled,
the arch timer will stop too. Generally, we use this special timer as
clocksouce or never touch it again when it is running.

>=20
>=20
> 2. Historically in Chrome OS there's been an unofficial agreement tha=
t
> the firmware would start its high speed timer as soon as possible at
> bootup and that this could be used to (roughly) measure the time
> between the start of firmware and the start of the kernel.  That mean=
s
> that the kernel was expecting the timer to actually be running when i=
t
> started up.  Yup, this is a bit of a hack and I'm not sure it's
> terribly well documented, but it does provide a reason that firmware
> might have left the timer running.

Why you chose the timer shared with Linux kernel, there are so many
timer? I think loader should do the right thing, uninit the resources
when it boot the kernel. I believe this code is lagacy from very old
chip such as rk2908 which is Cortex-A8. There are not arch timer, so th=
e
loader may keep the timer running when enter kernel. Any way, if we
adopt the code suggested by Daniel, it is safe to keep the code.
