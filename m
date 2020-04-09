From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v7 6/8] PCI: rcar: Add support for R-Car PCIe controller
 in endpoint mode
Date: Thu, 9 Apr 2020 11:14:39 +0100
Message-ID: <CA+V-a8taA-CYNC2vLoPPm9WHZwTOFoHe-c2zus_n5=qr4x32WQ@mail.gmail.com>
References: <1586360280-10956-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200408235133.GA151858@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <20200408235133.GA151858@google.com>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh+dt@kernel.org>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci <linux-pci@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.or>
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn,

Thank you for the review.

On Thu, Apr 9, 2020 at 12:51 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> Maybe:
>
>   PCI: rcar: Add endpoint mode support
>
> so the important "endpoint mode" part is early and doesn't get chopped
> off or wrapped.  We already know it's PCIe and rcar-related.
>
Agreed will change it.

> On Wed, Apr 08, 2020 at 04:37:58PM +0100, Lad Prabhakar wrote:
> > This patch adds support for R-Car PCIe controller to work in endpoint mode.
>
> s/This patch adds/Add/
>
OK

> > +static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
> > +                             struct pci_epf_bar *epf_bar)
> > +{
> > +     int flags = epf_bar->flags | LAR_ENABLE | LAM_64BIT;
> > +     struct rcar_pcie_endpoint *ep = epc_get_drvdata(epc);
> > +     u64 size = 1ULL << fls64(epf_bar->size - 1);
> > +     dma_addr_t cpu_addr = epf_bar->phys_addr;
> > +     enum pci_barno bar = epf_bar->barno;
> > +     struct rcar_pcie *pcie = &ep->pcie;
> > +     u32 mask;
> > +     int idx;
> > +     int err;
> > +
> > +     idx = find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows);
> > +     if (idx >= ep->num_ib_windows) {
> > +             dev_err(pcie->dev, "no free inbound window\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     if ((flags & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO)
> > +             flags |= IO_SPACE;
> > +
> > +     ep->bar_to_atu[bar] = idx;
> > +     /* use 64 bit bars */
>
> s/64 bit bars/64-bit BARs/
>
OK shall replace it.

> > +static const struct pci_epc_features rcar_pcie_epc_features = {
> > +     .linkup_notifier = false,
> > +     .msi_capable = true,
> > +     .msix_capable = false,
> > +     /* use 64-bit bars so mark bar1/3/5 as reserved */
>
> s/bar/BAR/g
OK shall replace it.

Cheers,
--Prabhakar
