From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v3 0/6] PCI: Minor kerneldoc warning fixes
Date: Wed, 29 Jul 2020 18:55:28 -0500
Message-ID: <20200729235528.GA1981103@bjorn-Precision-5520>
References: <20200729201224.26799-1-krzk@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-acpi-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200729201224.26799-1-krzk@kernel.org>
Sender: linux-acpi-owner@vger.kernel.org
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@xilinx.com>, Kishon Vijay Abraham I <kishon@ti.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 29, 2020 at 10:12:18PM +0200, Krzysztof Kozlowski wrote:
> Hi,
> 
> Changes since v2:
> 1. Fix almost all warnings, except:
>    drivers/pci/controller/pci-hyperv.c:2534: warning: Function parameter or member 'version' not described in 'hv_pci_protocol_negotiation'
>    drivers/pci/controller/pci-hyperv.c:2534: warning: Function parameter or member 'num_version' not described in 'hv_pci_protocol_negotiation'
>    Not sure what are these.
> 
> 2. New patches, split per driver or subdirectory
> 
> Best regards,
> Krzysztof
> 
> Krzysztof Kozlowski (6):
>   PCI: Fix kerneldoc
>   PCI: endpoint: Fix kerneldoc
>   PCI: hotplug: Fix kerneldoc
>   PCI: dwc: Fix kerneldoc
>   PCI: rockchip: Fix kerneldoc
>   PCI: xilinx: Fix kerneldoc
> 
>  drivers/pci/ats.c                               | 3 ++-
>  drivers/pci/controller/dwc/pcie-designware-ep.c | 2 +-
>  drivers/pci/controller/pcie-rockchip-ep.c       | 1 +
>  drivers/pci/controller/pcie-xilinx-cpm.c        | 1 +
>  drivers/pci/endpoint/functions/pci-epf-test.c   | 2 +-
>  drivers/pci/endpoint/pci-ep-cfs.c               | 2 +-
>  drivers/pci/endpoint/pci-epc-core.c             | 2 +-
>  drivers/pci/endpoint/pci-epc-mem.c              | 2 +-
>  drivers/pci/endpoint/pci-epf-core.c             | 4 +++-
>  drivers/pci/hotplug/acpi_pcihp.c                | 4 ++--
>  drivers/pci/hotplug/pciehp_core.c               | 1 +
>  drivers/pci/of.c                                | 2 ++
>  drivers/pci/pci-pf-stub.c                       | 2 +-
>  drivers/pci/setup-bus.c                         | 1 +
>  drivers/pci/vc.c                                | 1 -
>  15 files changed, 19 insertions(+), 11 deletions(-)

Thanks, I squashed these all together and applied them on pci/doc for
v5.9.

This was a tiny bit messy because pcie-xilinx-cpm.c is new this cycle
and ideally we would have squashed that fix into the original commit,
but we don't need to bother with that.
