From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [v2 0/6] Add support for PCIe controller to work in endpoint mode
 on R-Car SoCs
Date: Mon, 16 Dec 2019 09:27:49 +0000
Message-ID: <CA+V-a8ugehRVuV2kwYgkTVp3Vk4ftKsQVfW0=vL4L7BZbDdeNg@mail.gmail.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20191213184627.GA169673@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191213184627.GA169673@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci <linux-pci@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn,

On Fri, Dec 13, 2019 at 9:06 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Fri, Dec 13, 2019 at 08:47:42AM +0000, Lad Prabhakar wrote:
>
> > Lad, Prabhakar (6):
> >   pci: pcie-rcar: preparation for adding endpoint support
> >   pci: endpoint: add support to handle features of outbound memory
> >   of: address: add support to parse PCI outbound-ranges
> >   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
> >     controller
> >   pci: rcar: add support for rcar pcie controller in endpoint mode
> >   misc: pci_endpoint_test: add device-id for RZ/G2E pcie controller
>
> The next time you post this, please update the subject lines to match
> existing conventions (capitalize "PCI", description is a complete
> sentence starting with a capitalized verb, etc").  Run "git log
> --online" on the file you're changing and make yours look the same.
>
>   s/pci: /PCI: /
>   s/pcie-rcar: /rcar: /
>   s/pcie/PCIe/
>   s/device-id/Device ID/

Thank you for the review, I'll fix the above in next iteration.

Cheers,
--Prabhakar
