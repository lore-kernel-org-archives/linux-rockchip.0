From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] Revert "rockchip: make sure timer7 is enabled on rk3288 platforms"
Date: Thu, 26 Dec 2019 21:27:45 +0100
Message-ID: <1865524.AMUeMo0HA2@phil>
References: <20191225025908.25305-1-kever.yang@rock-chips.com> <CAGb2v675A0fG9wHiJj_pkVQBmBFDf_u1L_dxiD9pT_8VBjujzw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAGb2v675A0fG9wHiJj_pkVQBmBFDf_u1L_dxiD9pT_8VBjujzw@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Kever Yang <kever.yang@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 25. Dezember 2019, 04:02:29 CET schrieb Chen-Yu Tsai:
> On Wed, Dec 25, 2019 at 10:59 AM Kever Yang <kever.yang@rock-chips.com> wrote:
> >
> > This reverts commit 2a9fe3ca84afff6259820c4f62e579f41476becc.
> > All the U-Boot version for rk3288 including mainline, rockchip
> > legacy/next-dev, have init the timer7, so no need to init it in kernel
> > again.
> 
> What about the ChromeOS bootloader?

Coreboot does seem to start timer7 correctly:
https://github.com/coreboot/coreboot/blob/master/src/soc/rockchip/rk3288/timer.c

But old rk3288 Android TV-boxes do contain bootloaders not doing that and
as the owners of such boxes will most often not have too great development
tools available, that would break newer kernels for them, which is really bad
as we value backwards compatibility very much.

Instead (just checked theoretically) could we just check for psci existence?
I.e. the calling order seems to be:

start_kernel() (in init/main.c)
	-> setup_arch()
		-> psci_dt_init()
			-> populates struct psci_ops
	-> time_init()
		-> machine_desc->init_time()

so in rockchip_timer_init() you should "just" be able to check like

	if (of_machine_is_compatible("rockchip,rk3288") && !psci_ops.cpu_on) {
		/* timer init */
	}


Heiko

> > One more reason is that if  we enable the trust for rk3288, then timer7 is
> > not able to be accessed in kernel.
> >
> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> 
