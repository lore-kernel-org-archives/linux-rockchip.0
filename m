From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v7 4/8] PCI: endpoint: Add support to handle multiple base
 for mapping outbound memory
Date: Thu, 9 Apr 2020 11:12:45 +0100
Message-ID: <CA+V-a8te28Ji5HYV-QAmd28x-ACshCkVmUUkMYu1KSt0RRdJgQ@mail.gmail.com>
References: <1586360280-10956-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200408234622.GA150772@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20200408234622.GA150772@google.com>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh+dt@kernel.org>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Marek Vasut <marek.vasut+renesas@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci <linux-pci@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>, Linux-Renesas <linux-renesas-soc@vge>
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn,

Thank you for the review.

On Thu, Apr 9, 2020 at 12:46 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Apr 08, 2020 at 04:37:56PM +0100, Lad Prabhakar wrote:
> > R-Car PCIe controller has support to map multiple memory regions for
> > mapping the outbound memory in local system also the controller limits
> > single allocation for each region (that is, once a chunk is used from the
> > region it cannot be used to allocate a new one). This features inspires to
> > add support for handling multiple memory bases in endpoint framework.
> >
> > With this patch pci_epc_mem_init() initializes address space for endpoint
> > controller which support single window and whereas __pci_epc_mem_init()
> > now accepts pointer to multiple windows supported by endpoint controller.
>
> Adding a double underscore prefix usually indicates an internal
> function that skips some checking.
>
> It doesn't seem like quite the right thing for this external interface
> that adds functionality.  Maybe the name could include something like
> "multi"?
>
Agreed. how about pci_epc_mem_multi_init() ?

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> This needs an ack from Kishon, of course.
>
Yes waiting for Kishon to review it.

> This patch seems like it does several things that could possibly be
> split into separate patches?
>
>   - Change pci_epc_mem_init() interface to add page_size argument (the
>     only one that touches cadence & rockchip; it would be nice if this
>     were a tiny patch)
>
Can be done.

>   - Add struct pci_epc_mem_window
>
>   - Add a pci_epc_multi_mem_init() or similar, implement
>     pci_epc_mem_init() in terms of it (as you already do)
>
The above two needs to be single patch. Is that OK with you ?

Cheers,
--Prabhakar
