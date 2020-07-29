From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: rockchip: Update ROCKPi 4 binding
Date: Wed, 29 Jul 2020 17:29:07 +0530
Message-ID: <CAMty3ZDgrxeLxshKMMjXgg6wgDsan8mJeLr9d+YC9F=5uLPMqw@mail.gmail.com>
References: <20200723090210.41201-1-jagan@amarulasolutions.com> <20200723155028.GA427258@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200723155028.GA427258@bogus>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jul 23, 2020 at 9:20 PM Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> On Thu, Jul 23, 2020 at 02:32:07PM +0530, Jagan Teki wrote:
> > ROCKPi 4 has 3 variants of hardware platforms called
> > ROCKPi 4A, 4B, and 4C.
> >
> > - ROCKPi 4A has no Wif/BT.
> > - ROCKPi 4B has AP6256 Wifi/BT, PoE.
> > - ROCKPi 4C has AP6256 Wifi/BT, PoE, miniDP, USB Host enabled
> >   GPIO pin change compared to 4B, 4C
> >
> > So, update the existing ROCKPi 4 binding to support
> > ROCKPi 4A/B/C hardware platforms.
> >
> > Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > ---
> > Changes for v3:
> > - new patch
> >
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index db2e35796795..e6f656b0bd56 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -430,8 +430,12 @@ properties:
> >            - const: radxa,rock
> >            - const: rockchip,rk3188
> >
> > -      - description: Radxa ROCK Pi 4
> > +      - description: Radxa ROCK Pi 4A/B/C
> >          items:
> > +          - enum:
> > +              - const: radxa,rockpi4a
> > +              - const: radxa,rockpi4b
> > +              - const: radxa,rockpi4c
> >            - const: radxa,rockpi4
>
> radxa,rockpi4 already meant 'ROCKPi 4A' and should continue to do so.
> Just add 4B and 4C strings. It's up to you if they should be backwards
> compatible with 'radxa,rockpi4' (meaning 4A), but I'd guess not unless
> it's just a board pop option.

At-least from dts nodes enablement point of view the existing dts
(with radxa,rockpi4) is 4B since it has wifi/bt enabled. 4A is the
real name of the board so having a compatible with radxa,rockpi4a is
meaningful as I understood.

So, based on the above statements the respective binding look like

      - description: Radxa ROCK Pi 4A/B/C
        items:
          - enum:
              - radxa,rockpi4a
              - radxa,rockpi4b
              - radxa,rockpi4c
          - const: radxa,rockpi4
          - const: rockchip,rk3399

Comments, please?

Jagan.
