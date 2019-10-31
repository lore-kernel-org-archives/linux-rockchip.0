From: Srinath Mannam <srinath.mannam-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v4] PCI: of: Add inbound resource parsing to helpers
Date: Thu, 31 Oct 2019 14:24:28 +0530
Message-ID: <CABe79T6cj=9ud6ifYT_49JetozuiAhexuipoQ97akC4Hm+GhOQ@mail.gmail.com>
References: <20191030223057.20554-1-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-mediatek-bounces+glpam-linux-mediatek=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191030223057.20554-1-robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>,
 <mailto:linux-mediatek-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-mediatek-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>,
 <mailto:linux-mediatek-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-mediatek" <linux-mediatek-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-mediatek-bounces+glpam-linux-mediatek=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Karthikeyan Mitran <m.karthikeyan-DTHOJn6Rh8lhmhkoCovsdw@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Ryder Lee <ryder.lee-NuS5LvNUpcJWk0Htik3J/w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Toan Le <toan-shex6MNQR2J/SfDzf78azzKzEDxYleXD@public.gmane.org>, Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Michal Simek <michal.simek-gjFFaj9aHVfQT0dZR+AlfA@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, BCM Kernel Feedback <bcm-kernel-feedback-list-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Ray Jui <rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Hou Zhiqiang <Zhiqiang.Hou-3arQi8VN3Tc@public.gmane.org>, Simon Horman <horms-/R6kz+dDXgpPR4JQBCEnsQ@public.gmane.org>, linux-mediatek-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Linux ARM <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Scott Branden <sbranden-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Jingoo
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

I reviewed and verified this change for non-sorted DT entries.. It is
working fine

Reviewed-by: Srinath Mannam <srinath.mannam-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Tested-by: Srinath Mannam <srinath.mannam-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>

Regards,
Srinath.

