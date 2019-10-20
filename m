From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 05/25] PCI: dwc: Use pci_parse_request_of_pci_ranges()
Date: Sun, 20 Oct 2019 16:39:58 -0500
Message-ID: <CAL_JsqLchmnwV3=Ufrs0sxc+ye5kzyKdenUa+cWxiMEzf0rFCA@mail.gmail.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-6-robh@kernel.org>
 <20191018123537.GG47056@e119886-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191018123537.GG47056@e119886-lin.cambridge.arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Andrew Murray <andrew.murray@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, PCI <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Michal Simek <michal.simek@xilinx.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>, "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>, moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE
List-Id: linux-rockchip.vger.kernel.org

On Fri, Oct 18, 2019 at 7:35 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Wed, Oct 16, 2019 at 03:06:27PM -0500, Rob Herring wrote:
> > Convert the Designware host bridge to use the common
> > pci_parse_request_of_pci_ranges().
> >
> > Cc: Jingoo Han <jingoohan1@gmail.com>
> > Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Andrew Murray <andrew.murray@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v2:
> > - New patch
> >
> >  .../pci/controller/dwc/pcie-designware-host.c | 28 ++++++-------------
> >  1 file changed, 8 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > index 0f36a926059a..aeec8b65eb97 100644
> > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > @@ -319,7 +319,7 @@ int dw_pcie_host_init(struct pcie_port *pp)
> >       struct device *dev = pci->dev;
> >       struct device_node *np = dev->of_node;
> >       struct platform_device *pdev = to_platform_device(dev);
> > -     struct resource_entry *win, *tmp;
> > +     struct resource_entry *win;
> >       struct pci_bus *child;
> >       struct pci_host_bridge *bridge;
> >       struct resource *cfg_res;
> > @@ -342,31 +342,19 @@ int dw_pcie_host_init(struct pcie_port *pp)
> >       if (!bridge)
> >               return -ENOMEM;
> >
> > -     ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> > -                                     &bridge->windows, &pp->io_base);

[...]

> > +                     pp->io_bus_addr = pp->io->start - win->offset;
> > +                     pp->io_base = pci_pio_to_address(pp->io->start);
>
> Where did io_base come from? This wasn't here before, so why are we setting it
> now?

It was set in the removed devm_of_pci_get_host_bridge_resources().

Rob
