From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Subject: Re: [PATCH v5 0/7] Add support for PCIe controller to work in
 endpoint mode on R-Car SoCs
Date: Fri, 13 Mar 2020 15:46:42 +0000
Message-ID: <CA+V-a8vchrpa-1N1J+yVdo6-3zouOHX6=G4epWm68yirPirzag@mail.gmail.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-renesas-soc-owner@vger.kernel.org>
In-Reply-To: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-renesas-soc-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Andrew Murray <andrew.murray@arm.com>, linux-pci <linux-pci@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, Linux-Renesas <linux-renesas-soc@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Heiko Stuebner <heiko@sntech.de>, Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Shawn
List-Id: linux-rockchip.vger.kernel.org

Hi Bjorn/Kishon,

On Fri, Feb 28, 2020 at 3:41 PM Lad Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> This patch series adds support for PCIe controller on rcar to work in
> endpoint mode, this also extends the epf framework to handle base region
> for mapping PCI address locally.
>
> Note:
> The cadence/rockchip/designware endpoint drivers are build tested only.
>
> Changes for v5:
> 1] Rebased the patches on next branch of https://git.kernel.org/pub/scm/
>    linux/kernel/git/helgaas/pci.git
> 2] Fixed review comments reported by Kishon while fetching the matching
>    window in function pci_epc_get_matching_window()
> 3] Fixed review comments reported by Bjorn
>    a] Split patch up first patch so that its easier to review and incremental
>    b] Fixed typos
> 4] Included Reviewed tag from Rob for the dt-binding patch
> 5] Fixed issue reported by Nathan for assigning variable to itself
>
> Changes for v4:
> 1] Fixed dtb_check error reported by Rob
> 2] Fixed review comments reported by Kishon
>    a] Dropped pci_epc_find_best_fit_window()
>    b] Fixed initializing mem ptr in __pci_epc_mem_init()
>    c] Dropped map_size from pci_epc_mem_window structure
>
> Changes for v3:
> 1] Fixed review comments from Bjorn and Kishon.
> 3] Converted to DT schema
>
> Changes for v2:
> 1] Fixed review comments from Biju for dt-bindings to include an example
>    for a tested platform.
> 2] Fixed review comments from Kishon to extend the features of outbound
>    regions in epf framework.
> 3] Added support to parse outbound-ranges in OF.
>
> Lad Prabhakar (7):
>   PCI: rcar: Rename pcie-rcar.c to pcie-rcar-host.c
>   PCI: rcar: Move shareable code to a common file
>   PCI: rcar: Fix calculating mask for PCIEPAMR register
>   PCI: endpoint: Add support to handle multiple base for mapping
>     outbound memory
>   dt-bindings: PCI: rcar: Add bindings for R-Car PCIe endpoint
>     controller
>   PCI: rcar: Add support for rcar PCIe controller in endpoint mode
>   misc: pci_endpoint_test: Add Device ID for RZ/G2E PCIe controller
>
Gentle ping.

Cheers,
--Prabhakar Lad

>  .../devicetree/bindings/pci/rcar-pci-ep.yaml       |   76 ++
>  arch/arm64/configs/defconfig                       |    2 +-
>  drivers/misc/pci_endpoint_test.c                   |    3 +
>  drivers/pci/controller/Kconfig                     |   15 +-
>  drivers/pci/controller/Makefile                    |    3 +-
>  drivers/pci/controller/cadence/pcie-cadence-ep.c   |    7 +-
>  drivers/pci/controller/dwc/pcie-designware-ep.c    |   29 +-
>  drivers/pci/controller/pcie-rcar-ep.c              |  490 ++++++++
>  drivers/pci/controller/pcie-rcar-host.c            | 1053 +++++++++++++++++
>  drivers/pci/controller/pcie-rcar.c                 | 1229 +-------------------
>  drivers/pci/controller/pcie-rcar.h                 |  129 ++
>  drivers/pci/controller/pcie-rockchip-ep.c          |    7 +-
>  drivers/pci/endpoint/pci-epc-mem.c                 |  167 ++-
>  include/linux/pci-epc.h                            |   39 +-
>  14 files changed, 1985 insertions(+), 1264 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
>  create mode 100644 drivers/pci/controller/pcie-rcar-ep.c
>  create mode 100644 drivers/pci/controller/pcie-rcar-host.c
>  create mode 100644 drivers/pci/controller/pcie-rcar.h
>
> --
> 2.7.4
>
