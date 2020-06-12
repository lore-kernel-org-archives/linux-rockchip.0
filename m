From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 0/13] Patches to improve transfer efficiency for
 Rockchip SoCs.
Date: Thu, 11 Jun 2020 21:15:17 -0400
Message-ID: <CAMdYzYqRTbePLKZ6q39Ao3sgLU0xUvrLmwYTVU3feEb4ob6FuQ@mail.gmail.com>
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com> <CAMdYzYr+NF7L3KKzcGano=j9V844Gy8gH03hD++CoPe8Ao1QxQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAMdYzYr+NF7L3KKzcGano=j9V844Gy8gH03hD++CoPe8Ao1QxQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Sugar Zhang <sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Vinod Koul <vkoul-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Carlos de Paula <me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Daniel Lezcano <daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jun 11, 2020 at 9:06 PM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> Good Evening,
>
> I am currently testing this on the rk3399-rockpro64, and it appears to
> fully fix the gmac problem without using txpbl.
> PCIe also seems to be more stable at high load.
> I need to conduct long term testing, but it seems to be doing very well.

Belay that, it does make it harder to trigger, but the issue still
remains on the rk3399.

>
> Unfortunately it doesn't fix the rk3328 gmac controller.
>
> Tested-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>
> On Mon, Jun 8, 2020 at 9:15 PM Sugar Zhang <sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> >
> >
> >
> > Changes in v2:
> > - fix FATAL ERROR: Unable to parse input tree
> >
> > Sugar Zhang (13):
> >   dmaengine: pl330: Remove the burst limit for quirk 'NO-FLUSHP'
> >   dmaengine: pl330: Add quirk 'arm,pl330-periph-burst'
> >   dt-bindings: dma: pl330: Document the quirk 'arm,pl330-periph-burst'
> >   ARM: dts: rk3036: Add 'arm,pl330-periph-burst' for dmac
> >   ARM: dts: rk322x: Add 'arm,pl330-periph-burst' for dmac
> >   ARM: dts: rk3288: Add 'arm,pl330-periph-burst' for dmac
> >   ARM: dts: rk3xxx: Add 'arm,pl330-periph-burst' for dmac
> >   ARM: dts: rv1108: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: px30: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: rk3308: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: rk3328: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: rk3368: Add 'arm,pl330-periph-burst' for dmac
> >   arm64: dts: rk3399: Add 'arm,pl330-periph-burst' for dmac
> >
> >  .../devicetree/bindings/dma/arm-pl330.txt          |  1 +
> >  arch/arm/boot/dts/rk3036.dtsi                      |  1 +
> >  arch/arm/boot/dts/rk322x.dtsi                      |  1 +
> >  arch/arm/boot/dts/rk3288.dtsi                      |  3 ++
> >  arch/arm/boot/dts/rk3xxx.dtsi                      |  3 ++
> >  arch/arm/boot/dts/rv1108.dtsi                      |  1 +
> >  arch/arm64/boot/dts/rockchip/px30.dtsi             |  1 +
> >  arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  2 +
> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  1 +
> >  arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  2 +
> >  arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  2 +
> >  drivers/dma/pl330.c                                | 44 +++++++++++++++-------
> >  12 files changed, 49 insertions(+), 13 deletions(-)
> >
> > --
> > 2.7.4
> >
> >
> >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
