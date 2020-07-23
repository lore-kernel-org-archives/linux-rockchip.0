From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 3/6] dt-bindings: arm: rockchip: Add ROCKPi 4B binding
Date: Thu, 23 Jul 2020 10:27:14 +0200
Message-ID: <6968987.cG2su2sgyb@diego>
References: <20200722190949.215656-1-jagan@amarulasolutions.com> <3893924.cuH9TW0V3R@phil> <CAMty3ZDk28-wg_=wdf_Ps-5RaHK1T-+h0Jn43aK5ReWAz+GTGw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAMty3ZDk28-wg_=wdf_Ps-5RaHK1T-+h0Jn43aK5ReWAz+GTGw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 23. Juli 2020, 08:34:12 CEST schrieb Jagan Teki:
> Hi Heiko,
> 
> On Thu, Jul 23, 2020 at 4:43 AM Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> >
> > Hi Jagan,
> >
> > Am Mittwoch, 22. Juli 2020, 21:09:46 CEST schrieb Jagan Teki:
> > > Add dt-bindings for ROCKPi 4B which is similar to 4A with
> > > additional AP6256 Wifi/BT, PoE.
> > >
> > > Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > > ---
> > > Changes for v2:
> > > - new patch
> > >
> > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > index 36057c9e4b83..7250adb43d24 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -448,6 +448,12 @@ properties:
> > >            - const: radxa,rockpi4a
> > >            - const: rockchip,rk3399
> > >
> > > +      - description: Radxa ROCK Pi 4B
> > > +        items:
> > > +          - const: radxa,rockpi4
> > > +          - const: radxa,rockpi4b
> > > +          - const: rockchip,rk3399
> > > +
> >
> > Please do all RockPi4 variants into one entry, so we want something like:
> >
> >       - description: Radxa ROCK Pi 4
> 
> What if the description has something like below.
> 
>           - description: Radxa ROCK Pi 4A/B/C

That's also ok :-)
