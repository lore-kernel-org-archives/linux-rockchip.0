From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
Date: Mon, 18 Nov 2019 17:14:26 +0530
Message-ID: <CAMty3ZDwjv4ShpbAyQPWk9ewboFOK3nZO0s_QNty_m0hJKR76w@mail.gmail.com>
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de> <2226540.xovL9aYQn6@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2226540.xovL9aYQn6@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Markus Reichl <m.reichl@fivetechno.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree <devicetree@vger.kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 4, 2019 at 5:42 PM Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi Markus,
>
> Am Freitag, 1. November 2019, 17:54:23 CET schrieb Markus Reichl:
> > For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> > POE interfaces. Use it with a separate dts.
> >
> > Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3399-roc-pc-mezz.dts  |  52 ++
> >  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 757 +----------------
> >  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 767 ++++++++++++++++++
> >  4 files changed, 821 insertions(+), 756 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index a959434ad46e..80ee9f1fc5f5 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -28,6 +28,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-nanopi-neo4.d=
tb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-orangepi.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-puma-haikou.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc-mezz.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock960.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts b/arch=
/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts
> > new file mode 100644
> > index 000000000000..ee77677d2cf2
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts
> > @@ -0,0 +1,52 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2017 T-Chip Intelligent Technology Co., Ltd
> > + * Copyright (c) 2019 Markus Reichl <m.reichl@fivetechno.de>
> > + */
> > +
> > +/dts-v1/;
> > +#include "rk3399-roc-pc.dtsi"
> > +
> > +/ {
> > +     model =3D "Firefly ROC-RK3399-PC Mezzanine Board";
> > +     compatible =3D "firefly,roc-rk3399-pc", "rockchip,rk3399";
>
> different board with same compatible isn't possible, so
> you'll need a new compatible for it and add a new line to
> the roc-pc entry in
>         Documentation/devicetree/bindings/arm/rockchip.yaml
>
> Either you see it as
> - a board + hat, using dt overlay and same compatible
> - a completely separate board, which needs a separate
>   compatible as well
>
> And as discussed in the previous thread
> http://lists.infradead.org/pipermail/linux-rockchip/2019-November/027592.=
html
> but also in Jagan's response that really is somehow a grey area
> for something relatively static as the M.2 extension.

Sorry for late response on this. I still think that the "overlay would
be a better suite" than having separate dts, since it is HAT which is
optional to insert and have possibility of having another HAT if it
really fit into it.

Comments?
