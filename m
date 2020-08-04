From: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 17/19] PCI: rcar-gen2: Convert to use modern host bridge
 probe functions
Date: Tue, 4 Aug 2020 14:12:44 +0200
Message-ID: <CAMuHMdWVWoQDc3MMv9LjA+hA1EoXQjVM-JfO_hVqnDf0tC8LJg@mail.gmail.com>
References: <20200722022514.1283916-1-robh@kernel.org>
 <20200722022514.1283916-18-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200722022514.1283916-18-robh@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, linux-tegra <linux-tegra@vger.kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Fabio Estevam <festevam@gmail.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>, Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Murali Karicheri <m-karicheri2@ti.com>, NXP Linux Team <linux-imx@nxp.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Richard Zhu <hongxing.zhu@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, Ryder Lee <ryder.lee@mediatek.com>, linux-med
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

On Wed, Jul 22, 2020 at 4:26 AM Rob Herring <robh@kernel.org> wrote:
> The rcar-gen2 host driver still uses the old Arm PCI setup function
> pci_common_init_dev(). Let's update it to use the modern
> devm_pci_alloc_host_bridge(), pci_parse_request_of_pci_ranges() and
> pci_host_probe() functions.
>
> Cc: Marek Vasut <marek.vasut+renesas@gmail.com>
> Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: linux-renesas-soc@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

This is now commit 92d69cc6275845a7 ("PCI: rcar-gen2: Convert to use
modern host bridge probe functions"), and causes a crash on r8a7791/koelsch:

    Unable to handle kernel NULL pointer dereference at virtual address 00000008
    pgd = (ptrval)
    [00000008] *pgd=00000000
    Internal error: Oops: 5 [#1] SMP ARM
    CPU: 0 PID: 1 Comm: swapper/0 Not tainted
5.8.0-rc1-shmobile-00035-g92d69cc6275845a7 #645
    Hardware name: Generic R-Car Gen2 (Flattened Device Tree)
    PC is at rcar_pci_probe+0x154/0x340
    LR is at _raw_spin_unlock_irqrestore+0x18/0x20

> --- a/drivers/pci/controller/pci-rcar-gen2.c
> +++ b/drivers/pci/controller/pci-rcar-gen2.c
> @@ -189,19 +170,33 @@ static inline void rcar_pci_setup_errirq(struct rcar_pci_priv *priv) { }
>  #endif
>
>  /* PCI host controller setup */
> -static int rcar_pci_setup(int nr, struct pci_sys_data *sys)
> +static void rcar_pci_setup(struct rcar_pci_priv *priv)
>  {
> -       struct rcar_pci_priv *priv = sys->private_data;
> +       struct pci_host_bridge *bridge = pci_host_bridge_from_priv(priv);
>         struct device *dev = priv->dev;
>         void __iomem *reg = priv->reg;
> +       struct resource_entry *entry;
> +       unsigned long window_size;
> +       unsigned long window_addr;
> +       unsigned long window_pci;
>         u32 val;
> -       int ret;
> +
> +       entry = resource_list_first_type(&bridge->dma_ranges, IORESOURCE_MEM);

bridge->dma_ranges is not initialized => BOOM.

>  static int rcar_pci_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct resource *cfg_res, *mem_res;
>         struct rcar_pci_priv *priv;
> +       struct pci_host_bridge *bridge;
>         void __iomem *reg;
> -       struct hw_pci hw;
> -       void *hw_private[1];
> +       int ret;
> +
> +       bridge = devm_pci_alloc_host_bridge(dev, sizeof(*priv));
> +       if (!bridge)
> +               return -ENOMEM;
> +
> +       priv = pci_host_bridge_priv(bridge);

This is the "new" priv instance.

> +       bridge->sysdata = priv;
>
>         cfg_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>         reg = devm_ioremap_resource(dev, cfg_res);

However, the "old" instance is still allocated below, and should be removed.

I've send a patch to fix that, which should appear soon at
https://lore.kernel.org/r/20200804120430.9253-1-geert+renesas@glider.be

BTW, the conversion has the following impact on r8a7791/koelsch:

    -pci-rcar-gen2 ee090000.pci: PCI: bus0 revision 11
    +pci-rcar-gen2 ee090000.pci: host bridge /soc/pci@ee090000 ranges:
    +pci-rcar-gen2 ee090000.pci:      MEM 0x00ee080000..0x00ee08ffff
-> 0x00ee080000
    +pci-rcar-gen2 ee090000.pci: PCI: revision 11
     pci-rcar-gen2 ee090000.pci: PCI host bridge to bus 0000:00
    -pci_bus 0000:00: root bus resource [mem 0xee080000-0xee0810ff]
                                             ^^^^^^^^^^^^^^^^^^^^^
    -pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
    +pci_bus 0000:00: root bus resource [bus 00]
    +pci_bus 0000:00: root bus resource [mem 0xee080000-0xee08ffff]
                                             ^^^^^^^^^^^^^^^^^^^^^

    pci0: pci@ee090000 {
            ...
            reg = <0 0xee090000 0 0xc00>,
                  <0 0xee080000 0 0x1100>;
            ...
            ranges = <0x02000000 0 0xee080000 0 0xee080000 0 0x00010000>;
            ...
            usb@1,0 {
                    reg = <0x800 0 0 0 0>;
                    ...
            };

            usb@2,0 {
                    reg = <0x1000 0 0 0 0>;
                    ...
            };

    }

The old root bus resource size was based on the "reg" property.
The new root bus resource size is based on the "ranges" property.

Given the only children are hardcoded, I guess that is OK?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