On Thu, Oct 31, 2019 at 4:01 AM Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>
> Extend devm_of_pci_get_host_bridge_resources() and
> pci_parse_request_of_pci_ranges() helpers to also parse the inbound
> addresses from DT 'dma-ranges' and populate a resource list with the
> translated addresses. This will help ensure 'dma-ranges' is always
> parsed in a consistent way.
>
> Cc: Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Cc: Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>
> Cc: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> Cc: Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> Cc: Will Deacon <will-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> Cc: Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
> Cc: Toan Le <toan-shex6MNQR2J/SfDzf78azzKzEDxYleXD@public.gmane.org>
> Cc: Ley Foon Tan <lftan-EIB2kfCEclfQT0dZR+AlfA@public.gmane.org>
> Cc: Tom Joseph <tjoseph-vna1KIf7WgpBDgjK7y7TUQ@public.gmane.org>
> Cc: Ray Jui <rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
> Cc: Scott Branden <sbranden-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
> Cc: bcm-kernel-feedback-list-dY08KVG/lbpWk0Htik3J/w@public.gmane.org
> Cc: Ryder Lee <ryder.lee-NuS5LvNUpcJWk0Htik3J/w@public.gmane.org>
> Cc: Karthikeyan Mitran <m.karthikeyan-DTHOJn6Rh8lhmhkoCovsdw@public.gmane.org>
> Cc: Hou Zhiqiang <Zhiqiang.Hou-3arQi8VN3Tc@public.gmane.org>
> Cc: Simon Horman <horms-/R6kz+dDXgpPR4JQBCEnsQ@public.gmane.org>
> Cc: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> Cc: Michal Simek <michal.simek-gjFFaj9aHVfQT0dZR+AlfA@public.gmane.org>
> Cc: rfi-g9ZBwUv/Ih/yUk5EbOjzuce+I+R0W71w@public.gmane.org
> Cc: linux-mediatek-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> Cc: linux-renesas-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> Tested-by: Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> # for AArdvark
> Reviewed-by: Andrew Murray <andrew.murray-5wv7dgnIgG8@public.gmane.org>
> Acked-by: Gustavo Pimentel <gustavo.pimentel-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> Signed-off-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> ---
> Lorenzo, Just sending this one patch. Let me know if you want the whole
> series.
>
> v4:
>  - Keep inbound resources sorted because iova_reserve_pci_windows()
>    depends on it
> v3:
>  - Fix some >80 char lines
> v2:
>  - Fix crash in INIT_LIST_HEAD when ib_resources is NULL
> ---
>  .../pci/controller/dwc/pcie-designware-host.c |  3 +-
>  drivers/pci/controller/pci-aardvark.c         |  2 +-
>  drivers/pci/controller/pci-ftpci100.c         |  3 +-
>  drivers/pci/controller/pci-host-common.c      |  2 +-
>  drivers/pci/controller/pci-v3-semi.c          |  3 +-
>  drivers/pci/controller/pci-versatile.c        |  3 +-
>  drivers/pci/controller/pci-xgene.c            |  3 +-
>  drivers/pci/controller/pcie-altera.c          |  2 +-
>  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
>  drivers/pci/controller/pcie-iproc-platform.c  |  3 +-
>  drivers/pci/controller/pcie-mediatek.c        |  2 +-
>  drivers/pci/controller/pcie-mobiveil.c        |  3 +-
>  drivers/pci/controller/pcie-rcar.c            |  3 +-
>  drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
>  drivers/pci/controller/pcie-xilinx-nwl.c      |  3 +-
>  drivers/pci/controller/pcie-xilinx.c          |  3 +-
>  drivers/pci/of.c                              | 51 ++++++++++++++++++-
>  drivers/pci/pci.h                             |  8 ++-
>  include/linux/pci.h                           |  9 ++--
>  19 files changed, 88 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index aeec8b65eb97..f7b1d80c4a0a 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -342,7 +342,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
>         if (!bridge)
>                 return -ENOMEM;
>
> -       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> +       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +                                             &bridge->dma_ranges, NULL);
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index 9cbeba507f0c..b34eaa2cd762 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -939,7 +939,7 @@ static int advk_pcie_probe(struct platform_device *pdev)
>         }
>
>         ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> -                                             &bus);
> +                                             &bridge->dma_ranges, &bus);
>         if (ret) {
>                 dev_err(dev, "Failed to parse resources\n");
>                 return ret;
> diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
> index 75603348b88a..66288b94e92d 100644
> --- a/drivers/pci/controller/pci-ftpci100.c
> +++ b/drivers/pci/controller/pci-ftpci100.c
> @@ -477,7 +477,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
>         if (IS_ERR(p->base))
>                 return PTR_ERR(p->base);
>
> -       ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
> +       ret = pci_parse_request_of_pci_ranges(dev, &host->windows,
> +                                             &host->dma_ranges, NULL);
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
> index c8cb9c5188a4..250a3fc80ec6 100644
> --- a/drivers/pci/controller/pci-host-common.c
> +++ b/drivers/pci/controller/pci-host-common.c
> @@ -27,7 +27,7 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
>         struct pci_config_window *cfg;
>
>         /* Parse our PCI ranges and request their resources */
> -       err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
> +       err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
>         if (err)
>                 return ERR_PTR(err);
>
> diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
> index 96677520f6c1..2209c7671115 100644
> --- a/drivers/pci/controller/pci-v3-semi.c
> +++ b/drivers/pci/controller/pci-v3-semi.c
> @@ -776,7 +776,8 @@ static int v3_pci_probe(struct platform_device *pdev)
>         if (IS_ERR(v3->config_base))
>                 return PTR_ERR(v3->config_base);
>
> -       ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
> +       ret = pci_parse_request_of_pci_ranges(dev, &host->windows,
> +                                             &host->dma_ranges, NULL);
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
> index eae1b859990b..b911359b6d81 100644
> --- a/drivers/pci/controller/pci-versatile.c
> +++ b/drivers/pci/controller/pci-versatile.c
> @@ -92,7 +92,8 @@ static int versatile_pci_probe(struct platform_device *pdev)
>         if (IS_ERR(versatile_cfg_base[1]))
>                 return PTR_ERR(versatile_cfg_base[1]);
>
> -       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> +       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +                                             NULL, NULL);
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
> index 7d0f0395a479..9408269d943d 100644
> --- a/drivers/pci/controller/pci-xgene.c
> +++ b/drivers/pci/controller/pci-xgene.c
> @@ -627,7 +627,8 @@ static int xgene_pcie_probe(struct platform_device *pdev)
>         if (ret)
>                 return ret;
>
> -       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> +       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +                                             &bridge->dma_ranges, NULL);
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
> index ba025efeae28..b447c3e4abad 100644
> --- a/drivers/pci/controller/pcie-altera.c
> +++ b/drivers/pci/controller/pcie-altera.c
> @@ -800,7 +800,7 @@ static int altera_pcie_probe(struct platform_device *pdev)
>         }
>
>         ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> -                                             NULL);
> +                                             &bridge->dma_ranges, NULL);
>         if (ret) {
>                 dev_err(dev, "Failed add resources\n");
>                 return ret;
> diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
> index 97e251090b4f..a8f7a6284c3e 100644
> --- a/drivers/pci/controller/pcie-cadence-host.c
> +++ b/drivers/pci/controller/pcie-cadence-host.c
> @@ -211,7 +211,7 @@ static int cdns_pcie_host_init(struct device *dev,
>         int err;
>
>         /* Parse our PCI ranges and request their resources */
> -       err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
> +       err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
>         if (err)
>                 return err;
>
> diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
> index 375d815f7301..ff0a81a632a1 100644
> --- a/drivers/pci/controller/pcie-iproc-platform.c
> +++ b/drivers/pci/controller/pcie-iproc-platform.c
> @@ -95,7 +95,8 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
>         if (IS_ERR(pcie->phy))
>                 return PTR_ERR(pcie->phy);
>
> -       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> +       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +                                             &bridge->dma_ranges, NULL);
>         if (ret) {
>                 dev_err(dev, "unable to get PCI host bridge resources\n");
>                 return ret;
> diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
> index d9206a3cd56b..cb982891b22b 100644
> --- a/drivers/pci/controller/pcie-mediatek.c
> +++ b/drivers/pci/controller/pcie-mediatek.c
> @@ -1034,7 +1034,7 @@ static int mtk_pcie_setup(struct mtk_pcie *pcie)
>         int err;
>
>         err = pci_parse_request_of_pci_ranges(dev, windows,
> -                                             &bus);
> +                                             &host->dma_ranges, &bus);
>         if (err)
>                 return err;
>
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 4eab8624ce4d..257ba49c177c 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -875,7 +875,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>         }
>
>         /* parse the host bridge base addresses from the device tree file */
> -       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> +       ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +                                             &bridge->dma_ranges, NULL);
>         if (ret) {
>                 dev_err(dev, "Getting bridge resources failed\n");
>                 return ret;
> diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> index f6a669a9af41..b8d6e86a5539 100644
> --- a/drivers/pci/controller/pcie-rcar.c
> +++ b/drivers/pci/controller/pcie-rcar.c
> @@ -1138,7 +1138,8 @@ static int rcar_pcie_probe(struct platform_device *pdev)
>         pcie->dev = dev;
>         platform_set_drvdata(pdev, pcie);
>
> -       err = pci_parse_request_of_pci_ranges(dev, &pcie->resources, NULL);
> +       err = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> +                                             &bridge->dma_ranges, NULL);
>         if (err)
>                 goto err_free_bridge;
>
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index f375e55ea02e..ee83f8494ee9 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -1004,7 +1004,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>         if (err < 0)
>                 goto err_deinit_port;
>
> -       err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, &bus_res);
> +       err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +                                             &bridge->dma_ranges, &bus_res);
>         if (err)
>                 goto err_remove_irq_domain;
>
> diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
> index e135a4b60489..9bd1427f2fd6 100644
> --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> @@ -843,7 +843,8 @@ static int nwl_pcie_probe(struct platform_device *pdev)
>                 return err;
>         }
>
> -       err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> +       err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +                                             &bridge->dma_ranges, NULL);
>         if (err) {
>                 dev_err(dev, "Getting bridge resources failed\n");
>                 return err;
> diff --git a/drivers/pci/controller/pcie-xilinx.c b/drivers/pci/controller/pcie-xilinx.c
> index 257702288787..98e55297815b 100644
> --- a/drivers/pci/controller/pcie-xilinx.c
> +++ b/drivers/pci/controller/pcie-xilinx.c
> @@ -645,7 +645,8 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
>                 return err;
>         }
>
> -       err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
> +       err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
> +                                             &bridge->dma_ranges, NULL);
>         if (err) {
>                 dev_err(dev, "Getting bridge resources failed\n");
>                 return err;
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index f3da49a31db4..7d5c7783dfdc 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -257,7 +257,9 @@ EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
>   */
>  int devm_of_pci_get_host_bridge_resources(struct device *dev,
>                         unsigned char busno, unsigned char bus_max,
> -                       struct list_head *resources, resource_size_t *io_base)
> +                       struct list_head *resources,
> +                       struct list_head *ib_resources,
> +                       resource_size_t *io_base)
>  {
>         struct device_node *dev_node = dev->of_node;
>         struct resource *res, tmp_res;
> @@ -340,6 +342,48 @@ int devm_of_pci_get_host_bridge_resources(struct device *dev,
>                 pci_add_resource_offset(resources, res, res->start - range.pci_addr);
>         }
>
> +       /* Check for dma-ranges property */
> +       if (!ib_resources)
> +               return 0;
> +       err = of_pci_dma_range_parser_init(&parser, dev_node);
> +       if (err)
> +               return 0;
> +
> +       dev_dbg(dev, "Parsing dma-ranges property...\n");
> +       for_each_of_pci_range(&parser, &range) {
> +               struct resource_entry *entry;
> +               /*
> +                * If we failed translation or got a zero-sized region
> +                * then skip this range
> +                */
> +               if (((range.flags & IORESOURCE_TYPE_BITS) != IORESOURCE_MEM) ||
> +                   range.cpu_addr == OF_BAD_ADDR || range.size == 0)
> +                       continue;
> +
> +               dev_info(dev, "IB MEM %#010llx..%#010llx -> %#010llx\n",
> +                        range.cpu_addr,
> +                        range.cpu_addr + range.size - 1, range.pci_addr);
> +
> +
> +               err = of_pci_range_to_resource(&range, dev_node, &tmp_res);
> +               if (err)
> +                       continue;
> +
> +               res = devm_kmemdup(dev, &tmp_res, sizeof(tmp_res), GFP_KERNEL);
> +               if (!res) {
> +                       err = -ENOMEM;
> +                       goto failed;
> +               }
> +
> +               /* Keep the resource list sorted */
> +               resource_list_for_each_entry(entry, ib_resources)
> +                       if (entry->res->start > res->start)
> +                               break;
> +
> +               pci_add_resource_offset(&entry->node, res,
> +                                       res->start - range.pci_addr);
> +       }
> +
>         return 0;
>
>  failed:
> @@ -482,6 +526,7 @@ EXPORT_SYMBOL_GPL(of_irq_parse_and_map_pci);
>
>  int pci_parse_request_of_pci_ranges(struct device *dev,
>                                     struct list_head *resources,
> +                                   struct list_head *ib_resources,
>                                     struct resource **bus_range)
>  {
>         int err, res_valid = 0;
> @@ -489,8 +534,10 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
>         struct resource_entry *win, *tmp;
>
>         INIT_LIST_HEAD(resources);
> +       if (ib_resources)
> +               INIT_LIST_HEAD(ib_resources);
>         err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, resources,
> -                                                   &iobase);
> +                                                   ib_resources, &iobase);
>         if (err)
>                 return err;
>
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index 3f6947ee3324..6692c4fe4290 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -633,11 +633,15 @@ static inline void pci_release_bus_of_node(struct pci_bus *bus) { }
>  #if defined(CONFIG_OF_ADDRESS)
>  int devm_of_pci_get_host_bridge_resources(struct device *dev,
>                         unsigned char busno, unsigned char bus_max,
> -                       struct list_head *resources, resource_size_t *io_base);
> +                       struct list_head *resources,
> +                       struct list_head *ib_resources,
> +                       resource_size_t *io_base);
>  #else
>  static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
>                         unsigned char busno, unsigned char bus_max,
> -                       struct list_head *resources, resource_size_t *io_base)
> +                       struct list_head *resources,
> +                       struct list_head *ib_resources,
> +                       resource_size_t *io_base)
>  {
>         return -EINVAL;
>  }
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index f9088c89a534..5cb94916eaa1 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -2278,6 +2278,7 @@ struct irq_domain;
>  struct irq_domain *pci_host_bridge_of_msi_domain(struct pci_bus *bus);
>  int pci_parse_request_of_pci_ranges(struct device *dev,
>                                     struct list_head *resources,
> +                                   struct list_head *ib_resources,
>                                     struct resource **bus_range);
>
>  /* Arch may override this (weak) */
> @@ -2286,9 +2287,11 @@ struct device_node *pcibios_get_phb_of_node(struct pci_bus *bus);
>  #else  /* CONFIG_OF */
>  static inline struct irq_domain *
>  pci_host_bridge_of_msi_domain(struct pci_bus *bus) { return NULL; }
> -static inline int pci_parse_request_of_pci_ranges(struct device *dev,
> -                                                 struct list_head *resources,
> -                                                 struct resource **bus_range)
> +static inline int
> +pci_parse_request_of_pci_ranges(struct device *dev,
> +                               struct list_head *resources,
> +                               struct list_head *ib_resources,
> +                               struct resource **bus_range)
>  {
>         return -EINVAL;
>  }
> --
> 2.20.1
>
