From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v3 00/25] PCI host resource consolidation
Date: Thu, 31 Oct 2019 10:57:01 +0000
Message-ID: <20191031105701.GA26080@e121166-lin.cambridge.arm.com>
References: <20191028163256.8004-1-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rock
List-Id: linux-rockchip.vger.kernel.org

On Mon, Oct 28, 2019 at 11:32:31AM -0500, Rob Herring wrote:
> This started with just dma-ranges parsing consolidation, but has expanded
> to converting all host drivers to use pci_parse_request_of_pci_ranges()
> rather than devm_of_pci_get_host_bridge_resources(). This series moves
> the DT 'dma-ranges' parsing into common helpers utilizing a resource list.
> There's no (intended) functional change in this series though I'm also
> working on a separate series now in dt/next to improve the handling of
> 'dma-ranges' and dma masks.
> 
> The last patch may need to wait if there's any new users of
> devm_of_pci_get_host_bridge_resources.

I have applied it, along with the rest of the series, with v4 for:

PCI: of: Add inbound resource parsing to helpers

branch pci/mmio-dma-ranges, please let me know if there is something
I have missed.

Thanks,
Lorenzo

> Only versatile has been tested (on QEMU). The rest is compiled only. A git
> branch is here[1].
> 
> v3:
> - Fix >80 char lines
> - Rename resource_list_get_entry_of_type to resource_list_first_type
> 
> Rob
> 
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git pci-ranges-cleanup-v3
> 
> 
> Rob Herring (25):
>   resource: Add a resource_list_first_type helper
>   PCI: Export pci_parse_request_of_pci_ranges()
>   PCI: aardvark: Use pci_parse_request_of_pci_ranges()
>   PCI: altera: Use pci_parse_request_of_pci_ranges()
>   PCI: dwc: Use pci_parse_request_of_pci_ranges()
>   PCI: faraday: Use pci_parse_request_of_pci_ranges()
>   PCI: iproc: Use pci_parse_request_of_pci_ranges()
>   PCI: mediatek: Use pci_parse_request_of_pci_ranges()
>   PCI: mobiveil: Use pci_parse_request_of_pci_ranges()
>   PCI: rockchip: Use pci_parse_request_of_pci_ranges()
>   PCI: rockchip: Drop storing driver private outbound resource data
>   PCI: v3-semi: Use pci_parse_request_of_pci_ranges()
>   PCI: xgene: Use pci_parse_request_of_pci_ranges()
>   PCI: xilinx: Use pci_parse_request_of_pci_ranges()
>   PCI: xilinx-nwl: Use pci_parse_request_of_pci_ranges()
>   PCI: versatile: Use pci_parse_request_of_pci_ranges()
>   PCI: versatile: Remove usage of PHYS_OFFSET
>   PCI: versatile: Enable COMPILE_TEST
>   PCI: of: Add inbound resource parsing to helpers
>   PCI: ftpci100: Use inbound resources for setup
>   PCI: v3-semi: Use inbound resources for setup
>   PCI: xgene: Use inbound resources for setup
>   PCI: iproc: Use inbound resources for setup
>   PCI: rcar: Use inbound resources for setup
>   PCI: Make devm_of_pci_get_host_bridge_resources() static
> 
>  drivers/pci/controller/Kconfig                |  2 +-
>  .../pci/controller/dwc/pcie-designware-host.c | 29 ++----
>  drivers/pci/controller/pci-aardvark.c         | 60 +------------
>  drivers/pci/controller/pci-ftpci100.c         | 79 +++++-----------
>  drivers/pci/controller/pci-host-common.c      |  2 +-
>  drivers/pci/controller/pci-v3-semi.c          | 74 +++++----------
>  drivers/pci/controller/pci-versatile.c        | 71 ++++-----------
>  drivers/pci/controller/pci-xgene.c            | 73 +++++----------
>  drivers/pci/controller/pcie-altera.c          | 41 +--------
>  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
>  drivers/pci/controller/pcie-iproc-platform.c  |  9 +-
>  drivers/pci/controller/pcie-iproc.c           | 82 ++++-------------
>  drivers/pci/controller/pcie-mediatek.c        | 43 +++------
>  drivers/pci/controller/pcie-mobiveil.c        | 27 ++----
>  drivers/pci/controller/pcie-rcar.c            | 48 ++++------
>  drivers/pci/controller/pcie-rockchip-host.c   | 89 +++++++------------
>  drivers/pci/controller/pcie-rockchip.h        |  5 --
>  drivers/pci/controller/pcie-xilinx-nwl.c      | 21 ++---
>  drivers/pci/controller/pcie-xilinx.c          | 18 +---
>  drivers/pci/of.c                              | 51 +++++++++--
>  drivers/pci/pci.h                             | 13 ---
>  include/linux/pci.h                           |  9 +-
>  include/linux/resource_ext.h                  | 12 +++
>  23 files changed, 261 insertions(+), 599 deletions(-)
> 
> --
> 2.20.1
