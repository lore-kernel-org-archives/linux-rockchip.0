From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3] ARM: dts: rockchip: Add usb host0 ohci node for rk3288
Date: Wed, 22 Jul 2020 20:49:25 +0200
Message-ID: <2630968.GxkqStg1Zh@phil>
References: <20200720105846.367776-1-jagan@amarulasolutions.com> <8444056.acRTkLjuym@phil> <CAMty3ZCxynb3_GTxhf=Nrf=F=SbijqEfDVysCzQ1KXsF_MCjxw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAMty3ZCxynb3_GTxhf=Nrf=F=SbijqEfDVysCzQ1KXsF_MCjxw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 22. Juli 2020, 20:46:55 CEST schrieb Jagan Teki:
> Hi Heiko,
> 
> On Thu, Jul 23, 2020 at 12:04 AM Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> >
> > Hi Jaganm
> >
> > Am Montag, 20. Juli 2020, 12:58:46 CEST schrieb Jagan Teki:
> > > rk3288 and rk3288w have a usb host0 ohci controller.
> > >
> > > Although rk3288 ohci doesn't actually work on hardware, but
> > > rk3288w ohci can work well.
> > >
> > > So add usb host0 ohci node in rk3288 dtsi and the quirk in
> > > ohci platform driver will disable ohci on rk3288.
> >
> > If I remember the discussion correctly, we expect the board dts
> > or the bootloader to enable the ohci, right?
> > So that block go away ... just making sure, I don't remember
> > untrue stuff ;-)
> 
> Our (with Robin) initial discussion [1] is to manage OHCI enablement
> in the bootloader but since it requires many checks at bootloader
> level we finally rely on board dts to enable it as normal.

ok, so I'll just drop this paragraph when applying.



> 
> [1] https://lkml.org/lkml/2020/7/3/424
> 
> Jagan.
> 
