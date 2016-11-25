From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: Re: [PATCH 7/9] clocksource/drivers/rockchip_timer: implement clocksource timer
Date: Fri, 25 Nov 2016 12:17:53 +0300
Message-ID: <3FBBE6BD-3090-40AE-A4C7-5035D75A0F4C@gmail.com>
References: <1479922177-20136-1-git-send-email-al.kochet@gmail.com> <1479922177-20136-7-git-send-email-al.kochet@gmail.com> <FFD6E644-F68B-4880-BC76-88F6063D070E@gmail.com> <1800621.EhepfMxccR@diego>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1800621.EhepfMxccR@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: daniel.lezcano@linaro.org, tglx@linutronix.de, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hello Heiko!

> 24 =D0=BD=D0=BE=D1=8F=D0=B1. 2016 =D0=B3., =D0=B2 15:17, Heiko =
St=C3=BCbner <heiko@sntech.de> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB(=
=D0=B0):
>=20
> When touching devicetree-properties, please also adapt the binding =
document
> 	Documentation/devicetree/bindings/timer,rockchip,rk-timer.txt
> in this case and also include the devicetree maintainers.

Could you please clarify, i should send whole patch series and include =
devicetree maintainers
for whole patch series or i should send devicetree patches separately?


> 24 =D0=BD=D0=BE=D1=8F=D0=B1. 2016 =D0=B3., =D0=B2 16:21, Heiko =
St=C3=BCbner <heiko@sntech.de> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB(=
=D0=B0):
>=20
> correct, use both but also update the binding, like=20
> mmc/rockchip-dw-mshc.txt does.

Here devicetree patch for this:
http://www.spinics.net/lists/devicetree/msg152246.html


> 24 =D0=BD=D0=BE=D1=8F=D0=B1. 2016 =D0=B3., =D0=B2 17:32, Heiko =
St=C3=BCbner <heiko@sntech.de> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB(=
=D0=B0):
>=20
>> I may suggest such solution here: if I want clocksource, I have to =
declare
>> two timer in device tree. First probed timer would be clockevent and =
second
>> one would be clocksource. All other timers will be ignored. Is that
>> solution good?
>=20
> yep, sounds good, especially as with your patch 9/9 you already =
declare these=20
> necessary timers.
>=20
>> If I want one timer and want it be clocksource not clockevent how =
that
>> situation should be configured? Device tree not good for this. =
Kconfig not
>> good. Pass that configuration on kernel command line?
>=20
> simply ignore that case :-)


Here devicetree patch for this:
http://www.spinics.net/lists/devicetree/msg152247.html

And I=E2=80=99ll going to resend new patch series with discussed =
modifications.
It will contain only rk_timer and dts modifications.
I have to do more tests.

Regards,
Alexander.
