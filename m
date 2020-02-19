From: "Lad, Prabhakar" <prabhakar.csengg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v4 2/6] PCI: rcar: Fix calculating mask for PCIEPAMR register
Date: Wed, 19 Feb 2020 08:47:46 +0000
Message-ID: <CA+V-a8vVaLpVofr=tp0AXwUzDMwCJ+Byc8VGtmmtOWVSs3GVvg@mail.gmail.com>
References: <20200208183641.6674-3-prabhakar.mahadev-lad.rj@bp.renesas.com> <20200212140434.GA129189@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200212140434.GA129189-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Marek Vasut <marek.vasut+renesas-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh-zM6kxYcvzFBBDgjK7y7TUQ@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>, linux-pci <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LAK <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Linux-Renesas <linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, open list:
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn,

Thank you for the review.

On Wed, Feb 12, 2020 at 2:04 PM Bjorn Helgaas <helgaas-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> On Sat, Feb 08, 2020 at 06:36:37PM +0000, Lad Prabhakar wrote:
> > The mask value was calculated incorrectly for PCIEPAMR register if the
> > size was less the 128bytes, this patch fixes the above by adding a check
> > on size.
>
> s/less the/less than/
> s/128bytes,/128 bytes./
> s/this patch fixes the above/Fix this issue/
>
My bad will fix that.

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
> > ---
> >  drivers/pci/controller/pcie-rcar.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> > index d5568db..c76a92a 100644
> > --- a/drivers/pci/controller/pcie-rcar.c
> > +++ b/drivers/pci/controller/pcie-rcar.c
> > @@ -71,7 +71,7 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
> >       /* Setup PCIe address space mappings for each resource */
> >       resource_size_t res_start;
> >       resource_size_t size;
> > -     u32 mask;
> > +     u32 mask = 0x0;
> >
> >       rcar_pci_write_reg(base, 0x00000000, PCIEPTCTLR(win));
> >
> > @@ -80,7 +80,8 @@ void rcar_pcie_set_outbound(int win, void __iomem *base,
> >        * keeps things pretty simple.
> >        */
> >       size = resource_size(res);
> > -     mask = (roundup_pow_of_two(size) / SZ_128) - 1;
> > +     if (size > 128)
> > +             mask = (roundup_pow_of_two(size) / SZ_128) - 1;
>
> I would put the "mask = 0x0" right here so it's all in one place,
> i.e.,
>
>   if (size > 128)
>     mask = (roundup_pow_of_two(size) / SZ_128) - 1;
>   else
>     mask = 0x0;
>
Sure will change that.

Cheers,
--Prabhakar Lad

> >       rcar_pci_write_reg(base, mask << 7, PCIEPAMR(win));
> >
> >       if (!host) {
> > --
> > 2.7.4
> >
