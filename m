From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v4 5/6] PCI: rcar: Add support for rcar PCIe controller in
 endpoint mode
Date: Wed, 12 Feb 2020 07:38:32 +0000
Message-ID: <CA+V-a8vMcRvsh7+pcgD4jk50X0DtZ9uXFegZVXM5M1k-R6jOVA@mail.gmail.com>
References: <20200208183641.6674-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.com> <20200212034239.GA38314@ubuntu-m2-xlarge-x86>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20200212034239.GA38314@ubuntu-m2-xlarge-x86>
Sender: linux-pci-owner@vger.kernel.org
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Andrew Murray <andrew.murray@arm.com>, linux-pci <linux-pci@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>, Linux-Renesas <linux-rene>
List-Id: linux-rockchip.vger.kernel.org

Hi Nathan,

On Wed, Feb 12, 2020 at 3:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Lad,
>
> On Sat, Feb 08, 2020 at 06:36:40PM +0000, Lad Prabhakar wrote:
> > This patch adds support for rcar PCIe controller to work in endpoint mode.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  drivers/pci/controller/Kconfig        |   7 +
> >  drivers/pci/controller/Makefile       |   1 +
> >  drivers/pci/controller/pcie-rcar-ep.c | 492 ++++++++++++++++++++++++++++++++++
> >  drivers/pci/controller/pcie-rcar.h    |   6 +
> >  4 files changed, 506 insertions(+)
> >  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
> >
>
> <snip>
>
> > diff --git a/drivers/pci/controller/pcie-rcar-ep.c b/drivers/pci/controller/pcie-rcar-ep.c
> > new file mode 100644
> > index 0000000..32a7fca
> > --- /dev/null
> > +++ b/drivers/pci/controller/pcie-rcar-ep.c
>
> <snip>
>
> > +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> > +                             struct pci_epf_bar *epf_bar)
> > +{
> > +     struct rcar_pcie *ep = epc_get_drvdata(epc);
> > +     dma_addr_t cpu_addr = epf_bar->phys_addr;
> > +     int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> > +     enum pci_barno bar = epf_bar->barno;
> > +     u64 size = 1ULL << fls64(epf_bar->size - 1);
> > +     u32 mask;
> > +     int idx;
> > +     int err;
> > +
> > +     idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> > +     if (idx >= ep->num_ib_windows) {
> > +             dev_err(ep->dev, "no free inbound window\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> > +             flags |= IO_SPACE;
> > +
> > +     ep->bar_to_atu[bar] = idx;
> > +     /* use 64 bit bars */
> > +     set_bit(idx, ep->ib_window_map);
> > +     set_bit(idx + 1, ep->ib_window_map);
> > +
> > +     if (cpu_addr > 0) {
> > +             unsigned long nr_zeros = __ffs64(cpu_addr);
> > +             u64 alignment = 1ULL << nr_zeros;
> > +
> > +             size = min(size, alignment);
> > +     } else {
> > +             size = size;
> > +     }
>
> We received a report from the 0day bot that clang warns that this is
> unnecessary. Would you mind removing it if you have to spin up a new
> version?
>
Sure ill fix that.

Cheers,
--Prabhakar Lad

> You can view the full report here:
>
> https://groups.google.com/d/msg/clang-built-linux/KHUKw5L8yxw/Mb7KRMG7BQAJ
>
> Cheers,
> Nathan
