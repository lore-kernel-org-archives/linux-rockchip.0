From: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [RFC PATCH v1 2/3] dt-bindings: mmc: convert synopsys dw-mshc
 bindings to yaml
Date: Thu, 16 Jan 2020 08:07:59 -0600
Message-ID: <CAL_Jsq+cJd0Ht+4FNX9RjbZL2vHjF90+G-v05XuyxrT7Ng15sA@mail.gmail.com>
References: <20200114213809.27166-1-jbx6244@gmail.com> <20200114213809.27166-2-jbx6244@gmail.com>
 <CAL_JsqJ0QJ9uG9NY7vMGG00G4Jfk2mXS4OPdUzEaRVaCP++GzQ@mail.gmail.com> <203e9217-9aa8-b65e-4411-2d9b23c1362a@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <203e9217-9aa8-b65e-4411-2d9b23c1362a-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ulf Hansson <ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-mmc <linux-mmc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jan 16, 2020 at 6:00 AM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> See below.
>
> On 1/15/20 4:18 PM, Rob Herring wrote:
> > On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >>
>
> > [...]
> >
> >> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> >> new file mode 100644
> >> index 000000000..6f85a21d0
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> >> @@ -0,0 +1,88 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/mmc/synopsys-dw-mshc.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Synopsys Designware Mobile Storage Host Controller Binding
>
> [..]
>
> >> +examples:
> >> +  # The MSHC controller node can be split into two portions, SoC specific and
> >> +  # board specific portions as listed below.
> >
>
>
> > This split doesn't work because the examples are built and validated
> > now. It may happen to because all the props are optional, but the
> > board hunk goes unchecked. So please combine.
> >
>
> Hi,
>
> I have no knowledge about this particular hardware to give a realistic
> example. Could someone advise here? Or should I just use the first
> example for now?

Just combine the first part and one of the the 2 board hunks. I don't
think having 2 board examples with the only diff being the dma
properties adds much value.

Rob
