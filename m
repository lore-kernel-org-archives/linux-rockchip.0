From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: rockchip-vpu driver usability
Date: Mon, 2 Jul 2018 16:30:52 +0900
Message-ID: <CAAFQd5Ddc2w7GdzWcSPBKbpnkc2KLAXePBEbSNjbkt9aNjhOAg@mail.gmail.com>
References: <20180524103431.63eog25qynr72ots@tarshish>
 <CAAFQd5DZkLoR3HCD74JdWQzg4XZ8Rmh9=DCgAhYX=7ue-iHDtA@mail.gmail.com>
 <20180524121824.fdtyjez3lc5pftfz@tarshish>
 <CAAFQd5Ap9v2-oyxZ8UK1bfsfEKd7K+=1erz+aK75SsLdd1SxHQ@mail.gmail.com>
 <5B07DCF9.2090709@rock-chips.com> <20180702072458.gcvwf24m63u2zg4m@tarshish>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180702072458.gcvwf24m63u2zg4m@tarshish>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Jeffy <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, myy-tmjzNUIc0P1+EYZtW95mkQ@public.gmane.org, Alpha Lin <alpha.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jul 2, 2018 at 4:25 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:
>
> Hi Jeffy,
>
> On Fri, May 25, 2018 at 05:52:57PM +0800, JeffyChen wrote:
> > On 05/25/2018 02:10 PM, Tomasz Figa wrote:
> > > On Thu, May 24, 2018 at 9:18 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:
> > > > It looks like only v2 supports h.264 encoding. Does the v2 plugin work
> > > > with the rk3288?
> > >
> > > Hmm, looks like I missed the part about h264 in your original message (only
> > > noticed encoding). We didn't have a need to encode h264 on rk3288 devices.
> > > The need showed up only later when we were working on rk3399. This made
> > > both the driver and plugin for rk3288 lack h264 support.
> > >
> > > AFAICT the hardware programming interface differs between rk3288 and
> > > rk3399, so v2 might not work, but maybe you just need to reshuffle some
> > > registers.
> > >
> > > It's also possible that Rockchip has some code for it. Jeffy, do you know
> > > if there is h264 driver code and plugin for rk3288 available somewhere
> > > (based on the driver developed for Chrome OS 3.14 kernel)?
> >
> > well, i do saw a h264e driver for rk3288 in cros kernel:
> > chromiumos/src/third_party/kernel/local/drivers/media/platform/rockchip-vpu#
> > ls rk3288_vpu_hw_h264e.c
> >
> > and the related struct defined in v2 plugin:
> > libv4l-rockchip_v2/libvepu/common/rk_venc.h:120:struct
> > rk3288_h264e_reg_params {
>
> Thanks for the reference.
>
> I'm trying to build the v4l plugin stand alone. But in the repo I only see a
> Makefile.am file. I guess it integrates with the higher level build system of
> CromiumOS.
>
> Do you have any idea how to build this v4l plugin code stand-alone?

It's supposed to be built as a part of v4l-utils
(http://git.linuxtv.org/v4l-utils.git), which includes libv4l. We
build it with 1.6.0, but I guess newer versions may work too.

For reference, here's our ebuild (for Gentoo portage) to build it:
https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/master/media-libs/libv4lplugins/libv4lplugins-9999.ebuild

Best regards,
Tomasz
