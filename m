From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: rockchip-vpu driver usability
Date: Wed, 18 Jul 2018 14:44:18 +0900
Message-ID: <CAAFQd5DwBXKc9G4tRmSjih=+Qccjyd+VKOXCJp2YMOQkouCymg@mail.gmail.com>
References: <CAAFQd5DZkLoR3HCD74JdWQzg4XZ8Rmh9=DCgAhYX=7ue-iHDtA@mail.gmail.com>
 <20180524121824.fdtyjez3lc5pftfz@tarshish>
 <CAAFQd5Ap9v2-oyxZ8UK1bfsfEKd7K+=1erz+aK75SsLdd1SxHQ@mail.gmail.com>
 <5B07DCF9.2090709@rock-chips.com> <20180702072458.gcvwf24m63u2zg4m@tarshish>
 <CAAFQd5Ddc2w7GdzWcSPBKbpnkc2KLAXePBEbSNjbkt9aNjhOAg@mail.gmail.com>
 <20180702145707.kogqcuuqqofyugoc@tarshish>
 <CAAFQd5CytjMN1ZvX27TGuHbfywbQ3Lmqh6UV6YJdgSouqQ_+8w@mail.gmail.com>
 <20180704085537.vglkza6bwllx3573@sapphire.tkos.co.il>
 <CAAFQd5AYQVY-MPVsGn4XeM6m+uTV+-MYdU4DwmxkGCPr0BQthw@mail.gmail.com>
 <20180705121447.e65uehk5q2vung7e@tarshish>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180705121447.e65uehk5q2vung7e@tarshish>
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

Hi Baruch,

Sorry, it looks like this message has been stuck somewhere in my
mailbox for quite a long time.

On Thu, Jul 5, 2018 at 9:14 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:
>
> Hi Tomasz,
>
> On Wed, Jul 04, 2018 at 06:04:35PM +0900, Tomasz Figa wrote:
> > On Wed, Jul 4, 2018 at 5:55 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:
> > > So to get the rockchip-vpu driver working with current kernel I need to
> > > also forward-port the embryonic Request API as well. I'll look into this.
> > >
> > > Are you aware of any other dependencies?
> >
> > I think V4L2 compound controls, but that should be already in
> > upstream. I'll try to look up relevant Chromium kernel patches for you
> > a bit later.
> >
> > > The alternative for me is to back-port rkisp1 video capture driver to vendor
> > > provided 4.4 kernel so I can use the MPP shim driver. I hope to not get there.
> > >
> > > The easiest option, of course, is to just wait for the Request API and the new
> > > codec driver. I'm not sure I can afford to wait though.
> >
> > I think you could also try to remove the use of config stores and make
> > the driver latch control values in QBUF(OUTPUT). You would also need
> > to adjust the plugin code accordingly.
>
> I'm trying to wrap me head around the config_store implementation in the
> 'chromeos-4.4' kernel branch (commit a36974eae81a). I think I get the general
> idea. Still need to figure out the details.
>
> I'm not sure I get your QBUF(OUTPUT) suggestion, though. Does "latch" means
> that the driver attaches the same controls to all buffers, essentially
> behaving like a traditional V4L2 device? Something else?
>
> The limitation of being able to encode only one stream at a time is acceptable
> for my application.

The point is that userspace needs to specify a number of controls
exactly for particular frame. Let's consider following sequence in
user space:

1) S_CTRL(control X, 1)
2) QBUF(buffer 1, OUTPUT)
3) S_CTRL(control X, 2)
4) QBUF(buffer 2, OUTPUT)
5) S_CTRL(control X, 3)
6) QBUF(buffer 3, OUTPUT)

Traditional V4L2 device would start processing buffer 1 after 2)
completes, but all the further ioctls would just execute
asynchronously, possibly leading to buffer 2 being processed with
control X set to 3 (not 2) or even corrupting processing results of
buffer 1, since control X changes during the processing.

Latching would mean that rather than setting the active control value
in S_CTRL, the driver would keep the last recently set value and write
it to per-buffer data in QBUF.

Obviously, if your user space waits for processing to end between 2)
and 3) (and 4) and 5)), each buffer would be processed with correct
control value even with traditional behavior.

Best regards,
Tomasz
