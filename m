From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [RESEND PATCH v7 00/11] rockchip: Add new rk3399 boards
Date: Thu, 9 May 2019 18:06:57 +0530
Message-ID: <CAMty3ZCzY+UgHvA7gabt0vAbWR_zOGv3t=gFp9bJnmTOOU_aMg@mail.gmail.com>
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
 <b3755da63208dffc5c0f7676ece0fe55d4dfd4f7.camel@bootlin.com>
 <CAMty3ZBNGmO6Qjysih=4UROO4s6dyawWw8L13Ga7XFqBZyPdtA@mail.gmail.com>
 <2e7668d0bfd5d328c071730113fe8c63aaab62d0.camel@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2e7668d0bfd5d328c071730113fe8c63aaab62d0.camel-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, May 9, 2019 at 6:01 PM Paul Kocialkowski
<paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
>
> Hi,
>
> On Thu, 2019-05-09 at 16:15 +0530, Jagan Teki wrote:
> > Hi Paul,
> >
> > On Thu, May 9, 2019 at 12:38 PM Paul Kocialkowski
> > <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
> > > Hi,
> > >
> > > On Wed, 2019-05-08 at 11:11 +0530, Jagan Teki wrote:
> > > > (Sorry for the noice, I have missed to send two patches from v7)
> > > >
> > > > This is v7 resend patchset for New rk3399 boards support wrt previous
> > > > version[1]
> > > >
> > > > Unfortunately initial version of creating rk3399-u-boot.dtsi and
> > > > orangepi rk3399 changes are merged, so this is rework on top of
> > > > u-boot-rockchip/master.
> > > >
> > > > Overall this series add support below rk3399 boards
> > > > - NanoPI M4
> > > > - NanoPC T4
> > > > - NanoPI NEO4
> > > > - Orangepi RK3399
> > > > - Rock PI 4
> > > > - Rockpro64
> > > >
> > > > All the respective dts(i) files are synced from Linux 5.1-rc2 and few
> > > > dts(i) from linux-next.
> > > >
> > > > SoC u-boot specific dtsi rk3399-u-boot.dtsi changes are part of another
> > > > series [3].
> > > >
> > > > Out of all above boards Rockpor64, Rock-PI and Nanopi NEO4 would support
> > > > booting via Rockchip miniloader as of now.
> > >
> > > Could you send these two boards in a separate series so that we avoid
> > > merging them for now (because SPL support is broken) and then re-
> > > iterate the series later with the DDR bringup? Or maybe find a way to
> > > disable SPL support, but in any case, it's not ok to merge a board with
> > > SPL enabled and broken.
> >
> > I have explained the details about this concern on v2 [1], thought you
> > would comeback on the same line instead here.
>
> Yes, you have already explained the issue, but I don't think it's
> enough a justification to merge broken SPL support. If it was only
> partial or limited, it would be fine, but here it's just broken.
>
> > Anyway, making SPL as an optional is not an idea to go with Mainline
> > as we make many decisions with regards to make SPL is mandatory.
>
> Yes I think making SPL mandatory is a good idea, so that's why I'm
> suggesting that we don't merge the boards until they have SPL support.
>
> > Since the DDR is show stopper here (and it would really need a good
> > amount of time, since it effect the other boards), I can go with TPL
> > enabled boot-chain where ddr bin, SPL and U-Boot proper can be part of
> > booting stages. This way we can avoid skipping SPL usage, and many
> > config changes to make SPL optional.
>
> Honestly I don't really see the point of merging these boards at all if
> they don't have SPL support. People who really want to use them with
> the rockchip blob can cherry-pick the patches from the list in the
> meantime.
>
> It also creates incentive for people to free the DDR init, since that
> becomes a condition to have the board upstream.
>
> What do you think?

I don't know whether you get my point or not? these boards are not
merged yet. What I'm saying is we are going to support them with
TPL-enabled, that was SPL can make use of these boards which still a
valid boot-chain. moreover this way can avoid touching core files and
no specific change require while supporting ddr dtsi.

Jagan.
