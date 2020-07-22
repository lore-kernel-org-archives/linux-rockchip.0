From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add PCIe for RockPI N10
Date: Wed, 22 Jul 2020 21:21:52 +0200
Message-ID: <3418931.F1eFr0XNtI@phil>
References: <20200720110230.367985-1-jagan@amarulasolutions.com> <20200720110230.367985-3-jagan@amarulasolutions.com> <CAMty3ZDkvRGn6a54ryVFNJOwm+X6YXW-TxSjO+kC9o2kshRxtg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAMty3ZDkvRGn6a54ryVFNJOwm+X6YXW-TxSjO+kC9o2kshRxtg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 22. Juli 2020, 20:51:07 CEST schrieb Jagan Teki:
> Hi Heiko,
> 
> On Mon, Jul 20, 2020 at 4:33 PM Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
> >
> > This patch adds support to enable PCIe for RockPI N10.
> >
> > Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > ---
> >  .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 41 ++++++++++++++++++-
> >  1 file changed, 39 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > index ebccc4a153a2..b415b8a16c78 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> > @@ -11,6 +11,19 @@
> >
> >  / {
> >         compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
> > +
> > +
> 
> Sorry for this extra space, let me know so that I can resend next version.

I fixed that up when applying the series.

Heiko
