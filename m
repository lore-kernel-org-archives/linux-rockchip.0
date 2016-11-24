From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: Re: [PATCH 1/9] clocksource/drivers/rockchip_timer: split bc_timer into rk_timer and rk_clock_event_device
Date: Thu, 24 Nov 2016 15:12:15 +0300
Message-ID: <2217A50B-A694-4304-9628-23C4541FED5A@gmail.com>
References: <1479922177-20136-1-git-send-email-al.kochet@gmail.com> <47746094.VbGlCfGZW0@diego>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <47746094.VbGlCfGZW0@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: daniel.lezcano@linaro.org, tglx@linutronix.de, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hello Heiko,

> I haven't looked to deep into your patches yet, but what is missing is =
the=20
> general goal of your whole series.


I will be very grateful to receive feedback

> 24 =D0=BD=D0=BE=D1=8F=D0=B1. 2016 =D0=B3., =D0=B2 15:01, Heiko =
St=C3=BCbner <heiko@sntech.de> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB(=
=D0=B0):
>=20
> git format-patch has this nice "--cover-letter" option that creates =
obviously=20
> a cover-letter where you can describe what your series wants to =
achieve.
>=20
I=E2=80=99ve used --cover-letter option but forget to add message text. =
Just subject.
So all patches was sent without cover letter. I=E2=80=99ll be careful =
next time.

> For those reading along, I guess what you want to achieve should be =
what I=20
> describe below, so of course no need to resend just for this :-)
>=20
> -----
> The clock supplying the arm-global-timer on the rk3188 is coming from =
the
> the cpu clock itself and thus changes its rate everytime cpufreq =
adjusts the=20
> cpu frequency making this timer unsuitable as a stable clocksource.
>=20
> The rk3188, rk3288 and following socs share a separate timer block =
already=20
> handled by the rockchip-timer driver. Therefore adapt this driver to =
also be=20
> able to act as clocksource on rk3188.
> -----
>=20
> Right?

Yes, exactly as you wrote.

Regards,
Alexander.
