From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: reserve unusable memory region on
 rk3288
Date: Sun, 02 Aug 2015 00:52:44 +0200
Message-ID: <4605286.lfFsCUY5jc@diego>
References: <15143985.aGzb1oeyb9@diego>
 <CAD=FV=W2LSQh4e9+=ooTf34VzM_yPZn497DqSVEdb1kehZbqQQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=W2LSQh4e9+=ooTf34VzM_yPZn497DqSVEdb1kehZbqQQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Sonny Rao <sonnyrao-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

Am Samstag, 1. August 2015, 14:32:32 schrieb Doug Anderson:
> On Sat, Aug 1, 2015 at 5:35 AM, Heiko St=FCbner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> > The rk3288 has problems accessing the memory region 0xfe000000~0xff0000=
00.
> > So block off the affected region to prevent its use.
> > =

> > Tested on 4GB Veyron Minnie and 2GB Veyron Jerry devices.
> > =

> > Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> > ---
> > =

> >  arch/arm/boot/dts/rk3288.dtsi | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.d=
tsi
> > index 2db91c9..19766af 100644
> > --- a/arch/arm/boot/dts/rk3288.dtsi
> > +++ b/arch/arm/boot/dts/rk3288.dtsi
> > @@ -169,6 +169,16 @@
> > =

> >                 };
> >         =

> >         };
> > =

> > +       reserved-memory {
> > +               #address-cells =3D <1>;
> > +               #size-cells =3D <1>;
> > +               ranges;
> > +
> > +               unusable@fe000000 {
> > +                       reg =3D <0xfe000000 0x1000000>;
> > +               };
> > +       };
> > +
> =

> I don't object to just reserving this memory, but I do object a little
> to this implementation.
> =

> It's 16 MB we're talking about here, which is pretty small compared to
> the 4G of memory that you must have when this is a problem.  However,
> at some point we might want to try to actually use this 16 MB.
> =

> The memory is actually _not_ unusable, it's only unusable for DMA.  In
> theory the kernel is supposed to have a way to mark memory as unusable
> for DMA which would then allow us to use this memory for non-DMA
> purposes...

Ok, the patch message in the chromeos-patch didn't mention dma, but I could=
've =

thought of that myself, sorry.


> Nobody ever managed to figure this out in the Chrome OS tree (it was
> 16 megs so we just reserved it and never got back around to it), but
> when folks were looking at it they looked at things like ZONE_DMA,
> dma_set_mask_and_coherent, etc.
> =

> In any case, to leave the door open for people to fix this in the
> future, it seems prudent to fix this in code like
> <https://chromium-review.googlesource.com/#/c/245107/> rather than to
> put the limit in DTS.


The dt code when creating the platform-devices assumes a 32bit dma mask and =

expects the drivers to set the correct dma_masks (in of_dma_configure). But =

from the original description this looks more like a limitation of the rk32=
88, =

not the individual dwmmc, dwc2, etc.

So from my cursory glance, ZONE_DMA seems to be the best solution. As you s=
aid =

that this was investigated too, do you know if they encountered any obstacl=
es =

that resulted in not adjusting the dma zone?


@Jeffy: do you know how widespread this is? I.e. are socs like the rk3128 o=
r =

possibly more importantly the rk3368 also affected by this in 4GB =

configurations?


If the rk3368 does it too, this might get "interesting". In one of the mail=
s =

about ZONE_DMA from september 2014, Arnd mentioned that there was a patch =

about getting the zone size from devicetree floating around, but it doesn't =

look like this landed.


Heiko
