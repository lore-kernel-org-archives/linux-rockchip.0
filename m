From: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v3 19/25] PCI: of: Add inbound resource parsing to helpers
Date: Tue, 29 Oct 2019 17:12:24 -0500
Message-ID: <20191029221224.GA117069@google.com>
References: <20191029110751.GB27171@e121166-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20191029110751.GB27171@e121166-lin.cambridge.arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboar
List-Id: linux-rockchip.vger.kernel.org

On Tue, Oct 29, 2019 at 11:07:51AM +0000, Lorenzo Pieralisi wrote:
> On Mon, Oct 28, 2019 at 11:32:50AM -0500, Rob Herring wrote:
> > Extend devm_of_pci_get_host_bridge_resources() and
> > pci_parse_request_of_pci_ranges() helpers to also parse the inbound
> > addresses from DT 'dma-ranges' and populate a resource list with the
> > translated addresses. This will help ensure 'dma-ranges' is always
> > parsed in a consistent way.
> > 
> > Cc: Jingoo Han <jingoohan1@gmail.com>
> > Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Toan Le <toan@os.amperecomputing.com>
> > Cc: Ley Foon Tan <lftan@altera.com>
> > Cc: Tom Joseph <tjoseph@cadence.com>
> > Cc: Ray Jui <rjui@broadcom.com>
> > Cc: Scott Branden <sbranden@broadcom.com>
> > Cc: bcm-kernel-feedback-list@broadcom.com
> > Cc: Ryder Lee <ryder.lee@mediatek.com>
> > Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
> > Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > Cc: Simon Horman <horms@verge.net.au>
> > Cc: Shawn Lin <shawn.lin@rock-chips.com>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: Michal Simek <michal.simek@xilinx.com>
> > Cc: rfi@lists.rocketboards.org
> > Cc: linux-mediatek@lists.infradead.org
> > Cc: linux-renesas-soc@vger.kernel.org
> > Cc: linux-rockchip@lists.infradead.org
> > Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com> # for AArdvark
> > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v2:
> >  - Fix crash in INIT_LIST_HEAD when ib_resources is NULL
> > ---
> >  .../pci/controller/dwc/pcie-designware-host.c |  3 +-
> >  drivers/pci/controller/pci-aardvark.c         |  2 +-
> >  drivers/pci/controller/pci-ftpci100.c         |  3 +-
> >  drivers/pci/controller/pci-host-common.c      |  2 +-
> >  drivers/pci/controller/pci-v3-semi.c          |  3 +-
> >  drivers/pci/controller/pci-versatile.c        |  3 +-
> >  drivers/pci/controller/pci-xgene.c            |  3 +-
> >  drivers/pci/controller/pcie-altera.c          |  2 +-
> >  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
> >  drivers/pci/controller/pcie-iproc-platform.c  |  3 +-
> >  drivers/pci/controller/pcie-mediatek.c        |  2 +-
> >  drivers/pci/controller/pcie-mobiveil.c        |  3 +-
> >  drivers/pci/controller/pcie-rcar.c            |  3 +-
> >  drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
> >  drivers/pci/controller/pcie-xilinx-nwl.c      |  3 +-
> >  drivers/pci/controller/pcie-xilinx.c          |  3 +-
> >  drivers/pci/of.c                              | 45 ++++++++++++++++++-
> >  drivers/pci/pci.h                             |  8 +++-
> >  include/linux/pci.h                           |  9 ++--
> >  19 files changed, 82 insertions(+), 23 deletions(-)
> 
> Hi Bjorn,
> 
> please let me know if you are OK with this patch, the series is
> ready to go upstream IMO.

Yep, looks good to me.  If you want it:

Acked-by: Bjorn Helgaas <bhelgaas@google.com>
