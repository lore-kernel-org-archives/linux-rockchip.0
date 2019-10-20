From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 10/25] PCI: rockchip: Use
 pci_parse_request_of_pci_ranges()
Date: Sun, 20 Oct 2019 16:36:50 -0500
Message-ID: <CAL_JsqLWuUhv1qb3Soo0xKGJ167SvV3rnr+c07j9x3FFPEc3YA@mail.gmail.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-11-robh@kernel.org>
 <20191018155152.GK47056@e119886-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191018155152.GK47056@e119886-lin.cambridge.arm.com>
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

On Fri, Oct 18, 2019 at 10:52 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Wed, Oct 16, 2019 at 03:06:32PM -0500, Rob Herring wrote:
> > Convert the Rockchip host bridge to use the common
> > pci_parse_request_of_pci_ranges().
> >
> > There's no need to assign the resources to a temporary list first. Just
> > use bridge->windows directly and remove all the temporary list handling.
> >
> > Cc: Shawn Lin <shawn.lin@rock-chips.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Cc: Andrew Murray <andrew.murray@arm.com>
> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > Cc: Heiko Stuebner <heiko@sntech.de>
> > Cc: linux-rockchip@lists.infradead.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > v2:
> > - New patch
> >
> >  drivers/pci/controller/pcie-rockchip-host.c | 36 ++++-----------------
> >  1 file changed, 7 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> > index ef8e677ce9d1..8d2e6f2e141e 100644
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -950,14 +950,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> >       struct device *dev = &pdev->dev;
> >       struct pci_bus *bus, *child;
> >       struct pci_host_bridge *bridge;
> > +     struct resource *bus_res;
> >       struct resource_entry *win;
> > -     resource_size_t io_base;
> > -     struct resource *mem;
> > -     struct resource *io;
> >       int err;
> >
> > -     LIST_HEAD(res);
> > -
> >       if (!dev->of_node)
> >               return -ENODEV;
> >
> > @@ -995,29 +991,20 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> >       if (err < 0)
> >               goto err_deinit_port;
> >
> > -     err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> > -                                                 &res, &io_base);
> > +     err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, &bus_res);
> >       if (err)
> >               goto err_remove_irq_domain;
> >
> > -     err = devm_request_pci_bus_resources(dev, &res);
> > -     if (err)
> > -             goto err_free_res;
> > +     rockchip->root_bus_nr = bus_res->start;
> >
> >       /* Get the I/O and memory ranges from DT */
> > -     resource_list_for_each_entry(win, &res) {
> > +     resource_list_for_each_entry(win, &bridge->windows) {
> >               switch (resource_type(win->res)) {
> >               case IORESOURCE_IO:
> >                       io = win->res;
> >                       io->name = "I/O";
>
> In some patches of this series we drop the custom naming of memory resources,
> yet in others, like this one, we preserve the custom naming.

Actually, patch #11 drops it for rockchip.

> Should we be consistent in preserving the existing naming?

The custom naming seems a bit pointless IMO and something mindlessly
copied and pasted around, so I'd rather see removing the remaining
cases. The only ones left AFAICT are designware and V3.

Rob
