From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
Date: Wed, 13 Nov 2019 09:01:16 -0800
Message-ID: <CAD=FV=UjbPALRU2r0s27F4RxjsbDyQ+horUBezVQejk1pT=vqA@mail.gmail.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com> <20191111005158.25070-3-kever.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191111005158.25070-3-kever.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Elaine Zhang <zhangqing@rock-chips.com>, Peter Robinson <pbrobinson@gmail.com>, Akash Gajjar <akash@openedev.com>, Alexis Ballier <aballier@gentoo.org>, =?UTF-8?Q?Andrius_=C5=A0tikonas?= <andrius@stikonas.eu>, Andy Yan <andyshrk@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>, Hugh Cole-Baker <sigmaris@gmail.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Mark Rutland <mark.rutland@arm.com>, Nick Xie <nick@khadas.com>, Oskari Lemmela <oskari@lemmela.net>, Pragnesh Patel <Pragnesh_Patel@mentor.com>, Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Soeren Moch <smoch@web.de>, Vicente Bergas <vicencb@gmail.>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Sun, Nov 10, 2019 at 4:52 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Since there is no devfreq used for vdd_log, so the vdd_log(pwm regulator)
> will be 'enable' with the dts node at a default PWM state with high or low
> output. Both too high or too low for vdd_log is not good for the board,
> add init voltage for driver to make the regulator get into a know output.
>
> Note that this will be used by U-Boot for init voltage output, and this
> is very important for it may get system hang somewhere during system
> boot up with regulator enable and without this init value.

I'm a tad bit confused here.  When U-Boot boots the kernel, how is the
PWM configured?

I remember folks going through a lot of work to make sure that we
could actually _read_ the PWM state that the bootloader gave us and
report it as the initial voltage.  If the kernel ends up needing to
configure the PWM regulator's period for some reason, I remember it
would actually pick something close.  Is that not working for you?

For instance, on rk3288-veyron when I boot up mainline (no devfreq on
rk3288-veyron on mainline) the vdd_logic reports 1.2 volts because it
read what the bootloader left it as.

...are you saying that U-Boot doesn't configure the PWM and you're
trying to fix it up in the kernel?

-Doug


-Doug
