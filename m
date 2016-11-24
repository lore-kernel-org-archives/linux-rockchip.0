From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: Re: [PATCH 7/9] clocksource/drivers/rockchip_timer: implement clocksource timer
Date: Thu, 24 Nov 2016 16:05:55 +0300
Message-ID: <0E972AC9-1132-4D0B-BF25-918BC1AA1A49@gmail.com>
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
> In your dts-patch you reuse the rk3288-timer compatible value, which =
is also=20
> non-ideal.

rockchip,rk-timer.txt states what I should use rockchip,rk3288-timer for =
rk3188 timers:

Required properties:
- compatible: shall be one of:
  "rockchip,rk3288-timer" - for rk3066, rk3036, rk3188, rk322x, rk3288, =
rk3368

Should I add "rockchip,rk3188-timer=C2=BB (or better =
"rockchip,rk3036-timer=C2=BB) ? Or may be second
approach should be used?

> What you may want to do is introduce a rockchip,rk3188-timer =
compatible and=20
> then make the timer-driver act accordingly, as you then know you are =
on a=20
> rk3188-board ... see drivers attaching specific structs to the =
of_device_id=20
> entries. =46rom the documentation

May be it is better to prepend compatible string with =
"rockchip,rk3188-timer=C2=BB in the dts
file only? elinux[1] recommend build compatible string from "exact =
device=C2=BB string and
=C2=ABother devices=C2=BB that the device is compatible with.

As =C2=ABother devices=C2=BB string defined already, I use it.

[1] =
http://elinux.org/Device_Tree_Usage#Understanding_the_compatible_Property

	timer0: timer@20038000 {
		compatible =3D "rockchip,rk3188-timer", =
"rockchip,rk3288-timer=C2=BB;
                =E2=80=A6
	};

Just found what rk3036 already declared such way:

rk3036.dtsi:	timer: timer@20044000 {
rk3036.dtsi:		compatible =3D "rockchip,rk3036-timer", =
"rockchip,rk3288-timer=C2=BB;

>=20
> it also shouldn't really matter which timer=20
> you use as clocksource, as on the rk3188 it seems all of them act the =
same way=20
> (except timer3 being always on).

You are right.

I sent dts file with general timer settings, without clockevent enabled, =
so one could pick
up timer and setup it in the board dts (radxarock, for example) like:

&timer0 {
    rockchip,clocksource;
    status =3D =C2=ABokay=C2=BB;
};

> When touching devicetree-properties, please also adapt the binding =
document
> 	Documentation/devicetree/bindings/timer,rockchip,rk-timer.txt
> in this case and also include the devicetree maintainers.

If the patch[2] ok, I'll resend it and include devicetree maintainers.

[2] =
http://lists.infradead.org/pipermail/linux-rockchip/2016-November/013148.h=
tml

Regards,
Alexander.
