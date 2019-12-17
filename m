From: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH 0/4] mfd: RK8xx tidyup
Date: Tue, 17 Dec 2019 05:38:31 +0530
Message-ID: <CANAwSgSfA9pMQxmvkAfDfH_wsBovc9hCivoo_YU1+ZMOD0OuYg@mail.gmail.com>
References: <cover.1575932654.git.robin.murphy@arm.com> <20191216111219.GB2369@dell>
 <3c78d334-9110-e88c-84d0-2f41c28a6317@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3c78d334-9110-e88c-84d0-2f41c28a6317@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>
Cc: Lee Jones <lee.jones@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Linux Kernel <linux-kernel@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Daniel Schultz <d.schultz@phytec.de>
List-Id: linux-rockchip.vger.kernel.org

Hi All,

On Tue, 17 Dec 2019 at 05:00, Soeren Moch <smoch@web.de> wrote:
>
> On 16.12.19 12:12, Lee Jones wrote:
> > On Tue, 10 Dec 2019, Robin Murphy wrote:
> >
> >> Hi all,
> >>
> >> In trying to debug suspend issues on my RK3328 box, I was looking at
> >> how the RK8xx driver handles the RK805 sleep pin, and frankly the whole
> >> driver seemed untidy enough to warrant some cleanup and minor fixes
> >> before going any further. I've based the series on top of Soeren's
> >> "mfd: rk808: Always use poweroff when requested" patch[1].
> >>
> >> Note that I've only had time to build-test these patches so far, but I
> >> wanted to share them early for the sake of discussion in response to
> >> the other thread[2].
> >>
> >> Robin.
> >>
> >> [1] https://patchwork.kernel.org/patch/11279249/
> >> [2] https://patchwork.kernel.org/cover/11276945/
> >>
> >> Robin Murphy (4):
> >>   mfd: rk808: Set global instance unconditionally
> >>   mfd: rk808: Always register syscore ops
> >>   mfd: rk808: Reduce shutdown duplication
> >>   mfd: rk808: Convert RK805 to syscore/PM ops
> >>
> >>  drivers/mfd/rk808.c       | 122 ++++++++++++++++----------------------
> >>  include/linux/mfd/rk808.h |   2 -
> >>  2 files changed, 50 insertions(+), 74 deletions(-)
> > Not sure what's happening with these (competing?) patch-sets.  I'm not
> > planning on getting involved until you guys have arrived at and agreed
> > upon a single solution.
> >
> My understanding is like this:
>
> The patch [1] fixes power-off to use the method requested in the
> devicetree. This patch series on top of that cleans up the rk808
> power-off code, which perfectly makes sense for me. I think these 2
> patch series are not controversial as such.
>
> And then we have the series [2], which is a mix of
> - some clean-up
> - converting the existing code to use syscon_shutdown for actual power-off
>
> Robin, Heiko, and myself agree that the shutdown method introduced in
> [2] is fundamentally wrong. All syscon_shutdown methods of all
> registered syscons have to run before the actual shutdown, what is
> triggered in pm_power_off. This is how it works now, and what is the
> right way to do it. Patch series [2] breaks this promise since it does
> the actual shutdown in the middle of the chain of syscon_shutdown handlers.
>
> In the discussion about series [2] Anand repeatedly talks about restart
> problems. But this rk808 mfd driver is not involved in restart, also
> patch series [2]
> does not change that. So I cannot see what should be the point here.
>
Sorry I dont have any expert knowledge on this, so continue on best approach..

> There was an earlier attempt [3] to enhance this rk808 mfd driver for
> restart. I'm not sure, however, what happened to this. For me it could
> make sense to reimplement such restart functionality on top of this
> "mfd: RK8xx tidyup" series.
>
> Regards,
> Soeren
>
> [3] https://lore.kernel.org/patchwork/patch/934323/
>
>

-Anand
